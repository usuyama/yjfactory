let rec aaa x =
  if x = 1 then
    print_int(1)
  else
    aaa (x + 1)
in aaa 0
