entry:
	lli	%sp, 0
	lli	%r1, 30
	sw	%ra, [%sp + 4]
	jal	fib.10
	nop	
	nop
	lw	[%sp + 4], %ra
	sw	%ra, [%sp + 4]
	jal	yj_print_int
	nop	
	nop
	lw	[%sp + 4], %ra
	halt
fib.10:
	lli	%r2, 1
	bgt	%r2, %r1, bgt_else.24
	nop
	jr	%ra
	nop
bgt_else.24:
	subi	%r2, %r1, 1
	sw	%r1, [%sp + 0]
	add	%r2, %r0, %r1
	sw	%ra, [%sp + 4]
	jal	fib.10
	nop	
	nop
	lw	[%sp + 4], %ra
	lw	[%sp + 0], %r2
	subi	%r2, %r2, 2
	sw	%r1, [%sp + 4]
	add	%r2, %r0, %r1
	sw	%ra, [%sp + 12]
	jal	fib.10
	nop	
	nop
	lw	[%sp + 12], %ra
	lw	[%sp + 4], %r2
	add	%r1, %r2, %r1
	jr	%ra
	nop
