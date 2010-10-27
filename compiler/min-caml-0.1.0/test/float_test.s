entry:
	lli	%sp, 0
	lli	%ra, 0
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	llif	%f1, 2.000000
	lhif	%f1, 2.000000
	llif	%f2, 3.000000
	lhif	%f2, 3.000000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	test.6
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	jal	yj_print_float
	halt
test.6:
	fmul	%f1, %f1, %f2
	fadd	%f0, %f0, %f1
	jr	%ra
