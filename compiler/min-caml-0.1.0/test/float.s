entry:
	lli	%sp, 0
	lli	%ra, 0
	llif	%f0, -12.300000
	lhif	%f0, -12.300000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_abs_float
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_sqrt
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_cos
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_sin
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	llif	%f1, 4.500000
	lhif	%f1, 4.500000
	fadd	%f0, %f0, %f1	llif	%f1, 48.300300
	lhif	%f1, 48.300300
	fsub	%f0, %f0, %f1	lli	%r0, 1000000
	lhi	%r0, 1000000
