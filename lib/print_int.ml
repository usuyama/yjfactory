let rec div10 x ret=
  if x<10 then ret
  else div10 (x-10) (ret + 1)
