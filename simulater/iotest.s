	j	entry
fib.10:
	lli	%r2, 1
	bgt	%r1, %r2, bgt_else.24
	nop
	jr	%ra
	nop
bgt_else.24:
	subi	%r2, %r1, 1
	sw	%r1, [%sp + 0]
	add	%r2, %r0, %r1
	sw	%ra, [%sp + 1]
	jal	fib.10
	nop
	nop
	lw	[%sp + 1], %ra
	lw	[%sp + 0], %r2
	subi	%r2, %r2, 2
	sw	%r1, [%sp + 1]
	add	%r2, %r0, %r1
	sw	%ra, [%sp + 3]
	jal	fib.10
	nop	# delay slot
	nop
	lw	[%sp + 3], %ra
	lw	[%sp + 1], %r2
	add	%r1, %r2, %r1
	jr	%ra
	nop
entry:
	lli	%r1, 30
	sw	%ra, [%sp + 1]
	jal	fib.10
	nop
	nop
	lw	[%sp + 1], %ra
	sw	%ra, [%sp + 1]
	halt
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
