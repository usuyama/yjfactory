entry:
	lli	%sp, 0
	addi	%ra, %r0, halt
	lli	%hp, 50000
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	llif	%f1, 2.000000
	lhif	%f1, 2.000000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	f.4
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	j	yj_print_float
halt:
	halt
f.4:
	addf	%f0, %f0, %f1
	jr	%ra
yj_print_int:
	sendw	%r1
	jr	%ra
yj_print_float:
	print_float	%f0
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
yj_sin:
	sin	%f0, %f0
	jr	%ra
yj_cos:
	cos	%f0, %f0
	jr	%ra
yj_atan:
	atan	%f0, %f0
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
	read_int	%r1
	jr	%ra
yj_read_float:
	read_float	%f0
	jr	%ra
yj_fabs:
	absf	%f0, %f0
	jr	%ra
yj_fneg:
	negf	%f0, %f0
	jr	%ra%