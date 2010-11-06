let rec f x y =
  (if x = y then
    print_int 1
  else
    print_int 0);
  if x = y then
    print_int 1
  else
    print_int 0
in f 0 0
