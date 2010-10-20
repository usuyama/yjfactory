entry:
	lli	%sp, 0
	lli	%r1, 0
	lli	%ra, 1111
	sw	%ra, [%sp + 1]
	jal	aaa.6
	nop
	nop
	lw	[%sp + 1], %ra
	halt
aaa.6:
	lli	%r2, 1
	bgt	%r2, %r1, bgt_else.15
	nop
	lli	%r1, 1
	halt
	nop
bgt_else.15:
	addi	%r1, %r1, 1
	jal	aaa.6
	nop