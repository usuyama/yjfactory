let rec p x y =
  if x = y then
    print_int 1
  else
    print_int 0
in
let t = 123 in
let f = 456 in
let rec even x =
  let rec odd x =
    if x > 0 then even (x - 1) else
    if x < 0 then even (x + 1) else
    f in
  if x > 0 then odd (x - 1) else
  if x < 0 then odd (x + 1) else
  t in
  p 456 (even 789)
