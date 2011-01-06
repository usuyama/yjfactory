entry:
	lli	%sp, 0
	addi	%ra, %r0, halt
	lli	%hp, 50000
	llif	%f0, 0.100000
	lhif	%f0, 0.100000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	f.104
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	f.104
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	llif	%f0, 2.000000
	lhif	%f0, 2.000000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	f.104
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	llif	%f0, 5.000000
	lhif	%f0, 5.000000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	f.104
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	llif	%f0, 10.000000
	lhif	%f0, 10.000000
	j	f.104
halt:
	halt
atan.102:
	sf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_fabs
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	llif	%f1, 0.150000
	lhif	%f1, 0.150000
	bgtf	%f0, %f1, bgtf_else.246
	lf	%f0, [%sp + 0]
	mulf	%f1, %f0, %f0
	llif	%f2, 1.000000
	lhif	%f2, 1.000000
	llif	%f3, -0.333333
	lhif	%f3, -0.333333
	llif	%f4, 0.200000
	lhif	%f4, 0.200000
	llif	%f5, 0.142857
	lhif	%f5, 0.142857
	mulf	%f5, %f1, %f5
	addf	%f4, %f4, %f5
	mulf	%f4, %f1, %f4
	addf	%f3, %f3, %f4
	mulf	%f1, %f1, %f3
	addf	%f1, %f2, %f1
	mulf	%f0, %f0, %f1
	jr	%ra
bgtf_else.246:
	llif	%f0, -1.000000
	lhif	%f0, -1.000000
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	lf	%f2, [%sp + 0]
	mulf	%f3, %f2, %f2
	addf	%f1, %f1, %f3
	sf	%f0, [%sp + 1]
	movf	%f0, %f1
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_sqrt
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lf	%f1, [%sp + 1]
	addf	%f0, %f1, %f0
	lf	%f1, [%sp + 0]
	divf	%f0, %f0, %f1
	llif	%f1, 2.000000
	lhif	%f1, 2.000000
	sf	%f1, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	atan.102
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lf	%f1, [%sp + 2]
	mulf	%f0, %f1, %f0
	jr	%ra
f.104:
	sf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	atan.102
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_print_float_binary
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	llif	%f0, -1.000000
	lhif	%f0, -1.000000
	lf	%f1, [%sp + 0]
	mulf	%f0, %f0, %f1
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	atan.102
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	j	yj_print_float_binary
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