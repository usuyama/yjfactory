let rec aaa x =
  if x <= 1 then
    print_int(x)
  else
    aaa (x + 1)
in aaa 0
