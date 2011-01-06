entry:
	lli	%sp, 0
	addi	%ra, %r0, halt
	lli	%hp, 50000
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	j	loop.100
halt:
	halt
calc_sin.171:
	llif	%f1, -0.166667
	lhif	%f1, -0.166667
	llif	%f2, 0.008333
	lhif	%f2, 0.008333
	llif	%f3, -0.000198
	lhif	%f3, -0.000198
	llif	%f4, 0.000003
	lhif	%f4, 0.000003
	llif	%f5, 0.000000
	lhif	%f5, 0.000000
	llif	%f6, 0.000000
	lhif	%f6, 0.000000
	mulf	%f7, %f0, %f0
	mulf	%f8, %f7, %f0
	mulf	%f6, %f7, %f6
	addf	%f5, %f5, %f6
	mulf	%f5, %f7, %f5
	addf	%f4, %f4, %f5
	mulf	%f4, %f7, %f4
	addf	%f3, %f3, %f4
	mulf	%f3, %f7, %f3
	addf	%f2, %f2, %f3
	mulf	%f2, %f7, %f2
	addf	%f1, %f1, %f2
	mulf	%f1, %f8, %f1
	addf	%f0, %f0, %f1
	jr	%ra
sinf__.173:
	llif	%f1, 1.570796
	lhif	%f1, 1.570796
	llif	%f2, 3.141593
	lhif	%f2, 3.141593
	llif	%f3, 6.283185
	lhif	%f3, 6.283185
	bgtf	%f0, %f3, bgtf_else.234
	bgtf	%f0, %f2, bgtf_else.235
	bgtf	%f0, %f1, bgtf_else.236
	j	calc_sin.171
bgtf_else.236:
	subf	%f0, %f2, %f0
	j	sinf__.173
bgtf_else.235:
	subf	%f0, %f0, %f2
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	sinf__.173
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	negf	%f0, %f0
	jr	%ra
bgtf_else.234:
	subf	%f0, %f0, %f3
	j	sinf__.173
sin.92:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.237
	j	sinf__.173
bgtf_else.237:
	negf	%f0, %f0
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	sinf__.173
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	negf	%f0, %f0
	jr	%ra
calc_cos.138:
	llif	%f1, 0.041667
	lhif	%f1, 0.041667
	llif	%f2, -0.001389
	lhif	%f2, -0.001389
	llif	%f3, 0.000025
	lhif	%f3, 0.000025
	llif	%f4, -0.000000
	lhif	%f4, -0.000000
	llif	%f5, -0.000000
	lhif	%f5, -0.000000
	mulf	%f0, %f0, %f0
	mulf	%f5, %f0, %f5
	addf	%f4, %f4, %f5
	mulf	%f4, %f0, %f4
	addf	%f3, %f3, %f4
	mulf	%f3, %f0, %f3
	addf	%f2, %f2, %f3
	mulf	%f2, %f0, %f2
	addf	%f1, %f1, %f2
	mulf	%f1, %f0, %f1
	llif	%f2, 1.000000
	lhif	%f2, 1.000000
	llif	%f3, 0.500000
	lhif	%f3, 0.500000
	mulf	%f3, %f3, %f0
	subf	%f2, %f2, %f3
	mulf	%f0, %f0, %f1
	addf	%f0, %f2, %f0
	jr	%ra
cosf__.140:
	llif	%f1, 1.570796
	lhif	%f1, 1.570796
	llif	%f2, 3.141593
	lhif	%f2, 3.141593
	llif	%f3, 6.283185
	lhif	%f3, 6.283185
	bgtf	%f0, %f3, bgtf_else.238
	bgtf	%f0, %f2, bgtf_else.239
	bgtf	%f0, %f1, bgtf_else.240
	j	calc_cos.138
bgtf_else.240:
	subf	%f0, %f2, %f0
	j	cosf__.140
bgtf_else.239:
	subf	%f0, %f0, %f2
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	cosf__.140
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	negf	%f0, %f0
	jr	%ra
bgtf_else.238:
	subf	%f0, %f0, %f3
	j	cosf__.140
cos.94:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.241
	j	cosf__.140
bgtf_else.241:
	negf	%f0, %f0
	j	cosf__.140
f.98:
	sf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	sin.92
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_print_float_binary
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	cos.94
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	j	yj_print_float_binary
loop.100:
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	bgtf	%f0, %f1, bgtf_else.242
	sf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	f.98
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	llif	%f0, 0.100000
	lhif	%f0, 0.100000
	lf	%f1, [%sp + 0]
	addf	%f0, %f1, %f0
	j	loop.100
bgtf_else.242:
	jr	%ra
yj_print_char:
	sendc	%r1
	jr	%ra
yj_create_array:
	lli	%r3, 0
yj_create.loop:
	add	%r4, %hp, %r3
	sw	%r2, [%r4 + 0]
	addi	%r3, %r3, 1
	bgt	%r1, %r3, yj_create.loop
	add	%r1, %r0, %hp
	add	%hp, %hp, %r3
	jr	%ra
yj_create_float_array:
	lli	%r3, 0
yj_create_float.loop:
	add	%r4, %hp, %r3
	sf	%f0, [%r4 + 0]
	addi	%r3, %r3, 1
	bgt	%r1, %r3, yj_create_float.loop
	add	%r1, %r0, %hp
	add	%hp, %hp, %r3
	jr	%ra
yj_float_of_int:
	itof	%f0, %r1
	jr	%ra
yj_int_of_float:
	ftoi	%r1, %f0
	jr	%ra
yj_sqrt:
	sqrt	%f0, %f0
	jr	%ra
yj_floor:
	floor	%f0, %f0
	jr	%ra
yj_read_int:
	lli	%r1, 0
	lli	%r2, 0
	recv	%r1
	sll	%r1, %r1, 8
	recv	%r2
	xor	%r1, %r1, %r2
	sll	%r1, %r1, 8
	recv	%r2
	xor	%r1, %r1, %r2
	sll	%r1, %r1, 8
	recv	%r2
	xor	%r1, %r1, %r2
	jr	%ra
yj_read_float:
	lli	%r1, 0
	lli	%r2, 0
	recv	%r1
	sll	%r1, %r1, 8
	recv	%r2
	xor	%r1, %r1, %r2
	sll	%r1, %r1, 8
	recv	%r2
	xor	%r1, %r1, %r2
	sll	%r1, %r1, 8
	recv	%r2
	xor	%r1, %r1, %r2
	movi2f	%f0, %r1
	jr	%ra
yj_fabs:
	absf	%f0, %f0
	jr	%ra
yj_fneg:
	negf	%f0, %f0
	jr	%ra
yj_print_float_binary:
	movf2i	%r1, %f0
	sendc	%r1
	sra	%r1, %r1, 8
	sendc	%r1
	sra	%r1, %r1, 8
	sendc	%r1
	sra	%r1, %r1, 8
	sendc	%r1
	lli	%r1, 10
	sendc	%r1
	jr	%ra