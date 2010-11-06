let rec f x y =
  if x = y then
    print_int 1
  else
    print_int 0
in
let rec make_adder x =
  let rec adder y = x + y in
  adder in
  f ((make_adder 3) 7) 10
   
