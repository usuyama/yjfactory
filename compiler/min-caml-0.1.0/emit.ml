(* -*- coding:euc-jp -*- *)
open Asm
open Printf

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"

let stackset = ref S.empty (* すでにSaveされた変数の集合 (caml2html: emit_stackset) *)
let stackmap = ref [] (* Saveされた変数の、スタックにおける位置 (caml2html: emit_stackmap) *)
let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let savef x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    (let pad =
      if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in
    stackmap := !stackmap @ pad @ [x; x])
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap
let offset x = List.hd (locate x)
let stacksize () = List.length !stackmap + 1 (* align 消した。float対応時要注意 *)

let pp_id_or_imm = function
  | V(x) -> x
  | C(i) -> string_of_int i

(* 関数呼び出しのために引数を並べ替える(register shuffling) (caml2html: emit_shuffle) *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let _, xys = List.partition (fun (x, y) -> x = y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
      (y, sw) :: (x, y) :: shuffle sw (List.map
					 (function
					   | (y', z) when y = y' -> (sw, z)
					   | yz -> yz)
					 xys)
  | xys, acyc -> acyc @ shuffle sw xys

let print_int_ope oc ope rd arg0 arg1 =
  match arg1 with
    | V(z) -> fprintf oc "\t%s\t%s, %s, %s\n" ope rd arg0 z
    | C(z) -> fprintf oc "\t%si\t%s, %s, %s\n" ope rd arg0 (string_of_int z)

let print_li oc rd imm =
  fprintf oc "\tlli\t%s, %d\n" rd imm; (* 即値が16bitに収まればlliのみ *)
  if imm > 65536 then fprintf oc "\tlhi\t%s, %d\n" rd imm else ()

let print_mov oc rd rs =
  fprintf oc "\tadd\t%s, %%r0, %s\n" rd rs

type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)

let rec g oc = function (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp) -> g' oc (dest, exp)
  | dest, Let((x, t), exp, e) ->
      g' oc (NonTail(x), exp);
      g oc (dest, e)
and g' oc = function (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
  (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  | NonTail(_), Nop -> ()
  | NonTail(x), Set(i) -> print_li oc x i
  | NonTail(x), Mov(y) when x = y -> ()
  | NonTail(x), Mov(y) -> print_mov oc x y
  | NonTail(x), Add(y, z) -> print_int_ope oc "add" x y z
  | NonTail(x), Sub(y, z) -> print_int_ope oc "sub" x y z
  | NonTail(x), SLL(y, z') -> Printf.fprintf oc "\tsll\t%s, %s, %s\n" y (pp_id_or_imm z') x
  | NonTail(x), Ld(y, z') -> Printf.fprintf oc "\tlw\t[%s + %s], %s\n" y (pp_id_or_imm z') x
  | NonTail(_), St(x, y, z') -> Printf.fprintf oc "\tsw\t%s, [%s + %s]\n" x y (pp_id_or_imm z')
  | NonTail(_), Comment(s) -> Printf.fprintf oc "\t# %s\n" s
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
      Printf.fprintf oc "\tsw\t%s, [%s + %d]\n" x reg_sp (offset y)
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
      Printf.fprintf oc "\tlw\t[%s + %d], %s\n" reg_sp (offset y) x
  (* 末尾だったら計算結果を第一レジスタにセットしてret (caml2html: emit_tailret) *)
  | Tail, (Nop | St _ | StDF _ | Comment _ | Save _ as exp) ->
      g' oc (NonTail(Id.gentmp Type.Unit), exp);
      Printf.fprintf oc "\tjr\t%s\n" reg_ra;
  | Tail, (Set _ | SetL _ | Mov _ | Neg _ | Add _ | Sub _ | SLL _ | Ld _ as exp) ->
      g' oc (NonTail(regs.(0)), exp);
      Printf.fprintf oc "\tjr\t%s\n" reg_ra;
  | Tail, (Restore(x) as exp) ->
      (match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), exp)
      | [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), exp)
      | _ -> assert false);
      Printf.fprintf oc "\tjr\t%sl\n" reg_ra; (* retl とretはどう違うんだろう *)
(* if *)
  | Tail, IfEq(x, y, e1, e2) ->
      g'_tail_if oc e1 e2 "bneq" x y
  | Tail, IfLE(x, y, e1, e2) -> (* x <= y *)
      g'_tail_if oc e1 e2 "bgt" x y
  | Tail, IfGE(x, y, e1, e2) -> (* x >= y *)
      g'_tail_if oc e1 e2 "bgt" y x
  | NonTail(z), IfEq(x, y, e1, e2) ->
      g'_non_tail_if oc (NonTail(z)) e1 e2 "beq" x y
  | NonTail(z), IfLE(x, y, e1, e2) ->
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bgt" y x
  | NonTail(z), IfGE(x, y, e1, e2) ->
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bge" x y
(* 関数呼び出しの仮想命令の実装 (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs) -> (* 末尾呼び出し (caml2html: emit_tailcall) *) (* clo addr, int args, float args *)
      g'_args oc [(x, reg_cl)] ys zs;
      Printf.fprintf oc "\tlw\t[%s + 0], %s\n" reg_cl reg_sw;
      Printf.fprintf oc "\tjr\t%s\n" reg_sw;
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し *)
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tj\t%s\n" x;
  | NonTail(a), CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s, [%s + %d]\n" reg_ra reg_sp (ss - 1);
      Printf.fprintf oc "\tlw\t[%s + 0], %s\n" reg_cl reg_sw;
      print_int_ope oc "add" reg_sp reg_sp (C(ss));
      Printf.fprintf oc "\tjal\t%s\n" x;
      print_int_ope oc "sub" reg_sp reg_sp (C(ss)); 
      Printf.fprintf oc "\tlw\t[%s + %d], %s\n" reg_sp (ss - 1) reg_ra;
      if List.mem a allregs && a <> regs.(0) then
	print_mov oc a regs.(0) (* a <- regs.(0) *)
      else if List.mem a allfregs && a <> fregs.(0) then
	(Printf.fprintf oc "\tfmovs\t%s, %s\n" fregs.(0) a;
	 Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg fregs.(0)) (co_freg a))
  | NonTail(a), CallDir(Id.L(x), ys, zs) ->
      g'_args oc [] ys zs;
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s, [%s + %d]\n" reg_ra reg_sp (ss - 1);
      print_int_ope oc "add" reg_sp reg_sp (C(ss));
      Printf.fprintf oc "\tjal\t%s\n" x;
      print_int_ope oc "sub" reg_sp reg_sp (C(ss));
      Printf.fprintf oc "\tlw\t[%s + %d], %s\n" reg_sp (ss - 1) reg_ra;
      if List.mem a allregs && a <> regs.(0) then
	print_mov oc a regs.(0)
      else if List.mem a allfregs && a <> fregs.(0) then
	(Printf.fprintf oc "\tfmovs\t%s, %s\n" fregs.(0) a;
	 Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg fregs.(0)) (co_freg a))
and g'_tail_if oc e1 e2 ope r1 r2 =
  let b_else = Id.genid (ope ^ "_else") in
    Printf.fprintf oc "\t%s\t%s, %s, %s\n" ope r1 r2 b_else;
    let stackset_back = !stackset in
      g oc (Tail, e1);
      Printf.fprintf oc "%s:\n" b_else;
      stackset := stackset_back;
      g oc (Tail, e2)
and g'_non_tail_if oc dest e1 e2 ope x y =
  let b_else = Id.genid (ope ^ "_else") in
  let b_cont = Id.genid (ope ^ "_cont") in
  Printf.fprintf oc "\t%s\t%s, %s, %s\n" ope x y b_else;
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tj\t%s\n" b_cont;
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> print_mov oc r y)
    (shuffle reg_sw yrs)
  

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

let f oc (Prog(data, fundefs, e)) =
  Format.eprintf "generating assembly...@.";
  Printf.fprintf oc "entry:\n";
  print_li oc reg_sp 0;
  print_li oc reg_ra 0;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e);
  Printf.fprintf oc "\thalt\n";

  List.iter (fun fundef -> h oc fundef) fundefs;
