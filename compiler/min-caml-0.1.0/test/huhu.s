entry:
	lli	%sp, 0
	lli	%r1, 0
	sw	%ra, [%sp + 4]
	jal	aaa.5
	nop	
	nop
	lw	[%sp + 4], %ra
	halt
aaa.5:
	lli	%r2, 1
	bgt	%r1, %r2, bgt_else.13
	nop
	b	yj_print_int
	nop
bgt_else.13:
	addi	%r1, %r1, 1
	b	aaa.5
	nop
