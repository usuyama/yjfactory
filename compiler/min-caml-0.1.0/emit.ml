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
    | C(z) -> (if z <= 65536 then 
		 fprintf oc "\t%si\t%s, %s, %s\n" ope rd arg0 (string_of_int z)
	       else
		 assert false) (* [XXX] fix later *)

let print_li oc rd imm =
  fprintf oc "\tlli\t%s, %d\n" rd imm;
  if imm < 65536 && imm >= 0 then () else
    fprintf oc "\tlhi\t%s, %d\n" rd imm

let print_lif oc fd imm =  fprintf oc "\tllif\t%s, %f\n" fd imm;
  fprintf oc "\tlhif\t%s, %f\n" fd imm

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
  | NonTail(x), SetL(Id.L(y)) -> fprintf oc "\taddi\t%s, %%r0, %s\n" x y 
  | NonTail(x), MovFToI(y) -> fprintf oc "\tmovf2i\t%s, %s\n" x y
  | NonTail(x), SetF(f) -> print_lif oc x f
  | NonTail(x), Mov(y) when x = y -> ()
  | NonTail(x), Mov(y) -> print_mov oc x y
  | NonTail(x), Add(y, z) -> print_int_ope oc "add" x y z
  | NonTail(x), Sub(y, z) -> print_int_ope oc "sub" x y z
  | NonTail(x), Div(y, z) -> print_int_ope oc "div" x y z
  | NonTail(x), Mul(y, z) -> print_int_ope oc "mul" x y z
  | NonTail(x), SLL(y, z) -> fprintf oc "\tsll\t%s, %s, %d\n" x y z
  | NonTail(x), Neg(y) -> fprintf oc "\tsub\t%s, %%r0, %s\n" x y
  | NonTail(x), FNeg(y) -> fprintf oc "\tnegf\t%s, %s\n" x y
  | NonTail(x), Ld(y, z) -> fprintf oc "\tlw\t%s, [%s + %d]\n" x y z
  | NonTail(_), St(x, y, z) -> fprintf oc "\tsw\t%s, [%s + %d]\n" x y z
  | NonTail(_), Comment(s) -> fprintf oc "\t# %s\n" s
(* float *)
  | NonTail(x), FAdd(y, z) -> fprintf oc "\taddf\t%s, %s, %s\n" x y z
  | NonTail(x), FSub(y, z) -> fprintf oc "\tsubf\t%s, %s, %s\n" x y z
  | NonTail(x), FMul(y, z) -> fprintf oc "\tmulf\t%s, %s, %s\n" x y z
  | NonTail(x), FDiv(y, z) -> fprintf oc "\tdivf\t%s, %s, %s\n" x y z
  | NonTail(x), LdF(y, z) -> fprintf oc "\tlf\t%s, [%s + %d]\n" x y z
  | NonTail(_), StF(x, y, z) -> fprintf oc "\tsf\t%s, [%s + %d]\n" x y z
  | NonTail(x), FMov(y) when x = y -> ()
  | NonTail(x), FMov(y) -> fprintf oc "\tmovf\t%s, %s\n" x y
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs  && not (S.mem y !stackset) ->
      save y;
      fprintf oc "\tsw\t%s, [%s + %d]\n" x reg_sp (offset y)
  | NonTail(_), Save(x, y) when List.mem x allfregs  && not (S.mem y !stackset) ->
      save y;
      fprintf oc "\tsf\t%s, [%s + %d]\n" x reg_sp (offset y)
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
      fprintf oc "\tlw\t%s, [%s + %d]\n" x reg_sp (offset y)
  | NonTail(x), Restore(y) when List.mem x allfregs ->
      fprintf oc "\tlf\t%s, [%s + %d]\n" x reg_sp (offset y)
  | NonTail(x), Restore(y) -> assert false
  (* 末尾だったら計算結果を第一レジスタにセットしてret (caml2html: emit_tailret) *)
  | Tail, (Nop | St _ | StF _ | Comment _ | Save _ as exp) ->
      g' oc (NonTail(Id.gentmp Type.Unit), exp);
      fprintf oc "\tjr\t%s\n" reg_ra;
  | Tail, (Set _ | (* SetL _ |*) Mul _ | SetL _ | Div _ | Mov _ | Neg _ | Add _ | Sub _ | SLL _ | Ld _ | MovFToI _ as exp) ->
      g' oc (NonTail(regs.(0)), exp);
      fprintf oc "\tjr\t%s\n" reg_ra;
  | Tail, (LdF _ | FSub _ | FNeg _ | FMov _ | FAdd _ | FMul _ | FDiv _ | SetF _ as exp) ->
      g' oc (NonTail(fregs.(0)), exp);
      fprintf oc "\tjr\t%s\n" reg_ra;
  | Tail, (Restore(x) as exp) ->
      (match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), exp)
      | [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), exp)
      | _ -> assert false);
      fprintf oc "\tjr\t%sl\n" reg_ra
(* if *)
  | Tail, IfEq(x, y, e1, e2) ->
      g'_tail_if oc e1 e2 "bneq" x y
  | Tail, IfLE(x, y, e1, e2) -> (* x <= y *)
      g'_tail_if oc e1 e2 "bgt" x y
  | Tail, IfGE(x, y, e1, e2) -> (* x >= y *)
      failwith "ifge" (* XXX *)
      (* g'_tail_if oc e1 e2 "bgt" y x *)
  | NonTail(z), IfEq(x, y, e1, e2) ->
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bneq" x y
  | NonTail(z), IfLE(x, y, e1, e2) ->
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bgt" x y
  | NonTail(z), IfGE(x, y, e1, e2) -> (* XXX ここには来ない *)
      failwith "ifge" (* g'_non_tail_if oc (NonTail(z)) e1 e2 "bge" x y *)
(* float if *)
  | Tail, IfFLE(x, y, e1, e2) -> (* x <= y *)
      g'_tail_if oc e1 e2 "bgtf" x y
  | NonTail(z), IfFLE(x, y, e1, e2) ->
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bgtf" x y
(* 関数呼び出しの仮想命令の実装 (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs) -> (* 末尾呼び出し (caml2html: emit_tailcall) *) (* clo addr, int args, float args *)
      g'_args oc [(x, reg_cl)] ys zs;
      fprintf oc "\tlw\t%s, [%s + 0]\n" reg_sw reg_cl;
      fprintf oc "\tjr\t%s\n" reg_sw;
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し *)
      g'_args oc [] ys zs;
      fprintf oc "\tj\t%s\n" x;
  | NonTail(a), CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      fprintf oc "\tsw\t%s, [%s + %d]\n" reg_ra reg_sp (ss - 1);
      fprintf oc "\tlw\t%s, [%s + 0]\n" reg_sw reg_cl;
      print_int_ope oc "add" reg_sp reg_sp (C(ss));
      fprintf oc "\tjalr\t%s\n" reg_sw;
      print_int_ope oc "sub" reg_sp reg_sp (C(ss)); 
      fprintf oc "\tlw\t%s, [%s + %d]\n" reg_ra reg_sp (ss - 1);
      if List.mem a allregs && a <> regs.(0) then
	print_mov oc a regs.(0) (* a <- regs.(0) *)
      else if List.mem a allfregs && a <> fregs.(0) then
	fprintf oc "\tmovf\t%s, %s\n" a fregs.(0)
  | NonTail(a), CallDir(Id.L(x), ys, zs) ->
      g'_args oc [] ys zs;
      let ss = stacksize () in
      fprintf oc "\tsw\t%s, [%s + %d]\n" reg_ra reg_sp (ss - 1);
      print_int_ope oc "add" reg_sp reg_sp (C(ss));
      fprintf oc "\tjal\t%s\n" x;
      print_int_ope oc "sub" reg_sp reg_sp (C(ss));
      fprintf oc "\tlw\t%s, [%s + %d]\n" reg_ra reg_sp (ss - 1);
      if List.mem a allregs && a <> regs.(0) then
	print_mov oc a regs.(0)
      else if List.mem a allfregs && a <> fregs.(0) then
	fprintf oc "\tmovf\t%s, %s\n" a fregs.(0)	
and g'_tail_if oc e1 e2 ope r1 r2 =
  let b_else = Id.genid (ope ^ "_else") in
    fprintf oc "\t%s\t%s, %s, %s\n" ope r1 r2 b_else;
    let stackset_back = !stackset in
      g oc (Tail, e1);
      fprintf oc "%s:\n" b_else;
      stackset := stackset_back;
      g oc (Tail, e2)
and g'_non_tail_if oc dest e1 e2 ope x y =
  let b_else = Id.genid (ope ^ "_else") in
  let b_cont = Id.genid (ope ^ "_cont") in
  fprintf oc "\t%s\t%s, %s, %s\n" ope x y b_else;
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  fprintf oc "\tj\t%s\n" b_cont;
  fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  fprintf oc "%s:\n" b_cont;
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
  fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

let f oc (Prog(fundefs, e)) =
  Format.eprintf "generating assembly...@.";
  fprintf oc "entry:\n";
  print_li oc reg_sp 0;
  fprintf oc "\taddi\t%s, %%r0, halt\n" reg_ra;
  print_li oc reg_hp 50000;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e);
  fprintf oc "halt:\n";
  fprintf oc "\thalt\n";
  List.iter (fun fundef -> h oc fundef) fundefs;
