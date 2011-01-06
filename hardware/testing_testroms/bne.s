entry:
	nop
	lli	%r1, 1
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.1
halt.1:
	lli	%r1, 32
	sendc	%r1
	sendc	%r2
	halt
halt.2:
	lli	%r2, 31
	sendc	%r4
	sendc	%r1
	sendc	%r2
	halt
halt.3:
	lli	%r4, 30
	sendc	%r1
	sendc	%r2
	halt
bneq_else.1:
	lli	%r2, 1
	bneq	%r1, %r2, halt.3
	j	halt.2