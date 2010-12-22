entry:
	lli	%sp, 0
	addi	%ra, %r0, loop
	lli	%hp, 50000
	lli	%r1, 4
	lli	%r2, 3
	lli	%r3, 2
	lli	%r4, 1
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	f.139
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	sendc	%r1
	lli	%r2, -509
	lhi	%r2, -509
	j	g.136
loop:
	j	loop
div10_sub.336:
	lli	%r3, 10
	bgt	%r3, %r1, bgt_else.363
	lli	%r3, 10
	sub	%r1, %r1, %r3
	lli	%r3, 1
	add	%r2, %r2, %r3
	j	div10_sub.336
bgt_else.363:
	add	%r1, %r0, %r2
	jr	%ra
div10.320:
	lli	%r2, 0
	j	div10_sub.336
print_int.128:
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.364
	lli	%r2, 10
	bgt	%r2, %r1, bgt_else.365
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	div10.320
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	sw	%r1, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	print_int.128
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 10
	lw	%r2, [%sp + 1]
	mul	%r1, %r2, %r1
	lw	%r2, [%sp + 0]
	sub	%r1, %r2, %r1
	lli	%r2, 48
	add	%r1, %r1, %r2
	j	yj_print_char
bgt_else.365:
	lli	%r2, 48
	add	%r1, %r1, %r2
	j	yj_print_char
bgt_else.364:
	lli	%r2, 45
	sw	%r1, [%sp + 0]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_print_char
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r1, [%sp + 0]
	sub	%r1, %r0, %r1
	j	print_int.128
g.136:
	bneq	%r1, %r2, bneq_else.366
	lli	%r1, 1
	j	print_int.128
bneq_else.366:
	lli	%r1, 0
	j	print_int.128
f.139:
	add	%r5, %r1, %r2
	add	%r6, %r1, %r3
	add	%r7, %r1, %r4
	add	%r8, %r2, %r3
	add	%r9, %r2, %r4
	add	%r10, %r3, %r4
	add	%r11, %r5, %r6
	add	%r12, %r5, %r7
	add	%r13, %r5, %r8
	add	%r14, %r5, %r9
	add	%r15, %r5, %r10
	add	%r16, %r6, %r7
	add	%r17, %r6, %r8
	add	%r18, %r6, %r9
	add	%r19, %r6, %r10
	add	%r20, %r7, %r8
	add	%r21, %r7, %r9
	add	%r22, %r7, %r10
	add	%r23, %r8, %r9
	add	%r24, %r8, %r10
	add	%r25, %r9, %r10
	add	%r26, %r11, %r12
	add	%r27, %r11, %r13
	sw	%r27, [%sp + 0]
	add	%r27, %r11, %r14
	sw	%r27, [%sp + 1]
	add	%r27, %r11, %r15
	sw	%r27, [%sp + 2]
	add	%r27, %r11, %r16
	sw	%r27, [%sp + 3]
	add	%r27, %r11, %r17
	sw	%r27, [%sp + 4]
	add	%r27, %r11, %r18
	sw	%r27, [%sp + 5]
	add	%r27, %r11, %r19
	sw	%r27, [%sp + 6]
	add	%r27, %r11, %r20
	sw	%r27, [%sp + 7]
	add	%r27, %r11, %r21
	sw	%r27, [%sp + 8]
	add	%r27, %r11, %r22
	sw	%r27, [%sp + 9]
	add	%r27, %r11, %r23
	sw	%r27, [%sp + 10]
	add	%r27, %r11, %r24
	sw	%r27, [%sp + 11]
	add	%r27, %r11, %r25
	add	%r1, %r1, %r2
	add	%r1, %r1, %r3
	add	%r1, %r1, %r4
	add	%r1, %r1, %r5
	add	%r1, %r1, %r6
	add	%r1, %r1, %r7
	add	%r1, %r1, %r8
	add	%r1, %r1, %r9
	add	%r1, %r1, %r10
	add	%r1, %r1, %r11
	add	%r1, %r1, %r12
	add	%r1, %r1, %r13
	add	%r1, %r1, %r14
	add	%r1, %r1, %r15
	add	%r1, %r1, %r16
	add	%r1, %r1, %r17
	add	%r1, %r1, %r18
	add	%r1, %r1, %r19
	add	%r1, %r1, %r20
	add	%r1, %r1, %r21
	add	%r1, %r1, %r22
	add	%r1, %r1, %r23
	add	%r1, %r1, %r24
	add	%r1, %r1, %r25
	add	%r1, %r1, %r26
	lw	%r2, [%sp + 0]
	add	%r1, %r1, %r2
	lw	%r2, [%sp + 1]
	add	%r1, %r1, %r2
	lw	%r2, [%sp + 2]
	add	%r1, %r1, %r2
	lw	%r2, [%sp + 3]
	add	%r1, %r1, %r2
	lw	%r2, [%sp + 4]
	add	%r1, %r1, %r2
	lw	%r2, [%sp + 5]
	add	%r1, %r1, %r2
	lw	%r2, [%sp + 6]
	add	%r1, %r1, %r2
	lw	%r2, [%sp + 7]
	add	%r1, %r1, %r2
	lw	%r2, [%sp + 8]
	add	%r1, %r1, %r2
	lw	%r2, [%sp + 9]
	add	%r1, %r1, %r2
	lw	%r2, [%sp + 10]
	add	%r1, %r1, %r2
	lw	%r2, [%sp + 11]
	add	%r1, %r1, %r2
	add	%r1, %r1, %r27
	sub	%r1, %r0, %r1
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