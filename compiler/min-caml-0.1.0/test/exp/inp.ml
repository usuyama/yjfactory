let rec f x =
  print_int x;x
in print_int (100000 * (f 1))
