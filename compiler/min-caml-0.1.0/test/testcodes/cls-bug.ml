(* �����ѡפ�known function optimization�Ǥ����ܤʾ�� *)
(* Cf. http://www.yl.is.s.u-tokyo.ac.jp/~sumii/pub/compiler-enshu-2002/Mail/8 *)
let rec p x y =
  if x = y then
    print_int 1
  else
    print_int 0
in
let rec f x = x + 123 in
let rec g y = f in
p ((g 456) 789) 912
