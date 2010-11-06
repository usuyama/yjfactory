let rec poly1 x = x in
let rec poly2 x y = x y in
  print_int (poly1 1);
  print_float (poly1 1.0);
  print_int (poly2 poly1 1);
  print_float (poly2 poly1 1.0)
  
  
  
