entry:
1	nop
2	lli	%r1, 1
3	lli	%r2, 2
4	bneq	%r1, %r2, bneq_else.1
5	nop
	nop
	nop
	nop
	nop
halt.1:
6	lli	%r3, 32
7	sendc	%r3
8	nop
	nop
	nop
	nop
	nop
9	halt
halt.2:
10	lli	%r4, 31
11	sendc	%r4
12	nop
	nop
	nop
	nop
	nop
	nop
13	halt
halt.3:
14	lli	%r5, 30
15	sendc	%r5
16	nop
	nop
	nop
	nop
	nop
17	halt
bneq_else.1:
18	lli	%r2, 1
19	bneq	%r1, %r2, halt.3
20	j	halt.2