let rec f x y =
  if x = y then
    print_int 1
  else
    print_int 0
in
let x = 10 in
let y = 32 in
let z = 15 in
let big = 65536000 in
  f (10 / 2) 5;
  f (x / 2) 5;
  f (y / 2) 16;
  f (y / 4) 8;
  f (y / 8) 4;
  f (z / 2) 7;
  f (big / 65536) 1000
