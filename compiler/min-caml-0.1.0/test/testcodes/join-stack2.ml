let rec pi x y =
  if x = y then
    print_int 1
  else
    print_int 0
in

let rec f _ = 123 in
let rec g _ = 456 in

let x = f () in
pi 246 ((if x <= 0 then g () + x else x) + x)
(* xがthen節ではセーブされ、else節ではセーブされない *)
(* さらに、xがthen節ではr0に、else節ではr1にある *)
