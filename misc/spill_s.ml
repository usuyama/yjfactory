let rec g x y =
  if x = y then
    print_int 1
  else
    print_int 0
in
let rec f a b c d =
  let e = a + b in
  let z = a + b + e in
    -z
in g (f 4 3 2 1) (-14)
