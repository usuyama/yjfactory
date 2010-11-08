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
pi 1037 ((if h () = 0 then x + 1 else y + 2) + x + y)
(* then節ではxがr0でyがスタックに、else節ではyがr0でxがスタックにある *)
