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
pi 789 ((if x <= 0 then g () + x else h () - x) + x)
(* then��Ǥ�else��Ǥ�x��r1�ˤ��� *)
(* ��������ifʸ�����Ǥ�x��r0�ˤ��� *)
