let rec g x y =
  if x = y then
    print_int 1
  else
    print_int 0
in g (-1) (-1);
  g (-509) (-509);
  g (-10509) (-10509)
  
