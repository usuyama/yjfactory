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
(* then��Ǥ�x��r0��y��r1�ˡ�else��Ǥ�y��r0��x��r1�ˤ��� *)
