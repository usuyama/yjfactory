entry:
	lli	%sp, 0
	lli	%ra, 0
	lli	%r0, 30
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	fib.10
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	jal	yj_print_int
	halt
fib.10:
	lli	%r1, 1
	bgt	%r0, %r1, bgt_else.24
	jr	%ra
bgt_else.24:
	lli	%r1, 1
	sub	%r1, %r0, %r1
	sw	%r0, [%sp + 0]
	add	%r0, %r0, %r1
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	fib.10
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 2
	lw	%r2, [%sp + 0]
	sub	%r1, %r2, %r1
	sw	%r0, [%sp + 1]
	add	%r0, %r0, %r1
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	fib.10
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r1, [%sp + 1]
	add	%r0, %r1, %r0
	jr	%ra
yj_print_int:
	sendw	%r1
	jr	%ra
yj_print_float:
	movf2i	%r1, %f0
	sendw	%r1
	jr	%ra
