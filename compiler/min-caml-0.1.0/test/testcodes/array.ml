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
let test1 = Array.create 10 0 in
let test2 = Array.create 10 10.0 in
    test1.(0) <- 1;
    test1.(1) <- 2;
    pi test1.(0) 1;
    pi test1.(1) 2;
    test2.(0) <- 0.0;
    test2.(1) <- 0.0;
    pf test2.(0);
    pf test2.(1)
