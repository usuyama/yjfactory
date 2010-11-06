let x = 1.23 in
let y = 4.56 in
let z = (-7.89) in
  print_float ((if z < 0. then y else x) +.
		 (if x > 0. then z else y) +.
		 (if y < 0. then x else z))
