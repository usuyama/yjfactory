let rec pi x y =
  if x = y then
    print_int 1
  else
    print_int 0
in
let x = 1 in
let y = 2 in
let rec cls a =
  let rec test z =
    x + y + z + a 
  in test 4
in pi (cls 3) 10
