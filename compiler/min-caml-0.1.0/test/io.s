yj_print_int:
	sendw	%r1
	jr	%ra
yj_print_float:
	movf2i	%r0, %f0
	sendw	%r0
	jr	%ra
yj_print_char:
	sendc	%r1
	jr	%ra