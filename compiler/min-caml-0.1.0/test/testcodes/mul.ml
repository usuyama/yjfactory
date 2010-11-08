let rec pi x y =
  if x = y then
    print_int 1
  else
    print_int 0
in
let x = 1 in
  pi (x * 4 + 1) 5
