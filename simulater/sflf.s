entry:
	lli	%sp, 0
	llif	%f0, 11.000000
	lhif	%f0, 11.000000
	sf	%f0, [%sp + 0]
	lf	%f1, [%sp + 0]
	sf	%f1, [%sp + 1]
	llif	%f0, 22.000000
	lhif	%f0, 22.000000
	sf	%f0, [%sp + 2]
	lf	%f0, [%sp + 1]
	lf	%f1, [%sp + 2]
	halt