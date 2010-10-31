let s1 = -0.1666666667
let s2 = 0.0083333333
let s3 = -0.0001984127
let s4 = 0.0000027557
let s5 = 0.0000000251 
let s6 = 0.0000000002 
let q_pi = 0.7853981634
let h_pi = 1.5707963268
let pi = 3.1415926535
let d_pi = 6.2831853071

let rec calc_sin x = 
  let x2 = x *. x in
  let x3 = x2 *. x in
  let r= s2 +. x2 *. (s3 +. x2 *. (s4 +. x2 *. ( s5 +. x2*. s6))) in
    x +. x3 *. (s1 +. x2 *. r)

let rec sinf__ x =
  if x > d_pi then sinf__ (x -. d_pi)
  else if x > pi then (-.sinf__ (x -. pi))
  else if x > h_pi then sinf__(pi -. x)
  else calc_sin x

let rec sinf x = 
  if x >= 0.0 then sinf__ x else (-.sinf__ (-.x))

let c1  =  4.16666666666666019037e-02
let c2  = -1.38888888888741095749e-03
let c3  =  2.48015872894767294178e-05
let c4  = -2.75573143513906633035e-07
let c5  =  2.08757232129817482790e-09
(*let c6  = -1.13596475577881948265e-11*)

let rec calc_cos x =
  let z = x *.x in
  let r = z*.(c1+.z*.(c2+.z*.(c3+.z*.(c4+.z*.c5)))) in
    1.0000 -. 0.5000 *.z +. (z*.r)
let rec cosf__ x =
  if x > d_pi then cosf__ (x -. d_pi)
  else if x > pi then (-.cosf__ (x -. pi))
  else if x > h_pi then cosf__(pi -. x)
  else calc_cos x

let rec cosf x = 
  if x >= 0.0 then cosf__ x else cosf__ (-.x)
