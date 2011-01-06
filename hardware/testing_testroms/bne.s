entry:
	nop
	lli	%r1, 1
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.1
halt.2:
	halt
bneq_else.1:
	lli	%r2, 1
	bneq	%r1, %r2, entry
	j	halt.2