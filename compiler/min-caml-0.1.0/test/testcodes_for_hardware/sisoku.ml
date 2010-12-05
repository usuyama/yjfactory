let rec f x y plus minus =
  if 100 < plus then
    if 101 >= plus then
      if -100 > minus then
	if -101 <= minus then
	  if plus = 101 then
	    if minus = -101 then
	      (x + y)
	    else
	      -1
	  else
	    -2
	else
	  -3
      else
	-4
    else
      -5
  else
    if y > 10000 then
      f (x * y) (y / 2) (plus + 1) (minus - 1)
    else
      if x > 10000 then
	f (x * y) (x / 2) (plus + 1) (minus - 1)
      else
	if x < y then
	  f (x * y) (y - x) (plus + 1) (minus - 1)
	else
	  f (x * y) (y + x) (plus + 1) (minus - 1)
in print_int (f 3 3 0 0)

