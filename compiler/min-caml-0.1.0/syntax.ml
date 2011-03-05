(*-*- coding:euc-jp -*-*)
open Printf

let count_line = ref 1 (* for parse error message *)
let symbol_start = ref 0 (* for parse error message *)

type t = (* MinCamlの構文を表現するデータ型 (caml2html: syntax_t) *)
  | Unit
  | Bool of bool
  | Int of int
  | Float of float
  | SMS (* mapsize *)
  | SLS (* listsize *)
  | HP
  | SP
  | Not of t
  | Neg of t
  | Add of t * t
  | Sub of t * t
  | Mul of t * t
  | Div of t * t
  | FNeg of t
  | FAdd of t * t
  | FSub of t * t
  | FMul of t * t
  | FDiv of t * t
  | Eq of t * t
  | LE of t * t
  | If of t * t * t
  | Let of (Id.t * Type.t * Esc.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of t * t list
  | Tuple of t list * Esc.t
  | LetTuple of (Id.t * Type.t * Esc.t) list * t * t
  | Array of t * t * Esc.t
  | Get of t * t (* t.(t) *)
  | Put of t * t * t (* t.(t) <- t *)
  | FAbs of t
  | FSqrt of t
  | F2I of t
  | I2F of t
  | Floor of t
  | Sendc of t

and fundef = { name : Id.t * Type.t * Esc.t; args : (Id.t * Type.t * Esc.t) list; body : t }


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
	 | SLS -> printf "SLS\n"
	 | SMS -> printf "SMS\n"
	 | HP -> printf "HP\n"
	 | SP -> printf "SP\n"
	 | Tuple(t, esc) -> printf "Tuple Start : %s \n" (Esc.str esc);List.iter (pt i) t;pi ();printf "Tuple end\n"
	 | Not t -> printf "Not\n";pt i t
	 | Neg t -> printf "Neg\n";pt i t
	 | Add(t1, t2) -> printf "Add\n";pt i t1;pt i t2
	 | Sub(t1, t2) -> printf "Sub\n";pt i t1;pt i t2
	 | Mul(t1, t2) -> printf "Mul\n";pt i t1;pt i t2
	 | Div(t1, t2) -> printf "Div\n";pt i t1;pt i t2
	 | FNeg t -> printf "FNeg\n";pt i t
	 | Floor t -> printf "Floor\n";pt i t
	 | Sendc t -> printf "Sendc\n";pt i t
	 | F2I t -> printf "F2I\n";pt i t
	 | I2F t -> printf "I2F\n";pt i t
	 | FSqrt t -> printf "FSqrt\n";pt i t
	 | FAbs t -> printf "FAbs\n";pt i t
	 | FAdd(t1, t2) -> printf "FAdd\n";pt i t1;pt i t2
	 | FSub(t1, t2) -> printf "FSub\n";pt i t1;pt i t2
	 | FMul(t1, t2) -> printf "FMul\n";pt i t1;pt i t2
	 | FDiv(t1, t2) -> printf "FDiv\n";pt i t1;pt i t2
	 | Eq(t1, t2) -> printf "Eq\n";pt i t1;pt i t2
	 | LE(t1, t2) -> printf "LE\n";pt i t1;pt i t2
	 | If(t1, t2, t3) -> printf "IF\n";pt i t1;pi ();printf "THEN\n";pt i t2;pi ();printf "ELSE\n";pt i t3
	 | Let((t1, _, esc), t3, t4) -> printf "LET %s = : %s\n" t1 (Esc.str esc);pt i t3;pi ();printf "IN\n";pt i t4
	 | LetRec({ name = (x, _, esc); args = yts; body = e1}, e2) ->
	     (printf "LetRec %s" x;
		(List.iter
		   (fun (id, _, _ ) -> printf " %s" id)
		   yts);
	      printf " = : %s\n" (Esc.str esc);
	      pt i e1;
	      pi ();printf "IN\n";
	      pt i e2);
	 | App(t, tl) -> printf "APP\n";pt i t;pi ();printf "ACTUAL_ARGS\n";List.iter (pt i) tl;
	 | LetTuple(itl, t1, t2) -> (printf "LETTUPLE\n";
				     (List.iter
					(fun (id, _, esc) -> pi ();printf "  %s(%s) \n" id (Esc.str esc))
					itl);
				     pi ();printf "=\n";
				     pt i t1;
				     pi ();printf "IN\n";
				     pt i t2;)
	 | Array(t1, t2, esc) -> printf "Array.create : %s\n" (Esc.str esc);pt i t1;pt i t2
	 | Get(t1, t2) -> printf "GET\n";pt i t1;pt i t2
	 | Put(t1, t2, t3) -> printf "PUT\n";pt i t1;pt i t2;pt i t3)
  in (printf "=== Syntax.t ===\n";pt 0 t;printf "=== End ===\n";t);;
