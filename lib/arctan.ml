let rec arctan x = (* taylor expansion *)
  if abs_float x > 0.15 then
    let new_x = ( -1.0 +. sqrt ( 1.0 +. x *. x )) /. x in
      2.0 *. ( arctan new_x )
  else
    let xx = x *. x in (* honer method *)
      x *. (1. +. xx *. (-1. /. 3. +. xx *. (1. /. 5. +. xx *. (1. /. 7.))))
in
let assert_atan x =
  print_float (atan x -. arctan x);
  print_newline()
in
  assert_atan 100.0;
  assert_atan 1.0;
  assert_atan 0.3;
  assert_atan 0.1;
  assert_atan (-0.1);
  assert_atan (-0.3);
  assert_atan (-1.0);
  assert_atan (-100.0)
