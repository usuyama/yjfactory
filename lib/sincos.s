entry:
	lli	%sp, 0
	lli	%ra, 0
	lli	%hp, 10000
	llif	%f0, -0.166667
	lhif	%f0, -0.166667
	llif	%f1, 0.008333
	lhif	%f1, 0.008333
	llif	%f2, -0.000198
	lhif	%f2, -0.000198
	llif	%f3, 0.000003
	lhif	%f3, 0.000003
	llif	%f4, 0.000000
	lhif	%f4, 0.000000
	llif	%f5, 0.000000
	lhif	%f5, 0.000000
	llif	%f6, 1.570796
	lhif	%f6, 1.570796
	llif	%f7, 3.141593
	lhif	%f7, 3.141593
	llif	%f8, 6.283185
	lhif	%f8, 6.283185
	add	%r1, %r0, %hp
	addi	%hp, %hp, 7
	addi	%r2, %r0, calc_sin.30
	sw	%r2, [%r1 + 0]
	sf	%f5, [%r1 + 6]
	sf	%f4, [%r1 + 5]
	sf	%f3, [%r1 + 4]
	sf	%f2, [%r1 + 3]
	sf	%f1, [%r1 + 2]
	sf	%f0, [%r1 + 1]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r3, %r0, sinf__.32
	sw	%r3, [%r2 + 0]
	sf	%f7, [%r2 + 4]
	sf	%f6, [%r2 + 3]
	sf	%f8, [%r2 + 2]
	sw	%r1, [%r2 + 1]
	add	%r27, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r1, %r0, sinf.34
	sw	%r1, [%r27 + 0]
	sw	%r2, [%r27 + 1]
	llif	%f0, 3.140000
	lhif	%f0, 3.140000
	sw	%ra, [%sp + 0]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 1
	jalr	%r26
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	jal	yj_print_float
	halt
calc_sin.30:
	lf	%f1, [%r27 + 6]
	lf	%f2, [%r27 + 5]
	lf	%f3, [%r27 + 4]
	lf	%f4, [%r27 + 3]
	lf	%f5, [%r27 + 2]
	lf	%f6, [%r27 + 1]
	mulf	%f7, %f0, %f0
	mulf	%f8, %f7, %f0
	mulf	%f1, %f7, %f1
	addf	%f1, %f2, %f1
	mulf	%f1, %f7, %f1
	addf	%f1, %f3, %f1
	mulf	%f1, %f7, %f1
	addf	%f1, %f4, %f1
	mulf	%f1, %f7, %f1
	addf	%f1, %f5, %f1
	mulf	%f1, %f7, %f1
	addf	%f1, %f6, %f1
	mulf	%f1, %f8, %f1
	addf	%f0, %f0, %f1
	jr	%ra
sinf__.32:
	lf	%f1, [%r27 + 4]
	lf	%f2, [%r27 + 3]
	lf	%f3, [%r27 + 2]
	lw	%r1, [%r27 + 1]
	bgtf	%f0, %f3, bgtf_else.76
	bgtf	%f0, %f1, bgtf_else.77
	bgtf	%f0, %f2, bgtf_else.78
	add	%r27, %r0, %r1
	lw	%r26, [%r27 + 0]
	jalr	%r26
bgtf_else.78:
	subf	%f0, %f1, %f0
	lw	%r26, [%r27 + 0]
	jalr	%r26
bgtf_else.77:
	subf	%f0, %f0, %f1
	sw	%ra, [%sp + 0]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 1
	jalr	%r26
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	fneg	%f0, %f0
	jr	%ra
bgtf_else.76:
	subf	%f0, %f0, %f3
	lw	%r26, [%r27 + 0]
	jalr	%r26
sinf.34:
	lw	%r27, [%r27 + 1]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.79
	lw	%r26, [%r27 + 0]
	jalr	%r26
bgtf_else.79:
	fneg	%f0, %f0
	sw	%ra, [%sp + 0]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 1
	jalr	%r26
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	fneg	%f0, %f0
	jr	%ra
