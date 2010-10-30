entry:
	lli	%sp, 0
	lli	%ra, 0
	lli	%hp, 10000
	lli	%r1, 2
	lli	%r2, 0
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_create_array
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r2, 0
	lli	%r3, 1
	add	%r2, %r1, %r2
	sw	%r3, [%r2 + 0]
	lli	%r2, 1
	lli	%r3, 2
	add	%r2, %r1, %r2
	sw	%r3, [%r2 + 0]
	lli	%r2, 0
	add	%r2, %r1, %r2
	lw	%r2, [%r2 + 0]
	sw	%r1, [%sp + 0]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_print_int
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	jal	yj_print_int
	halt
