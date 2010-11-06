let rec f _ = 12345 in
let y = Array.create 10 3 in
let x = 67890 in
if (if y.(0) = 3 then f () + y.(1) + x else 7) = 80238 then
  print_int 1
else
  print_int 0
