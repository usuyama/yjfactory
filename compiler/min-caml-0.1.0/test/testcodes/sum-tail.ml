let rec pi x y =
  if x = y then
    print_int 1
  else
    print_int 0
in
let rec sum acc x =
  if x <= 0 then acc else
  sum (acc + x) (x - 1) in
pi (sum 0 10000) 50005000
