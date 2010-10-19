(*-*- coding:euc-jp -*-*)
open Printf

let count_line = ref 1 (* for parse error message *)

type t = (* MinCamlの構文を表現するデータ型 (caml2html: syntax_t) *)
  | Unit
  | Bool of bool
  | Int of int
  | Float of float
  | Not of t
  | Neg of t
  | Add of t * t
  | Sub of t * t
  | FNeg of t
  | FAdd of t * t
  | FSub of t * t
  | FMul of t * t
  | FDiv of t * t
  | Eq of t * t
  | LE of t * t
  | If of t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of t * t list
  | Tuple of t list
  | LetTuple of (Id.t * Type.t) list * t * t
  | Array of t * t
  | Get of t * t
  | Put of t * t * t
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }


let print t = (* Syntax.t -> Syntax.t *)
  (* i : indent level *)
  let rec pt i t =
    let i = i + 1
    in let pi () =
      (printf "%s" (String.make (i * 2) ' '))
    in
      pi ();
      (match t with
	 | Unit -> printf "Unit\n"
	 | Bool b -> printf "Bool(%s)\n" (string_of_bool b)
	 | Int i -> printf "Int(%s)\n" (string_of_int i)
	 | Float f -> printf "Float(%s)\n" (string_of_float f)
	 | Var t -> printf "Var(%s)\n" t
	 | Tuple t -> printf "Tuple Start\n";List.iter (pt i) t;pi ();printf "Tuple end\n"
	 | Not t -> printf "Not\n";pt i t
	 | Neg t -> printf "Neg\n";pt i t
	 | Add(t1, t2) -> printf "Add\n";pt i t1;pt i t2
	 | Sub(t1, t2) -> printf "Sub\n";pt i t1;pt i t2
	 | FNeg t -> printf "FNeg\n";pt i t
	 | FAdd(t1, t2) -> printf "FAdd\n";pt i t1;pt i t2
	 | FSub(t1, t2) -> printf "FSub\n";pt i t1;pt i t2
	 | FMul(t1, t2) -> printf "FMul\n";pt i t1;pt i t2
	 | FDiv(t1, t2) -> printf "FDiv\n";pt i t1;pt i t2
	 | Eq(t1, t2) -> printf "Eq\n";pt i t1;pt i t2
	 | LE(t1, t2) -> printf "LE\n";pt i t1;pt i t2
	 | If(t1, t2, t3) -> printf "IF\n";pt i t1;pi ();printf "THEN\n";pt i t2;pi ();printf "ELSE\n";pt i t2
	 | Let((t1, _), t3, t4) -> printf "LET %s =\n" t1;pt i t3;pi ();printf "IN\n";pt i t4
	 | LetRec(fundef, t) -> (printf "LetRec %s" (fst fundef.name);
				 (List.iter
				    (fun (id, _ ) -> printf " %s" id)
				    fundef.args);
				 printf " =\n";
				 pt i fundef.body;
				 pi ();printf "IN\n";
				 pt i t);
	 | App(t, tl) -> printf "APP\n";pt i t;pi ();printf "ACTUAL_ARGS\n";List.iter (pt i) tl;
	 | LetTuple(itl, t1, t2) -> (printf "LETTUPLE\n";
				    (List.iter
				      (fun (id, _ ) -> pi ();printf "  %s\n" id)
				      itl);
				    pi ();printf "=\n";
				    pt i t1;
				    pi ();printf "IN\n";
				    pt i t2;)
	 | Array(t1, t2) -> printf "Array.create\n";pt i t1;pt i t2
	 | Get(t1, t2) -> printf "GET\n";pt i t1;pt i t2
	 | Put(t1, t2, t3) -> printf "PUT\n";pt i t1;pt i t2;pt i t3)
 in (printf "=== Syntax.t ===\n";pt 0 t;printf "=== End ===\n";t);;
