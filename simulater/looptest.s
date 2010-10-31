	lli	%r1, 1000
	lli	%r3, 0
	lli	%r4, 0
loop2:
	lli	%r2, 10000
loop1:
	addi	%r4, %r4, 1
	subi	%r2, %r2, 1
	bgt	%r2, %r3, loop1
	subi	%r1, %r1, 1
	bgt	%r1, %r3, loop2
	halt