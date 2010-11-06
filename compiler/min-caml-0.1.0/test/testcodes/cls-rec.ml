(* 自由変数のある再帰関数 *)
let rec pi x y =
  if x = y then
    print_int 1
  else
    print_int 0
in
let x = 10 in
let rec f y =
  if y = 0 then 0 else
  x + f (y - 1) in
pi (f 123) 1230
