let rec pi x y =
  if x = y then
    print_int 1
  else
    print_int 0
in
let rec gcd m n =
  if m = 0 then n else
  if m <= n then gcd m (n - m) else
  gcd n (m - n) in
pi (gcd 21600 337500) 2700
