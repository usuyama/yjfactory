yj_print_int:
	sendw	%r1
	jr	%ra
yj_print_float:
	sendf	%f0
	jr	%ra
yj_print_char:
	sendc	%r1
	jr	%ra