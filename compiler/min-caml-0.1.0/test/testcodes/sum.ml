let rec pi x y =
  if x = y then
    print_int 1
  else
    print_int 0
in let rec sum x y =
  if x = 0 then y
  else sum (x - 1) (y + x)
in pi 500500 (sum 1000 0)


