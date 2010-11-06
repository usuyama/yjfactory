let rec f x y z =
  (if x < y then
     print_int 1
   else
     print_int 0);
  (if x > y then
     print_int 0
   else
     print_int 1);
  (if x <= y then
     print_int 1
   else
     print_int 0);
  (if x <= z then
     print_int 1
   else
     print_int 0);
  (if x >= z then
     print_int 1
   else
     print_int 0);
  (if y >= z then
     print_int 1
   else
     print_int 0);
  (if x <> z then
     print_int 0
   else
     print_int 1);
  (if x = z then
     print_int 1
   else
     print_int 0);
  (if x = y then
     print_int 0
   else
     print_int 1)
in f 1 2 1

