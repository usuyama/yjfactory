entry:
	lli	%sp, 0
	lli	%ra, 0
	lli	%r1, 5
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	fib.10
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	halt
fib.10:
	lli	%r2, 1
	bgt	%r1, %r2, bgt_else.24
	jr	%ra
bgt_else.24:
	lli	%r2, 1
	sub	%r2, %r1, %r2
	sw	%r1, [%sp + 0]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	fib.10
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, 2
	lw	%r3, [%sp + 0]
	sub	%r2, %r3, %r2
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	fib.10
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	jr	%ra
yj_print_int:
	sendw	%r1
	jr	%ra
yj_print_float:
	movf2i	%r0, %f0
	sendw	%r0
	jr	%ra
yj_print_char:
	sendc	%r1
	jr	%ra