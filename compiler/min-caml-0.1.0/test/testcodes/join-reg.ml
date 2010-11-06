let rec pi x y =
  if x = y then
    print_int 1
  else
    print_int 0
in

let rec f _ = 123 in
let rec g _ = 456 in
let rec h _ = 789 in

let x = f () in
let y = g () in
pi 912 ((if h () = 0 then x - y else y - x) + x + y)
(* then節ではxがr0でyがr1に、else節ではyがr0でxがr1にある *)
