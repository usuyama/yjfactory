let rec f x y z =
  (if x < y then
     print_int 1
   else
     print_int 0);
  (if x > y then
     print_int 0
   else
     print_int 1);
  (if x <= z then
     print_int 1
   else
     print_int 0);
  (if x >= y then
     print_int 0
   else
     print_int 1);
  (if 0.0 <> y then
     print_int 1
   else
     print_int 0);
  (if x <> 0.0 then
     print_int 0
   else
     print_int 1);
  (if 0.0 <> y then
     print_int 1
   else
     print_int 0);
  (if 0.0 = y then
     print_int 0
   else
     print_int 1);
  (if x = 0.0 then
     print_int 1
   else
     print_int 0)
in f 0.0 1.0 0.0




