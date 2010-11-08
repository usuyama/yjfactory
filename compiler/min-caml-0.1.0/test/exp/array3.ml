let dummy = Array.create 0 0. in
let rec make m n =
  let mat = Array.create m dummy in
  let rec init i =
    if i < 0 then () else
      (mat.(i) <- Array.create n 2.;
       init (i - 1)) in
    init (m - 1);
    mat in
let rec f a b c =
  let rec loop2 x =
    if x = 0 then () else
      let rec loop1 y =
	if y = 0 then
	  ()
	else
	  (a.(0).(0) <- a.(0).(x);loop1 (y - 1))
      in loop1 (x - 1)
  in loop2 2
in
let a = make 3 3 in
let b = make 3 3 in
let c = make 3 3 in
let e = make 3 3 in
let d = make 3 3 in
  (f a b c);
  print_float a.(0).(0)

  
