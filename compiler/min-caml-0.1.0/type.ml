(*-*- coding:euc-jp -*-*)
open Printf
type t = (* MinCamlの型を表現するデータ型 (caml2html: type_t) *)
  | Unit
  | Bool
  | Int
  | Float
  | Fun of t list * t(* arguments are uncurried *)
  | Tuple of t list
  | Array of t
  | Var of t option ref

let rec str_of_t t =
  match t with
    | Unit -> "Unit"
    | Bool -> "Bool"
    | Int -> "Int"
    | Float -> "Float"
    | Fun(tl, t) -> sprintf "Fun args: (%s) body: %s" (String.concat "," (List.map str_of_t tl)) (str_of_t t)
    | Tuple(tl) -> sprintf "Tuple(%s)" (String.concat "," (List.map str_of_t tl))
    | Array(t) -> sprintf "Array(%s)" (str_of_t t)
    | Var t -> (sprintf "Var(%s)"
		  (match !t with
		     | Some(t) -> str_of_t t
		     | None ->  "None"))

let gentyp () = Var(ref None) (* 新しい型変数を作る *)
