let rec p x y =
  if x = y then
    print_int 1
  else
    print_int 0
in
let rec compose f g =
  let rec composed x = g (f x) in
  composed in
let rec dbl x = x + x in
let rec inc x = x + 1 in
let rec dec x = x - 1 in
let h = compose inc (compose dbl dec) in
p (h 123) 247
