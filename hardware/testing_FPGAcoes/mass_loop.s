enrty:
	nop
	lli	%r11, 170
	sendc	%r11
	recv	%r1
	recv	%r2
	recv	%r3
	recv	%r4
	recv	%r5
	recv	%r6
	recv	%r7
	recv	%r8
	recv	%r9
	recv	%r10
	sendc	%r1
	sendc	%r2
	sendc	%r3
	sendc	%r4
	sendc	%r5
	sendc	%r6
	sendc	%r7
	sendc	%r8
	sendc	%r9
	sendc	%r10
	halt