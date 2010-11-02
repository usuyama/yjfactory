yj_create_array:
	lli	%r3, 0
yj_create.loop:
	add	%r4, %hp, %r3
	sw	%r2, [%r4, 0]
	addi	%r3, %r3, 1
	bgt	%r3, %r1, yj_create.loop
	add	%r1, %r0, %hp
	add	%hp, %hp, %r3
	jr	%ra
