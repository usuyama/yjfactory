let rec f a b c =
  if a < b then
    if b < c then
      11
    else
      22
  else
    33
in f 1. 2. 3.
(* 11 expected *)
