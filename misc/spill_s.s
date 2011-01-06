entry:
	lli	%sp, 0
	addi	%ra, %r0, halt
	lli	%hp, 50000
	lli	%r1, 4
	lli	%r2, 3
	lli	%r3, 2
	lli	%r4, 1
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	f.103
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r2, -14
	lhi	%r2, -14
	j	g.100
halt:
	halt
div10_sub.230:
	lli	%r3, 10
	bgt	%r3, %r1, bgt_else.245
	lli	%r3, 10
	sub	%r1, %r1, %r3
	lli	%r3, 1
	add	%r2, %r2, %r3
	j	div10_sub.230
bgt_else.245:
	add	%r1, %r0, %r2
	jr	%ra
div10.214:
	lli	%r2, 0
	j	div10_sub.230
print_int.92:
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.246
	lli	%r2, 10
	bgt	%r2, %r1, bgt_else.247
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	div10.214
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	sw	%r1, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	print_int.92
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
bgt_else.247:
	lli	%r2, 48
	add	%r1, %r1, %r2
	j	yj_print_char
bgt_else.246:
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
	j	print_int.92
g.100:
	bneq	%r1, %r2, bneq_else.248
	lli	%r1, 1
	j	print_int.92
bneq_else.248:
	lli	%r1, 0
	j	print_int.92
f.103:
	add	%r3, %r1, %r2
	add	%r1, %r1, %r2
	add	%r1, %r1, %r3
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