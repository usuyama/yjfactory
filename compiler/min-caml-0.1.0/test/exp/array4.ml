let a = Array.create 3 1. in
let x = 0.0 in
let rec loop2 y =
  a.(0) <- x
in
  (loop2 1.0);
  print_float a.(0)
(* arrayに自由変数をいれるときにばぐ *)
  
