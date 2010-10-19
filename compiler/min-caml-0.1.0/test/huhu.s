	j	entry
aaa.6:
	li	%r2, 1
	beq	%r1, %r2, beq_else.15
	nop
	li	%r1, 1
	b	yj_print_int
	nop
beq_else.15:
	addi	%r1, %r1, 1
	b	aaa.6
	nop
entry:
	li	%r1, 0
	sw	%ra, [%sp + 4]
	call	aaa.6
	nop	# delay slot
	nop
	lw	[%sp + 4], %ra
	halt
