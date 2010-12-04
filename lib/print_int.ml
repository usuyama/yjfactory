let rec div10 x =
  let rec div10_sub
  if x<10 then ret
  else div10_sub (x-10) (ret + 1)
in div10_sub x 0 in

let rec print_int x =
  if x < 10 then print_char (x+48)
  else
    let q=div10 x in
      print_int q;
      print_char (x-q*10)
