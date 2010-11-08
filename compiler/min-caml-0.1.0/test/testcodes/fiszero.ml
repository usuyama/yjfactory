let rec f x =
  (if 0.0 = x then
    print_int 1
  else print_int 0);
  (if x = 0.0 then
     print_int 1
   else print_int 0);
  (if 0.0 <> x then
    print_int 0
  else print_int 1);
  if x <> 0.0 then
    print_int 0
  else print_int 1
in f 0.0
