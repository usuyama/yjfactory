let rec f x =
  print_float_binary (atan x);
(*  print_char '\n'; *)
  print_float_binary (atan (-1.0 *. x))
(*    ;print_char '\n' *)
in
f 0.1;
f 1.0;
f 2.0;
f 5.0;
f 10.0

(* result
0.0996686524912
-0.0996686524912
0.785398163397
-0.785398163397
1.10714871779
-1.10714871779
1.37340076695
-1.37340076695
1.4711276743
-1.4711276743
- : unit = ()
*)
