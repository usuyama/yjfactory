let rec f a b c d =
  if a < b then
    if b <= c then
      if c = d then
	11
      else
	22
    else
      33
  else
    44
in f 1 2 3 3
(* 11 expected *)
