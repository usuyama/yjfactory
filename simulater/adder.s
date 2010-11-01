entry:
	lli	%sp, 0
	lli	%ra, 0
	lli	%hp, 10000
	lli	%r1, 3
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	make_adder.5
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	add	%r27, %r0, %r1
	lli	%r1, 7
	sw	%ra, [%sp + 0]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 1
	jalr	%r26
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	j	yj_print_int
	halt
adder.11:
	lw	%r2, [%r27 + 1]
	add	%r1, %r2, %r1
	jr	%ra
make_adder.5:
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	lli	%r3	adder.11
	sw	%r3, [%r2 + 0]
	sw	%r1, [%r2 + 1]
	add	%r1, %r0, %r2
	jr	%ra
