let rec print_int x =
  let rec div10 x =
    let rec div10_sub x ret =
      if x < 10 then ret
      else div10_sub (x - 10) (ret + 1)
    in div10_sub x 0
  in
    if x < 0 then
      (print_char 45;print_int (-x))
    else
      if x < 10 then print_char (x + 48)
      else
	let q = div10 x
	in (print_int q;
	    print_char ((x-q*10) + 48))
in
let rec sin x =
  let rec calc_sin x =
    let s1 = -0.1666666667 in
    let s2 = 0.0083333333 in
    let s3 = -0.0001984127 in
    let s4 = 0.0000027557 in
    let s5 = 0.0000000251 in
    let s6 = 0.0000000002 in
    let x2 = x *. x in
    let x3 = x2 *. x in
    let r = s2 +. x2 *. (s3 +. x2 *. (s4 +. x2 *. ( s5 +. x2 *. s6))) in
      x +. x3 *. (s1 +. x2 *. r) in
  let rec sinf__ x =
    let h_pi = 1.5707963268 in
    let pi = 3.1415926535 in
    let d_pi = 6.2831853071 in
      if x > d_pi then sinf__ (x -. d_pi)
      else if x > pi then (-.sinf__ (x -. pi))
      else if x > h_pi then sinf__ (pi -. x)
      else (calc_sin x)
  in if x >= 0.0 then sinf__ x else ( -.sinf__ (-.x))
in
let rec cos x =
  let rec calc_cos x =
    let c1  =  0.04166666666666660190 in
    let c2  = -0.00138888888888741095749 in
    let c3  =  0.0000248015872894767294178 in
    let c4  = -0.000000275573143513906633035 in
    let c5  = -0.00000000208757232129817482790 in
    let z = x *.x in
    let r = z *. (c1 +. z *. (c2 +. z *. (c3 +. z *. (c4 +. z *. c5)))) in
      1.0000 -. 0.5000 *. z +. (z *. r)
  in let rec cosf__ x =
      let h_pi = 1.5707963268 in
      let pi = 3.1415926535 in
      let d_pi = 6.2831853071 in
	if x > d_pi then cosf__ (x -. d_pi)
	else if x > pi then (-. cosf__ (x -. pi))
	else if x > h_pi then cosf__ (pi -. x)
	else calc_cos x
  in if x >= 0.0 then cosf__ x else cosf__ (-.x)
in let rec atan x = (* taylor expansion *)
  if fabs x > 0.15 then
    let new_x = ( -1.0 +. sqrt ( 1.0 +. x *. x )) /. x in
      2.0 *. ( atan new_x )
  else
    let xx = x *. x in (* honer method *)
      x *. (1. +. xx *. (-1. /. 3. +. xx *. (1. /. 5. +. xx *. (1. /. 7.))))
in
