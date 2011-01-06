entry:
	lli	%r1, 170
	sendc	%r1
	lli	%sp, 0
	addi	%ra, %r0, halt
	lli	%hp, 50000
	lli	%r1, 1
	lli	%r2, 0
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_create_array
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r1, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_create_float_array
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r2, 60
	lli	%r3, 0
	lli	%r4, 0
	lli	%r5, 0
	lli	%r6, 0
	lli	%r7, 0
	add	%r8, %r0, %hp
	addi	%hp, %hp, 11
	sw	%r1, [%r8 + 10]
	sw	%r1, [%r8 + 9]
	sw	%r1, [%r8 + 8]
	sw	%r1, [%r8 + 7]
	sw	%r7, [%r8 + 6]
	sw	%r1, [%r8 + 5]
	sw	%r1, [%r8 + 4]
	sw	%r6, [%r8 + 3]
	sw	%r5, [%r8 + 2]
	sw	%r4, [%r8 + 1]
	sw	%r3, [%r8 + 0]
	add	%r1, %r0, %r8
	add	%r26, %r0, %r2
	add	%r2, %r0, %r1
	add	%r1, %r0, %r26
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_create_array
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_create_float_array
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_create_float_array
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_create_float_array
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r1, 1
	llif	%f0, 255.000000
	lhif	%f0, 255.000000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_create_float_array
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r1, 50
	lli	%r2, 1
	lli	%r3, -1
	lhi	%r3, -1
	sw	%r1, [%sp + 0]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_create_array
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_create_array
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, 1
	lli	%r3, 1
	lli	%r4, 0
	add	%r1, %r1, %r4
	lw	%r1, [%r1 + 0]
	sw	%r2, [%sp + 1]
	add	%r2, %r0, %r1
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 1
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_float_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 1
	lli	%r2, 0
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 1
	llif	%f0, 1000000000.000000
	lhif	%f0, 1000000000.000000
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_float_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_float_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 1
	lli	%r2, 0
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_float_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_float_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_float_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_float_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 2
	lli	%r2, 0
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 2
	lli	%r3, 0
	sw	%r1, [%sp + 2]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj_create_array
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 1
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 3]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj_create_float_array
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 4]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_create_float_array
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_create_float_array
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_create_float_array
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_create_float_array
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_create_float_array
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_create_float_array
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r1, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_create_float_array
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	add	%r2, %r0, %r1
	lli	%r1, 0
	sw	%r2, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj_create_array
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	add	%r3, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r3 + 1]
	lw	%r1, [%sp + 5]
	sw	%r1, [%r3 + 0]
	add	%r1, %r0, %r3
	add	%r26, %r0, %r2
	add	%r2, %r0, %r1
	add	%r1, %r0, %r26
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj_create_array
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	add	%r2, %r0, %r1
	lli	%r1, 5
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj_create_array
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r1, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj_create_float_array
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 6]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj_create_float_array
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r1, 60
	lw	%r2, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj_create_array
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r1, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj_create_float_array
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	add	%r2, %r0, %r1
	lli	%r1, 0
	sw	%r2, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	yj_create_array
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r2 + 1]
	lw	%r1, [%sp + 7]
	sw	%r1, [%r2 + 0]
	add	%r1, %r0, %r2
	lli	%r2, 180
	lli	%r3, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r4, %r0, %hp
	addi	%hp, %hp, 3
	sf	%f0, [%r4 + 2]
	sw	%r1, [%r4 + 1]
	sw	%r3, [%r4 + 0]
	add	%r1, %r0, %r4
	add	%r26, %r0, %r2
	add	%r2, %r0, %r1
	add	%r1, %r0, %r26
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	yj_create_array
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r1, 1
	lli	%r2, 0
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	yj_create_array
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	add	%r27, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r1, %r0, rt.3026
	sw	%r1, [%r27 + 0]
	lw	%r1, [%sp + 4]
	sw	%r1, [%r27 + 3]
	lw	%r1, [%sp + 2]
	sw	%r1, [%r27 + 2]
	lw	%r1, [%sp + 3]
	sw	%r1, [%r27 + 1]
	lli	%r1, 128
	lli	%r2, 128
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r1, 0
	jr	%ra
halt:
	halt
rt.3026:
	lw	%r3, [%r27 + 3]
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	lli	%r6, 0
	add	%r6, %r4, %r6
	sw	%r1, [%r6 + 0]
	lli	%r6, 1
	add	%r4, %r4, %r6
	sw	%r2, [%r4 + 0]
	lli	%r4, 0
	sra	%r6, %r1, 1
	add	%r4, %r5, %r4
	sw	%r6, [%r4 + 0]
	lli	%r4, 1
	sra	%r2, %r2, 1
	add	%r4, %r5, %r4
	sw	%r2, [%r4 + 0]
	lli	%r2, 0
	llif	%f0, 128.000000
	lhif	%f0, 128.000000
	sw	%r2, [%sp + 0]
	sw	%r3, [%sp + 1]
	sf	%f0, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj_float_of_int
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lf	%f1, [%sp + 2]
	divf	%f0, %f1, %f0
	lw	%r1, [%sp + 0]
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
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