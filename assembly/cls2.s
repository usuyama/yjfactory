entry:
	lli	%sp, 0
	lli	%ra, 0
	lli	%hp, 10000
	lli	%r1, 3
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	cls.8
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	jal	yj_print_int
	halt
test.12:
	lw	%r2, [%r27 + 1]
	lli	%r3, 3
	add	%r1, %r3, %r1
	add	%r1, %r1, %r2
	jr	%ra
cls.8:
	add	%r27, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r2, %r0, test.12
	sw	%r2, [%r27 + 0]
	sw	%r1, [%r27 + 1]
	lli	%r1, 4
	lw	%r26, [%r27 + 0]
	jalr	%r26
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
yj_print_int:
	sendw	%r1
	jr	%ra
yj_print_float:
	movf2i	%r1, %f0
	sendw	%r1
	jr	%ra
yj_print_char:
	sendc	%r1
	jr	%ra
