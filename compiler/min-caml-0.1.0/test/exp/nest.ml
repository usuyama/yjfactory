let dummy = Array.create 0 0. in
let rec make m n =
  let mat = Array.create m dummy in
  let rec init i =
    if i < 0 then () else
      (mat.(i) <- Array.create n 2.;
       init (i - 1)) in
    init (m - 1);
    mat in
let a = make 2 3 in
  print_float (a.(0).(0));
  print_float (a.(1).(1));
  print_float (a.(1).(2))
