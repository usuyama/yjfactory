(*-*-coding:euc-jp-*-*)
(* SPARC assembly with a few virtual instructions *)
open Printf

type id_or_imm = V of Id.t | C of int
let str_of_ioi t =
  match t with
    | V(t) -> sprintf "V(%s)" t
    | C(i) -> sprintf "C(%d)" i
type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
  | Nop
  | Set of int
  | SetF of float
  | SetL of Id.l
  | Mov of Id.t
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | SLL of Id.t * int
  | Ld of Id.t * int
  | St of Id.t * Id.t * int
  | FMov of Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | LdF of Id.t * int
  | StF of Id.t * Id.t * int
  | Comment of string
  (* virtual instructions *)
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | IfGE of Id.t * Id.t * t * t (* 左右対称ではないので必要 *)
  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 (caml2html: sparcasm_save) *)
  | Restore of Id.t (* スタック変数から値を復元 (caml2html: sparcasm_restore) *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* プログラム全体 = トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
type prog = Prog of fundef list * t

let flet(x, e1, e2) = Let((x, Type.Float), e1, e2)
let seq(e1, e2) = Let((Id.gentmp Type.Unit, Type.Unit), e1, e2)

let regs = Array.init 27 (fun i -> Printf.sprintf "%%r%d" (i + 1))
let fregs = Array.init 32 (fun i -> Printf.sprintf "%%f%d" i)
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_cl = regs.(Array.length regs - 1) (* closure address (caml2html: sparcasm_regcl) *)
let reg_sw = regs.(Array.length regs - 2) (* temporary for swap *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
let reg_sp = "%sp" (* stack pointer *)
let reg_hp = "%hp" (* heap pointer (caml2html: sparcasm_reghp) *)
let reg_ra = "%ra" (* return address *)
let is_reg x = (x.[0] = '%')

(* super-tenuki *)
let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let fv_id_or_imm = function V(x) -> [x] | _ -> []
let rec fv_exp = function
  | Nop | Set(_) | SetL(_) | SetF(_) | Comment(_) | Restore(_) -> []
  | Mov(x) | Neg(x) | FMov(x) | FNeg(x) | SLL(x, _) | Ld(x, _) | LdF(x, _) | Save(x, _) -> [x]
  | Add(x, y') | Sub(x, y') -> x :: fv_id_or_imm y'
  | St(x, y, _) | StF(x, y, _) -> [x; y]
  | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) -> [x; y]
  | IfEq(x, y', e1, e2) | IfLE(x, y', e1, e2) | IfGE(x, y', e1, e2) -> x :: y' :: remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | IfFEq(x, y, e1, e2) | IfFLE(x, y, e1, e2) -> x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | CallCls(x, ys, zs) -> x :: ys @ zs
  | CallDir(_, ys, zs) -> ys @ zs
and fv = function
  | Ans(exp) -> fv_exp exp
  | Let((x, t), exp, e) ->
      fv_exp exp @ remove_and_uniq (S.singleton x) (fv e)
let fv e = remove_and_uniq S.empty (fv e)

let rec concat e1 xt e2 =
  match e1 with
  | Ans(exp) -> Let(xt, exp, e2)
  | Let(yt, exp, e1') -> Let(yt, exp, concat e1' xt e2)

let rec print_t t i = 
  (let i = i + 1 (* i : indent level *)
  in let pi () =
      (printf "%s" (String.make (i * 2) ' '))
  in
    match t with
      | Ans(e) -> print_exp e i
      | Let((t1, typ), e, t) -> (pi ();printf "Let %s = \n" t1;
				 print_exp e i;pi ();printf "In\n";
				 print_t t i))
and print_exp t i = (* Asm.t -> Asm.t *)
  (let i = i + 1
  in let pi () =
      (printf "%s" (String.make (i * 2) ' '))
  in
    pi ();
    (match t with
       | Nop -> printf "Nop\n"
       | Set i -> printf "Set(%s)\n" (string_of_int i)
       | SetF f -> printf "SetF(%s)\n" (string_of_float f)
       | SetL l -> printf "SetL(%s)\n" (Id.str_of_l l)
       | Mov t -> printf "Mov(%s)\n" t
       | Neg t -> printf "Neg %s\n" t;
       | Add(t1, t2) -> printf "Add %s + %s\n" t1 (str_of_ioi t2)
       | Sub(t1, t2) -> printf "Sub %s - %s\n" t1 (str_of_ioi t2)
       | SLL(t1, t2) -> printf "SLL %s %d\n" t1 t2
       | Ld(t1, t2) -> printf "Ld [%s + %d]\n" t1 t2
       | St(t1, t2, t3) -> printf "St %s %s %d\n" t1 t2 t3 (* t1 <- [t2 + t3] ...かな？ *)
       | FMov t -> printf "FMov %s\n" t
       | FNeg t -> printf "FNeg %s\n" t
       | FAdd(t1, t2) -> printf "FAdd %s + %s\n" t1 t2
       | FSub(t1, t2) -> printf "FSub %s + %s\n" t1 t2
       | FMul(t1, t2) -> printf "FMul %s + %s\n" t1 t2
       | FDiv(t1, t2) -> printf "FDiv %s + %s\n" t1 t2
       | LdF(t1, t2) -> printf "LdF %s %d\n" t1 t2
       | StF(t1, t2, t3) -> printf "StF %s %s %d\n" t1 t2 t3
       | Comment(s) -> printf "Commnet(%s)\n" s
       | IfEq(t1, t2, t3, t4) -> printf "IF %s = %s THEN\n" t1  t2;print_t t3 i;pi ();printf "ELSE\n";print_t t4 i
       | IfLE(t1, t2, t3, t4) -> printf "IF %s <= %s THEN\n" t1 t2;print_t t3 i;pi ();printf "ELSE\n";print_t t4 i
       | IfGE(t1, t2, t3, t4) -> printf "IF %s >= %s THEN\n" t1 t2;print_t t3 i;pi ();printf "ELSE\n";print_t t4 i
       | CallCls(t1, int_args, float_args) -> (printf "Callcls %s\n" t1;
				   pi ();printf "int args:";List.iter (fun t -> printf "  %s" t) int_args;printf "\n";
				   pi ();printf "float args:";List.iter (fun t -> printf "  %s" t) float_args;printf "\n")
       | CallDir(t1, int_args, float_args) -> (printf "Callcls %s\n" (Id.str_of_l t1);
				   pi ();printf "int args:";List.iter (fun t -> printf "  %s" t) int_args;printf "\n";
				   pi ();printf "float args:";List.iter (fun t -> printf "  %s" t) float_args;printf "\n")
       | Save(t1,t2) -> printf "Save %s %s\n" t1 t2
       | Restore(t) -> printf "Restore t\n"))

let print str (Prog(fundef_list, t)) = (* string -> Asm.prog -> Asm.prog *)
  let print_fundef f =
    printf "<<< fundef : %s >>>\nargs:" (Id.str_of_l f.name);
    List.iter (fun t -> printf "  %s" t) f.args;
    printf "\nfargs:";List.iter (fun t -> printf "  %s" t) f.fargs;
    printf "\nbody:\n";ignore(print_t f.body 0);
    printf "ret: %s\n" (Type.str_of_t f.ret)
  in (printf "=== %s ===\n" str;
      printf "fundef_list:\n";
      List.iter print_fundef fundef_list;
      printf "body:\n";
      ignore (print_t t 0);
      printf "=== %s END ===\n" str;Prog(fundef_list, t))
