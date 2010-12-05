entry:
	lli	%r1, 65
send.2:	
	sendc	%r1
	j	send.2	