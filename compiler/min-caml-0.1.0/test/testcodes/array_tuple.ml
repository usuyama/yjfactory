let rec pi x y =
  if x = y then
    print_int 1
  else
    print_int 0
in
let rec pf x =
  if x = 0.0 then
    print_int 1
  else
    print_int 0
in
let test = Array.create 10 (0, 0.0, 0, 0) in
let new_tuple = (1, 0.0, 3, 4) in
let (x, y, z, p) = test.(0) in
  pi x 0;
  pf y;
  test.(1) <- new_tuple;
  let (x, y, z, p) = test.(1) in
    pi x 1;
    pf y
    
  

  
