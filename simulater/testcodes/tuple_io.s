entry:
	lli	%sp, 0
	lli	%ra, 0
	lli	%hp, 10000
	lli	%r1, 1
	llif	%f0, 2.000000
	lhif	%f0, 2.000000
	sf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_print_int
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lf	%f0, [%sp + 0]
	jal	yj_print_float
	halt
yj_print_int:
	sendw	%r1
	jr	%ra
yj_print_float:
	movf2i	%r1, %f0
	sendw	%r1
	jr	%ra
yj_print_char:
	sendc	%r1
	jr	%ra
