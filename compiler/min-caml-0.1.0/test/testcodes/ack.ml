let rec f x y =
  if x = y then
    print_int 1
  else
    print_int 0
in
let rec ack x y =
  if x <= 0 then y + 1 else
    if y <= 0 then ack (x - 1) 1 else
    ack (x - 1) (ack x (y - 1)) in
(*  f (ack 3 2) 29;
  f (ack 3 4) 125;
  f (ack 3 10) 8189; *)
  f (ack 3 6) 509
