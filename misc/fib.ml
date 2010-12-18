let rec f x y =
  if x = y then
    print_int 1
  else
    print_int 0
in
let rec fib n =
  if n <= 1 then n else
  fib (n - 1) + fib (n - 2) in
f (fib 30) 832040
