open Printf
type t =
  | Can
  | Never
  | Var of t ref

let rec str = function
  | Can -> "can escape"
  | Never -> "never escape"
  | Var t -> sprintf "Var(%s)" (str !t)


let default = ref Never

let gentyp () = Var(ref !default)

let rec to_b = function
  | Can -> true
  | Never -> false
  | Var t -> to_b !t

let of_b = function
  | true -> Can
  | false -> Never
