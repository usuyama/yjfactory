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
	read_float	%f0
	jr	%ra
yj_fabs:
	absf	%f0, %f0
	jr	%ra
yj_fneg:
	negf	%f0, %f0
	jr	%ra