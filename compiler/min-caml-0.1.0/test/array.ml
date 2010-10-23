let test = Array.create 3 0 in
let write () =
  test.(0) <- 1;
  test.(1) <- 2;
  test.(2) <- 3
in let read () =
    print_int (test.(0));
    print_int (test.(1));
    print_int (test.(2))
in write ();read()


  
