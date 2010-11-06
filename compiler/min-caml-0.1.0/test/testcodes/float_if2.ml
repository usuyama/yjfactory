let rec f x = (x = 0.0) in 
  (if f 1.0 then
    print_int 0
  else
    print_int 1);
  (if f 0.0 then
    print_int 1
  else
    print_int 0)
  
