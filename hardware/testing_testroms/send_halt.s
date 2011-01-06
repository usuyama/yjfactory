entry:
	nop
	lli	%r1, 48
send.1:
	sendc	%r1
	halt
	j	send.1