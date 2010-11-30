entry:
	addi	%r1, %r1, 10
	sw	%r1, [%r1 + 0]
	lw	%r2, [%r1 + 0]
	add	%r3, %r2, %r1