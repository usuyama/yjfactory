let x1 = Array.create 3 0. in
let x2 = Array.create 3 x1 in
  x2.(1) <- Array.create 3 1.;
  print_float (x2.(1).(0));
  x2.(1).(0) <- 3.0;
  print_float (x2.(1).(0))
   
