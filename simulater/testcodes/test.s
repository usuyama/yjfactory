	llif	%f2, 3.14
	lhif	%r2, 3.14
	lli	%r4, 10
	lli	%r3, 1
	lli	%r6, 97
	sw	%r4, [%r3 + 2]
	lw	%r5, [%r3 + 2]	
	sf	%f2, [%r3 + 1]
	lf	%f1, [%r3 + 1]
	sendw	%r5
	sendw	%r4
	sendw	%r3
	sendc	%r6
	halt