	lli	%r1, 23
	sw	%r1, [%r1 + 1]
	lw	%r2, [%r1 + 1]
	add	%r1, %r2, %r1
	halt