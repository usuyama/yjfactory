entry:
	lli	%sp, 0
	addi	%ra, %r0, halt
	lli	%hp, 20000
	lli	%r1, 1
	lli	%r2, 0
	add	%r3, %r0, %hp
	addi	%hp, %hp, 1
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj.create_array_loop
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r2, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 0
	sw	%r1, [%sp + 0]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, 60
	lli	%r3, 0
	lli	%r4, 0
	lli	%r5, 0
	lli	%r6, 0
	lli	%r7, 0
	add	%r8, %r0, %hp
	addi	%hp, %hp, 11
	sw	%r1, [%r8 + 10]
	sw	%r1, [%r8 + 9]
	sw	%r1, [%r8 + 8]
	sw	%r1, [%r8 + 7]
	sw	%r7, [%r8 + 6]
	sw	%r1, [%r8 + 5]
	sw	%r1, [%r8 + 4]
	sw	%r6, [%r8 + 3]
	sw	%r5, [%r8 + 2]
	sw	%r4, [%r8 + 1]
	sw	%r3, [%r8 + 0]
	add	%r1, %r0, %r8
	add	%r3, %r0, %hp
	addi	%hp, %hp, 60
	add	%r26, %r0, %r2
	add	%r2, %r0, %r1
	add	%r1, %r0, %r26
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj.create_array_loop
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 2]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 3]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 1
	llif	%f0, 255.000000
	lhif	%f0, 255.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 1
	sw	%r1, [%sp + 4]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 50
	lli	%r3, 1
	lli	%r4, -1
	lhi	%r4, -1
	add	%r5, %r0, %hp
	addi	%hp, %hp, 1
	sw	%r1, [%sp + 5]
	sw	%r2, [%sp + 6]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	add	%r3, %r0, %r5
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj.create_array_loop
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	add	%r2, %r0, %r1
	add	%r3, %r0, %hp
	addi	%hp, %hp, 50
	lw	%r1, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj.create_array_loop
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 1
	lli	%r3, 1
	addi	%r4, %r1, 0
	lw	%r4, [%r4 + 0]
	add	%r5, %r0, %hp
	addi	%hp, %hp, 1
	sw	%r1, [%sp + 7]
	sw	%r2, [%sp + 8]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	add	%r3, %r0, %r5
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	yj.create_array_loop
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	add	%r2, %r0, %r1
	add	%r3, %r0, %hp
	addi	%hp, %hp, 1
	lw	%r1, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	yj.create_array_loop
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 1
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 1
	sw	%r1, [%sp + 9]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 1
	lli	%r3, 0
	add	%r4, %r0, %hp
	addi	%hp, %hp, 1
	sw	%r1, [%sp + 10]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	yj.create_array_loop
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 1
	llif	%f0, 1000000000.000000
	lhif	%f0, 1000000000.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 1
	sw	%r1, [%sp + 11]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 12]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 1
	lli	%r3, 0
	add	%r4, %r0, %hp
	addi	%hp, %hp, 1
	sw	%r1, [%sp + 13]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	yj.create_array_loop
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 14]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 15]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 16]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 17]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lli	%r2, 2
	lli	%r3, 0
	add	%r4, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%sp + 18]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 19]
	addi	%sp, %sp, 20
	jal	yj.create_array_loop
	subi	%sp, %sp, 20
	lw	%ra, [%sp + 19]
	lli	%r2, 2
	lli	%r3, 0
	add	%r4, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%sp + 19]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 20]
	addi	%sp, %sp, 21
	jal	yj.create_array_loop
	subi	%sp, %sp, 21
	lw	%ra, [%sp + 20]
	lli	%r2, 1
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 1
	sw	%r1, [%sp + 20]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 21]
	addi	%sp, %sp, 22
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 22
	lw	%ra, [%sp + 21]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 21]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 22]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 23]
	addi	%sp, %sp, 24
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 24
	lw	%ra, [%sp + 23]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 23]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 25
	lw	%ra, [%sp + 24]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 24]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 26
	lw	%ra, [%sp + 25]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 25]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 26]
	addi	%sp, %sp, 27
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 26]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 28
	lw	%ra, [%sp + 27]
	lli	%r2, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 0
	sw	%r1, [%sp + 27]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 28]
	addi	%sp, %sp, 29
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 29
	lw	%ra, [%sp + 28]
	add	%r2, %r0, %r1
	lli	%r1, 0
	add	%r3, %r0, %hp
	addi	%hp, %hp, 0
	sw	%r2, [%sp + 28]
	sw	%ra, [%sp + 29]
	addi	%sp, %sp, 30
	jal	yj.create_array_loop
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	lli	%r2, 0
	add	%r3, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r3 + 1]
	lw	%r1, [%sp + 28]
	sw	%r1, [%r3 + 0]
	add	%r1, %r0, %r3
	add	%r3, %r0, %hp
	addi	%hp, %hp, 0
	add	%r26, %r0, %r2
	add	%r2, %r0, %r1
	add	%r1, %r0, %r26
	sw	%ra, [%sp + 29]
	addi	%sp, %sp, 30
	jal	yj.create_array_loop
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	add	%r2, %r0, %r1
	lli	%r1, 5
	add	%r3, %r0, %hp
	addi	%hp, %hp, 5
	sw	%ra, [%sp + 29]
	addi	%sp, %sp, 30
	jal	yj.create_array_loop
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	lli	%r2, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 0
	sw	%r1, [%sp + 29]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 30]
	addi	%sp, %sp, 31
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 31
	lw	%ra, [%sp + 30]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 30]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 31]
	addi	%sp, %sp, 32
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 32
	lw	%ra, [%sp + 31]
	lli	%r2, 60
	add	%r3, %r0, %hp
	addi	%hp, %hp, 60
	lw	%r4, [%sp + 30]
	sw	%r1, [%sp + 31]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r4
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	yj.create_array_loop
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r2 + 1]
	lw	%r3, [%sp + 31]
	sw	%r3, [%r2 + 0]
	lli	%r4, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r5, %r0, %hp
	addi	%hp, %hp, 0
	sw	%r1, [%sp + 32]
	sw	%r2, [%sp + 33]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 34]
	addi	%sp, %sp, 35
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	add	%r2, %r0, %r1
	lli	%r1, 0
	add	%r3, %r0, %hp
	addi	%hp, %hp, 0
	sw	%r2, [%sp + 34]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	yj.create_array_loop
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r2 + 1]
	lw	%r1, [%sp + 34]
	sw	%r1, [%r2 + 0]
	add	%r1, %r0, %r2
	lli	%r2, 180
	lli	%r3, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r4, %r0, %hp
	addi	%hp, %hp, 3
	sf	%f0, [%r4 + 2]
	sw	%r1, [%r4 + 1]
	sw	%r3, [%r4 + 0]
	add	%r1, %r0, %r4
	add	%r3, %r0, %hp
	addi	%hp, %hp, 180
	add	%r26, %r0, %r2
	add	%r2, %r0, %r1
	add	%r1, %r0, %r26
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	yj.create_array_loop
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lli	%r2, 1
	lli	%r3, 0
	add	%r4, %r0, %hp
	addi	%hp, %hp, 1
	sw	%r1, [%sp + 35]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	yj.create_array_loop
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 6
	addi	%r3, %r0, read_screen_settings.2695
	sw	%r3, [%r2 + 0]
	lw	%r3, [%sp + 3]
	sw	%r3, [%r2 + 5]
	lw	%r4, [%sp + 26]
	sw	%r4, [%r2 + 4]
	lw	%r5, [%sp + 25]
	sw	%r5, [%r2 + 3]
	lw	%r6, [%sp + 24]
	sw	%r6, [%r2 + 2]
	lw	%r7, [%sp + 2]
	sw	%r7, [%r2 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r8, %r0, read_light.2697
	sw	%r8, [%r7 + 0]
	lw	%r8, [%sp + 4]
	sw	%r8, [%r7 + 2]
	lw	%r9, [%sp + 5]
	sw	%r9, [%r7 + 1]
	add	%r10, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r11, %r0, read_nth_object.2702
	sw	%r11, [%r10 + 0]
	lw	%r11, [%sp + 1]
	sw	%r11, [%r10 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r13, %r0, read_object.2704
	sw	%r13, [%r12 + 0]
	sw	%r10, [%r12 + 2]
	lw	%r13, [%sp + 0]
	sw	%r13, [%r12 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r15, %r0, read_and_network.2712
	sw	%r15, [%r14 + 0]
	lw	%r15, [%sp + 7]
	sw	%r15, [%r14 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r17, %r0, solver_rect_surface.2716
	sw	%r17, [%r16 + 0]
	lw	%r17, [%sp + 10]
	sw	%r17, [%r16 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r19, %r0, solver_rect.2725
	sw	%r19, [%r18 + 0]
	sw	%r16, [%r18 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r19, %r0, solver_second.2750
	sw	%r19, [%r16 + 0]
	sw	%r17, [%r16 + 1]
	add	%r19, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r20, %r0, solver.2756
	sw	%r20, [%r19 + 0]
	sw	%r16, [%r19 + 4]
	sw	%r18, [%r19 + 3]
	sw	%r17, [%r19 + 2]
	sw	%r11, [%r19 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r18, %r0, solver_rect_fast.2760
	sw	%r18, [%r16 + 0]
	sw	%r17, [%r16 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r20, %r0, solver_surface_fast.2767
	sw	%r20, [%r18 + 0]
	sw	%r17, [%r18 + 1]
	add	%r20, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r21, %r0, solver_second_fast.2773
	sw	%r21, [%r20 + 0]
	sw	%r17, [%r20 + 1]
	add	%r21, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r22, %r0, solver_fast.2779
	sw	%r22, [%r21 + 0]
	sw	%r18, [%r21 + 4]
	sw	%r20, [%r21 + 3]
	sw	%r16, [%r21 + 2]
	sw	%r11, [%r21 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r20, %r0, solver_second_fast2.2790
	sw	%r20, [%r18 + 0]
	sw	%r17, [%r18 + 1]
	add	%r20, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r22, %r0, solver_fast2.2797
	sw	%r22, [%r20 + 0]
	sw	%r18, [%r20 + 4]
	sw	%r16, [%r20 + 3]
	sw	%r17, [%r20 + 2]
	sw	%r11, [%r20 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r18, %r0, iter_setup_dirvec_constants.2809
	sw	%r18, [%r16 + 0]
	sw	%r11, [%r16 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r22, %r0, setup_startp_constants.2814
	sw	%r22, [%r18 + 0]
	sw	%r11, [%r18 + 1]
	add	%r22, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r23, %r0, setup_startp.2817
	sw	%r23, [%r22 + 0]
	lw	%r23, [%sp + 23]
	sw	%r23, [%r22 + 3]
	sw	%r18, [%r22 + 2]
	sw	%r13, [%r22 + 1]
	add	%r24, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r25, %r0, check_all_inside.2839
	sw	%r25, [%r24 + 0]
	sw	%r11, [%r24 + 1]
	add	%r25, %r0, %hp
	addi	%hp, %hp, 8
	addi	%r26, %r0, shadow_check_and_group.2845
	sw	%r26, [%r25 + 0]
	sw	%r21, [%r25 + 7]
	sw	%r17, [%r25 + 6]
	sw	%r11, [%r25 + 5]
	lw	%r26, [%sp + 33]
	sw	%r26, [%r25 + 4]
	sw	%r8, [%r25 + 3]
	lw	%r27, [%sp + 13]
	sw	%r27, [%r25 + 2]
	sw	%r24, [%r25 + 1]
	sw	%r14, [%sp + 36]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r7, [%sp + 37]
	addi	%r7, %r0, shadow_check_one_or_group.2848
	sw	%r7, [%r14 + 0]
	sw	%r25, [%r14 + 2]
	sw	%r15, [%r14 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 8
	sw	%r10, [%sp + 38]
	addi	%r10, %r0, shadow_check_one_or_matrix.2851
	sw	%r10, [%r7 + 0]
	sw	%r21, [%r7 + 7]
	sw	%r17, [%r7 + 6]
	sw	%r14, [%r7 + 5]
	sw	%r25, [%r7 + 4]
	sw	%r26, [%r7 + 3]
	sw	%r27, [%r7 + 2]
	sw	%r15, [%r7 + 1]
	add	%r10, %r0, %hp
	addi	%hp, %hp, 10
	addi	%r14, %r0, solve_each_element.2854
	sw	%r14, [%r10 + 0]
	lw	%r14, [%sp + 12]
	sw	%r14, [%r10 + 9]
	lw	%r21, [%sp + 22]
	sw	%r21, [%r10 + 8]
	sw	%r17, [%r10 + 7]
	sw	%r19, [%r10 + 6]
	sw	%r11, [%r10 + 5]
	lw	%r25, [%sp + 11]
	sw	%r25, [%r10 + 4]
	sw	%r27, [%r10 + 3]
	lw	%r26, [%sp + 14]
	sw	%r26, [%r10 + 2]
	sw	%r24, [%r10 + 1]
	sw	%r12, [%sp + 39]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r2, [%sp + 40]
	addi	%r2, %r0, solve_one_or_network.2858
	sw	%r2, [%r12 + 0]
	sw	%r10, [%r12 + 2]
	sw	%r15, [%r12 + 1]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 8
	sw	%r16, [%sp + 41]
	addi	%r16, %r0, trace_or_matrix.2862
	sw	%r16, [%r2 + 0]
	sw	%r14, [%r2 + 7]
	sw	%r21, [%r2 + 6]
	sw	%r17, [%r2 + 5]
	sw	%r19, [%r2 + 4]
	sw	%r12, [%r2 + 3]
	sw	%r10, [%r2 + 2]
	sw	%r15, [%r2 + 1]
	add	%r10, %r0, %hp
	addi	%hp, %hp, 10
	addi	%r12, %r0, solve_each_element_fast.2868
	sw	%r12, [%r10 + 0]
	sw	%r14, [%r10 + 9]
	sw	%r23, [%r10 + 8]
	sw	%r20, [%r10 + 7]
	sw	%r17, [%r10 + 6]
	sw	%r11, [%r10 + 5]
	sw	%r25, [%r10 + 4]
	sw	%r27, [%r10 + 3]
	sw	%r26, [%r10 + 2]
	sw	%r24, [%r10 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r16, %r0, solve_one_or_network_fast.2872
	sw	%r16, [%r12 + 0]
	sw	%r10, [%r12 + 2]
	sw	%r15, [%r12 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 7
	addi	%r19, %r0, trace_or_matrix_fast.2876
	sw	%r19, [%r16 + 0]
	sw	%r14, [%r16 + 6]
	sw	%r20, [%r16 + 5]
	sw	%r17, [%r16 + 4]
	sw	%r12, [%r16 + 3]
	sw	%r10, [%r16 + 2]
	sw	%r15, [%r16 + 1]
	add	%r10, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r12, %r0, get_nvector_rect.2882
	sw	%r12, [%r10 + 0]
	lw	%r12, [%sp + 15]
	sw	%r12, [%r10 + 2]
	sw	%r25, [%r10 + 1]
	add	%r15, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r17, %r0, get_nvector_plane.2884
	sw	%r17, [%r15 + 0]
	sw	%r12, [%r15 + 1]
	add	%r17, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r19, %r0, get_nvector_second.2886
	sw	%r19, [%r17 + 0]
	sw	%r12, [%r17 + 2]
	sw	%r27, [%r17 + 1]
	add	%r19, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r20, %r0, utexture.2891
	sw	%r20, [%r19 + 0]
	lw	%r20, [%sp + 16]
	sw	%r20, [%r19 + 1]
	add	%r24, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r5, %r0, add_light.2894
	sw	%r5, [%r24 + 0]
	sw	%r20, [%r24 + 2]
	lw	%r5, [%sp + 18]
	sw	%r5, [%r24 + 1]
	add	%r4, %r0, %hp
	addi	%hp, %hp, 10
	addi	%r6, %r0, trace_reflections.2898
	sw	%r6, [%r4 + 0]
	sw	%r16, [%r4 + 9]
	sw	%r14, [%r4 + 8]
	sw	%r7, [%r4 + 7]
	lw	%r6, [%sp + 35]
	sw	%r6, [%r4 + 6]
	lw	%r6, [%sp + 9]
	sw	%r6, [%r4 + 5]
	sw	%r12, [%r4 + 4]
	sw	%r25, [%r4 + 3]
	sw	%r26, [%r4 + 2]
	sw	%r24, [%r4 + 1]
	add	%r3, %r0, %hp
	addi	%hp, %hp, 25
	sw	%r22, [%sp + 42]
	addi	%r22, %r0, trace_ray.2903
	sw	%r22, [%r3 + 0]
	sw	%r19, [%r3 + 24]
	sw	%r4, [%r3 + 23]
	sw	%r2, [%r3 + 22]
	sw	%r14, [%r3 + 21]
	sw	%r20, [%r3 + 20]
	sw	%r23, [%r3 + 19]
	sw	%r21, [%r3 + 18]
	sw	%r7, [%r3 + 17]
	sw	%r18, [%r3 + 16]
	sw	%r5, [%r3 + 15]
	sw	%r6, [%r3 + 14]
	sw	%r11, [%r3 + 13]
	sw	%r12, [%r3 + 12]
	sw	%r1, [%r3 + 11]
	sw	%r13, [%r3 + 10]
	sw	%r8, [%r3 + 9]
	sw	%r25, [%r3 + 8]
	sw	%r27, [%r3 + 7]
	sw	%r26, [%r3 + 6]
	sw	%r17, [%r3 + 5]
	sw	%r10, [%r3 + 4]
	sw	%r15, [%r3 + 3]
	sw	%r9, [%r3 + 2]
	sw	%r24, [%r3 + 1]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 16
	addi	%r4, %r0, trace_diffuse_ray.2909
	sw	%r4, [%r2 + 0]
	sw	%r19, [%r2 + 15]
	sw	%r16, [%r2 + 14]
	sw	%r14, [%r2 + 13]
	sw	%r20, [%r2 + 12]
	sw	%r7, [%r2 + 11]
	sw	%r6, [%r2 + 10]
	sw	%r11, [%r2 + 9]
	sw	%r12, [%r2 + 8]
	sw	%r8, [%r2 + 7]
	sw	%r27, [%r2 + 6]
	sw	%r26, [%r2 + 5]
	sw	%r17, [%r2 + 4]
	sw	%r10, [%r2 + 3]
	sw	%r15, [%r2 + 2]
	lw	%r4, [%sp + 17]
	sw	%r4, [%r2 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r9, %r0, iter_trace_diffuse_rays.2912
	sw	%r9, [%r7 + 0]
	sw	%r2, [%r7 + 1]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r9, %r0, trace_diffuse_ray_80percent.2921
	sw	%r9, [%r2 + 0]
	lw	%r9, [%sp + 42]
	sw	%r9, [%r2 + 3]
	sw	%r7, [%r2 + 2]
	lw	%r10, [%sp + 29]
	sw	%r10, [%r2 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r14, %r0, calc_diffuse_using_1point.2925
	sw	%r14, [%r12 + 0]
	sw	%r2, [%r12 + 3]
	sw	%r5, [%r12 + 2]
	sw	%r4, [%r12 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r15, %r0, calc_diffuse_using_5points.2928
	sw	%r15, [%r14 + 0]
	sw	%r5, [%r14 + 2]
	sw	%r4, [%r14 + 1]
	add	%r15, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r16, %r0, do_without_neighbors.2934
	sw	%r16, [%r15 + 0]
	sw	%r2, [%r15 + 4]
	sw	%r5, [%r15 + 3]
	sw	%r4, [%r15 + 2]
	sw	%r12, [%r15 + 1]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r16, %r0, try_exploit_neighbors.2950
	sw	%r16, [%r2 + 0]
	sw	%r15, [%r2 + 3]
	sw	%r14, [%r2 + 2]
	sw	%r12, [%r2 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, write_ppm_header.2957
	sw	%r16, [%r14 + 0]
	lw	%r16, [%sp + 19]
	sw	%r16, [%r14 + 1]
	add	%r17, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r18, %r0, pretrace_diffuse_rays.2963
	sw	%r18, [%r17 + 0]
	sw	%r9, [%r17 + 4]
	sw	%r7, [%r17 + 3]
	sw	%r10, [%r17 + 2]
	sw	%r4, [%r17 + 1]
	add	%r4, %r0, %hp
	addi	%hp, %hp, 10
	addi	%r7, %r0, pretrace_pixels.2966
	sw	%r7, [%r4 + 0]
	lw	%r7, [%sp + 3]
	sw	%r7, [%r4 + 9]
	sw	%r3, [%r4 + 8]
	sw	%r21, [%r4 + 7]
	lw	%r3, [%sp + 24]
	sw	%r3, [%r4 + 6]
	lw	%r3, [%sp + 21]
	sw	%r3, [%r4 + 5]
	sw	%r5, [%r4 + 4]
	lw	%r7, [%sp + 27]
	sw	%r7, [%r4 + 3]
	sw	%r17, [%r4 + 2]
	lw	%r7, [%sp + 20]
	sw	%r7, [%r4 + 1]
	add	%r9, %r0, %hp
	addi	%hp, %hp, 7
	addi	%r17, %r0, pretrace_line.2973
	sw	%r17, [%r9 + 0]
	lw	%r17, [%sp + 26]
	sw	%r17, [%r9 + 6]
	lw	%r17, [%sp + 25]
	sw	%r17, [%r9 + 5]
	sw	%r3, [%r9 + 4]
	sw	%r4, [%r9 + 3]
	sw	%r16, [%r9 + 2]
	sw	%r7, [%r9 + 1]
	add	%r4, %r0, %hp
	addi	%hp, %hp, 6
	addi	%r17, %r0, scan_pixel.2977
	sw	%r17, [%r4 + 0]
	sw	%r2, [%r4 + 5]
	sw	%r5, [%r4 + 4]
	sw	%r16, [%r4 + 3]
	sw	%r15, [%r4 + 2]
	sw	%r12, [%r4 + 1]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r5, %r0, scan_line.2983
	sw	%r5, [%r2 + 0]
	sw	%r4, [%r2 + 3]
	sw	%r9, [%r2 + 2]
	sw	%r16, [%r2 + 1]
	add	%r4, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r5, %r0, calc_dirvec.3003
	sw	%r5, [%r4 + 0]
	sw	%r10, [%r4 + 1]
	add	%r5, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r12, %r0, calc_dirvecs.3011
	sw	%r12, [%r5 + 0]
	sw	%r4, [%r5 + 1]
	add	%r4, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r12, %r0, calc_dirvec_rows.3016
	sw	%r12, [%r4 + 0]
	sw	%r5, [%r4 + 1]
	add	%r5, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r12, %r0, create_dirvec_elements.3022
	sw	%r12, [%r5 + 0]
	sw	%r13, [%r5 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r15, %r0, create_dirvecs.3025
	sw	%r15, [%r12 + 0]
	sw	%r13, [%r12 + 3]
	sw	%r10, [%r12 + 2]
	sw	%r5, [%r12 + 1]
	add	%r5, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r15, %r0, init_dirvec_constants.3027
	sw	%r15, [%r5 + 0]
	sw	%r11, [%r5 + 3]
	sw	%r13, [%r5 + 2]
	lw	%r15, [%sp + 41]
	sw	%r15, [%r5 + 1]
	add	%r17, %r0, %hp
	addi	%hp, %hp, 6
	addi	%r18, %r0, init_vecset_constants.3030
	sw	%r18, [%r17 + 0]
	sw	%r11, [%r17 + 5]
	sw	%r13, [%r17 + 4]
	sw	%r15, [%r17 + 3]
	sw	%r5, [%r17 + 2]
	sw	%r10, [%r17 + 1]
	add	%r5, %r0, %hp
	addi	%hp, %hp, 7
	addi	%r10, %r0, setup_rect_reflection.3041
	sw	%r10, [%r5 + 0]
	lw	%r10, [%sp + 35]
	sw	%r10, [%r5 + 6]
	sw	%r11, [%r5 + 5]
	sw	%r1, [%r5 + 4]
	sw	%r13, [%r5 + 3]
	sw	%r8, [%r5 + 2]
	sw	%r15, [%r5 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 7
	addi	%r19, %r0, setup_surface_reflection.3044
	sw	%r19, [%r18 + 0]
	sw	%r10, [%r18 + 6]
	sw	%r11, [%r18 + 5]
	sw	%r1, [%r18 + 4]
	sw	%r13, [%r18 + 3]
	sw	%r8, [%r18 + 2]
	sw	%r15, [%r18 + 1]
	add	%r1, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r10, %r0, setup_reflections.3047
	sw	%r10, [%r1 + 0]
	sw	%r18, [%r1 + 3]
	sw	%r5, [%r1 + 2]
	sw	%r11, [%r1 + 1]
	add	%r27, %r0, %hp
	addi	%hp, %hp, 24
	addi	%r5, %r0, rt.3049
	sw	%r5, [%r27 + 0]
	sw	%r14, [%r27 + 23]
	lw	%r5, [%sp + 31]
	sw	%r5, [%r27 + 22]
	sw	%r1, [%r27 + 21]
	sw	%r3, [%r27 + 20]
	sw	%r2, [%r27 + 19]
	lw	%r1, [%sp + 40]
	sw	%r1, [%r27 + 18]
	lw	%r1, [%sp + 39]
	sw	%r1, [%r27 + 17]
	lw	%r1, [%sp + 38]
	sw	%r1, [%r27 + 16]
	lw	%r1, [%sp + 37]
	sw	%r1, [%r27 + 15]
	lw	%r1, [%sp + 36]
	sw	%r1, [%r27 + 14]
	sw	%r9, [%r27 + 13]
	sw	%r6, [%r27 + 12]
	sw	%r11, [%r27 + 11]
	sw	%r13, [%r27 + 10]
	lw	%r1, [%sp + 33]
	sw	%r1, [%r27 + 9]
	sw	%r8, [%r27 + 8]
	sw	%r15, [%r27 + 7]
	sw	%r17, [%r27 + 6]
	sw	%r16, [%r27 + 5]
	sw	%r7, [%r27 + 4]
	sw	%r12, [%r27 + 3]
	lw	%r1, [%sp + 32]
	sw	%r1, [%r27 + 2]
	sw	%r4, [%r27 + 1]
	lli	%r1, 128
	lli	%r2, 128
	sw	%ra, [%sp + 43]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 44
	jalr	%r26
	subi	%sp, %sp, 44
	lw	%ra, [%sp + 43]
	lli	%r1, 0
	jr	%ra
halt:
	halt
div10_sub.6209.9007:
	lli	%r3, 10
	bgt	%r3, %r1, bgt_else.12532
	lli	%r3, 10
	sub	%r1, %r1, %r3
	lli	%r3, 1
	add	%r2, %r2, %r3
	lli	%r3, 10
	bgt	%r3, %r1, bgt_else.12533
	lli	%r3, 10
	sub	%r1, %r1, %r3
	lli	%r3, 1
	add	%r2, %r2, %r3
	lli	%r3, 10
	bgt	%r3, %r1, bgt_else.12534
	lli	%r3, 10
	sub	%r1, %r1, %r3
	lli	%r3, 1
	add	%r2, %r2, %r3
	lli	%r3, 10
	bgt	%r3, %r1, bgt_else.12535
	lli	%r3, 10
	sub	%r1, %r1, %r3
	lli	%r3, 1
	add	%r2, %r2, %r3
	j	div10_sub.6209.9007
bgt_else.12535:
	add	%r1, %r0, %r2
	jr	%ra
bgt_else.12534:
	add	%r1, %r0, %r2
	jr	%ra
bgt_else.12533:
	add	%r1, %r0, %r2
	jr	%ra
bgt_else.12532:
	add	%r1, %r0, %r2
	jr	%ra
print_int.2514:
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.12536
	lli	%r2, 10
	bgt	%r2, %r1, bgt_else.12537
	lli	%r2, 10
	sw	%r1, [%sp + 0]
	bgt	%r2, %r1, bgt_else.12538
	lli	%r2, 10
	sub	%r2, %r1, %r2
	lli	%r3, 10
	bgt	%r3, %r2, bgt_else.12540
	lli	%r3, 10
	sub	%r2, %r2, %r3
	lli	%r3, 10
	bgt	%r3, %r2, bgt_else.12542
	lli	%r3, 10
	sub	%r2, %r2, %r3
	lli	%r3, 3
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	div10_sub.6209.9007
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	j	bgt_cont.12543
bgt_else.12542:
	lli	%r1, 2
bgt_cont.12543:
	j	bgt_cont.12541
bgt_else.12540:
	lli	%r1, 1
bgt_cont.12541:
	j	bgt_cont.12539
bgt_else.12538:
	lli	%r1, 0
bgt_cont.12539:
	sw	%r1, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	print_int.2514
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 10
	lw	%r2, [%sp + 1]
	mul	%r1, %r2, %r1
	lw	%r2, [%sp + 0]
	sub	%r1, %r2, %r1
	lli	%r2, 48
	add	%r1, %r1, %r2
	sendc	%r1
	jr	%ra
bgt_else.12537:
	lli	%r2, 48
	add	%r1, %r1, %r2
	sendc	%r1
	jr	%ra
bgt_else.12536:
	lli	%r2, 45
	sendc	%r2
	sub	%r1, %r0, %r1
	j	print_int.2514
calc_sin.6160:
	llif	%f1, -0.166667
	lhif	%f1, -0.166667
	llif	%f2, 0.008333
	lhif	%f2, 0.008333
	llif	%f3, -0.000198
	lhif	%f3, -0.000198
	llif	%f4, 0.000003
	lhif	%f4, 0.000003
	llif	%f5, 0.000000
	lhif	%f5, 0.000000
	llif	%f6, 0.000000
	lhif	%f6, 0.000000
	mulf	%f7, %f0, %f0
	mulf	%f8, %f7, %f0
	mulf	%f6, %f7, %f6
	addf	%f5, %f5, %f6
	mulf	%f5, %f7, %f5
	addf	%f4, %f4, %f5
	mulf	%f4, %f7, %f4
	addf	%f3, %f3, %f4
	mulf	%f3, %f7, %f3
	addf	%f2, %f2, %f3
	mulf	%f2, %f7, %f2
	addf	%f1, %f1, %f2
	mulf	%f1, %f8, %f1
	addf	%f0, %f0, %f1
	jr	%ra
sinf__.6162:
	llif	%f1, 1.570796
	lhif	%f1, 1.570796
	llif	%f2, 3.141593
	lhif	%f2, 3.141593
	llif	%f3, 6.283185
	lhif	%f3, 6.283185
	bgtf	%f0, %f3, bgtf_else.12546
	bgtf	%f0, %f2, bgtf_else.12547
	bgtf	%f0, %f1, bgtf_else.12548
	j	calc_sin.6160
bgtf_else.12548:
	subf	%f0, %f2, %f0
	llif	%f1, 1.570796
	lhif	%f1, 1.570796
	llif	%f2, 3.141593
	lhif	%f2, 3.141593
	llif	%f3, 6.283185
	lhif	%f3, 6.283185
	bgtf	%f0, %f3, bgtf_else.12549
	bgtf	%f0, %f2, bgtf_else.12550
	bgtf	%f0, %f1, bgtf_else.12551
	j	calc_sin.6160
bgtf_else.12551:
	subf	%f0, %f2, %f0
	j	sinf__.6162
bgtf_else.12550:
	subf	%f0, %f0, %f2
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	sinf__.6162
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	negf	%f0, %f0
	jr	%ra
bgtf_else.12549:
	subf	%f0, %f0, %f3
	j	sinf__.6162
bgtf_else.12547:
	subf	%f0, %f0, %f2
	llif	%f1, 1.570796
	lhif	%f1, 1.570796
	llif	%f2, 3.141593
	lhif	%f2, 3.141593
	llif	%f3, 6.283185
	lhif	%f3, 6.283185
	bgtf	%f0, %f3, bgtf_else.12552
	bgtf	%f0, %f2, bgtf_else.12554
	bgtf	%f0, %f1, bgtf_else.12556
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	calc_sin.6160
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	j	bgtf_cont.12557
bgtf_else.12556:
	subf	%f0, %f2, %f0
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	sinf__.6162
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
bgtf_cont.12557:
	j	bgtf_cont.12555
bgtf_else.12554:
	subf	%f0, %f0, %f2
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	sinf__.6162
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	negf	%f0, %f0
bgtf_cont.12555:
	j	bgtf_cont.12553
bgtf_else.12552:
	subf	%f0, %f0, %f3
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	sinf__.6162
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
bgtf_cont.12553:
	negf	%f0, %f0
	jr	%ra
bgtf_else.12546:
	subf	%f0, %f0, %f3
	llif	%f1, 1.570796
	lhif	%f1, 1.570796
	llif	%f2, 3.141593
	lhif	%f2, 3.141593
	llif	%f3, 6.283185
	lhif	%f3, 6.283185
	bgtf	%f0, %f3, bgtf_else.12558
	bgtf	%f0, %f2, bgtf_else.12559
	bgtf	%f0, %f1, bgtf_else.12560
	j	calc_sin.6160
bgtf_else.12560:
	subf	%f0, %f2, %f0
	j	sinf__.6162
bgtf_else.12559:
	subf	%f0, %f0, %f2
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	sinf__.6162
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	negf	%f0, %f0
	jr	%ra
bgtf_else.12558:
	subf	%f0, %f0, %f3
	j	sinf__.6162
sin.2516:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.12561
	llif	%f1, 1.570796
	lhif	%f1, 1.570796
	llif	%f2, 3.141593
	lhif	%f2, 3.141593
	llif	%f3, 6.283185
	lhif	%f3, 6.283185
	bgtf	%f0, %f3, bgtf_else.12562
	bgtf	%f0, %f2, bgtf_else.12563
	bgtf	%f0, %f1, bgtf_else.12564
	j	calc_sin.6160
bgtf_else.12564:
	subf	%f0, %f2, %f0
	j	sinf__.6162
bgtf_else.12563:
	subf	%f0, %f0, %f2
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	sinf__.6162
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	negf	%f0, %f0
	jr	%ra
bgtf_else.12562:
	subf	%f0, %f0, %f3
	j	sinf__.6162
bgtf_else.12561:
	negf	%f0, %f0
	llif	%f1, 1.570796
	lhif	%f1, 1.570796
	llif	%f2, 3.141593
	lhif	%f2, 3.141593
	llif	%f3, 6.283185
	lhif	%f3, 6.283185
	bgtf	%f0, %f3, bgtf_else.12565
	bgtf	%f0, %f2, bgtf_else.12567
	bgtf	%f0, %f1, bgtf_else.12569
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	calc_sin.6160
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	j	bgtf_cont.12570
bgtf_else.12569:
	subf	%f0, %f2, %f0
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	sinf__.6162
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
bgtf_cont.12570:
	j	bgtf_cont.12568
bgtf_else.12567:
	subf	%f0, %f0, %f2
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	sinf__.6162
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	negf	%f0, %f0
bgtf_cont.12568:
	j	bgtf_cont.12566
bgtf_else.12565:
	subf	%f0, %f0, %f3
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	sinf__.6162
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
bgtf_cont.12566:
	negf	%f0, %f0
	jr	%ra
calc_cos.6127:
	llif	%f1, 0.041667
	lhif	%f1, 0.041667
	llif	%f2, -0.001389
	lhif	%f2, -0.001389
	llif	%f3, 0.000025
	lhif	%f3, 0.000025
	llif	%f4, -0.000000
	lhif	%f4, -0.000000
	llif	%f5, -0.000000
	lhif	%f5, -0.000000
	mulf	%f0, %f0, %f0
	mulf	%f5, %f0, %f5
	addf	%f4, %f4, %f5
	mulf	%f4, %f0, %f4
	addf	%f3, %f3, %f4
	mulf	%f3, %f0, %f3
	addf	%f2, %f2, %f3
	mulf	%f2, %f0, %f2
	addf	%f1, %f1, %f2
	mulf	%f1, %f0, %f1
	llif	%f2, 1.000000
	lhif	%f2, 1.000000
	llif	%f3, 0.500000
	lhif	%f3, 0.500000
	mulf	%f3, %f3, %f0
	subf	%f2, %f2, %f3
	mulf	%f0, %f0, %f1
	addf	%f0, %f2, %f0
	jr	%ra
cosf__.6129:
	llif	%f1, 1.570796
	lhif	%f1, 1.570796
	llif	%f2, 3.141593
	lhif	%f2, 3.141593
	llif	%f3, 6.283185
	lhif	%f3, 6.283185
	bgtf	%f0, %f3, bgtf_else.12571
	bgtf	%f0, %f2, bgtf_else.12572
	bgtf	%f0, %f1, bgtf_else.12573
	j	calc_cos.6127
bgtf_else.12573:
	subf	%f0, %f2, %f0
	llif	%f1, 1.570796
	lhif	%f1, 1.570796
	llif	%f2, 3.141593
	lhif	%f2, 3.141593
	llif	%f3, 6.283185
	lhif	%f3, 6.283185
	bgtf	%f0, %f3, bgtf_else.12574
	bgtf	%f0, %f2, bgtf_else.12575
	bgtf	%f0, %f1, bgtf_else.12576
	j	calc_cos.6127
bgtf_else.12576:
	subf	%f0, %f2, %f0
	j	cosf__.6129
bgtf_else.12575:
	subf	%f0, %f0, %f2
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	cosf__.6129
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	negf	%f0, %f0
	jr	%ra
bgtf_else.12574:
	subf	%f0, %f0, %f3
	j	cosf__.6129
bgtf_else.12572:
	subf	%f0, %f0, %f2
	llif	%f1, 1.570796
	lhif	%f1, 1.570796
	llif	%f2, 3.141593
	lhif	%f2, 3.141593
	llif	%f3, 6.283185
	lhif	%f3, 6.283185
	bgtf	%f0, %f3, bgtf_else.12577
	bgtf	%f0, %f2, bgtf_else.12579
	bgtf	%f0, %f1, bgtf_else.12581
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	calc_cos.6127
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	j	bgtf_cont.12582
bgtf_else.12581:
	subf	%f0, %f2, %f0
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	cosf__.6129
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
bgtf_cont.12582:
	j	bgtf_cont.12580
bgtf_else.12579:
	subf	%f0, %f0, %f2
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	cosf__.6129
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	negf	%f0, %f0
bgtf_cont.12580:
	j	bgtf_cont.12578
bgtf_else.12577:
	subf	%f0, %f0, %f3
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	cosf__.6129
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
bgtf_cont.12578:
	negf	%f0, %f0
	jr	%ra
bgtf_else.12571:
	subf	%f0, %f0, %f3
	llif	%f1, 1.570796
	lhif	%f1, 1.570796
	llif	%f2, 3.141593
	lhif	%f2, 3.141593
	llif	%f3, 6.283185
	lhif	%f3, 6.283185
	bgtf	%f0, %f3, bgtf_else.12583
	bgtf	%f0, %f2, bgtf_else.12584
	bgtf	%f0, %f1, bgtf_else.12585
	j	calc_cos.6127
bgtf_else.12585:
	subf	%f0, %f2, %f0
	j	cosf__.6129
bgtf_else.12584:
	subf	%f0, %f0, %f2
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	cosf__.6129
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	negf	%f0, %f0
	jr	%ra
bgtf_else.12583:
	subf	%f0, %f0, %f3
	j	cosf__.6129
cos.2518:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.12586
	llif	%f1, 1.570796
	lhif	%f1, 1.570796
	llif	%f2, 3.141593
	lhif	%f2, 3.141593
	llif	%f3, 6.283185
	lhif	%f3, 6.283185
	bgtf	%f0, %f3, bgtf_else.12587
	bgtf	%f0, %f2, bgtf_else.12588
	bgtf	%f0, %f1, bgtf_else.12589
	j	calc_cos.6127
bgtf_else.12589:
	subf	%f0, %f2, %f0
	j	cosf__.6129
bgtf_else.12588:
	subf	%f0, %f0, %f2
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	cosf__.6129
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	negf	%f0, %f0
	jr	%ra
bgtf_else.12587:
	subf	%f0, %f0, %f3
	j	cosf__.6129
bgtf_else.12586:
	negf	%f0, %f0
	llif	%f1, 1.570796
	lhif	%f1, 1.570796
	llif	%f2, 3.141593
	lhif	%f2, 3.141593
	llif	%f3, 6.283185
	lhif	%f3, 6.283185
	bgtf	%f0, %f3, bgtf_else.12590
	bgtf	%f0, %f2, bgtf_else.12591
	bgtf	%f0, %f1, bgtf_else.12592
	j	calc_cos.6127
bgtf_else.12592:
	subf	%f0, %f2, %f0
	j	cosf__.6129
bgtf_else.12591:
	subf	%f0, %f0, %f2
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	cosf__.6129
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	negf	%f0, %f0
	jr	%ra
bgtf_else.12590:
	subf	%f0, %f0, %f3
	j	cosf__.6129
atan.2520:
	absf	%f1, %f0
	llif	%f2, 0.150000
	lhif	%f2, 0.150000
	bgtf	%f1, %f2, bgtf_else.12593
	mulf	%f1, %f0, %f0
	llif	%f2, 1.000000
	lhif	%f2, 1.000000
	llif	%f3, -0.333333
	lhif	%f3, -0.333333
	llif	%f4, 0.200000
	lhif	%f4, 0.200000
	llif	%f5, 0.142857
	lhif	%f5, 0.142857
	mulf	%f5, %f1, %f5
	addf	%f4, %f4, %f5
	mulf	%f4, %f1, %f4
	addf	%f3, %f3, %f4
	mulf	%f1, %f1, %f3
	addf	%f1, %f2, %f1
	mulf	%f0, %f0, %f1
	jr	%ra
bgtf_else.12593:
	llif	%f1, -1.000000
	lhif	%f1, -1.000000
	llif	%f2, 1.000000
	lhif	%f2, 1.000000
	mulf	%f3, %f0, %f0
	addf	%f2, %f2, %f3
	sqrt	%f2, %f2
	addf	%f1, %f1, %f2
	divf	%f0, %f1, %f0
	llif	%f1, 2.000000
	lhif	%f1, 2.000000
	sf	%f1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	atan.2520
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lf	%f1, [%sp + 0]
	mulf	%f0, %f1, %f0
	jr	%ra
vecunit_sgn.2594:
	addi	%r3, %r1, 0
	lf	%f0, [%r3 + 0]
	mulf	%f0, %f0, %f0
	addi	%r3, %r1, 1
	lf	%f1, [%r3 + 0]
	mulf	%f1, %f1, %f1
	addf	%f0, %f0, %f1
	addi	%r3, %r1, 2
	lf	%f1, [%r3 + 0]
	mulf	%f1, %f1, %f1
	addf	%f0, %f0, %f1
	sqrt	%f0, %f0
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r3, %f0
	movf2i	%r4, %f1
	bneq	%r3, %r4, bneq_else.12594
	lli	%r3, 1
	j	bneq_cont.12595
bneq_else.12594:
	lli	%r3, 0
bneq_cont.12595:
	lli	%r4, 0
	bneq	%r3, %r4, bneq_else.12596
	lli	%r3, 0
	bneq	%r2, %r3, bneq_else.12598
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	divf	%f0, %f1, %f0
	j	bneq_cont.12599
bneq_else.12598:
	llif	%f1, -1.000000
	lhif	%f1, -1.000000
	divf	%f0, %f1, %f0
bneq_cont.12599:
	j	bneq_cont.12597
bneq_else.12596:
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
bneq_cont.12597:
	addi	%r2, %r1, 0
	lf	%f1, [%r2 + 0]
	mulf	%f1, %f1, %f0
	addi	%r2, %r1, 0
	sf	%f1, [%r2 + 0]
	addi	%r2, %r1, 1
	lf	%f1, [%r2 + 0]
	mulf	%f1, %f1, %f0
	addi	%r2, %r1, 1
	sf	%f1, [%r2 + 0]
	addi	%r2, %r1, 2
	lf	%f1, [%r2 + 0]
	mulf	%f0, %f1, %f0
	addi	%r1, %r1, 2
	sf	%f0, [%r1 + 0]
	jr	%ra
veciprod.2597:
	addi	%r3, %r1, 0
	lf	%f0, [%r3 + 0]
	addi	%r3, %r2, 0
	lf	%f1, [%r3 + 0]
	mulf	%f0, %f0, %f1
	addi	%r3, %r1, 1
	lf	%f1, [%r3 + 0]
	addi	%r3, %r2, 1
	lf	%f2, [%r3 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	addi	%r1, %r1, 2
	lf	%f1, [%r1 + 0]
	addi	%r1, %r2, 2
	lf	%f2, [%r1 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	jr	%ra
vecaccum.2605:
	addi	%r3, %r1, 0
	lf	%f1, [%r3 + 0]
	addi	%r3, %r2, 0
	lf	%f2, [%r3 + 0]
	mulf	%f2, %f0, %f2
	addf	%f1, %f1, %f2
	addi	%r3, %r1, 0
	sf	%f1, [%r3 + 0]
	addi	%r3, %r1, 1
	lf	%f1, [%r3 + 0]
	addi	%r3, %r2, 1
	lf	%f2, [%r3 + 0]
	mulf	%f2, %f0, %f2
	addf	%f1, %f1, %f2
	addi	%r3, %r1, 1
	sf	%f1, [%r3 + 0]
	addi	%r3, %r1, 2
	lf	%f1, [%r3 + 0]
	addi	%r2, %r2, 2
	lf	%f2, [%r2 + 0]
	mulf	%f0, %f0, %f2
	addf	%f0, %f1, %f0
	addi	%r1, %r1, 2
	sf	%f0, [%r1 + 0]
	jr	%ra
vecadd.2609:
	addi	%r3, %r1, 0
	lf	%f0, [%r3 + 0]
	addi	%r3, %r2, 0
	lf	%f1, [%r3 + 0]
	addf	%f0, %f0, %f1
	addi	%r3, %r1, 0
	sf	%f0, [%r3 + 0]
	addi	%r3, %r1, 1
	lf	%f0, [%r3 + 0]
	addi	%r3, %r2, 1
	lf	%f1, [%r3 + 0]
	addf	%f0, %f0, %f1
	addi	%r3, %r1, 1
	sf	%f0, [%r3 + 0]
	addi	%r3, %r1, 2
	lf	%f0, [%r3 + 0]
	addi	%r2, %r2, 2
	lf	%f1, [%r2 + 0]
	addf	%f0, %f0, %f1
	addi	%r1, %r1, 2
	sf	%f0, [%r1 + 0]
	jr	%ra
vecaccumv.2618:
	addi	%r4, %r1, 0
	lf	%f0, [%r4 + 0]
	addi	%r4, %r2, 0
	lf	%f1, [%r4 + 0]
	addi	%r4, %r3, 0
	lf	%f2, [%r4 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	addi	%r4, %r1, 0
	sf	%f0, [%r4 + 0]
	addi	%r4, %r1, 1
	lf	%f0, [%r4 + 0]
	addi	%r4, %r2, 1
	lf	%f1, [%r4 + 0]
	addi	%r4, %r3, 1
	lf	%f2, [%r4 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	addi	%r4, %r1, 1
	sf	%f0, [%r4 + 0]
	addi	%r4, %r1, 2
	lf	%f0, [%r4 + 0]
	addi	%r2, %r2, 2
	lf	%f1, [%r2 + 0]
	addi	%r2, %r3, 2
	lf	%f2, [%r2 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	addi	%r1, %r1, 2
	sf	%f0, [%r1 + 0]
	jr	%ra
read_screen_settings.2695:
	lw	%r1, [%r27 + 5]
	lw	%r2, [%r27 + 4]
	lw	%r3, [%r27 + 3]
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	sw	%r1, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r4, [%sp + 2]
	sw	%r2, [%sp + 3]
	sw	%r5, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_read_float
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r1, [%sp + 4]
	addi	%r2, %r1, 0
	sf	%f0, [%r2 + 0]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_read_float
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r1, [%sp + 4]
	addi	%r2, %r1, 1
	sf	%f0, [%r2 + 0]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_read_float
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r1, [%sp + 4]
	addi	%r2, %r1, 2
	sf	%f0, [%r2 + 0]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_read_float
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	llif	%f1, 0.017453
	lhif	%f1, 0.017453
	mulf	%f0, %f0, %f1
	sf	%f0, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	cos.2518
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lf	%f1, [%sp + 5]
	sf	%f0, [%sp + 6]
	movf	%f0, %f1
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	sin.2516
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	sf	%f0, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	yj_read_float
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	llif	%f1, 0.017453
	lhif	%f1, 0.017453
	mulf	%f0, %f0, %f1
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	cos.2518
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lf	%f1, [%sp + 8]
	sf	%f0, [%sp + 9]
	movf	%f0, %f1
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	sin.2516
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 6]
	mulf	%f2, %f1, %f0
	llif	%f3, 200.000000
	lhif	%f3, 200.000000
	mulf	%f2, %f2, %f3
	lw	%r1, [%sp + 3]
	addi	%r2, %r1, 0
	sf	%f2, [%r2 + 0]
	llif	%f2, -200.000000
	lhif	%f2, -200.000000
	lf	%f3, [%sp + 7]
	mulf	%f2, %f3, %f2
	addi	%r2, %r1, 1
	sf	%f2, [%r2 + 0]
	lf	%f2, [%sp + 9]
	mulf	%f4, %f1, %f2
	llif	%f5, 200.000000
	lhif	%f5, 200.000000
	mulf	%f4, %f4, %f5
	addi	%r2, %r1, 2
	sf	%f4, [%r2 + 0]
	lw	%r2, [%sp + 2]
	addi	%r3, %r2, 0
	sf	%f2, [%r3 + 0]
	llif	%f4, 0.000000
	lhif	%f4, 0.000000
	addi	%r3, %r2, 1
	sf	%f4, [%r3 + 0]
	negf	%f4, %f0
	addi	%r2, %r2, 2
	sf	%f4, [%r2 + 0]
	negf	%f4, %f3
	mulf	%f0, %f4, %f0
	lw	%r2, [%sp + 1]
	addi	%r3, %r2, 0
	sf	%f0, [%r3 + 0]
	negf	%f0, %f1
	addi	%r3, %r2, 1
	sf	%f0, [%r3 + 0]
	negf	%f0, %f3
	mulf	%f0, %f0, %f2
	addi	%r2, %r2, 2
	sf	%f0, [%r2 + 0]
	lw	%r2, [%sp + 4]
	addi	%r3, %r2, 0
	lf	%f0, [%r3 + 0]
	addi	%r3, %r1, 0
	lf	%f1, [%r3 + 0]
	subf	%f0, %f0, %f1
	lw	%r3, [%sp + 0]
	addi	%r4, %r3, 0
	sf	%f0, [%r4 + 0]
	addi	%r4, %r2, 1
	lf	%f0, [%r4 + 0]
	addi	%r4, %r1, 1
	lf	%f1, [%r4 + 0]
	subf	%f0, %f0, %f1
	addi	%r4, %r3, 1
	sf	%f0, [%r4 + 0]
	addi	%r2, %r2, 2
	lf	%f0, [%r2 + 0]
	addi	%r1, %r1, 2
	lf	%f1, [%r1 + 0]
	subf	%f0, %f0, %f1
	addi	%r1, %r3, 2
	sf	%f0, [%r1 + 0]
	jr	%ra
read_light.2697:
	lw	%r1, [%r27 + 2]
	lw	%r2, [%r27 + 1]
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_read_int
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_read_float
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	llif	%f1, 0.017453
	lhif	%f1, 0.017453
	mulf	%f0, %f0, %f1
	sf	%f0, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	sin.2516
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	negf	%f0, %f0
	lw	%r1, [%sp + 1]
	addi	%r2, %r1, 1
	sf	%f0, [%r2 + 0]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj_read_float
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	llif	%f1, 0.017453
	lhif	%f1, 0.017453
	mulf	%f0, %f0, %f1
	lf	%f1, [%sp + 2]
	sf	%f0, [%sp + 3]
	movf	%f0, %f1
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	cos.2518
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lf	%f1, [%sp + 3]
	sf	%f0, [%sp + 4]
	movf	%f0, %f1
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	sin.2516
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 4]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	addi	%r2, %r1, 0
	sf	%f0, [%r2 + 0]
	lf	%f0, [%sp + 3]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	cos.2518
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 4]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	addi	%r1, %r1, 2
	sf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_read_float
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r1, [%sp + 0]
	addi	%r1, %r1, 0
	sf	%f0, [%r1 + 0]
	jr	%ra
rotate_quadratic_matrix.2699:
	addi	%r3, %r2, 0
	lf	%f0, [%r3 + 0]
	sw	%r1, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	cos.2518
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r1, [%sp + 1]
	addi	%r2, %r1, 0
	lf	%f1, [%r2 + 0]
	sf	%f0, [%sp + 2]
	movf	%f0, %f1
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	sin.2516
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lw	%r1, [%sp + 1]
	addi	%r2, %r1, 1
	lf	%f1, [%r2 + 0]
	sf	%f0, [%sp + 3]
	movf	%f0, %f1
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	cos.2518
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r1, [%sp + 1]
	addi	%r2, %r1, 1
	lf	%f1, [%r2 + 0]
	sf	%f0, [%sp + 4]
	movf	%f0, %f1
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	sin.2516
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r1, [%sp + 1]
	addi	%r2, %r1, 2
	lf	%f1, [%r2 + 0]
	sf	%f0, [%sp + 5]
	movf	%f0, %f1
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	cos.2518
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r1, [%sp + 1]
	addi	%r2, %r1, 2
	lf	%f1, [%r2 + 0]
	sf	%f0, [%sp + 6]
	movf	%f0, %f1
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	sin.2516
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lf	%f1, [%sp + 6]
	lf	%f2, [%sp + 4]
	mulf	%f3, %f2, %f1
	lf	%f4, [%sp + 5]
	lf	%f5, [%sp + 3]
	mulf	%f6, %f5, %f4
	mulf	%f6, %f6, %f1
	lf	%f7, [%sp + 2]
	mulf	%f8, %f7, %f0
	subf	%f6, %f6, %f8
	mulf	%f8, %f7, %f4
	mulf	%f8, %f8, %f1
	mulf	%f9, %f5, %f0
	addf	%f8, %f8, %f9
	mulf	%f9, %f2, %f0
	mulf	%f10, %f5, %f4
	mulf	%f10, %f10, %f0
	mulf	%f11, %f7, %f1
	addf	%f10, %f10, %f11
	mulf	%f11, %f7, %f4
	mulf	%f0, %f11, %f0
	mulf	%f1, %f5, %f1
	subf	%f0, %f0, %f1
	negf	%f1, %f4
	mulf	%f4, %f5, %f2
	mulf	%f2, %f7, %f2
	lw	%r1, [%sp + 0]
	addi	%r2, %r1, 0
	lf	%f5, [%r2 + 0]
	addi	%r2, %r1, 1
	lf	%f7, [%r2 + 0]
	addi	%r2, %r1, 2
	lf	%f11, [%r2 + 0]
	mulf	%f12, %f3, %f3
	mulf	%f12, %f5, %f12
	mulf	%f13, %f9, %f9
	mulf	%f13, %f7, %f13
	addf	%f12, %f12, %f13
	mulf	%f13, %f1, %f1
	mulf	%f13, %f11, %f13
	addf	%f12, %f12, %f13
	addi	%r2, %r1, 0
	sf	%f12, [%r2 + 0]
	mulf	%f12, %f6, %f6
	mulf	%f12, %f5, %f12
	mulf	%f13, %f10, %f10
	mulf	%f13, %f7, %f13
	addf	%f12, %f12, %f13
	mulf	%f13, %f4, %f4
	mulf	%f13, %f11, %f13
	addf	%f12, %f12, %f13
	addi	%r2, %r1, 1
	sf	%f12, [%r2 + 0]
	mulf	%f12, %f8, %f8
	mulf	%f12, %f5, %f12
	mulf	%f13, %f0, %f0
	mulf	%f13, %f7, %f13
	addf	%f12, %f12, %f13
	mulf	%f13, %f2, %f2
	mulf	%f13, %f11, %f13
	addf	%f12, %f12, %f13
	addi	%r1, %r1, 2
	sf	%f12, [%r1 + 0]
	llif	%f12, 2.000000
	lhif	%f12, 2.000000
	mulf	%f13, %f5, %f6
	mulf	%f13, %f13, %f8
	mulf	%f14, %f7, %f10
	mulf	%f14, %f14, %f0
	addf	%f13, %f13, %f14
	mulf	%f14, %f11, %f4
	mulf	%f14, %f14, %f2
	addf	%f13, %f13, %f14
	mulf	%f12, %f12, %f13
	lw	%r1, [%sp + 1]
	addi	%r2, %r1, 0
	sf	%f12, [%r2 + 0]
	llif	%f12, 2.000000
	lhif	%f12, 2.000000
	mulf	%f13, %f5, %f3
	mulf	%f8, %f13, %f8
	mulf	%f13, %f7, %f9
	mulf	%f0, %f13, %f0
	addf	%f0, %f8, %f0
	mulf	%f8, %f11, %f1
	mulf	%f2, %f8, %f2
	addf	%f0, %f0, %f2
	mulf	%f0, %f12, %f0
	addi	%r2, %r1, 1
	sf	%f0, [%r2 + 0]
	llif	%f0, 2.000000
	lhif	%f0, 2.000000
	mulf	%f2, %f5, %f3
	mulf	%f2, %f2, %f6
	mulf	%f3, %f7, %f9
	mulf	%f3, %f3, %f10
	addf	%f2, %f2, %f3
	mulf	%f1, %f11, %f1
	mulf	%f1, %f1, %f4
	addf	%f1, %f2, %f1
	mulf	%f0, %f0, %f1
	addi	%r1, %r1, 2
	sf	%f0, [%r1 + 0]
	jr	%ra
read_nth_object.2702:
	lw	%r2, [%r27 + 1]
	sw	%r1, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_read_int
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, -1
	lhi	%r2, -1
	bneq	%r1, %r2, bneq_else.12607
	lli	%r1, 0
	jr	%ra
bneq_else.12607:
	sw	%r1, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj_read_int
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	sw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj_read_int
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	sw	%r1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_read_int
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	add	%hp, %hp, %r2
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	sw	%r2, [%sp + 6]
	sw	%r1, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	yj_read_float
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	sw	%r1, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	yj_read_float
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r1, [%sp + 8]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	sw	%r1, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	yj_read_float
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	add	%hp, %hp, %r1
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	sw	%r2, [%sp + 10]
	sw	%r1, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj_read_float
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lw	%r1, [%sp + 10]
	lw	%r2, [%sp + 11]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	sw	%r1, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	yj_read_float
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lw	%r1, [%sp + 12]
	lw	%r2, [%sp + 11]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	sw	%r1, [%sp + 13]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	yj_read_float
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lw	%r1, [%sp + 13]
	lw	%r2, [%sp + 11]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	yj_read_float
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.12608
	lli	%r1, 0
	j	bgtf_cont.12609
bgtf_else.12608:
	lli	%r1, 1
bgtf_cont.12609:
	lli	%r2, 2
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	add	%hp, %hp, %r2
	sw	%r1, [%sp + 14]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	sw	%r2, [%sp + 15]
	sw	%r1, [%sp + 16]
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	yj_read_float
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lw	%r1, [%sp + 15]
	lw	%r2, [%sp + 16]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	sw	%r1, [%sp + 17]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	yj_read_float
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lw	%r1, [%sp + 17]
	lw	%r2, [%sp + 16]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	add	%hp, %hp, %r1
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lli	%r2, 0
	sw	%r2, [%sp + 18]
	sw	%r1, [%sp + 19]
	sw	%ra, [%sp + 20]
	addi	%sp, %sp, 21
	jal	yj_read_float
	subi	%sp, %sp, 21
	lw	%ra, [%sp + 20]
	lw	%r1, [%sp + 18]
	lw	%r2, [%sp + 19]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	sw	%r1, [%sp + 20]
	sw	%ra, [%sp + 21]
	addi	%sp, %sp, 22
	jal	yj_read_float
	subi	%sp, %sp, 22
	lw	%ra, [%sp + 21]
	lw	%r1, [%sp + 20]
	lw	%r2, [%sp + 19]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	sw	%r1, [%sp + 21]
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	yj_read_float
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lw	%r1, [%sp + 21]
	lw	%r2, [%sp + 19]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	add	%hp, %hp, %r1
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lli	%r2, 0
	lw	%r3, [%sp + 5]
	sw	%r1, [%sp + 22]
	bneq	%r3, %r2, bneq_else.12610
	j	bneq_cont.12611
bneq_else.12610:
	lli	%r2, 0
	sw	%r2, [%sp + 23]
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	yj_read_float
	subi	%sp, %sp, 25
	lw	%ra, [%sp + 24]
	llif	%f1, 0.017453
	lhif	%f1, 0.017453
	mulf	%f0, %f0, %f1
	lw	%r1, [%sp + 23]
	lw	%r2, [%sp + 22]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	sw	%r1, [%sp + 24]
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	yj_read_float
	subi	%sp, %sp, 26
	lw	%ra, [%sp + 25]
	llif	%f1, 0.017453
	lhif	%f1, 0.017453
	mulf	%f0, %f0, %f1
	lw	%r1, [%sp + 24]
	lw	%r2, [%sp + 22]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	sw	%r1, [%sp + 25]
	sw	%ra, [%sp + 26]
	addi	%sp, %sp, 27
	jal	yj_read_float
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	llif	%f1, 0.017453
	lhif	%f1, 0.017453
	mulf	%f0, %f0, %f1
	lw	%r1, [%sp + 25]
	lw	%r2, [%sp + 22]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.12611:
	lli	%r1, 2
	lw	%r2, [%sp + 3]
	bneq	%r2, %r1, bneq_else.12612
	lli	%r1, 1
	j	bneq_cont.12613
bneq_else.12612:
	lw	%r1, [%sp + 14]
bneq_cont.12613:
	lli	%r3, 4
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r4, %r0, %hp
	add	%hp, %hp, %r3
	sw	%r1, [%sp + 26]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 28
	lw	%ra, [%sp + 27]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 11
	sw	%r1, [%r2 + 10]
	lw	%r1, [%sp + 22]
	sw	%r1, [%r2 + 9]
	lw	%r3, [%sp + 19]
	sw	%r3, [%r2 + 8]
	lw	%r3, [%sp + 16]
	sw	%r3, [%r2 + 7]
	lw	%r3, [%sp + 26]
	sw	%r3, [%r2 + 6]
	lw	%r3, [%sp + 11]
	sw	%r3, [%r2 + 5]
	lw	%r3, [%sp + 7]
	sw	%r3, [%r2 + 4]
	lw	%r4, [%sp + 5]
	sw	%r4, [%r2 + 3]
	lw	%r5, [%sp + 4]
	sw	%r5, [%r2 + 2]
	lw	%r5, [%sp + 3]
	sw	%r5, [%r2 + 1]
	lw	%r6, [%sp + 2]
	sw	%r6, [%r2 + 0]
	lw	%r6, [%sp + 0]
	lw	%r7, [%sp + 1]
	add	%r6, %r7, %r6
	sw	%r2, [%r6 + 0]
	lli	%r2, 3
	bneq	%r5, %r2, bneq_else.12614
	lli	%r2, 0
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lli	%r2, 0
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r5, %f0
	movf2i	%r6, %f1
	bneq	%r5, %r6, bneq_else.12616
	lli	%r5, 1
	j	bneq_cont.12617
bneq_else.12616:
	lli	%r5, 0
bneq_cont.12617:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12618
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r5, %f0
	movf2i	%r6, %f1
	bneq	%r5, %r6, bneq_else.12620
	lli	%r5, 1
	j	bneq_cont.12621
bneq_else.12620:
	lli	%r5, 0
bneq_cont.12621:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12622
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f0, %f1, bgtf_else.12624
	lli	%r5, 0
	j	bgtf_cont.12625
bgtf_else.12624:
	lli	%r5, 1
bgtf_cont.12625:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12626
	llif	%f1, -1.000000
	lhif	%f1, -1.000000
	j	bneq_cont.12627
bneq_else.12626:
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
bneq_cont.12627:
	j	bneq_cont.12623
bneq_else.12622:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
bneq_cont.12623:
	mulf	%f0, %f0, %f0
	divf	%f0, %f1, %f0
	j	bneq_cont.12619
bneq_else.12618:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.12619:
	add	%r2, %r3, %r2
	sf	%f0, [%r2 + 0]
	lli	%r2, 1
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lli	%r2, 1
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r5, %f0
	movf2i	%r6, %f1
	bneq	%r5, %r6, bneq_else.12628
	lli	%r5, 1
	j	bneq_cont.12629
bneq_else.12628:
	lli	%r5, 0
bneq_cont.12629:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12630
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r5, %f0
	movf2i	%r6, %f1
	bneq	%r5, %r6, bneq_else.12632
	lli	%r5, 1
	j	bneq_cont.12633
bneq_else.12632:
	lli	%r5, 0
bneq_cont.12633:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12634
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f0, %f1, bgtf_else.12636
	lli	%r5, 0
	j	bgtf_cont.12637
bgtf_else.12636:
	lli	%r5, 1
bgtf_cont.12637:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12638
	llif	%f1, -1.000000
	lhif	%f1, -1.000000
	j	bneq_cont.12639
bneq_else.12638:
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
bneq_cont.12639:
	j	bneq_cont.12635
bneq_else.12634:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
bneq_cont.12635:
	mulf	%f0, %f0, %f0
	divf	%f0, %f1, %f0
	j	bneq_cont.12631
bneq_else.12630:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.12631:
	add	%r2, %r3, %r2
	sf	%f0, [%r2 + 0]
	lli	%r2, 2
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lli	%r2, 2
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r5, %f0
	movf2i	%r6, %f1
	bneq	%r5, %r6, bneq_else.12640
	lli	%r5, 1
	j	bneq_cont.12641
bneq_else.12640:
	lli	%r5, 0
bneq_cont.12641:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12642
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r5, %f0
	movf2i	%r6, %f1
	bneq	%r5, %r6, bneq_else.12644
	lli	%r5, 1
	j	bneq_cont.12645
bneq_else.12644:
	lli	%r5, 0
bneq_cont.12645:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12646
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f0, %f1, bgtf_else.12648
	lli	%r5, 0
	j	bgtf_cont.12649
bgtf_else.12648:
	lli	%r5, 1
bgtf_cont.12649:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12650
	llif	%f1, -1.000000
	lhif	%f1, -1.000000
	j	bneq_cont.12651
bneq_else.12650:
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
bneq_cont.12651:
	j	bneq_cont.12647
bneq_else.12646:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
bneq_cont.12647:
	mulf	%f0, %f0, %f0
	divf	%f0, %f1, %f0
	j	bneq_cont.12643
bneq_else.12642:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.12643:
	add	%r2, %r3, %r2
	sf	%f0, [%r2 + 0]
	j	bneq_cont.12615
bneq_else.12614:
	lli	%r2, 2
	bneq	%r5, %r2, bneq_else.12652
	lli	%r2, 0
	lw	%r5, [%sp + 14]
	bneq	%r5, %r2, bneq_else.12654
	lli	%r2, 1
	j	bneq_cont.12655
bneq_else.12654:
	lli	%r2, 0
bneq_cont.12655:
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	vecunit_sgn.2594
	subi	%sp, %sp, 28
	lw	%ra, [%sp + 27]
	j	bneq_cont.12653
bneq_else.12652:
bneq_cont.12653:
bneq_cont.12615:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	bneq	%r2, %r1, bneq_else.12656
	j	bneq_cont.12657
bneq_else.12656:
	lw	%r1, [%sp + 7]
	lw	%r2, [%sp + 22]
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	rotate_quadratic_matrix.2699
	subi	%sp, %sp, 28
	lw	%ra, [%sp + 27]
bneq_cont.12657:
	lli	%r1, 1
	jr	%ra
read_object.2704:
	lw	%r2, [%r27 + 2]
	lw	%r3, [%r27 + 1]
	lli	%r4, 60
	bgt	%r4, %r1, bgt_else.12658
	jr	%ra
bgt_else.12658:
	sw	%r27, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%r3, [%sp + 3]
	add	%r27, %r0, %r2
	sw	%ra, [%sp + 4]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 5
	jalr	%r26
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12660
	lli	%r1, 0
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 2]
	sw	%r2, [%r1 + 0]
	jr	%ra
bneq_else.12660:
	lli	%r1, 1
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lli	%r2, 60
	bgt	%r2, %r1, bgt_else.12662
	jr	%ra
bgt_else.12662:
	lw	%r27, [%sp + 1]
	sw	%r1, [%sp + 4]
	sw	%ra, [%sp + 5]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 6
	jalr	%r26
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12664
	lli	%r1, 0
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 4]
	sw	%r2, [%r1 + 0]
	jr	%ra
bneq_else.12664:
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
read_net_item.2708:
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_read_int
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, -1
	lhi	%r2, -1
	bneq	%r1, %r2, bneq_else.12666
	lli	%r1, 1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lli	%r2, -1
	lhi	%r2, -1
	add	%r3, %r0, %hp
	add	%hp, %hp, %r1
	j	yj.create_array_loop
bneq_else.12666:
	lli	%r2, 1
	lw	%r3, [%sp + 0]
	add	%r2, %r3, %r2
	sw	%r1, [%sp + 1]
	sw	%r2, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj_read_int
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, -1
	lhi	%r2, -1
	bneq	%r1, %r2, bneq_else.12667
	lli	%r1, 1
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lli	%r2, -1
	lhi	%r2, -1
	add	%r3, %r0, %hp
	add	%hp, %hp, %r1
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj.create_array_loop
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	j	bneq_cont.12668
bneq_else.12667:
	lli	%r2, 1
	lw	%r3, [%sp + 2]
	add	%r2, %r3, %r2
	sw	%r1, [%sp + 3]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	read_net_item.2708
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r2, [%sp + 2]
	add	%r2, %r1, %r2
	lw	%r3, [%sp + 3]
	sw	%r3, [%r2 + 0]
bneq_cont.12668:
	lw	%r2, [%sp + 0]
	add	%r2, %r1, %r2
	lw	%r3, [%sp + 1]
	sw	%r3, [%r2 + 0]
	jr	%ra
read_or_network.2710:
	lli	%r2, 0
	sw	%r1, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_read_int
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, -1
	lhi	%r2, -1
	bneq	%r1, %r2, bneq_else.12669
	lli	%r1, 1
	lli	%r2, -1
	lhi	%r2, -1
	add	%r3, %r0, %hp
	add	%hp, %hp, %r1
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj.create_array_loop
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	add	%r2, %r0, %r1
	j	bneq_cont.12670
bneq_else.12669:
	lli	%r2, 1
	sw	%r1, [%sp + 2]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	read_net_item.2708
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lw	%r2, [%sp + 1]
	add	%r2, %r1, %r2
	lw	%r3, [%sp + 2]
	sw	%r3, [%r2 + 0]
	add	%r2, %r0, %r1
bneq_cont.12670:
	addi	%r1, %r2, 0
	lw	%r1, [%r1 + 0]
	lli	%r3, -1
	lhi	%r3, -1
	bneq	%r1, %r3, bneq_else.12671
	lli	%r1, 1
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	add	%r3, %r0, %hp
	add	%hp, %hp, %r1
	j	yj.create_array_loop
bneq_else.12671:
	lli	%r1, 1
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	lli	%r4, 0
	sw	%r2, [%sp + 3]
	sw	%r1, [%sp + 4]
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	read_net_item.2708
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	add	%r2, %r0, %r1
	lli	%r1, 0
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r3, -1
	lhi	%r3, -1
	bneq	%r1, %r3, bneq_else.12672
	lli	%r1, 1
	lw	%r3, [%sp + 4]
	add	%r1, %r3, %r1
	add	%r3, %r0, %hp
	add	%hp, %hp, %r1
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj.create_array_loop
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	j	bneq_cont.12673
bneq_else.12672:
	lli	%r1, 1
	lw	%r3, [%sp + 4]
	add	%r1, %r3, %r1
	sw	%r2, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	read_or_network.2710
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 4]
	add	%r2, %r1, %r2
	lw	%r3, [%sp + 5]
	sw	%r3, [%r2 + 0]
bneq_cont.12673:
	lw	%r2, [%sp + 0]
	add	%r2, %r1, %r2
	lw	%r3, [%sp + 3]
	sw	%r3, [%r2 + 0]
	jr	%ra
read_and_network.2712:
	lw	%r2, [%r27 + 1]
	lli	%r3, 0
	sw	%r27, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r2, [%sp + 2]
	sw	%r3, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj_read_int
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, -1
	lhi	%r2, -1
	bneq	%r1, %r2, bneq_else.12674
	lli	%r1, 1
	lli	%r2, -1
	lhi	%r2, -1
	add	%r3, %r0, %hp
	add	%hp, %hp, %r1
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj.create_array_loop
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	j	bneq_cont.12675
bneq_else.12674:
	lli	%r2, 1
	sw	%r1, [%sp + 4]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	read_net_item.2708
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 3]
	add	%r2, %r1, %r2
	lw	%r3, [%sp + 4]
	sw	%r3, [%r2 + 0]
bneq_cont.12675:
	addi	%r2, %r1, 0
	lw	%r2, [%r2 + 0]
	lli	%r3, -1
	lhi	%r3, -1
	bneq	%r2, %r3, bneq_else.12676
	jr	%ra
bneq_else.12676:
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 2]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	add	%r1, %r2, %r1
	lli	%r2, 0
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	read_net_item.2708
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	add	%r2, %r1, %r2
	lw	%r2, [%r2 + 0]
	lli	%r3, -1
	lhi	%r3, -1
	bneq	%r2, %r3, bneq_else.12678
	jr	%ra
bneq_else.12678:
	lw	%r2, [%sp + 5]
	lw	%r3, [%sp + 2]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	lli	%r1, 1
	add	%r1, %r2, %r1
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
solver_rect_surface.2716:
	lw	%r6, [%r27 + 1]
	add	%r7, %r2, %r3
	lf	%f3, [%r7 + 0]
	llif	%f4, 0.000000
	lhif	%f4, 0.000000
	movf2i	%r7, %f3
	movf2i	%r8, %f4
	bneq	%r7, %r8, bneq_else.12680
	lli	%r7, 1
	j	bneq_cont.12681
bneq_else.12680:
	lli	%r7, 0
bneq_cont.12681:
	lli	%r8, 0
	bneq	%r7, %r8, bneq_else.12682
	lw	%r7, [%r1 + 4]
	lw	%r1, [%r1 + 6]
	add	%r8, %r2, %r3
	lf	%f3, [%r8 + 0]
	llif	%f4, 0.000000
	lhif	%f4, 0.000000
	bgtf	%f4, %f3, bgtf_else.12683
	lli	%r8, 0
	j	bgtf_cont.12684
bgtf_else.12683:
	lli	%r8, 1
bgtf_cont.12684:
	lli	%r9, 0
	bneq	%r1, %r9, bneq_else.12685
	add	%r1, %r0, %r8
	j	bneq_cont.12686
bneq_else.12685:
	lli	%r1, 0
	bneq	%r8, %r1, bneq_else.12687
	lli	%r1, 1
	j	bneq_cont.12688
bneq_else.12687:
	lli	%r1, 0
bneq_cont.12688:
bneq_cont.12686:
	add	%r8, %r7, %r3
	lf	%f3, [%r8 + 0]
	lli	%r8, 0
	bneq	%r1, %r8, bneq_else.12689
	negf	%f3, %f3
	j	bneq_cont.12690
bneq_else.12689:
bneq_cont.12690:
	subf	%f0, %f3, %f0
	add	%r1, %r2, %r3
	lf	%f3, [%r1 + 0]
	divf	%f0, %f0, %f3
	add	%r1, %r2, %r4
	lf	%f3, [%r1 + 0]
	mulf	%f3, %f0, %f3
	addf	%f1, %f3, %f1
	absf	%f1, %f1
	add	%r1, %r7, %r4
	lf	%f3, [%r1 + 0]
	bgtf	%f3, %f1, bgtf_else.12691
	lli	%r1, 0
	j	bgtf_cont.12692
bgtf_else.12691:
	lli	%r1, 1
bgtf_cont.12692:
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.12693
	lli	%r1, 0
	jr	%ra
bneq_else.12693:
	add	%r1, %r2, %r5
	lf	%f1, [%r1 + 0]
	mulf	%f1, %f0, %f1
	addf	%f1, %f1, %f2
	absf	%f1, %f1
	add	%r1, %r7, %r5
	lf	%f2, [%r1 + 0]
	bgtf	%f2, %f1, bgtf_else.12694
	lli	%r1, 0
	j	bgtf_cont.12695
bgtf_else.12694:
	lli	%r1, 1
bgtf_cont.12695:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12696
	lli	%r1, 0
	jr	%ra
bneq_else.12696:
	lli	%r1, 0
	add	%r1, %r6, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
bneq_else.12682:
	lli	%r1, 0
	jr	%ra
solver_rect.2725:
	lw	%r27, [%r27 + 1]
	lli	%r3, 0
	lli	%r4, 1
	lli	%r5, 2
	sf	%f0, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	sw	%r2, [%sp + 3]
	sw	%r1, [%sp + 4]
	sw	%r27, [%sp + 5]
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12697
	lli	%r3, 1
	lli	%r4, 2
	lli	%r5, 0
	lf	%f0, [%sp + 2]
	lf	%f1, [%sp + 1]
	lf	%f2, [%sp + 0]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 5]
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12698
	lli	%r3, 2
	lli	%r4, 0
	lli	%r5, 1
	lf	%f0, [%sp + 1]
	lf	%f1, [%sp + 0]
	lf	%f2, [%sp + 2]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 5]
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12699
	lli	%r1, 0
	jr	%ra
bneq_else.12699:
	lli	%r1, 3
	jr	%ra
bneq_else.12698:
	lli	%r1, 2
	jr	%ra
bneq_else.12697:
	lli	%r1, 1
	jr	%ra
quadratic.2737:
	mulf	%f3, %f0, %f0
	lw	%r2, [%r1 + 4]
	addi	%r2, %r2, 0
	lf	%f4, [%r2 + 0]
	mulf	%f3, %f3, %f4
	mulf	%f4, %f1, %f1
	lw	%r2, [%r1 + 4]
	addi	%r2, %r2, 1
	lf	%f5, [%r2 + 0]
	mulf	%f4, %f4, %f5
	addf	%f3, %f3, %f4
	mulf	%f4, %f2, %f2
	lw	%r2, [%r1 + 4]
	addi	%r2, %r2, 2
	lf	%f5, [%r2 + 0]
	mulf	%f4, %f4, %f5
	addf	%f3, %f3, %f4
	lw	%r2, [%r1 + 3]
	lli	%r3, 0
	bneq	%r2, %r3, bneq_else.12700
	movf	%f0, %f3
	jr	%ra
bneq_else.12700:
	mulf	%f4, %f1, %f2
	lw	%r2, [%r1 + 9]
	lli	%r3, 0
	add	%r2, %r2, %r3
	lf	%f5, [%r2 + 0]
	mulf	%f4, %f4, %f5
	addf	%f3, %f3, %f4
	mulf	%f2, %f2, %f0
	lw	%r2, [%r1 + 9]
	lli	%r3, 1
	add	%r2, %r2, %r3
	lf	%f4, [%r2 + 0]
	mulf	%f2, %f2, %f4
	addf	%f2, %f3, %f2
	mulf	%f0, %f0, %f1
	lw	%r1, [%r1 + 9]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f1, [%r1 + 0]
	mulf	%f0, %f0, %f1
	addf	%f0, %f2, %f0
	jr	%ra
bilinear.2742:
	mulf	%f6, %f0, %f3
	lw	%r2, [%r1 + 4]
	addi	%r2, %r2, 0
	lf	%f7, [%r2 + 0]
	mulf	%f6, %f6, %f7
	mulf	%f7, %f1, %f4
	lw	%r2, [%r1 + 4]
	addi	%r2, %r2, 1
	lf	%f8, [%r2 + 0]
	mulf	%f7, %f7, %f8
	addf	%f6, %f6, %f7
	mulf	%f7, %f2, %f5
	lw	%r2, [%r1 + 4]
	addi	%r2, %r2, 2
	lf	%f8, [%r2 + 0]
	mulf	%f7, %f7, %f8
	addf	%f6, %f6, %f7
	lw	%r2, [%r1 + 3]
	lli	%r3, 0
	bneq	%r2, %r3, bneq_else.12701
	movf	%f0, %f6
	jr	%ra
bneq_else.12701:
	mulf	%f7, %f2, %f4
	mulf	%f8, %f1, %f5
	addf	%f7, %f7, %f8
	lw	%r2, [%r1 + 9]
	lli	%r3, 0
	add	%r2, %r2, %r3
	lf	%f8, [%r2 + 0]
	mulf	%f7, %f7, %f8
	mulf	%f5, %f0, %f5
	mulf	%f2, %f2, %f3
	addf	%f2, %f5, %f2
	lw	%r2, [%r1 + 9]
	lli	%r3, 1
	add	%r2, %r2, %r3
	lf	%f5, [%r2 + 0]
	mulf	%f2, %f2, %f5
	addf	%f2, %f7, %f2
	mulf	%f0, %f0, %f4
	mulf	%f1, %f1, %f3
	addf	%f0, %f0, %f1
	lw	%r1, [%r1 + 9]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f1, [%r1 + 0]
	mulf	%f0, %f0, %f1
	addf	%f0, %f2, %f0
	llif	%f1, 0.500000
	lhif	%f1, 0.500000
	mulf	%f0, %f0, %f1
	addf	%f0, %f6, %f0
	jr	%ra
solver_second.2750:
	lw	%r3, [%r27 + 1]
	addi	%r4, %r2, 0
	lf	%f3, [%r4 + 0]
	addi	%r4, %r2, 1
	lf	%f4, [%r4 + 0]
	addi	%r4, %r2, 2
	lf	%f5, [%r4 + 0]
	sw	%r3, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%r1, [%sp + 4]
	sw	%r2, [%sp + 5]
	movf	%f2, %f5
	movf	%f1, %f4
	movf	%f0, %f3
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	quadratic.2737
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r1, %f0
	movf2i	%r2, %f1
	bneq	%r1, %r2, bneq_else.12702
	lli	%r1, 1
	j	bneq_cont.12703
bneq_else.12702:
	lli	%r1, 0
bneq_cont.12703:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12704
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lli	%r1, 1
	add	%r1, %r2, %r1
	lf	%f2, [%r1 + 0]
	lli	%r1, 2
	add	%r1, %r2, %r1
	lf	%f3, [%r1 + 0]
	lf	%f4, [%sp + 3]
	lf	%f5, [%sp + 2]
	lf	%f6, [%sp + 1]
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 6]
	movf	%f0, %f1
	movf	%f1, %f2
	movf	%f2, %f3
	movf	%f3, %f4
	movf	%f4, %f5
	movf	%f5, %f6
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	bilinear.2742
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lf	%f1, [%sp + 3]
	lf	%f2, [%sp + 2]
	lf	%f3, [%sp + 1]
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 7]
	movf	%f0, %f1
	movf	%f1, %f2
	movf	%f2, %f3
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	quadratic.2737
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 4]
	lw	%r2, [%r1 + 1]
	lli	%r3, 3
	bneq	%r2, %r3, bneq_else.12705
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	subf	%f0, %f0, %f1
	j	bneq_cont.12706
bneq_else.12705:
bneq_cont.12706:
	lf	%f1, [%sp + 7]
	mulf	%f2, %f1, %f1
	lf	%f3, [%sp + 6]
	mulf	%f0, %f3, %f0
	subf	%f0, %f2, %f0
	llif	%f2, 0.000000
	lhif	%f2, 0.000000
	bgtf	%f0, %f2, bgtf_else.12707
	lli	%r2, 0
	j	bgtf_cont.12708
bgtf_else.12707:
	lli	%r2, 1
bgtf_cont.12708:
	lli	%r3, 0
	bneq	%r2, %r3, bneq_else.12709
	lli	%r1, 0
	jr	%ra
bneq_else.12709:
	sqrt	%f0, %f0
	lw	%r1, [%r1 + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12710
	negf	%f0, %f0
	j	bneq_cont.12711
bneq_else.12710:
bneq_cont.12711:
	lli	%r1, 0
	subf	%f0, %f0, %f1
	divf	%f0, %f0, %f3
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
bneq_else.12704:
	lli	%r1, 0
	jr	%ra
solver.2756:
	lw	%r4, [%r27 + 4]
	lw	%r5, [%r27 + 3]
	lw	%r6, [%r27 + 2]
	lw	%r7, [%r27 + 1]
	add	%r1, %r7, %r1
	lw	%r1, [%r1 + 0]
	addi	%r7, %r3, 0
	lf	%f0, [%r7 + 0]
	lw	%r7, [%r1 + 5]
	addi	%r7, %r7, 0
	lf	%f1, [%r7 + 0]
	subf	%f0, %f0, %f1
	addi	%r7, %r3, 1
	lf	%f1, [%r7 + 0]
	lw	%r7, [%r1 + 5]
	addi	%r7, %r7, 1
	lf	%f2, [%r7 + 0]
	subf	%f1, %f1, %f2
	addi	%r3, %r3, 2
	lf	%f2, [%r3 + 0]
	lw	%r3, [%r1 + 5]
	addi	%r3, %r3, 2
	lf	%f3, [%r3 + 0]
	subf	%f2, %f2, %f3
	lw	%r3, [%r1 + 1]
	lli	%r7, 1
	bneq	%r3, %r7, bneq_else.12712
	add	%r27, %r0, %r5
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.12712:
	lli	%r5, 2
	bneq	%r3, %r5, bneq_else.12713
	lw	%r1, [%r1 + 4]
	sw	%r6, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%r1, [%sp + 4]
	add	%r26, %r0, %r2
	add	%r2, %r0, %r1
	add	%r1, %r0, %r26
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	veciprod.2597
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f0, %f1, bgtf_else.12714
	lli	%r1, 0
	j	bgtf_cont.12715
bgtf_else.12714:
	lli	%r1, 1
bgtf_cont.12715:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12716
	lli	%r1, 0
	jr	%ra
bneq_else.12716:
	lli	%r1, 0
	lli	%r2, 0
	lw	%r3, [%sp + 4]
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	lf	%f2, [%sp + 3]
	mulf	%f1, %f1, %f2
	lli	%r2, 1
	add	%r2, %r3, %r2
	lf	%f2, [%r2 + 0]
	lf	%f3, [%sp + 2]
	mulf	%f2, %f2, %f3
	addf	%f1, %f1, %f2
	lli	%r2, 2
	add	%r2, %r3, %r2
	lf	%f2, [%r2 + 0]
	lf	%f3, [%sp + 1]
	mulf	%f2, %f2, %f3
	addf	%f1, %f1, %f2
	negf	%f1, %f1
	divf	%f0, %f1, %f0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
bneq_else.12713:
	add	%r27, %r0, %r4
	lw	%r26, [%r27 + 0]
	jr	%r26
solver_rect_fast.2760:
	lw	%r4, [%r27 + 1]
	addi	%r5, %r3, 0
	lf	%f3, [%r5 + 0]
	subf	%f3, %f3, %f0
	addi	%r5, %r3, 1
	lf	%f4, [%r5 + 0]
	mulf	%f3, %f3, %f4
	addi	%r5, %r2, 1
	lf	%f4, [%r5 + 0]
	mulf	%f4, %f3, %f4
	addf	%f4, %f4, %f1
	absf	%f4, %f4
	lw	%r5, [%r1 + 4]
	addi	%r5, %r5, 1
	lf	%f5, [%r5 + 0]
	bgtf	%f5, %f4, bgtf_else.12717
	lli	%r5, 0
	j	bgtf_cont.12718
bgtf_else.12717:
	lli	%r5, 1
bgtf_cont.12718:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12719
	lli	%r5, 0
	j	bneq_cont.12720
bneq_else.12719:
	lli	%r5, 2
	add	%r5, %r2, %r5
	lf	%f4, [%r5 + 0]
	mulf	%f4, %f3, %f4
	addf	%f4, %f4, %f2
	absf	%f4, %f4
	lw	%r5, [%r1 + 4]
	lli	%r6, 2
	add	%r5, %r5, %r6
	lf	%f5, [%r5 + 0]
	bgtf	%f5, %f4, bgtf_else.12721
	lli	%r5, 0
	j	bgtf_cont.12722
bgtf_else.12721:
	lli	%r5, 1
bgtf_cont.12722:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12723
	lli	%r5, 0
	j	bneq_cont.12724
bneq_else.12723:
	lli	%r5, 1
	add	%r5, %r3, %r5
	lf	%f4, [%r5 + 0]
	llif	%f5, 0.000000
	lhif	%f5, 0.000000
	movf2i	%r5, %f4
	movf2i	%r6, %f5
	bneq	%r5, %r6, bneq_else.12725
	lli	%r5, 1
	j	bneq_cont.12726
bneq_else.12725:
	lli	%r5, 0
bneq_cont.12726:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12727
	lli	%r5, 1
	j	bneq_cont.12728
bneq_else.12727:
	lli	%r5, 0
bneq_cont.12728:
bneq_cont.12724:
bneq_cont.12720:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12729
	lli	%r5, 2
	add	%r5, %r3, %r5
	lf	%f3, [%r5 + 0]
	subf	%f3, %f3, %f1
	lli	%r5, 3
	add	%r5, %r3, %r5
	lf	%f4, [%r5 + 0]
	mulf	%f3, %f3, %f4
	lli	%r5, 0
	add	%r5, %r2, %r5
	lf	%f4, [%r5 + 0]
	mulf	%f4, %f3, %f4
	addf	%f4, %f4, %f0
	absf	%f4, %f4
	lw	%r5, [%r1 + 4]
	lli	%r6, 0
	add	%r5, %r5, %r6
	lf	%f5, [%r5 + 0]
	bgtf	%f5, %f4, bgtf_else.12730
	lli	%r5, 0
	j	bgtf_cont.12731
bgtf_else.12730:
	lli	%r5, 1
bgtf_cont.12731:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12732
	lli	%r5, 0
	j	bneq_cont.12733
bneq_else.12732:
	lli	%r5, 2
	add	%r5, %r2, %r5
	lf	%f4, [%r5 + 0]
	mulf	%f4, %f3, %f4
	addf	%f4, %f4, %f2
	absf	%f4, %f4
	lw	%r5, [%r1 + 4]
	lli	%r6, 2
	add	%r5, %r5, %r6
	lf	%f5, [%r5 + 0]
	bgtf	%f5, %f4, bgtf_else.12734
	lli	%r5, 0
	j	bgtf_cont.12735
bgtf_else.12734:
	lli	%r5, 1
bgtf_cont.12735:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12736
	lli	%r5, 0
	j	bneq_cont.12737
bneq_else.12736:
	lli	%r5, 3
	add	%r5, %r3, %r5
	lf	%f4, [%r5 + 0]
	llif	%f5, 0.000000
	lhif	%f5, 0.000000
	movf2i	%r5, %f4
	movf2i	%r6, %f5
	bneq	%r5, %r6, bneq_else.12738
	lli	%r5, 1
	j	bneq_cont.12739
bneq_else.12738:
	lli	%r5, 0
bneq_cont.12739:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12740
	lli	%r5, 1
	j	bneq_cont.12741
bneq_else.12740:
	lli	%r5, 0
bneq_cont.12741:
bneq_cont.12737:
bneq_cont.12733:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12742
	lli	%r5, 4
	add	%r5, %r3, %r5
	lf	%f3, [%r5 + 0]
	subf	%f2, %f3, %f2
	lli	%r5, 5
	add	%r5, %r3, %r5
	lf	%f3, [%r5 + 0]
	mulf	%f2, %f2, %f3
	lli	%r5, 0
	add	%r5, %r2, %r5
	lf	%f3, [%r5 + 0]
	mulf	%f3, %f2, %f3
	addf	%f0, %f3, %f0
	absf	%f0, %f0
	lw	%r5, [%r1 + 4]
	lli	%r6, 0
	add	%r5, %r5, %r6
	lf	%f3, [%r5 + 0]
	bgtf	%f3, %f0, bgtf_else.12743
	lli	%r5, 0
	j	bgtf_cont.12744
bgtf_else.12743:
	lli	%r5, 1
bgtf_cont.12744:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12745
	lli	%r1, 0
	j	bneq_cont.12746
bneq_else.12745:
	lli	%r5, 1
	add	%r2, %r2, %r5
	lf	%f0, [%r2 + 0]
	mulf	%f0, %f2, %f0
	addf	%f0, %f0, %f1
	absf	%f0, %f0
	lw	%r1, [%r1 + 4]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f1, [%r1 + 0]
	bgtf	%f1, %f0, bgtf_else.12747
	lli	%r1, 0
	j	bgtf_cont.12748
bgtf_else.12747:
	lli	%r1, 1
bgtf_cont.12748:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12749
	lli	%r1, 0
	j	bneq_cont.12750
bneq_else.12749:
	lli	%r1, 5
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r1, %f0
	movf2i	%r2, %f1
	bneq	%r1, %r2, bneq_else.12751
	lli	%r1, 1
	j	bneq_cont.12752
bneq_else.12751:
	lli	%r1, 0
bneq_cont.12752:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12753
	lli	%r1, 1
	j	bneq_cont.12754
bneq_else.12753:
	lli	%r1, 0
bneq_cont.12754:
bneq_cont.12750:
bneq_cont.12746:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12755
	lli	%r1, 0
	jr	%ra
bneq_else.12755:
	lli	%r1, 0
	add	%r1, %r4, %r1
	sf	%f2, [%r1 + 0]
	lli	%r1, 3
	jr	%ra
bneq_else.12742:
	lli	%r1, 0
	add	%r1, %r4, %r1
	sf	%f3, [%r1 + 0]
	lli	%r1, 2
	jr	%ra
bneq_else.12729:
	lli	%r1, 0
	add	%r1, %r4, %r1
	sf	%f3, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
solver_surface_fast.2767:
	lw	%r1, [%r27 + 1]
	addi	%r3, %r2, 0
	lf	%f3, [%r3 + 0]
	llif	%f4, 0.000000
	lhif	%f4, 0.000000
	bgtf	%f4, %f3, bgtf_else.12756
	lli	%r3, 0
	j	bgtf_cont.12757
bgtf_else.12756:
	lli	%r3, 1
bgtf_cont.12757:
	lli	%r4, 0
	bneq	%r3, %r4, bneq_else.12758
	lli	%r1, 0
	jr	%ra
bneq_else.12758:
	lli	%r3, 0
	lli	%r4, 1
	add	%r4, %r2, %r4
	lf	%f3, [%r4 + 0]
	mulf	%f0, %f3, %f0
	lli	%r4, 2
	add	%r4, %r2, %r4
	lf	%f3, [%r4 + 0]
	mulf	%f1, %f3, %f1
	addf	%f0, %f0, %f1
	lli	%r4, 3
	add	%r2, %r2, %r4
	lf	%f1, [%r2 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	add	%r1, %r1, %r3
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
solver_second_fast.2773:
	lw	%r3, [%r27 + 1]
	addi	%r4, %r2, 0
	lf	%f3, [%r4 + 0]
	llif	%f4, 0.000000
	lhif	%f4, 0.000000
	movf2i	%r4, %f3
	movf2i	%r5, %f4
	bneq	%r4, %r5, bneq_else.12759
	lli	%r4, 1
	j	bneq_cont.12760
bneq_else.12759:
	lli	%r4, 0
bneq_cont.12760:
	lli	%r5, 0
	bneq	%r4, %r5, bneq_else.12761
	lli	%r4, 1
	add	%r4, %r2, %r4
	lf	%f4, [%r4 + 0]
	mulf	%f4, %f4, %f0
	lli	%r4, 2
	add	%r4, %r2, %r4
	lf	%f5, [%r4 + 0]
	mulf	%f5, %f5, %f1
	addf	%f4, %f4, %f5
	lli	%r4, 3
	add	%r4, %r2, %r4
	lf	%f5, [%r4 + 0]
	mulf	%f5, %f5, %f2
	addf	%f4, %f4, %f5
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sf	%f3, [%sp + 2]
	sf	%f4, [%sp + 3]
	sw	%r1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	quadratic.2737
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r1, [%sp + 4]
	lw	%r2, [%r1 + 1]
	lli	%r3, 3
	bneq	%r2, %r3, bneq_else.12762
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	subf	%f0, %f0, %f1
	j	bneq_cont.12763
bneq_else.12762:
bneq_cont.12763:
	lf	%f1, [%sp + 3]
	mulf	%f2, %f1, %f1
	lf	%f3, [%sp + 2]
	mulf	%f0, %f3, %f0
	subf	%f0, %f2, %f0
	llif	%f2, 0.000000
	lhif	%f2, 0.000000
	bgtf	%f0, %f2, bgtf_else.12764
	lli	%r2, 0
	j	bgtf_cont.12765
bgtf_else.12764:
	lli	%r2, 1
bgtf_cont.12765:
	lli	%r3, 0
	bneq	%r2, %r3, bneq_else.12766
	lli	%r1, 0
	jr	%ra
bneq_else.12766:
	lw	%r1, [%r1 + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12767
	lli	%r1, 0
	sqrt	%f0, %f0
	subf	%f0, %f1, %f0
	lli	%r2, 4
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	mulf	%f0, %f0, %f1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.12768
bneq_else.12767:
	lli	%r1, 0
	sqrt	%f0, %f0
	addf	%f0, %f1, %f0
	lli	%r2, 4
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	mulf	%f0, %f0, %f1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.12768:
	lli	%r1, 1
	jr	%ra
bneq_else.12761:
	lli	%r1, 0
	jr	%ra
solver_fast.2779:
	lw	%r4, [%r27 + 4]
	lw	%r5, [%r27 + 3]
	lw	%r6, [%r27 + 2]
	lw	%r7, [%r27 + 1]
	add	%r7, %r7, %r1
	lw	%r7, [%r7 + 0]
	addi	%r8, %r3, 0
	lf	%f0, [%r8 + 0]
	lw	%r8, [%r7 + 5]
	addi	%r8, %r8, 0
	lf	%f1, [%r8 + 0]
	subf	%f0, %f0, %f1
	addi	%r8, %r3, 1
	lf	%f1, [%r8 + 0]
	lw	%r8, [%r7 + 5]
	addi	%r8, %r8, 1
	lf	%f2, [%r8 + 0]
	subf	%f1, %f1, %f2
	addi	%r3, %r3, 2
	lf	%f2, [%r3 + 0]
	lw	%r3, [%r7 + 5]
	addi	%r3, %r3, 2
	lf	%f3, [%r3 + 0]
	subf	%f2, %f2, %f3
	lw	%r3, [%r2 + 1]
	add	%r1, %r3, %r1
	lw	%r3, [%r1 + 0]
	lw	%r1, [%r7 + 1]
	lli	%r8, 1
	bneq	%r1, %r8, bneq_else.12769
	lw	%r2, [%r2 + 0]
	add	%r1, %r0, %r7
	add	%r27, %r0, %r6
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.12769:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.12770
	add	%r2, %r0, %r3
	add	%r1, %r0, %r7
	add	%r27, %r0, %r4
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.12770:
	add	%r2, %r0, %r3
	add	%r1, %r0, %r7
	add	%r27, %r0, %r5
	lw	%r26, [%r27 + 0]
	jr	%r26
solver_second_fast2.2790:
	lw	%r4, [%r27 + 1]
	addi	%r5, %r2, 0
	lf	%f3, [%r5 + 0]
	llif	%f4, 0.000000
	lhif	%f4, 0.000000
	movf2i	%r5, %f3
	movf2i	%r6, %f4
	bneq	%r5, %r6, bneq_else.12771
	lli	%r5, 1
	j	bneq_cont.12772
bneq_else.12771:
	lli	%r5, 0
bneq_cont.12772:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12773
	lli	%r5, 1
	add	%r5, %r2, %r5
	lf	%f4, [%r5 + 0]
	mulf	%f0, %f4, %f0
	lli	%r5, 2
	add	%r5, %r2, %r5
	lf	%f4, [%r5 + 0]
	mulf	%f1, %f4, %f1
	addf	%f0, %f0, %f1
	lli	%r5, 3
	add	%r5, %r2, %r5
	lf	%f1, [%r5 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	lli	%r5, 3
	add	%r3, %r3, %r5
	lf	%f1, [%r3 + 0]
	mulf	%f2, %f0, %f0
	mulf	%f1, %f3, %f1
	subf	%f1, %f2, %f1
	llif	%f2, 0.000000
	lhif	%f2, 0.000000
	bgtf	%f1, %f2, bgtf_else.12774
	lli	%r3, 0
	j	bgtf_cont.12775
bgtf_else.12774:
	lli	%r3, 1
bgtf_cont.12775:
	lli	%r5, 0
	bneq	%r3, %r5, bneq_else.12776
	lli	%r1, 0
	jr	%ra
bneq_else.12776:
	lw	%r1, [%r1 + 6]
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.12777
	lli	%r1, 0
	sqrt	%f1, %f1
	subf	%f0, %f0, %f1
	lli	%r3, 4
	add	%r2, %r2, %r3
	lf	%f1, [%r2 + 0]
	mulf	%f0, %f0, %f1
	add	%r1, %r4, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.12778
bneq_else.12777:
	lli	%r1, 0
	sqrt	%f1, %f1
	addf	%f0, %f0, %f1
	lli	%r3, 4
	add	%r2, %r2, %r3
	lf	%f1, [%r2 + 0]
	mulf	%f0, %f0, %f1
	add	%r1, %r4, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.12778:
	lli	%r1, 1
	jr	%ra
bneq_else.12773:
	lli	%r1, 0
	jr	%ra
solver_fast2.2797:
	lw	%r3, [%r27 + 4]
	lw	%r4, [%r27 + 3]
	lw	%r5, [%r27 + 2]
	lw	%r6, [%r27 + 1]
	add	%r6, %r6, %r1
	lw	%r6, [%r6 + 0]
	lw	%r7, [%r6 + 10]
	addi	%r8, %r7, 0
	lf	%f0, [%r8 + 0]
	addi	%r8, %r7, 1
	lf	%f1, [%r8 + 0]
	addi	%r8, %r7, 2
	lf	%f2, [%r8 + 0]
	lw	%r8, [%r2 + 1]
	add	%r1, %r8, %r1
	lw	%r1, [%r1 + 0]
	lw	%r8, [%r6 + 1]
	lli	%r9, 1
	bneq	%r8, %r9, bneq_else.12779
	lw	%r2, [%r2 + 0]
	add	%r3, %r0, %r1
	add	%r27, %r0, %r4
	add	%r1, %r0, %r6
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.12779:
	lli	%r2, 2
	bneq	%r8, %r2, bneq_else.12780
	lli	%r2, 0
	add	%r2, %r1, %r2
	lf	%f0, [%r2 + 0]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.12781
	lli	%r2, 0
	j	bgtf_cont.12782
bgtf_else.12781:
	lli	%r2, 1
bgtf_cont.12782:
	lli	%r3, 0
	bneq	%r2, %r3, bneq_else.12783
	lli	%r1, 0
	jr	%ra
bneq_else.12783:
	lli	%r2, 0
	lli	%r3, 0
	add	%r1, %r1, %r3
	lf	%f0, [%r1 + 0]
	lli	%r1, 3
	add	%r1, %r7, %r1
	lf	%f1, [%r1 + 0]
	mulf	%f0, %f0, %f1
	add	%r1, %r5, %r2
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
bneq_else.12780:
	add	%r2, %r0, %r1
	add	%r27, %r0, %r3
	add	%r3, %r0, %r7
	add	%r1, %r0, %r6
	lw	%r26, [%r27 + 0]
	jr	%r26
setup_rect_table.2800:
	lli	%r3, 6
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r4, %r0, %hp
	addi	%hp, %hp, 6
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r2, [%sp + 1]
	addi	%r3, %r2, 0
	lf	%f0, [%r3 + 0]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r3, %f0
	movf2i	%r4, %f1
	bneq	%r3, %r4, bneq_else.12784
	lli	%r3, 1
	j	bneq_cont.12785
bneq_else.12784:
	lli	%r3, 0
bneq_cont.12785:
	lli	%r4, 0
	bneq	%r3, %r4, bneq_else.12786
	lli	%r3, 0
	lw	%r4, [%sp + 0]
	lw	%r5, [%r4 + 6]
	lli	%r6, 0
	add	%r6, %r2, %r6
	lf	%f0, [%r6 + 0]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.12788
	lli	%r6, 0
	j	bgtf_cont.12789
bgtf_else.12788:
	lli	%r6, 1
bgtf_cont.12789:
	lli	%r7, 0
	bneq	%r5, %r7, bneq_else.12790
	add	%r5, %r0, %r6
	j	bneq_cont.12791
bneq_else.12790:
	lli	%r5, 0
	bneq	%r6, %r5, bneq_else.12792
	lli	%r5, 1
	j	bneq_cont.12793
bneq_else.12792:
	lli	%r5, 0
bneq_cont.12793:
bneq_cont.12791:
	lw	%r6, [%r4 + 4]
	lli	%r7, 0
	add	%r6, %r6, %r7
	lf	%f0, [%r6 + 0]
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12794
	negf	%f0, %f0
	j	bneq_cont.12795
bneq_else.12794:
bneq_cont.12795:
	add	%r3, %r1, %r3
	sf	%f0, [%r3 + 0]
	lli	%r3, 1
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lli	%r5, 0
	add	%r5, %r2, %r5
	lf	%f1, [%r5 + 0]
	divf	%f0, %f0, %f1
	add	%r3, %r1, %r3
	sf	%f0, [%r3 + 0]
	j	bneq_cont.12787
bneq_else.12786:
	lli	%r3, 1
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r1, %r3
	sf	%f0, [%r3 + 0]
bneq_cont.12787:
	addi	%r3, %r2, 1
	lf	%f0, [%r3 + 0]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r3, %f0
	movf2i	%r4, %f1
	bneq	%r3, %r4, bneq_else.12796
	lli	%r3, 1
	j	bneq_cont.12797
bneq_else.12796:
	lli	%r3, 0
bneq_cont.12797:
	lli	%r4, 0
	bneq	%r3, %r4, bneq_else.12798
	lli	%r3, 2
	lw	%r4, [%sp + 0]
	lw	%r5, [%r4 + 6]
	lli	%r6, 1
	add	%r6, %r2, %r6
	lf	%f0, [%r6 + 0]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.12800
	lli	%r6, 0
	j	bgtf_cont.12801
bgtf_else.12800:
	lli	%r6, 1
bgtf_cont.12801:
	lli	%r7, 0
	bneq	%r5, %r7, bneq_else.12802
	add	%r5, %r0, %r6
	j	bneq_cont.12803
bneq_else.12802:
	lli	%r5, 0
	bneq	%r6, %r5, bneq_else.12804
	lli	%r5, 1
	j	bneq_cont.12805
bneq_else.12804:
	lli	%r5, 0
bneq_cont.12805:
bneq_cont.12803:
	lw	%r6, [%r4 + 4]
	lli	%r7, 1
	add	%r6, %r6, %r7
	lf	%f0, [%r6 + 0]
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.12806
	negf	%f0, %f0
	j	bneq_cont.12807
bneq_else.12806:
bneq_cont.12807:
	add	%r3, %r1, %r3
	sf	%f0, [%r3 + 0]
	lli	%r3, 3
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lli	%r5, 1
	add	%r5, %r2, %r5
	lf	%f1, [%r5 + 0]
	divf	%f0, %f0, %f1
	add	%r3, %r1, %r3
	sf	%f0, [%r3 + 0]
	j	bneq_cont.12799
bneq_else.12798:
	lli	%r3, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r1, %r3
	sf	%f0, [%r3 + 0]
bneq_cont.12799:
	addi	%r3, %r2, 2
	lf	%f0, [%r3 + 0]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r3, %f0
	movf2i	%r4, %f1
	bneq	%r3, %r4, bneq_else.12808
	lli	%r3, 1
	j	bneq_cont.12809
bneq_else.12808:
	lli	%r3, 0
bneq_cont.12809:
	lli	%r4, 0
	bneq	%r3, %r4, bneq_else.12810
	lli	%r3, 4
	lw	%r4, [%sp + 0]
	lw	%r5, [%r4 + 6]
	lli	%r6, 2
	add	%r6, %r2, %r6
	lf	%f0, [%r6 + 0]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.12812
	lli	%r6, 0
	j	bgtf_cont.12813
bgtf_else.12812:
	lli	%r6, 1
bgtf_cont.12813:
	lli	%r7, 0
	bneq	%r5, %r7, bneq_else.12814
	add	%r5, %r0, %r6
	j	bneq_cont.12815
bneq_else.12814:
	lli	%r5, 0
	bneq	%r6, %r5, bneq_else.12816
	lli	%r5, 1
	j	bneq_cont.12817
bneq_else.12816:
	lli	%r5, 0
bneq_cont.12817:
bneq_cont.12815:
	lw	%r4, [%r4 + 4]
	lli	%r6, 2
	add	%r4, %r4, %r6
	lf	%f0, [%r4 + 0]
	lli	%r4, 0
	bneq	%r5, %r4, bneq_else.12818
	negf	%f0, %f0
	j	bneq_cont.12819
bneq_else.12818:
bneq_cont.12819:
	add	%r3, %r1, %r3
	sf	%f0, [%r3 + 0]
	lli	%r3, 5
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lli	%r4, 2
	add	%r2, %r2, %r4
	lf	%f1, [%r2 + 0]
	divf	%f0, %f0, %f1
	add	%r2, %r1, %r3
	sf	%f0, [%r2 + 0]
	j	bneq_cont.12811
bneq_else.12810:
	lli	%r2, 5
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r2, %r1, %r2
	sf	%f0, [%r2 + 0]
bneq_cont.12811:
	jr	%ra
setup_surface_table.2803:
	lli	%r3, 4
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r4, %r0, %hp
	addi	%hp, %hp, 4
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r2, [%sp + 1]
	addi	%r3, %r2, 0
	lf	%f0, [%r3 + 0]
	lw	%r3, [%sp + 0]
	lw	%r4, [%r3 + 4]
	addi	%r4, %r4, 0
	lf	%f1, [%r4 + 0]
	mulf	%f0, %f0, %f1
	addi	%r4, %r2, 1
	lf	%f1, [%r4 + 0]
	lw	%r4, [%r3 + 4]
	addi	%r4, %r4, 1
	lf	%f2, [%r4 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	addi	%r2, %r2, 2
	lf	%f1, [%r2 + 0]
	lw	%r2, [%r3 + 4]
	addi	%r2, %r2, 2
	lf	%f2, [%r2 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f0, %f1, bgtf_else.12820
	lli	%r2, 0
	j	bgtf_cont.12821
bgtf_else.12820:
	lli	%r2, 1
bgtf_cont.12821:
	lli	%r4, 0
	bneq	%r2, %r4, bneq_else.12822
	lli	%r2, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r2, %r1, %r2
	sf	%f0, [%r2 + 0]
	j	bneq_cont.12823
bneq_else.12822:
	lli	%r2, 0
	llif	%f1, -1.000000
	lhif	%f1, -1.000000
	divf	%f1, %f1, %f0
	add	%r2, %r1, %r2
	sf	%f1, [%r2 + 0]
	lli	%r2, 1
	lw	%r4, [%r3 + 4]
	lli	%r5, 0
	add	%r4, %r4, %r5
	lf	%f1, [%r4 + 0]
	divf	%f1, %f1, %f0
	negf	%f1, %f1
	add	%r2, %r1, %r2
	sf	%f1, [%r2 + 0]
	lli	%r2, 2
	lw	%r4, [%r3 + 4]
	lli	%r5, 1
	add	%r4, %r4, %r5
	lf	%f1, [%r4 + 0]
	divf	%f1, %f1, %f0
	negf	%f1, %f1
	add	%r2, %r1, %r2
	sf	%f1, [%r2 + 0]
	lli	%r2, 3
	lw	%r3, [%r3 + 4]
	lli	%r4, 2
	add	%r3, %r3, %r4
	lf	%f1, [%r3 + 0]
	divf	%f0, %f1, %f0
	negf	%f0, %f0
	add	%r2, %r1, %r2
	sf	%f0, [%r2 + 0]
bneq_cont.12823:
	jr	%ra
setup_second_table.2806:
	lli	%r3, 5
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r4, %r0, %hp
	addi	%hp, %hp, 5
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r2, [%sp + 1]
	addi	%r3, %r2, 0
	lf	%f0, [%r3 + 0]
	addi	%r3, %r2, 1
	lf	%f1, [%r3 + 0]
	addi	%r3, %r2, 2
	lf	%f2, [%r3 + 0]
	lw	%r3, [%sp + 0]
	sw	%r1, [%sp + 2]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	quadratic.2737
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lw	%r1, [%sp + 1]
	addi	%r2, %r1, 0
	lf	%f1, [%r2 + 0]
	lw	%r2, [%sp + 0]
	lw	%r3, [%r2 + 4]
	addi	%r3, %r3, 0
	lf	%f2, [%r3 + 0]
	mulf	%f1, %f1, %f2
	negf	%f1, %f1
	addi	%r3, %r1, 1
	lf	%f2, [%r3 + 0]
	lw	%r3, [%r2 + 4]
	addi	%r3, %r3, 1
	lf	%f3, [%r3 + 0]
	mulf	%f2, %f2, %f3
	negf	%f2, %f2
	addi	%r3, %r1, 2
	lf	%f3, [%r3 + 0]
	lw	%r3, [%r2 + 4]
	addi	%r3, %r3, 2
	lf	%f4, [%r3 + 0]
	mulf	%f3, %f3, %f4
	negf	%f3, %f3
	lw	%r3, [%sp + 2]
	addi	%r4, %r3, 0
	sf	%f0, [%r4 + 0]
	lw	%r4, [%r2 + 3]
	lli	%r5, 0
	bneq	%r4, %r5, bneq_else.12824
	lli	%r1, 1
	add	%r1, %r3, %r1
	sf	%f1, [%r1 + 0]
	lli	%r1, 2
	add	%r1, %r3, %r1
	sf	%f2, [%r1 + 0]
	lli	%r1, 3
	add	%r1, %r3, %r1
	sf	%f3, [%r1 + 0]
	j	bneq_cont.12825
bneq_else.12824:
	lli	%r4, 1
	lli	%r5, 2
	add	%r5, %r1, %r5
	lf	%f4, [%r5 + 0]
	lw	%r5, [%r2 + 9]
	lli	%r6, 1
	add	%r5, %r5, %r6
	lf	%f5, [%r5 + 0]
	mulf	%f4, %f4, %f5
	lli	%r5, 1
	add	%r5, %r1, %r5
	lf	%f5, [%r5 + 0]
	lw	%r5, [%r2 + 9]
	lli	%r6, 2
	add	%r5, %r5, %r6
	lf	%f6, [%r5 + 0]
	mulf	%f5, %f5, %f6
	addf	%f4, %f4, %f5
	llif	%f5, 0.500000
	lhif	%f5, 0.500000
	mulf	%f4, %f4, %f5
	subf	%f1, %f1, %f4
	add	%r4, %r3, %r4
	sf	%f1, [%r4 + 0]
	lli	%r4, 2
	lli	%r5, 2
	add	%r5, %r1, %r5
	lf	%f1, [%r5 + 0]
	lw	%r5, [%r2 + 9]
	lli	%r6, 0
	add	%r5, %r5, %r6
	lf	%f4, [%r5 + 0]
	mulf	%f1, %f1, %f4
	lli	%r5, 0
	add	%r5, %r1, %r5
	lf	%f4, [%r5 + 0]
	lw	%r5, [%r2 + 9]
	lli	%r6, 2
	add	%r5, %r5, %r6
	lf	%f5, [%r5 + 0]
	mulf	%f4, %f4, %f5
	addf	%f1, %f1, %f4
	llif	%f4, 0.500000
	lhif	%f4, 0.500000
	mulf	%f1, %f1, %f4
	subf	%f1, %f2, %f1
	add	%r4, %r3, %r4
	sf	%f1, [%r4 + 0]
	lli	%r4, 3
	lli	%r5, 1
	add	%r5, %r1, %r5
	lf	%f1, [%r5 + 0]
	lw	%r5, [%r2 + 9]
	lli	%r6, 0
	add	%r5, %r5, %r6
	lf	%f2, [%r5 + 0]
	mulf	%f1, %f1, %f2
	lli	%r5, 0
	add	%r1, %r1, %r5
	lf	%f2, [%r1 + 0]
	lw	%r1, [%r2 + 9]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f4, [%r1 + 0]
	mulf	%f2, %f2, %f4
	addf	%f1, %f1, %f2
	llif	%f2, 0.500000
	lhif	%f2, 0.500000
	mulf	%f1, %f1, %f2
	subf	%f1, %f3, %f1
	add	%r1, %r3, %r4
	sf	%f1, [%r1 + 0]
bneq_cont.12825:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r1, %f0
	movf2i	%r2, %f1
	bneq	%r1, %r2, bneq_else.12826
	lli	%r1, 1
	j	bneq_cont.12827
bneq_else.12826:
	lli	%r1, 0
bneq_cont.12827:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12828
	lli	%r1, 4
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	divf	%f0, %f1, %f0
	add	%r1, %r3, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.12829
bneq_else.12828:
bneq_cont.12829:
	add	%r1, %r0, %r3
	jr	%ra
iter_setup_dirvec_constants.2809:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r2, bgt_else.12830
	add	%r4, %r3, %r2
	lw	%r4, [%r4 + 0]
	lw	%r5, [%r1 + 1]
	lw	%r6, [%r1 + 0]
	lw	%r7, [%r4 + 1]
	lli	%r8, 1
	sw	%r27, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r3, [%sp + 2]
	bneq	%r7, %r8, bneq_else.12831
	sw	%r2, [%sp + 3]
	sw	%r5, [%sp + 4]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r6
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	setup_rect_table.2800
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 3]
	lw	%r3, [%sp + 4]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.12832
bneq_else.12831:
	lli	%r8, 2
	bneq	%r7, %r8, bneq_else.12833
	sw	%r2, [%sp + 3]
	sw	%r5, [%sp + 4]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r6
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	setup_surface_table.2803
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 3]
	lw	%r3, [%sp + 4]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.12834
bneq_else.12833:
	sw	%r2, [%sp + 3]
	sw	%r5, [%sp + 4]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r6
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	setup_second_table.2806
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 3]
	lw	%r3, [%sp + 4]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
bneq_cont.12834:
bneq_cont.12832:
	lli	%r1, 1
	sub	%r1, %r2, %r1
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.12835
	lw	%r2, [%sp + 2]
	add	%r2, %r2, %r1
	lw	%r2, [%r2 + 0]
	lw	%r3, [%sp + 1]
	lw	%r4, [%r3 + 1]
	lw	%r5, [%r3 + 0]
	lw	%r6, [%r2 + 1]
	lli	%r7, 1
	bneq	%r6, %r7, bneq_else.12836
	sw	%r1, [%sp + 5]
	sw	%r4, [%sp + 6]
	add	%r1, %r0, %r5
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	setup_rect_table.2800
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r2, [%sp + 5]
	lw	%r3, [%sp + 6]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.12837
bneq_else.12836:
	lli	%r7, 2
	bneq	%r6, %r7, bneq_else.12838
	sw	%r1, [%sp + 5]
	sw	%r4, [%sp + 6]
	add	%r1, %r0, %r5
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	setup_surface_table.2803
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r2, [%sp + 5]
	lw	%r3, [%sp + 6]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.12839
bneq_else.12838:
	sw	%r1, [%sp + 5]
	sw	%r4, [%sp + 6]
	add	%r1, %r0, %r5
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	setup_second_table.2806
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r2, [%sp + 5]
	lw	%r3, [%sp + 6]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
bneq_cont.12839:
bneq_cont.12837:
	lli	%r1, 1
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 1]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.12835:
	jr	%ra
bgt_else.12830:
	jr	%ra
setup_startp_constants.2814:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r2, bgt_else.12842
	add	%r3, %r3, %r2
	lw	%r3, [%r3 + 0]
	lw	%r4, [%r3 + 10]
	lw	%r5, [%r3 + 1]
	lli	%r6, 0
	lli	%r7, 0
	add	%r7, %r1, %r7
	lf	%f0, [%r7 + 0]
	lw	%r7, [%r3 + 5]
	lli	%r8, 0
	add	%r7, %r7, %r8
	lf	%f1, [%r7 + 0]
	subf	%f0, %f0, %f1
	add	%r6, %r4, %r6
	sf	%f0, [%r6 + 0]
	lli	%r6, 1
	lli	%r7, 1
	add	%r7, %r1, %r7
	lf	%f0, [%r7 + 0]
	lw	%r7, [%r3 + 5]
	lli	%r8, 1
	add	%r7, %r7, %r8
	lf	%f1, [%r7 + 0]
	subf	%f0, %f0, %f1
	add	%r6, %r4, %r6
	sf	%f0, [%r6 + 0]
	lli	%r6, 2
	lli	%r7, 2
	add	%r7, %r1, %r7
	lf	%f0, [%r7 + 0]
	lw	%r7, [%r3 + 5]
	lli	%r8, 2
	add	%r7, %r7, %r8
	lf	%f1, [%r7 + 0]
	subf	%f0, %f0, %f1
	add	%r6, %r4, %r6
	sf	%f0, [%r6 + 0]
	lli	%r6, 2
	sw	%r1, [%sp + 0]
	sw	%r27, [%sp + 1]
	sw	%r2, [%sp + 2]
	bneq	%r5, %r6, bneq_else.12843
	lli	%r5, 3
	lw	%r3, [%r3 + 4]
	lli	%r6, 0
	add	%r6, %r4, %r6
	lf	%f0, [%r6 + 0]
	lli	%r6, 1
	add	%r6, %r4, %r6
	lf	%f1, [%r6 + 0]
	lli	%r6, 2
	add	%r6, %r4, %r6
	lf	%f2, [%r6 + 0]
	lli	%r6, 0
	add	%r6, %r3, %r6
	lf	%f3, [%r6 + 0]
	mulf	%f0, %f3, %f0
	lli	%r6, 1
	add	%r6, %r3, %r6
	lf	%f3, [%r6 + 0]
	mulf	%f1, %f3, %f1
	addf	%f0, %f0, %f1
	lli	%r6, 2
	add	%r3, %r3, %r6
	lf	%f1, [%r3 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	add	%r3, %r4, %r5
	sf	%f0, [%r3 + 0]
	j	bneq_cont.12844
bneq_else.12843:
	lli	%r6, 2
	bgt	%r5, %r6, bgt_else.12845
	j	bgt_cont.12846
bgt_else.12845:
	lli	%r6, 0
	add	%r6, %r4, %r6
	lf	%f0, [%r6 + 0]
	lli	%r6, 1
	add	%r6, %r4, %r6
	lf	%f1, [%r6 + 0]
	lli	%r6, 2
	add	%r6, %r4, %r6
	lf	%f2, [%r6 + 0]
	sw	%r4, [%sp + 3]
	sw	%r5, [%sp + 4]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	quadratic.2737
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r1, 3
	lli	%r2, 3
	lw	%r3, [%sp + 4]
	bneq	%r3, %r2, bneq_else.12847
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	subf	%f0, %f0, %f1
	j	bneq_cont.12848
bneq_else.12847:
bneq_cont.12848:
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bgt_cont.12846:
bneq_cont.12844:
	lli	%r1, 1
	lw	%r2, [%sp + 2]
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 0]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.12842:
	jr	%ra
setup_startp.2817:
	lw	%r2, [%r27 + 3]
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	addi	%r5, %r1, 0
	lf	%f0, [%r5 + 0]
	addi	%r5, %r2, 0
	sf	%f0, [%r5 + 0]
	addi	%r5, %r1, 1
	lf	%f0, [%r5 + 0]
	addi	%r5, %r2, 1
	sf	%f0, [%r5 + 0]
	addi	%r5, %r1, 2
	lf	%f0, [%r5 + 0]
	addi	%r2, %r2, 2
	sf	%f0, [%r2 + 0]
	addi	%r2, %r4, 0
	lw	%r2, [%r2 + 0]
	subi	%r2, %r2, 1
	add	%r27, %r0, %r3
	lw	%r26, [%r27 + 0]
	jr	%r26
is_rect_outside.2819:
	absf	%f0, %f0
	lw	%r2, [%r1 + 4]
	addi	%r2, %r2, 0
	lf	%f3, [%r2 + 0]
	bgtf	%f3, %f0, bgtf_else.12850
	lli	%r2, 0
	j	bgtf_cont.12851
bgtf_else.12850:
	lli	%r2, 1
bgtf_cont.12851:
	lli	%r3, 0
	bneq	%r2, %r3, bneq_else.12852
	lli	%r2, 0
	j	bneq_cont.12853
bneq_else.12852:
	absf	%f0, %f1
	lw	%r2, [%r1 + 4]
	lli	%r3, 1
	add	%r2, %r2, %r3
	lf	%f1, [%r2 + 0]
	bgtf	%f1, %f0, bgtf_else.12854
	lli	%r2, 0
	j	bgtf_cont.12855
bgtf_else.12854:
	lli	%r2, 1
bgtf_cont.12855:
	lli	%r3, 0
	bneq	%r2, %r3, bneq_else.12856
	lli	%r2, 0
	j	bneq_cont.12857
bneq_else.12856:
	absf	%f0, %f2
	lw	%r2, [%r1 + 4]
	lli	%r3, 2
	add	%r2, %r2, %r3
	lf	%f1, [%r2 + 0]
	bgtf	%f1, %f0, bgtf_else.12858
	lli	%r2, 0
	j	bgtf_cont.12859
bgtf_else.12858:
	lli	%r2, 1
bgtf_cont.12859:
bneq_cont.12857:
bneq_cont.12853:
	lli	%r3, 0
	bneq	%r2, %r3, bneq_else.12860
	lw	%r1, [%r1 + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12861
	lli	%r1, 1
	jr	%ra
bneq_else.12861:
	lli	%r1, 0
	jr	%ra
bneq_else.12860:
	lw	%r1, [%r1 + 6]
	jr	%ra
is_plane_outside.2824:
	lw	%r2, [%r1 + 4]
	addi	%r3, %r2, 0
	lf	%f3, [%r3 + 0]
	mulf	%f0, %f3, %f0
	addi	%r3, %r2, 1
	lf	%f3, [%r3 + 0]
	mulf	%f1, %f3, %f1
	addf	%f0, %f0, %f1
	addi	%r2, %r2, 2
	lf	%f1, [%r2 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	lw	%r1, [%r1 + 6]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.12862
	lli	%r2, 0
	j	bgtf_cont.12863
bgtf_else.12862:
	lli	%r2, 1
bgtf_cont.12863:
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.12864
	add	%r1, %r0, %r2
	j	bneq_cont.12865
bneq_else.12864:
	lli	%r1, 0
	bneq	%r2, %r1, bneq_else.12866
	lli	%r1, 1
	j	bneq_cont.12867
bneq_else.12866:
	lli	%r1, 0
bneq_cont.12867:
bneq_cont.12865:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12868
	lli	%r1, 1
	jr	%ra
bneq_else.12868:
	lli	%r1, 0
	jr	%ra
is_second_outside.2829:
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	quadratic.2737
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lw	%r1, [%sp + 0]
	lw	%r2, [%r1 + 1]
	lli	%r3, 3
	bneq	%r2, %r3, bneq_else.12869
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	subf	%f0, %f0, %f1
	j	bneq_cont.12870
bneq_else.12869:
bneq_cont.12870:
	lw	%r1, [%r1 + 6]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.12871
	lli	%r2, 0
	j	bgtf_cont.12872
bgtf_else.12871:
	lli	%r2, 1
bgtf_cont.12872:
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.12873
	add	%r1, %r0, %r2
	j	bneq_cont.12874
bneq_else.12873:
	lli	%r1, 0
	bneq	%r2, %r1, bneq_else.12875
	lli	%r1, 1
	j	bneq_cont.12876
bneq_else.12875:
	lli	%r1, 0
bneq_cont.12876:
bneq_cont.12874:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12877
	lli	%r1, 1
	jr	%ra
bneq_else.12877:
	lli	%r1, 0
	jr	%ra
is_outside.2834:
	lw	%r2, [%r1 + 5]
	addi	%r2, %r2, 0
	lf	%f3, [%r2 + 0]
	subf	%f0, %f0, %f3
	lw	%r2, [%r1 + 5]
	addi	%r2, %r2, 1
	lf	%f3, [%r2 + 0]
	subf	%f1, %f1, %f3
	lw	%r2, [%r1 + 5]
	addi	%r2, %r2, 2
	lf	%f3, [%r2 + 0]
	subf	%f2, %f2, %f3
	lw	%r2, [%r1 + 1]
	lli	%r3, 1
	bneq	%r2, %r3, bneq_else.12878
	j	is_rect_outside.2819
bneq_else.12878:
	lli	%r3, 2
	bneq	%r2, %r3, bneq_else.12879
	lw	%r2, [%r1 + 4]
	lli	%r3, 0
	add	%r3, %r2, %r3
	lf	%f3, [%r3 + 0]
	mulf	%f0, %f3, %f0
	lli	%r3, 1
	add	%r3, %r2, %r3
	lf	%f3, [%r3 + 0]
	mulf	%f1, %f3, %f1
	addf	%f0, %f0, %f1
	lli	%r3, 2
	add	%r2, %r2, %r3
	lf	%f1, [%r2 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	lw	%r1, [%r1 + 6]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.12880
	lli	%r2, 0
	j	bgtf_cont.12881
bgtf_else.12880:
	lli	%r2, 1
bgtf_cont.12881:
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.12882
	add	%r1, %r0, %r2
	j	bneq_cont.12883
bneq_else.12882:
	lli	%r1, 0
	bneq	%r2, %r1, bneq_else.12884
	lli	%r1, 1
	j	bneq_cont.12885
bneq_else.12884:
	lli	%r1, 0
bneq_cont.12885:
bneq_cont.12883:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12886
	lli	%r1, 1
	jr	%ra
bneq_else.12886:
	lli	%r1, 0
	jr	%ra
bneq_else.12879:
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	quadratic.2737
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lw	%r1, [%sp + 0]
	lw	%r2, [%r1 + 1]
	lli	%r3, 3
	bneq	%r2, %r3, bneq_else.12887
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	subf	%f0, %f0, %f1
	j	bneq_cont.12888
bneq_else.12887:
bneq_cont.12888:
	lw	%r1, [%r1 + 6]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.12889
	lli	%r2, 0
	j	bgtf_cont.12890
bgtf_else.12889:
	lli	%r2, 1
bgtf_cont.12890:
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.12891
	add	%r1, %r0, %r2
	j	bneq_cont.12892
bneq_else.12891:
	lli	%r1, 0
	bneq	%r2, %r1, bneq_else.12893
	lli	%r1, 1
	j	bneq_cont.12894
bneq_else.12893:
	lli	%r1, 0
bneq_cont.12894:
bneq_cont.12892:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12895
	lli	%r1, 1
	jr	%ra
bneq_else.12895:
	lli	%r1, 0
	jr	%ra
check_all_inside.2839:
	lw	%r3, [%r27 + 1]
	add	%r4, %r2, %r1
	lw	%r4, [%r4 + 0]
	lli	%r5, -1
	lhi	%r5, -1
	bneq	%r4, %r5, bneq_else.12896
	lli	%r1, 1
	jr	%ra
bneq_else.12896:
	add	%r4, %r3, %r4
	lw	%r4, [%r4 + 0]
	lw	%r5, [%r4 + 5]
	lli	%r6, 0
	add	%r5, %r5, %r6
	lf	%f3, [%r5 + 0]
	subf	%f3, %f0, %f3
	lw	%r5, [%r4 + 5]
	lli	%r6, 1
	add	%r5, %r5, %r6
	lf	%f4, [%r5 + 0]
	subf	%f4, %f1, %f4
	lw	%r5, [%r4 + 5]
	lli	%r6, 2
	add	%r5, %r5, %r6
	lf	%f5, [%r5 + 0]
	subf	%f5, %f2, %f5
	lw	%r5, [%r4 + 1]
	lli	%r6, 1
	sw	%r27, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%r3, [%sp + 4]
	sw	%r2, [%sp + 5]
	sw	%r1, [%sp + 6]
	bneq	%r5, %r6, bneq_else.12897
	add	%r1, %r0, %r4
	movf	%f2, %f5
	movf	%f1, %f4
	movf	%f0, %f3
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	is_rect_outside.2819
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	j	bneq_cont.12898
bneq_else.12897:
	lli	%r6, 2
	bneq	%r5, %r6, bneq_else.12899
	add	%r1, %r0, %r4
	movf	%f2, %f5
	movf	%f1, %f4
	movf	%f0, %f3
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	is_plane_outside.2824
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	j	bneq_cont.12900
bneq_else.12899:
	add	%r1, %r0, %r4
	movf	%f2, %f5
	movf	%f1, %f4
	movf	%f0, %f3
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	is_second_outside.2829
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
bneq_cont.12900:
bneq_cont.12898:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12901
	lli	%r1, 1
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 5]
	add	%r3, %r2, %r1
	lw	%r3, [%r3 + 0]
	lli	%r4, -1
	lhi	%r4, -1
	bneq	%r3, %r4, bneq_else.12902
	lli	%r1, 1
	jr	%ra
bneq_else.12902:
	lw	%r4, [%sp + 4]
	add	%r3, %r4, %r3
	lw	%r3, [%r3 + 0]
	lf	%f0, [%sp + 3]
	lf	%f1, [%sp + 2]
	lf	%f2, [%sp + 1]
	sw	%r1, [%sp + 7]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	is_outside.2834
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12903
	lli	%r1, 1
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 3]
	lf	%f1, [%sp + 2]
	lf	%f2, [%sp + 1]
	lw	%r2, [%sp + 5]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.12903:
	lli	%r1, 0
	jr	%ra
bneq_else.12901:
	lli	%r1, 0
	jr	%ra
shadow_check_and_group.2845:
	lw	%r3, [%r27 + 7]
	lw	%r4, [%r27 + 6]
	lw	%r5, [%r27 + 5]
	lw	%r6, [%r27 + 4]
	lw	%r7, [%r27 + 3]
	lw	%r8, [%r27 + 2]
	lw	%r9, [%r27 + 1]
	add	%r10, %r2, %r1
	lw	%r10, [%r10 + 0]
	lli	%r11, -1
	lhi	%r11, -1
	bneq	%r10, %r11, bneq_else.12904
	lli	%r1, 0
	jr	%ra
bneq_else.12904:
	add	%r10, %r2, %r1
	lw	%r10, [%r10 + 0]
	sw	%r9, [%sp + 0]
	sw	%r8, [%sp + 1]
	sw	%r7, [%sp + 2]
	sw	%r2, [%sp + 3]
	sw	%r27, [%sp + 4]
	sw	%r1, [%sp + 5]
	sw	%r10, [%sp + 6]
	sw	%r5, [%sp + 7]
	sw	%r4, [%sp + 8]
	add	%r2, %r0, %r6
	add	%r1, %r0, %r10
	add	%r27, %r0, %r3
	add	%r3, %r0, %r8
	sw	%ra, [%sp + 9]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 10
	jalr	%r26
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 0
	lw	%r3, [%sp + 8]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12905
	lli	%r1, 0
	j	bneq_cont.12906
bneq_else.12905:
	llif	%f1, -0.200000
	lhif	%f1, -0.200000
	bgtf	%f1, %f0, bgtf_else.12907
	lli	%r1, 0
	j	bgtf_cont.12908
bgtf_else.12907:
	lli	%r1, 1
bgtf_cont.12908:
bneq_cont.12906:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12909
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r1, [%r1 + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12910
	lli	%r1, 0
	jr	%ra
bneq_else.12910:
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.12909:
	llif	%f1, 0.010000
	lhif	%f1, 0.010000
	addf	%f0, %f0, %f1
	lli	%r1, 0
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	mulf	%f1, %f1, %f0
	lli	%r1, 0
	lw	%r3, [%sp + 1]
	add	%r1, %r3, %r1
	lf	%f2, [%r1 + 0]
	addf	%f1, %f1, %f2
	lli	%r1, 1
	add	%r1, %r2, %r1
	lf	%f2, [%r1 + 0]
	mulf	%f2, %f2, %f0
	lli	%r1, 1
	add	%r1, %r3, %r1
	lf	%f3, [%r1 + 0]
	addf	%f2, %f2, %f3
	lli	%r1, 2
	add	%r1, %r2, %r1
	lf	%f3, [%r1 + 0]
	mulf	%f0, %f3, %f0
	lli	%r1, 2
	add	%r1, %r3, %r1
	lf	%f3, [%r1 + 0]
	addf	%f0, %f0, %f3
	lli	%r1, 0
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r3, -1
	lhi	%r3, -1
	bneq	%r1, %r3, bneq_else.12911
	lli	%r1, 1
	j	bneq_cont.12912
bneq_else.12911:
	lw	%r3, [%sp + 7]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	sf	%f0, [%sp + 9]
	sf	%f2, [%sp + 10]
	sf	%f1, [%sp + 11]
	movf	%f31, %f2
	movf	%f2, %f0
	movf	%f0, %f1
	movf	%f1, %f31
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	is_outside.2834
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12913
	lli	%r1, 1
	lf	%f0, [%sp + 11]
	lf	%f1, [%sp + 10]
	lf	%f2, [%sp + 9]
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 0]
	sw	%ra, [%sp + 12]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 13
	jalr	%r26
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	j	bneq_cont.12914
bneq_else.12913:
	lli	%r1, 0
bneq_cont.12914:
bneq_cont.12912:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12915
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.12915:
	lli	%r1, 1
	jr	%ra
shadow_check_one_or_group.2848:
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	add	%r5, %r2, %r1
	lw	%r5, [%r5 + 0]
	lli	%r6, -1
	lhi	%r6, -1
	bneq	%r5, %r6, bneq_else.12916
	lli	%r1, 0
	jr	%ra
bneq_else.12916:
	add	%r5, %r4, %r5
	lw	%r5, [%r5 + 0]
	lli	%r6, 0
	sw	%r27, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r4, [%sp + 2]
	sw	%r2, [%sp + 3]
	sw	%r1, [%sp + 4]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r6
	add	%r27, %r0, %r3
	sw	%ra, [%sp + 5]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 6
	jalr	%r26
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12917
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 3]
	add	%r3, %r2, %r1
	lw	%r3, [%r3 + 0]
	lli	%r4, -1
	lhi	%r4, -1
	bneq	%r3, %r4, bneq_else.12918
	lli	%r1, 0
	jr	%ra
bneq_else.12918:
	lw	%r4, [%sp + 2]
	add	%r3, %r4, %r3
	lw	%r3, [%r3 + 0]
	lli	%r4, 0
	lw	%r27, [%sp + 1]
	sw	%r1, [%sp + 5]
	add	%r2, %r0, %r3
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12919
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.12919:
	lli	%r1, 1
	jr	%ra
bneq_else.12917:
	lli	%r1, 1
	jr	%ra
shadow_check_one_or_matrix.2851:
	lw	%r3, [%r27 + 7]
	lw	%r4, [%r27 + 6]
	lw	%r5, [%r27 + 5]
	lw	%r6, [%r27 + 4]
	lw	%r7, [%r27 + 3]
	lw	%r8, [%r27 + 2]
	lw	%r9, [%r27 + 1]
	add	%r10, %r2, %r1
	lw	%r10, [%r10 + 0]
	addi	%r11, %r10, 0
	lw	%r11, [%r11 + 0]
	lli	%r12, -1
	lhi	%r12, -1
	bneq	%r11, %r12, bneq_else.12920
	lli	%r1, 0
	jr	%ra
bneq_else.12920:
	lli	%r12, 99
	sw	%r5, [%sp + 0]
	sw	%r6, [%sp + 1]
	sw	%r9, [%sp + 2]
	sw	%r10, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%r27, [%sp + 5]
	sw	%r1, [%sp + 6]
	bneq	%r11, %r12, bneq_else.12921
	lli	%r1, 1
	j	bneq_cont.12922
bneq_else.12921:
	sw	%r4, [%sp + 7]
	add	%r2, %r0, %r7
	add	%r1, %r0, %r11
	add	%r27, %r0, %r3
	add	%r3, %r0, %r8
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12923
	lli	%r1, 0
	j	bneq_cont.12924
bneq_else.12923:
	lli	%r1, 0
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	llif	%f1, -0.100000
	lhif	%f1, -0.100000
	bgtf	%f1, %f0, bgtf_else.12925
	lli	%r1, 0
	j	bgtf_cont.12926
bgtf_else.12925:
	lli	%r1, 1
bgtf_cont.12926:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12927
	lli	%r1, 0
	j	bneq_cont.12928
bneq_else.12927:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r3, -1
	lhi	%r3, -1
	bneq	%r1, %r3, bneq_else.12929
	lli	%r1, 0
	j	bneq_cont.12930
bneq_else.12929:
	lw	%r3, [%sp + 2]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	lli	%r4, 0
	lw	%r27, [%sp + 1]
	add	%r2, %r0, %r1
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12931
	lli	%r1, 2
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 0]
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	j	bneq_cont.12932
bneq_else.12931:
	lli	%r1, 1
bneq_cont.12932:
bneq_cont.12930:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12933
	lli	%r1, 0
	j	bneq_cont.12934
bneq_else.12933:
	lli	%r1, 1
bneq_cont.12934:
bneq_cont.12928:
bneq_cont.12924:
bneq_cont.12922:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12935
	lli	%r1, 1
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 4]
	lw	%r27, [%sp + 5]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.12935:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r3, -1
	lhi	%r3, -1
	bneq	%r1, %r3, bneq_else.12936
	lli	%r1, 0
	j	bneq_cont.12937
bneq_else.12936:
	lw	%r3, [%sp + 2]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	lli	%r3, 0
	lw	%r27, [%sp + 1]
	add	%r2, %r0, %r1
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12938
	lli	%r1, 2
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 0]
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	j	bneq_cont.12939
bneq_else.12938:
	lli	%r1, 1
bneq_cont.12939:
bneq_cont.12937:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12940
	lli	%r1, 1
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 4]
	lw	%r27, [%sp + 5]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.12940:
	lli	%r1, 1
	jr	%ra
solve_each_element.2854:
	lw	%r4, [%r27 + 9]
	lw	%r5, [%r27 + 8]
	lw	%r6, [%r27 + 7]
	lw	%r7, [%r27 + 6]
	lw	%r8, [%r27 + 5]
	lw	%r9, [%r27 + 4]
	lw	%r10, [%r27 + 3]
	lw	%r11, [%r27 + 2]
	lw	%r12, [%r27 + 1]
	add	%r13, %r2, %r1
	lw	%r13, [%r13 + 0]
	lli	%r14, -1
	lhi	%r14, -1
	bneq	%r13, %r14, bneq_else.12941
	jr	%ra
bneq_else.12941:
	sw	%r9, [%sp + 0]
	sw	%r11, [%sp + 1]
	sw	%r10, [%sp + 2]
	sw	%r12, [%sp + 3]
	sw	%r5, [%sp + 4]
	sw	%r4, [%sp + 5]
	sw	%r6, [%sp + 6]
	sw	%r3, [%sp + 7]
	sw	%r2, [%sp + 8]
	sw	%r27, [%sp + 9]
	sw	%r1, [%sp + 10]
	sw	%r13, [%sp + 11]
	sw	%r8, [%sp + 12]
	add	%r2, %r0, %r3
	add	%r1, %r0, %r13
	add	%r27, %r0, %r7
	add	%r3, %r0, %r5
	sw	%ra, [%sp + 13]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 14
	jalr	%r26
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12943
	lw	%r1, [%sp + 11]
	lw	%r2, [%sp + 12]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r1, [%r1 + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12944
	jr	%ra
bneq_else.12944:
	lli	%r1, 1
	lw	%r2, [%sp + 10]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 8]
	lw	%r3, [%sp + 7]
	lw	%r27, [%sp + 9]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.12943:
	lli	%r2, 0
	lw	%r3, [%sp + 6]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f0, %f1, bgtf_else.12946
	lli	%r2, 0
	j	bgtf_cont.12947
bgtf_else.12946:
	lli	%r2, 1
bgtf_cont.12947:
	lli	%r3, 0
	bneq	%r2, %r3, bneq_else.12948
	j	bneq_cont.12949
bneq_else.12948:
	lli	%r2, 0
	lw	%r3, [%sp + 5]
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	bgtf	%f1, %f0, bgtf_else.12950
	lli	%r2, 0
	j	bgtf_cont.12951
bgtf_else.12950:
	lli	%r2, 1
bgtf_cont.12951:
	lli	%r4, 0
	bneq	%r2, %r4, bneq_else.12952
	j	bneq_cont.12953
bneq_else.12952:
	llif	%f1, 0.010000
	lhif	%f1, 0.010000
	addf	%f0, %f0, %f1
	lli	%r2, 0
	lw	%r4, [%sp + 7]
	add	%r2, %r4, %r2
	lf	%f1, [%r2 + 0]
	mulf	%f1, %f1, %f0
	lli	%r2, 0
	lw	%r5, [%sp + 4]
	add	%r2, %r5, %r2
	lf	%f2, [%r2 + 0]
	addf	%f1, %f1, %f2
	lli	%r2, 1
	add	%r2, %r4, %r2
	lf	%f2, [%r2 + 0]
	mulf	%f2, %f2, %f0
	lli	%r2, 1
	add	%r2, %r5, %r2
	lf	%f3, [%r2 + 0]
	addf	%f2, %f2, %f3
	lli	%r2, 2
	add	%r2, %r4, %r2
	lf	%f3, [%r2 + 0]
	mulf	%f3, %f3, %f0
	lli	%r2, 2
	add	%r2, %r5, %r2
	lf	%f4, [%r2 + 0]
	addf	%f3, %f3, %f4
	lli	%r2, 0
	lw	%r5, [%sp + 8]
	add	%r2, %r5, %r2
	lw	%r2, [%r2 + 0]
	lli	%r6, -1
	lhi	%r6, -1
	sw	%r1, [%sp + 13]
	sf	%f3, [%sp + 14]
	sf	%f2, [%sp + 15]
	sf	%f1, [%sp + 16]
	sf	%f0, [%sp + 17]
	bneq	%r2, %r6, bneq_else.12954
	lli	%r1, 1
	j	bneq_cont.12955
bneq_else.12954:
	lw	%r6, [%sp + 12]
	add	%r2, %r6, %r2
	lw	%r2, [%r2 + 0]
	add	%r1, %r0, %r2
	movf	%f0, %f1
	movf	%f1, %f2
	movf	%f2, %f3
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	is_outside.2834
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12956
	lli	%r1, 1
	lf	%f0, [%sp + 16]
	lf	%f1, [%sp + 15]
	lf	%f2, [%sp + 14]
	lw	%r2, [%sp + 8]
	lw	%r27, [%sp + 3]
	sw	%ra, [%sp + 18]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 19
	jalr	%r26
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	j	bneq_cont.12957
bneq_else.12956:
	lli	%r1, 0
bneq_cont.12957:
bneq_cont.12955:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12958
	j	bneq_cont.12959
bneq_else.12958:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 17]
	sf	%f0, [%r1 + 0]
	lli	%r1, 0
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 16]
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 15]
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 14]
	sf	%f0, [%r1 + 0]
	lli	%r1, 0
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 11]
	sw	%r2, [%r1 + 0]
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 13]
	sw	%r2, [%r1 + 0]
bneq_cont.12959:
bneq_cont.12953:
bneq_cont.12949:
	lli	%r1, 1
	lw	%r2, [%sp + 10]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 8]
	lw	%r3, [%sp + 7]
	lw	%r27, [%sp + 9]
	lw	%r26, [%r27 + 0]
	jr	%r26
solve_one_or_network.2858:
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	add	%r6, %r2, %r1
	lw	%r6, [%r6 + 0]
	lli	%r7, -1
	lhi	%r7, -1
	bneq	%r6, %r7, bneq_else.12960
	jr	%ra
bneq_else.12960:
	add	%r6, %r5, %r6
	lw	%r6, [%r6 + 0]
	lli	%r7, 0
	sw	%r27, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r4, [%sp + 2]
	sw	%r5, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%r1, [%sp + 5]
	add	%r2, %r0, %r6
	add	%r1, %r0, %r7
	add	%r27, %r0, %r4
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 4]
	add	%r3, %r2, %r1
	lw	%r3, [%r3 + 0]
	lli	%r4, -1
	lhi	%r4, -1
	bneq	%r3, %r4, bneq_else.12962
	jr	%ra
bneq_else.12962:
	lw	%r4, [%sp + 3]
	add	%r3, %r4, %r3
	lw	%r3, [%r3 + 0]
	lli	%r4, 0
	lw	%r5, [%sp + 1]
	lw	%r27, [%sp + 2]
	sw	%r1, [%sp + 6]
	add	%r2, %r0, %r3
	add	%r1, %r0, %r4
	add	%r3, %r0, %r5
	sw	%ra, [%sp + 7]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 8
	jalr	%r26
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r1, 1
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 1]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
trace_or_matrix.2862:
	lw	%r4, [%r27 + 7]
	lw	%r5, [%r27 + 6]
	lw	%r6, [%r27 + 5]
	lw	%r7, [%r27 + 4]
	lw	%r8, [%r27 + 3]
	lw	%r9, [%r27 + 2]
	lw	%r10, [%r27 + 1]
	add	%r11, %r2, %r1
	lw	%r11, [%r11 + 0]
	addi	%r12, %r11, 0
	lw	%r12, [%r12 + 0]
	lli	%r13, -1
	lhi	%r13, -1
	bneq	%r12, %r13, bneq_else.12964
	jr	%ra
bneq_else.12964:
	lli	%r13, 99
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r27, [%sp + 2]
	sw	%r1, [%sp + 3]
	bneq	%r12, %r13, bneq_else.12966
	lli	%r4, 1
	add	%r4, %r11, %r4
	lw	%r4, [%r4 + 0]
	lli	%r5, -1
	lhi	%r5, -1
	bneq	%r4, %r5, bneq_else.12968
	j	bneq_cont.12969
bneq_else.12968:
	add	%r4, %r10, %r4
	lw	%r4, [%r4 + 0]
	lli	%r5, 0
	sw	%r11, [%sp + 4]
	sw	%r8, [%sp + 5]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r5
	add	%r27, %r0, %r9
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r1, 2
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 5]
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
bneq_cont.12969:
	j	bneq_cont.12967
bneq_else.12966:
	sw	%r8, [%sp + 5]
	sw	%r9, [%sp + 6]
	sw	%r10, [%sp + 7]
	sw	%r11, [%sp + 4]
	sw	%r4, [%sp + 8]
	sw	%r6, [%sp + 9]
	add	%r2, %r0, %r3
	add	%r1, %r0, %r12
	add	%r27, %r0, %r7
	add	%r3, %r0, %r5
	sw	%ra, [%sp + 10]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 11
	jalr	%r26
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12970
	j	bneq_cont.12971
bneq_else.12970:
	lli	%r1, 0
	lw	%r2, [%sp + 9]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	lli	%r1, 0
	lw	%r2, [%sp + 8]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	bgtf	%f1, %f0, bgtf_else.12972
	lli	%r1, 0
	j	bgtf_cont.12973
bgtf_else.12972:
	lli	%r1, 1
bgtf_cont.12973:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12974
	j	bneq_cont.12975
bneq_else.12974:
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r3, -1
	lhi	%r3, -1
	bneq	%r1, %r3, bneq_else.12976
	j	bneq_cont.12977
bneq_else.12976:
	lw	%r3, [%sp + 7]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	lli	%r3, 0
	lw	%r4, [%sp + 0]
	lw	%r27, [%sp + 6]
	add	%r2, %r0, %r1
	add	%r1, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 10]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 11
	jalr	%r26
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r1, 2
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 5]
	sw	%ra, [%sp + 10]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 11
	jalr	%r26
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
bneq_cont.12977:
bneq_cont.12975:
bneq_cont.12971:
bneq_cont.12967:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
solve_each_element_fast.2868:
	lw	%r4, [%r27 + 9]
	lw	%r5, [%r27 + 8]
	lw	%r6, [%r27 + 7]
	lw	%r7, [%r27 + 6]
	lw	%r8, [%r27 + 5]
	lw	%r9, [%r27 + 4]
	lw	%r10, [%r27 + 3]
	lw	%r11, [%r27 + 2]
	lw	%r12, [%r27 + 1]
	lw	%r13, [%r3 + 0]
	add	%r14, %r2, %r1
	lw	%r14, [%r14 + 0]
	lli	%r15, -1
	lhi	%r15, -1
	bneq	%r14, %r15, bneq_else.12978
	jr	%ra
bneq_else.12978:
	sw	%r9, [%sp + 0]
	sw	%r11, [%sp + 1]
	sw	%r10, [%sp + 2]
	sw	%r12, [%sp + 3]
	sw	%r5, [%sp + 4]
	sw	%r13, [%sp + 5]
	sw	%r4, [%sp + 6]
	sw	%r7, [%sp + 7]
	sw	%r3, [%sp + 8]
	sw	%r2, [%sp + 9]
	sw	%r27, [%sp + 10]
	sw	%r1, [%sp + 11]
	sw	%r14, [%sp + 12]
	sw	%r8, [%sp + 13]
	add	%r2, %r0, %r3
	add	%r1, %r0, %r14
	add	%r27, %r0, %r6
	sw	%ra, [%sp + 14]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 15
	jalr	%r26
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12980
	lw	%r1, [%sp + 12]
	lw	%r2, [%sp + 13]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r1, [%r1 + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12981
	jr	%ra
bneq_else.12981:
	lli	%r1, 1
	lw	%r2, [%sp + 11]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 9]
	lw	%r3, [%sp + 8]
	lw	%r27, [%sp + 10]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.12980:
	lli	%r2, 0
	lw	%r3, [%sp + 7]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f0, %f1, bgtf_else.12983
	lli	%r2, 0
	j	bgtf_cont.12984
bgtf_else.12983:
	lli	%r2, 1
bgtf_cont.12984:
	lli	%r3, 0
	bneq	%r2, %r3, bneq_else.12985
	j	bneq_cont.12986
bneq_else.12985:
	lli	%r2, 0
	lw	%r3, [%sp + 6]
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	bgtf	%f1, %f0, bgtf_else.12987
	lli	%r2, 0
	j	bgtf_cont.12988
bgtf_else.12987:
	lli	%r2, 1
bgtf_cont.12988:
	lli	%r4, 0
	bneq	%r2, %r4, bneq_else.12989
	j	bneq_cont.12990
bneq_else.12989:
	llif	%f1, 0.010000
	lhif	%f1, 0.010000
	addf	%f0, %f0, %f1
	lli	%r2, 0
	lw	%r4, [%sp + 5]
	add	%r2, %r4, %r2
	lf	%f1, [%r2 + 0]
	mulf	%f1, %f1, %f0
	lli	%r2, 0
	lw	%r5, [%sp + 4]
	add	%r2, %r5, %r2
	lf	%f2, [%r2 + 0]
	addf	%f1, %f1, %f2
	lli	%r2, 1
	add	%r2, %r4, %r2
	lf	%f2, [%r2 + 0]
	mulf	%f2, %f2, %f0
	lli	%r2, 1
	add	%r2, %r5, %r2
	lf	%f3, [%r2 + 0]
	addf	%f2, %f2, %f3
	lli	%r2, 2
	add	%r2, %r4, %r2
	lf	%f3, [%r2 + 0]
	mulf	%f3, %f3, %f0
	lli	%r2, 2
	add	%r2, %r5, %r2
	lf	%f4, [%r2 + 0]
	addf	%f3, %f3, %f4
	lli	%r2, 0
	lw	%r4, [%sp + 9]
	add	%r2, %r4, %r2
	lw	%r2, [%r2 + 0]
	lli	%r5, -1
	lhi	%r5, -1
	sw	%r1, [%sp + 14]
	sf	%f3, [%sp + 15]
	sf	%f2, [%sp + 16]
	sf	%f1, [%sp + 17]
	sf	%f0, [%sp + 18]
	bneq	%r2, %r5, bneq_else.12991
	lli	%r1, 1
	j	bneq_cont.12992
bneq_else.12991:
	lw	%r5, [%sp + 13]
	add	%r2, %r5, %r2
	lw	%r2, [%r2 + 0]
	add	%r1, %r0, %r2
	movf	%f0, %f1
	movf	%f1, %f2
	movf	%f2, %f3
	sw	%ra, [%sp + 19]
	addi	%sp, %sp, 20
	jal	is_outside.2834
	subi	%sp, %sp, 20
	lw	%ra, [%sp + 19]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12993
	lli	%r1, 1
	lf	%f0, [%sp + 17]
	lf	%f1, [%sp + 16]
	lf	%f2, [%sp + 15]
	lw	%r2, [%sp + 9]
	lw	%r27, [%sp + 3]
	sw	%ra, [%sp + 19]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 20
	jalr	%r26
	subi	%sp, %sp, 20
	lw	%ra, [%sp + 19]
	j	bneq_cont.12994
bneq_else.12993:
	lli	%r1, 0
bneq_cont.12994:
bneq_cont.12992:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.12995
	j	bneq_cont.12996
bneq_else.12995:
	lli	%r1, 0
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 18]
	sf	%f0, [%r1 + 0]
	lli	%r1, 0
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 17]
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 16]
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 15]
	sf	%f0, [%r1 + 0]
	lli	%r1, 0
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 12]
	sw	%r2, [%r1 + 0]
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 14]
	sw	%r2, [%r1 + 0]
bneq_cont.12996:
bneq_cont.12990:
bneq_cont.12986:
	lli	%r1, 1
	lw	%r2, [%sp + 11]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 9]
	lw	%r3, [%sp + 8]
	lw	%r27, [%sp + 10]
	lw	%r26, [%r27 + 0]
	jr	%r26
solve_one_or_network_fast.2872:
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	add	%r6, %r2, %r1
	lw	%r6, [%r6 + 0]
	lli	%r7, -1
	lhi	%r7, -1
	bneq	%r6, %r7, bneq_else.12997
	jr	%ra
bneq_else.12997:
	add	%r6, %r5, %r6
	lw	%r6, [%r6 + 0]
	lli	%r7, 0
	sw	%r27, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r4, [%sp + 2]
	sw	%r5, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%r1, [%sp + 5]
	add	%r2, %r0, %r6
	add	%r1, %r0, %r7
	add	%r27, %r0, %r4
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 4]
	add	%r3, %r2, %r1
	lw	%r3, [%r3 + 0]
	lli	%r4, -1
	lhi	%r4, -1
	bneq	%r3, %r4, bneq_else.12999
	jr	%ra
bneq_else.12999:
	lw	%r4, [%sp + 3]
	add	%r3, %r4, %r3
	lw	%r3, [%r3 + 0]
	lli	%r4, 0
	lw	%r5, [%sp + 1]
	lw	%r27, [%sp + 2]
	sw	%r1, [%sp + 6]
	add	%r2, %r0, %r3
	add	%r1, %r0, %r4
	add	%r3, %r0, %r5
	sw	%ra, [%sp + 7]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 8
	jalr	%r26
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r1, 1
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 1]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
trace_or_matrix_fast.2876:
	lw	%r4, [%r27 + 6]
	lw	%r5, [%r27 + 5]
	lw	%r6, [%r27 + 4]
	lw	%r7, [%r27 + 3]
	lw	%r8, [%r27 + 2]
	lw	%r9, [%r27 + 1]
	add	%r10, %r2, %r1
	lw	%r10, [%r10 + 0]
	addi	%r11, %r10, 0
	lw	%r11, [%r11 + 0]
	lli	%r12, -1
	lhi	%r12, -1
	bneq	%r11, %r12, bneq_else.13001
	jr	%ra
bneq_else.13001:
	lli	%r12, 99
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r27, [%sp + 2]
	sw	%r1, [%sp + 3]
	bneq	%r11, %r12, bneq_else.13003
	lli	%r4, 1
	add	%r4, %r10, %r4
	lw	%r4, [%r4 + 0]
	lli	%r5, -1
	lhi	%r5, -1
	bneq	%r4, %r5, bneq_else.13005
	j	bneq_cont.13006
bneq_else.13005:
	add	%r4, %r9, %r4
	lw	%r4, [%r4 + 0]
	lli	%r5, 0
	sw	%r10, [%sp + 4]
	sw	%r7, [%sp + 5]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r5
	add	%r27, %r0, %r8
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r1, 2
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 5]
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
bneq_cont.13006:
	j	bneq_cont.13004
bneq_else.13003:
	sw	%r7, [%sp + 5]
	sw	%r8, [%sp + 6]
	sw	%r9, [%sp + 7]
	sw	%r10, [%sp + 4]
	sw	%r4, [%sp + 8]
	sw	%r6, [%sp + 9]
	add	%r2, %r0, %r3
	add	%r1, %r0, %r11
	add	%r27, %r0, %r5
	sw	%ra, [%sp + 10]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 11
	jalr	%r26
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13007
	j	bneq_cont.13008
bneq_else.13007:
	lli	%r1, 0
	lw	%r2, [%sp + 9]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	lli	%r1, 0
	lw	%r2, [%sp + 8]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	bgtf	%f1, %f0, bgtf_else.13009
	lli	%r1, 0
	j	bgtf_cont.13010
bgtf_else.13009:
	lli	%r1, 1
bgtf_cont.13010:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13011
	j	bneq_cont.13012
bneq_else.13011:
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r3, -1
	lhi	%r3, -1
	bneq	%r1, %r3, bneq_else.13013
	j	bneq_cont.13014
bneq_else.13013:
	lw	%r3, [%sp + 7]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	lli	%r3, 0
	lw	%r4, [%sp + 0]
	lw	%r27, [%sp + 6]
	add	%r2, %r0, %r1
	add	%r1, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 10]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 11
	jalr	%r26
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r1, 2
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 5]
	sw	%ra, [%sp + 10]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 11
	jalr	%r26
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
bneq_cont.13014:
bneq_cont.13012:
bneq_cont.13008:
bneq_cont.13004:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
get_nvector_rect.2882:
	lw	%r2, [%r27 + 2]
	lw	%r3, [%r27 + 1]
	addi	%r3, %r3, 0
	lw	%r3, [%r3 + 0]
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	addi	%r4, %r2, 0
	sf	%f0, [%r4 + 0]
	addi	%r4, %r2, 1
	sf	%f0, [%r4 + 0]
	addi	%r4, %r2, 2
	sf	%f0, [%r4 + 0]
	subi	%r4, %r3, 1
	subi	%r3, %r3, 1
	add	%r1, %r1, %r3
	lf	%f0, [%r1 + 0]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r1, %f0
	movf2i	%r3, %f1
	bneq	%r1, %r3, bneq_else.13015
	lli	%r1, 1
	j	bneq_cont.13016
bneq_else.13015:
	lli	%r1, 0
bneq_cont.13016:
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.13017
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f0, %f1, bgtf_else.13019
	lli	%r1, 0
	j	bgtf_cont.13020
bgtf_else.13019:
	lli	%r1, 1
bgtf_cont.13020:
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.13021
	llif	%f0, -1.000000
	lhif	%f0, -1.000000
	j	bneq_cont.13022
bneq_else.13021:
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
bneq_cont.13022:
	j	bneq_cont.13018
bneq_else.13017:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.13018:
	negf	%f0, %f0
	add	%r1, %r2, %r4
	sf	%f0, [%r1 + 0]
	jr	%ra
get_nvector_plane.2884:
	lw	%r2, [%r27 + 1]
	lw	%r3, [%r1 + 4]
	addi	%r3, %r3, 0
	lf	%f0, [%r3 + 0]
	negf	%f0, %f0
	addi	%r3, %r2, 0
	sf	%f0, [%r3 + 0]
	lw	%r3, [%r1 + 4]
	addi	%r3, %r3, 1
	lf	%f0, [%r3 + 0]
	negf	%f0, %f0
	addi	%r3, %r2, 1
	sf	%f0, [%r3 + 0]
	lw	%r1, [%r1 + 4]
	addi	%r1, %r1, 2
	lf	%f0, [%r1 + 0]
	negf	%f0, %f0
	addi	%r1, %r2, 2
	sf	%f0, [%r1 + 0]
	jr	%ra
get_nvector_second.2886:
	lw	%r2, [%r27 + 2]
	lw	%r3, [%r27 + 1]
	addi	%r4, %r3, 0
	lf	%f0, [%r4 + 0]
	lw	%r4, [%r1 + 5]
	addi	%r4, %r4, 0
	lf	%f1, [%r4 + 0]
	subf	%f0, %f0, %f1
	addi	%r4, %r3, 1
	lf	%f1, [%r4 + 0]
	lw	%r4, [%r1 + 5]
	addi	%r4, %r4, 1
	lf	%f2, [%r4 + 0]
	subf	%f1, %f1, %f2
	addi	%r3, %r3, 2
	lf	%f2, [%r3 + 0]
	lw	%r3, [%r1 + 5]
	addi	%r3, %r3, 2
	lf	%f3, [%r3 + 0]
	subf	%f2, %f2, %f3
	lw	%r3, [%r1 + 4]
	addi	%r3, %r3, 0
	lf	%f3, [%r3 + 0]
	mulf	%f3, %f0, %f3
	lw	%r3, [%r1 + 4]
	addi	%r3, %r3, 1
	lf	%f4, [%r3 + 0]
	mulf	%f4, %f1, %f4
	lw	%r3, [%r1 + 4]
	addi	%r3, %r3, 2
	lf	%f5, [%r3 + 0]
	mulf	%f5, %f2, %f5
	lw	%r3, [%r1 + 3]
	lli	%r4, 0
	bneq	%r3, %r4, bneq_else.13025
	lli	%r3, 0
	add	%r3, %r2, %r3
	sf	%f3, [%r3 + 0]
	lli	%r3, 1
	add	%r3, %r2, %r3
	sf	%f4, [%r3 + 0]
	lli	%r3, 2
	add	%r3, %r2, %r3
	sf	%f5, [%r3 + 0]
	j	bneq_cont.13026
bneq_else.13025:
	lli	%r3, 0
	lw	%r4, [%r1 + 9]
	lli	%r5, 2
	add	%r4, %r4, %r5
	lf	%f6, [%r4 + 0]
	mulf	%f6, %f1, %f6
	lw	%r4, [%r1 + 9]
	lli	%r5, 1
	add	%r4, %r4, %r5
	lf	%f7, [%r4 + 0]
	mulf	%f7, %f2, %f7
	addf	%f6, %f6, %f7
	llif	%f7, 0.500000
	lhif	%f7, 0.500000
	mulf	%f6, %f6, %f7
	addf	%f3, %f3, %f6
	add	%r3, %r2, %r3
	sf	%f3, [%r3 + 0]
	lli	%r3, 1
	lw	%r4, [%r1 + 9]
	lli	%r5, 2
	add	%r4, %r4, %r5
	lf	%f3, [%r4 + 0]
	mulf	%f3, %f0, %f3
	lw	%r4, [%r1 + 9]
	lli	%r5, 0
	add	%r4, %r4, %r5
	lf	%f6, [%r4 + 0]
	mulf	%f2, %f2, %f6
	addf	%f2, %f3, %f2
	llif	%f3, 0.500000
	lhif	%f3, 0.500000
	mulf	%f2, %f2, %f3
	addf	%f2, %f4, %f2
	add	%r3, %r2, %r3
	sf	%f2, [%r3 + 0]
	lli	%r3, 2
	lw	%r4, [%r1 + 9]
	lli	%r5, 1
	add	%r4, %r4, %r5
	lf	%f2, [%r4 + 0]
	mulf	%f0, %f0, %f2
	lw	%r4, [%r1 + 9]
	lli	%r5, 0
	add	%r4, %r4, %r5
	lf	%f2, [%r4 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	llif	%f1, 0.500000
	lhif	%f1, 0.500000
	mulf	%f0, %f0, %f1
	addf	%f0, %f5, %f0
	add	%r3, %r2, %r3
	sf	%f0, [%r3 + 0]
bneq_cont.13026:
	lw	%r1, [%r1 + 6]
	add	%r26, %r0, %r2
	add	%r2, %r0, %r1
	add	%r1, %r0, %r26
	j	vecunit_sgn.2594
utexture.2891:
	lw	%r3, [%r27 + 1]
	lw	%r4, [%r1 + 0]
	lw	%r5, [%r1 + 8]
	addi	%r5, %r5, 0
	lf	%f0, [%r5 + 0]
	addi	%r5, %r3, 0
	sf	%f0, [%r5 + 0]
	lw	%r5, [%r1 + 8]
	addi	%r5, %r5, 1
	lf	%f0, [%r5 + 0]
	addi	%r5, %r3, 1
	sf	%f0, [%r5 + 0]
	lw	%r5, [%r1 + 8]
	addi	%r5, %r5, 2
	lf	%f0, [%r5 + 0]
	addi	%r5, %r3, 2
	sf	%f0, [%r5 + 0]
	lli	%r5, 1
	bneq	%r4, %r5, bneq_else.13027
	lli	%r4, 0
	add	%r4, %r2, %r4
	lf	%f0, [%r4 + 0]
	lw	%r4, [%r1 + 5]
	lli	%r5, 0
	add	%r4, %r4, %r5
	lf	%f1, [%r4 + 0]
	subf	%f0, %f0, %f1
	llif	%f1, 0.050000
	lhif	%f1, 0.050000
	mulf	%f1, %f0, %f1
	floor	%f1, %f1
	llif	%f2, 20.000000
	lhif	%f2, 20.000000
	mulf	%f1, %f1, %f2
	subf	%f0, %f0, %f1
	llif	%f1, 10.000000
	lhif	%f1, 10.000000
	bgtf	%f1, %f0, bgtf_else.13028
	lli	%r4, 0
	j	bgtf_cont.13029
bgtf_else.13028:
	lli	%r4, 1
bgtf_cont.13029:
	lli	%r5, 2
	add	%r2, %r2, %r5
	lf	%f0, [%r2 + 0]
	lw	%r1, [%r1 + 5]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f1, [%r1 + 0]
	subf	%f0, %f0, %f1
	llif	%f1, 0.050000
	lhif	%f1, 0.050000
	mulf	%f1, %f0, %f1
	floor	%f1, %f1
	llif	%f2, 20.000000
	lhif	%f2, 20.000000
	mulf	%f1, %f1, %f2
	subf	%f0, %f0, %f1
	llif	%f1, 10.000000
	lhif	%f1, 10.000000
	bgtf	%f1, %f0, bgtf_else.13030
	lli	%r1, 0
	j	bgtf_cont.13031
bgtf_else.13030:
	lli	%r1, 1
bgtf_cont.13031:
	lli	%r2, 1
	lli	%r5, 0
	bneq	%r4, %r5, bneq_else.13032
	lli	%r4, 0
	bneq	%r1, %r4, bneq_else.13034
	llif	%f0, 255.000000
	lhif	%f0, 255.000000
	j	bneq_cont.13035
bneq_else.13034:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.13035:
	j	bneq_cont.13033
bneq_else.13032:
	lli	%r4, 0
	bneq	%r1, %r4, bneq_else.13036
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	j	bneq_cont.13037
bneq_else.13036:
	llif	%f0, 255.000000
	lhif	%f0, 255.000000
bneq_cont.13037:
bneq_cont.13033:
	add	%r1, %r3, %r2
	sf	%f0, [%r1 + 0]
	jr	%ra
bneq_else.13027:
	lli	%r5, 2
	bneq	%r4, %r5, bneq_else.13039
	lli	%r1, 1
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	llif	%f1, 0.250000
	lhif	%f1, 0.250000
	mulf	%f0, %f0, %f1
	sw	%r3, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	sin.2516
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	mulf	%f0, %f0, %f0
	lli	%r1, 0
	llif	%f1, 255.000000
	lhif	%f1, 255.000000
	mulf	%f1, %f1, %f0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f1, [%r1 + 0]
	lli	%r1, 1
	llif	%f1, 255.000000
	lhif	%f1, 255.000000
	llif	%f2, 1.000000
	lhif	%f2, 1.000000
	subf	%f0, %f2, %f0
	mulf	%f0, %f1, %f0
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	jr	%ra
bneq_else.13039:
	lli	%r5, 3
	bneq	%r4, %r5, bneq_else.13041
	lli	%r4, 0
	add	%r4, %r2, %r4
	lf	%f0, [%r4 + 0]
	lw	%r4, [%r1 + 5]
	lli	%r5, 0
	add	%r4, %r4, %r5
	lf	%f1, [%r4 + 0]
	subf	%f0, %f0, %f1
	lli	%r4, 2
	add	%r2, %r2, %r4
	lf	%f1, [%r2 + 0]
	lw	%r1, [%r1 + 5]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f2, [%r1 + 0]
	subf	%f1, %f1, %f2
	mulf	%f0, %f0, %f0
	mulf	%f1, %f1, %f1
	addf	%f0, %f0, %f1
	sqrt	%f0, %f0
	llif	%f1, 10.000000
	lhif	%f1, 10.000000
	divf	%f0, %f0, %f1
	floor	%f1, %f0
	subf	%f0, %f0, %f1
	llif	%f1, 3.141593
	lhif	%f1, 3.141593
	mulf	%f0, %f0, %f1
	sw	%r3, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	cos.2518
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	mulf	%f0, %f0, %f0
	lli	%r1, 1
	llif	%f1, 255.000000
	lhif	%f1, 255.000000
	mulf	%f1, %f0, %f1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f1, [%r1 + 0]
	lli	%r1, 2
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	subf	%f0, %f1, %f0
	llif	%f1, 255.000000
	lhif	%f1, 255.000000
	mulf	%f0, %f0, %f1
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	jr	%ra
bneq_else.13041:
	lli	%r5, 4
	bneq	%r4, %r5, bneq_else.13043
	lli	%r4, 0
	add	%r4, %r2, %r4
	lf	%f0, [%r4 + 0]
	lw	%r4, [%r1 + 5]
	lli	%r5, 0
	add	%r4, %r4, %r5
	lf	%f1, [%r4 + 0]
	subf	%f0, %f0, %f1
	lw	%r4, [%r1 + 4]
	lli	%r5, 0
	add	%r4, %r4, %r5
	lf	%f1, [%r4 + 0]
	sqrt	%f1, %f1
	mulf	%f0, %f0, %f1
	lli	%r4, 2
	add	%r4, %r2, %r4
	lf	%f1, [%r4 + 0]
	lw	%r4, [%r1 + 5]
	lli	%r5, 2
	add	%r4, %r4, %r5
	lf	%f2, [%r4 + 0]
	subf	%f1, %f1, %f2
	lw	%r4, [%r1 + 4]
	lli	%r5, 2
	add	%r4, %r4, %r5
	lf	%f2, [%r4 + 0]
	sqrt	%f2, %f2
	mulf	%f1, %f1, %f2
	mulf	%f2, %f0, %f0
	mulf	%f3, %f1, %f1
	addf	%f2, %f2, %f3
	absf	%f3, %f0
	llif	%f4, 0.000100
	lhif	%f4, 0.000100
	bgtf	%f4, %f3, bgtf_else.13044
	lli	%r4, 0
	j	bgtf_cont.13045
bgtf_else.13044:
	lli	%r4, 1
bgtf_cont.13045:
	lli	%r5, 0
	sw	%r3, [%sp + 0]
	sf	%f2, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%r2, [%sp + 3]
	bneq	%r4, %r5, bneq_else.13046
	divf	%f0, %f1, %f0
	absf	%f0, %f0
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	atan.2520
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	llif	%f1, 30.000000
	lhif	%f1, 30.000000
	mulf	%f0, %f0, %f1
	llif	%f1, 3.141593
	lhif	%f1, 3.141593
	divf	%f0, %f0, %f1
	j	bneq_cont.13047
bneq_else.13046:
	llif	%f0, 15.000000
	lhif	%f0, 15.000000
bneq_cont.13047:
	floor	%f1, %f0
	subf	%f0, %f0, %f1
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 2]
	lw	%r2, [%r1 + 5]
	lli	%r3, 1
	add	%r2, %r2, %r3
	lf	%f2, [%r2 + 0]
	subf	%f1, %f1, %f2
	lw	%r1, [%r1 + 4]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f2, [%r1 + 0]
	sqrt	%f2, %f2
	mulf	%f1, %f1, %f2
	lf	%f2, [%sp + 1]
	absf	%f3, %f2
	llif	%f4, 0.000100
	lhif	%f4, 0.000100
	bgtf	%f4, %f3, bgtf_else.13048
	lli	%r1, 0
	j	bgtf_cont.13049
bgtf_else.13048:
	lli	%r1, 1
bgtf_cont.13049:
	lli	%r2, 0
	sf	%f0, [%sp + 4]
	bneq	%r1, %r2, bneq_else.13050
	divf	%f1, %f1, %f2
	absf	%f1, %f1
	movf	%f0, %f1
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	atan.2520
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	llif	%f1, 30.000000
	lhif	%f1, 30.000000
	mulf	%f0, %f0, %f1
	llif	%f1, 3.141593
	lhif	%f1, 3.141593
	divf	%f0, %f0, %f1
	j	bneq_cont.13051
bneq_else.13050:
	llif	%f0, 15.000000
	lhif	%f0, 15.000000
bneq_cont.13051:
	floor	%f1, %f0
	subf	%f0, %f0, %f1
	llif	%f1, 0.150000
	lhif	%f1, 0.150000
	llif	%f2, 0.500000
	lhif	%f2, 0.500000
	lf	%f3, [%sp + 4]
	subf	%f2, %f2, %f3
	mulf	%f2, %f2, %f2
	subf	%f1, %f1, %f2
	llif	%f2, 0.500000
	lhif	%f2, 0.500000
	subf	%f0, %f2, %f0
	mulf	%f0, %f0, %f0
	subf	%f0, %f1, %f0
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.13052
	lli	%r1, 0
	j	bgtf_cont.13053
bgtf_else.13052:
	lli	%r1, 1
bgtf_cont.13053:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13054
	j	bneq_cont.13055
bneq_else.13054:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.13055:
	lli	%r1, 2
	llif	%f1, 255.000000
	lhif	%f1, 255.000000
	mulf	%f0, %f1, %f0
	llif	%f1, 0.300000
	lhif	%f1, 0.300000
	divf	%f0, %f0, %f1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	jr	%ra
bneq_else.13043:
	jr	%ra
add_light.2894:
	lw	%r2, [%r27 + 2]
	lw	%r1, [%r27 + 1]
	llif	%f3, 0.000000
	lhif	%f3, 0.000000
	bgtf	%f0, %f3, bgtf_else.13058
	lli	%r3, 0
	j	bgtf_cont.13059
bgtf_else.13058:
	lli	%r3, 1
bgtf_cont.13059:
	lli	%r4, 0
	sw	%r1, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	bneq	%r3, %r4, bneq_else.13060
	j	bneq_cont.13061
bneq_else.13060:
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	vecaccum.2605
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
bneq_cont.13061:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	lf	%f1, [%sp + 2]
	bgtf	%f1, %f0, bgtf_else.13062
	lli	%r1, 0
	j	bgtf_cont.13063
bgtf_else.13062:
	lli	%r1, 1
bgtf_cont.13063:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13064
	jr	%ra
bneq_else.13064:
	mulf	%f0, %f1, %f1
	mulf	%f0, %f0, %f0
	lf	%f1, [%sp + 1]
	mulf	%f0, %f0, %f1
	lli	%r1, 0
	lli	%r2, 0
	lw	%r3, [%sp + 0]
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	addf	%f1, %f1, %f0
	add	%r1, %r3, %r1
	sf	%f1, [%r1 + 0]
	lli	%r1, 1
	lli	%r2, 1
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	addf	%f1, %f1, %f0
	add	%r1, %r3, %r1
	sf	%f1, [%r1 + 0]
	lli	%r1, 2
	lli	%r2, 2
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	addf	%f0, %f1, %f0
	add	%r1, %r3, %r1
	sf	%f0, [%r1 + 0]
	jr	%ra
trace_reflections.2898:
	lw	%r3, [%r27 + 9]
	lw	%r4, [%r27 + 8]
	lw	%r5, [%r27 + 7]
	lw	%r6, [%r27 + 6]
	lw	%r7, [%r27 + 5]
	lw	%r8, [%r27 + 4]
	lw	%r9, [%r27 + 3]
	lw	%r10, [%r27 + 2]
	lw	%r11, [%r27 + 1]
	lli	%r12, 0
	bgt	%r12, %r1, bgt_else.13067
	add	%r6, %r6, %r1
	lw	%r6, [%r6 + 0]
	lw	%r12, [%r6 + 1]
	lli	%r13, 0
	llif	%f2, 1000000000.000000
	lhif	%f2, 1000000000.000000
	add	%r13, %r4, %r13
	sf	%f2, [%r13 + 0]
	lli	%r13, 0
	lli	%r14, 0
	add	%r14, %r7, %r14
	lw	%r14, [%r14 + 0]
	sw	%r27, [%sp + 0]
	sw	%r1, [%sp + 1]
	sf	%f1, [%sp + 2]
	sw	%r11, [%sp + 3]
	sw	%r2, [%sp + 4]
	sf	%f0, [%sp + 5]
	sw	%r8, [%sp + 6]
	sw	%r12, [%sp + 7]
	sw	%r5, [%sp + 8]
	sw	%r7, [%sp + 9]
	sw	%r6, [%sp + 10]
	sw	%r9, [%sp + 11]
	sw	%r10, [%sp + 12]
	sw	%r4, [%sp + 13]
	add	%r2, %r0, %r14
	add	%r1, %r0, %r13
	add	%r27, %r0, %r3
	add	%r3, %r0, %r12
	sw	%ra, [%sp + 14]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 15
	jalr	%r26
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lli	%r1, 0
	lw	%r2, [%sp + 13]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	llif	%f1, -0.100000
	lhif	%f1, -0.100000
	bgtf	%f0, %f1, bgtf_else.13068
	lli	%r1, 0
	j	bgtf_cont.13069
bgtf_else.13068:
	lli	%r1, 1
bgtf_cont.13069:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13070
	lli	%r1, 0
	j	bneq_cont.13071
bneq_else.13070:
	llif	%f1, 100000000.000000
	lhif	%f1, 100000000.000000
	bgtf	%f1, %f0, bgtf_else.13072
	lli	%r1, 0
	j	bgtf_cont.13073
bgtf_else.13072:
	lli	%r1, 1
bgtf_cont.13073:
bneq_cont.13071:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13074
	j	bneq_cont.13075
bneq_else.13074:
	lli	%r1, 0
	lw	%r2, [%sp + 12]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r2, 4
	mul	%r1, %r1, %r2
	lli	%r2, 0
	lw	%r3, [%sp + 11]
	add	%r2, %r3, %r2
	lw	%r2, [%r2 + 0]
	add	%r1, %r1, %r2
	lw	%r2, [%sp + 10]
	lw	%r3, [%r2 + 0]
	bneq	%r1, %r3, bneq_else.13076
	lli	%r1, 0
	lli	%r3, 0
	lw	%r4, [%sp + 9]
	add	%r3, %r4, %r3
	lw	%r3, [%r3 + 0]
	lw	%r27, [%sp + 8]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 14]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 15
	jalr	%r26
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13078
	lw	%r1, [%sp + 7]
	lw	%r2, [%r1 + 0]
	lw	%r3, [%sp + 6]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	veciprod.2597
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lw	%r1, [%sp + 10]
	lf	%f1, [%r1 + 2]
	lf	%f2, [%sp + 5]
	mulf	%f3, %f1, %f2
	mulf	%f0, %f3, %f0
	lw	%r1, [%sp + 7]
	lw	%r2, [%r1 + 0]
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 14]
	sf	%f1, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	veciprod.2597
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f1, [%sp + 15]
	mulf	%f1, %f1, %f0
	lf	%f0, [%sp + 14]
	lf	%f2, [%sp + 2]
	lw	%r27, [%sp + 3]
	sw	%ra, [%sp + 16]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 17
	jalr	%r26
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	j	bneq_cont.13079
bneq_else.13078:
bneq_cont.13079:
	j	bneq_cont.13077
bneq_else.13076:
bneq_cont.13077:
bneq_cont.13075:
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	sub	%r1, %r2, %r1
	lf	%f0, [%sp + 5]
	lf	%f1, [%sp + 2]
	lw	%r2, [%sp + 4]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.13067:
	jr	%ra
trace_ray.2903:
	lw	%r4, [%r27 + 24]
	lw	%r5, [%r27 + 23]
	lw	%r6, [%r27 + 22]
	lw	%r7, [%r27 + 21]
	lw	%r8, [%r27 + 20]
	lw	%r9, [%r27 + 19]
	lw	%r10, [%r27 + 18]
	lw	%r11, [%r27 + 17]
	lw	%r12, [%r27 + 16]
	lw	%r13, [%r27 + 15]
	lw	%r14, [%r27 + 14]
	lw	%r15, [%r27 + 13]
	lw	%r16, [%r27 + 12]
	lw	%r17, [%r27 + 11]
	lw	%r18, [%r27 + 10]
	lw	%r19, [%r27 + 9]
	lw	%r20, [%r27 + 8]
	lw	%r21, [%r27 + 7]
	lw	%r22, [%r27 + 6]
	lw	%r23, [%r27 + 5]
	lw	%r24, [%r27 + 4]
	lw	%r25, [%r27 + 3]
	lw	%r26, [%r27 + 2]
	sw	%r27, [%sp + 0]
	lw	%r27, [%r27 + 1]
	sw	%r5, [%sp + 1]
	lli	%r5, 4
	bgt	%r1, %r5, bgt_else.13081
	lw	%r5, [%r3 + 2]
	sw	%r17, [%sp + 2]
	lli	%r17, 0
	llif	%f2, 1000000000.000000
	lhif	%f2, 1000000000.000000
	add	%r17, %r7, %r17
	sf	%f2, [%r17 + 0]
	lli	%r17, 0
	sw	%r12, [%sp + 3]
	lli	%r12, 0
	add	%r12, %r14, %r12
	lw	%r12, [%r12 + 0]
	sf	%f1, [%sp + 4]
	sw	%r18, [%sp + 5]
	sw	%r9, [%sp + 6]
	sw	%r27, [%sp + 7]
	sw	%r11, [%sp + 8]
	sw	%r14, [%sp + 9]
	sw	%r16, [%sp + 10]
	sw	%r8, [%sp + 11]
	sw	%r3, [%sp + 12]
	sw	%r20, [%sp + 13]
	sw	%r4, [%sp + 14]
	sw	%r10, [%sp + 15]
	sw	%r21, [%sp + 16]
	sw	%r23, [%sp + 17]
	sw	%r25, [%sp + 18]
	sw	%r24, [%sp + 19]
	sw	%r15, [%sp + 20]
	sw	%r22, [%sp + 21]
	sw	%r13, [%sp + 22]
	sw	%r26, [%sp + 23]
	sf	%f0, [%sp + 24]
	sw	%r19, [%sp + 25]
	sw	%r2, [%sp + 26]
	sw	%r1, [%sp + 27]
	sw	%r5, [%sp + 28]
	sw	%r7, [%sp + 29]
	add	%r3, %r0, %r2
	add	%r1, %r0, %r17
	add	%r27, %r0, %r6
	add	%r2, %r0, %r12
	sw	%ra, [%sp + 30]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 31
	jalr	%r26
	subi	%sp, %sp, 31
	lw	%ra, [%sp + 30]
	lli	%r1, 0
	lw	%r2, [%sp + 29]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	llif	%f1, -0.100000
	lhif	%f1, -0.100000
	bgtf	%f0, %f1, bgtf_else.13082
	lli	%r1, 0
	j	bgtf_cont.13083
bgtf_else.13082:
	lli	%r1, 1
bgtf_cont.13083:
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.13084
	lli	%r1, 0
	j	bneq_cont.13085
bneq_else.13084:
	llif	%f1, 100000000.000000
	lhif	%f1, 100000000.000000
	bgtf	%f1, %f0, bgtf_else.13086
	lli	%r1, 0
	j	bgtf_cont.13087
bgtf_else.13086:
	lli	%r1, 1
bgtf_cont.13087:
bneq_cont.13085:
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.13088
	lli	%r1, -1
	lhi	%r1, -1
	lw	%r2, [%sp + 27]
	lw	%r3, [%sp + 28]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	lli	%r1, 0
	bneq	%r2, %r1, bneq_else.13089
	jr	%ra
bneq_else.13089:
	lw	%r1, [%sp + 26]
	lw	%r2, [%sp + 25]
	sw	%ra, [%sp + 30]
	addi	%sp, %sp, 31
	jal	veciprod.2597
	subi	%sp, %sp, 31
	lw	%ra, [%sp + 30]
	negf	%f0, %f0
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f0, %f1, bgtf_else.13091
	lli	%r1, 0
	j	bgtf_cont.13092
bgtf_else.13091:
	lli	%r1, 1
bgtf_cont.13092:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13093
	jr	%ra
bneq_else.13093:
	mulf	%f1, %f0, %f0
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 24]
	mulf	%f0, %f0, %f1
	lli	%r1, 0
	lw	%r2, [%sp + 23]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	mulf	%f0, %f0, %f1
	lli	%r1, 0
	lli	%r2, 0
	lw	%r3, [%sp + 22]
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	addf	%f1, %f1, %f0
	add	%r1, %r3, %r1
	sf	%f1, [%r1 + 0]
	lli	%r1, 1
	lli	%r2, 1
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	addf	%f1, %f1, %f0
	add	%r1, %r3, %r1
	sf	%f1, [%r1 + 0]
	lli	%r1, 2
	lli	%r2, 2
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	addf	%f0, %f1, %f0
	add	%r1, %r3, %r1
	sf	%f0, [%r1 + 0]
	jr	%ra
bneq_else.13088:
	lli	%r1, 0
	lw	%r3, [%sp + 21]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	lw	%r3, [%sp + 20]
	add	%r3, %r3, %r1
	lw	%r3, [%r3 + 0]
	lw	%r4, [%r3 + 2]
	lw	%r5, [%r3 + 7]
	lli	%r6, 0
	add	%r5, %r5, %r6
	lf	%f0, [%r5 + 0]
	lf	%f1, [%sp + 24]
	mulf	%f0, %f0, %f1
	lw	%r5, [%r3 + 1]
	lli	%r6, 1
	sw	%r4, [%sp + 30]
	sf	%f0, [%sp + 31]
	sw	%r1, [%sp + 32]
	sw	%r3, [%sp + 33]
	bneq	%r5, %r6, bneq_else.13096
	lw	%r5, [%sp + 26]
	lw	%r27, [%sp + 19]
	add	%r1, %r0, %r5
	sw	%ra, [%sp + 34]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 35
	jalr	%r26
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	j	bneq_cont.13097
bneq_else.13096:
	lli	%r6, 2
	bneq	%r5, %r6, bneq_else.13098
	lw	%r27, [%sp + 18]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 34]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 35
	jalr	%r26
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	j	bneq_cont.13099
bneq_else.13098:
	lw	%r27, [%sp + 17]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 34]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 35
	jalr	%r26
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
bneq_cont.13099:
bneq_cont.13097:
	lli	%r1, 0
	lli	%r2, 0
	lw	%r3, [%sp + 16]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lw	%r2, [%sp + 15]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	lli	%r4, 1
	add	%r4, %r3, %r4
	lf	%f0, [%r4 + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	lli	%r4, 2
	add	%r4, %r3, %r4
	lf	%f0, [%r4 + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lw	%r1, [%sp + 33]
	lw	%r27, [%sp + 14]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 34]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 35
	jalr	%r26
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	lli	%r1, 4
	lw	%r2, [%sp + 32]
	mul	%r1, %r2, %r1
	lli	%r2, 0
	lw	%r3, [%sp + 13]
	add	%r2, %r3, %r2
	lw	%r2, [%r2 + 0]
	add	%r1, %r1, %r2
	lw	%r2, [%sp + 27]
	lw	%r3, [%sp + 28]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lw	%r1, [%sp + 12]
	lw	%r4, [%r1 + 1]
	add	%r4, %r4, %r2
	lw	%r4, [%r4 + 0]
	lli	%r5, 0
	lli	%r6, 0
	lw	%r7, [%sp + 16]
	add	%r6, %r7, %r6
	lf	%f0, [%r6 + 0]
	add	%r5, %r4, %r5
	sf	%f0, [%r5 + 0]
	lli	%r5, 1
	lli	%r6, 1
	add	%r6, %r7, %r6
	lf	%f0, [%r6 + 0]
	add	%r5, %r4, %r5
	sf	%f0, [%r5 + 0]
	lli	%r5, 2
	lli	%r6, 2
	add	%r6, %r7, %r6
	lf	%f0, [%r6 + 0]
	add	%r4, %r4, %r5
	sf	%f0, [%r4 + 0]
	lw	%r4, [%r1 + 3]
	lw	%r5, [%sp + 33]
	lw	%r6, [%r5 + 7]
	lli	%r8, 0
	add	%r6, %r6, %r8
	lf	%f0, [%r6 + 0]
	llif	%f1, 0.500000
	lhif	%f1, 0.500000
	bgtf	%f1, %f0, bgtf_else.13100
	lli	%r6, 0
	j	bgtf_cont.13101
bgtf_else.13100:
	lli	%r6, 1
bgtf_cont.13101:
	lli	%r8, 0
	bneq	%r6, %r8, bneq_else.13102
	lli	%r6, 1
	add	%r4, %r4, %r2
	sw	%r6, [%r4 + 0]
	lw	%r4, [%r1 + 4]
	add	%r6, %r4, %r2
	lw	%r6, [%r6 + 0]
	lli	%r8, 0
	lli	%r9, 0
	lw	%r10, [%sp + 11]
	add	%r9, %r10, %r9
	lf	%f0, [%r9 + 0]
	add	%r8, %r6, %r8
	sf	%f0, [%r8 + 0]
	lli	%r8, 1
	lli	%r9, 1
	add	%r9, %r10, %r9
	lf	%f0, [%r9 + 0]
	add	%r8, %r6, %r8
	sf	%f0, [%r8 + 0]
	lli	%r8, 2
	lli	%r9, 2
	add	%r9, %r10, %r9
	lf	%f0, [%r9 + 0]
	add	%r6, %r6, %r8
	sf	%f0, [%r6 + 0]
	add	%r4, %r4, %r2
	lw	%r4, [%r4 + 0]
	llif	%f0, 0.003906
	lhif	%f0, 0.003906
	lf	%f1, [%sp + 31]
	mulf	%f0, %f0, %f1
	lli	%r6, 0
	lli	%r8, 0
	add	%r8, %r4, %r8
	lf	%f2, [%r8 + 0]
	mulf	%f2, %f2, %f0
	add	%r6, %r4, %r6
	sf	%f2, [%r6 + 0]
	lli	%r6, 1
	lli	%r8, 1
	add	%r8, %r4, %r8
	lf	%f2, [%r8 + 0]
	mulf	%f2, %f2, %f0
	add	%r6, %r4, %r6
	sf	%f2, [%r6 + 0]
	lli	%r6, 2
	lli	%r8, 2
	add	%r8, %r4, %r8
	lf	%f2, [%r8 + 0]
	mulf	%f0, %f2, %f0
	add	%r4, %r4, %r6
	sf	%f0, [%r4 + 0]
	lw	%r4, [%r1 + 7]
	add	%r4, %r4, %r2
	lw	%r4, [%r4 + 0]
	lli	%r6, 0
	lli	%r8, 0
	lw	%r9, [%sp + 10]
	add	%r8, %r9, %r8
	lf	%f0, [%r8 + 0]
	add	%r6, %r4, %r6
	sf	%f0, [%r6 + 0]
	lli	%r6, 1
	lli	%r8, 1
	add	%r8, %r9, %r8
	lf	%f0, [%r8 + 0]
	add	%r6, %r4, %r6
	sf	%f0, [%r6 + 0]
	lli	%r6, 2
	lli	%r8, 2
	add	%r8, %r9, %r8
	lf	%f0, [%r8 + 0]
	add	%r4, %r4, %r6
	sf	%f0, [%r4 + 0]
	j	bneq_cont.13103
bneq_else.13102:
	lli	%r6, 0
	add	%r4, %r4, %r2
	sw	%r6, [%r4 + 0]
bneq_cont.13103:
	llif	%f0, -2.000000
	lhif	%f0, -2.000000
	lw	%r4, [%sp + 26]
	lw	%r6, [%sp + 10]
	sf	%f0, [%sp + 34]
	add	%r2, %r0, %r6
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	veciprod.2597
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lf	%f1, [%sp + 34]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 26]
	lw	%r2, [%sp + 10]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	vecaccum.2605
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lw	%r1, [%sp + 33]
	lw	%r2, [%r1 + 7]
	lli	%r3, 1
	add	%r2, %r2, %r3
	lf	%f0, [%r2 + 0]
	lf	%f1, [%sp + 24]
	mulf	%f0, %f1, %f0
	lli	%r2, 0
	lli	%r3, 0
	lw	%r4, [%sp + 9]
	add	%r3, %r4, %r3
	lw	%r3, [%r3 + 0]
	lw	%r27, [%sp + 8]
	sf	%f0, [%sp + 35]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 36]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 37
	jalr	%r26
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13104
	lw	%r1, [%sp + 10]
	lw	%r2, [%sp + 25]
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	veciprod.2597
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	negf	%f0, %f0
	lf	%f1, [%sp + 31]
	mulf	%f0, %f0, %f1
	lw	%r1, [%sp + 26]
	lw	%r2, [%sp + 25]
	sf	%f0, [%sp + 36]
	sw	%ra, [%sp + 37]
	addi	%sp, %sp, 38
	jal	veciprod.2597
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	negf	%f1, %f0
	lf	%f0, [%sp + 36]
	lf	%f2, [%sp + 35]
	lw	%r27, [%sp + 7]
	sw	%ra, [%sp + 37]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 38
	jalr	%r26
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	j	bneq_cont.13105
bneq_else.13104:
bneq_cont.13105:
	lli	%r1, 0
	lli	%r2, 0
	lw	%r3, [%sp + 16]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	lli	%r4, 1
	add	%r4, %r3, %r4
	lf	%f0, [%r4 + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	lli	%r4, 2
	add	%r4, %r3, %r4
	lf	%f0, [%r4 + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r2, 1
	sub	%r2, %r1, %r2
	lw	%r27, [%sp + 3]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 37]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 38
	jalr	%r26
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	lli	%r1, 0
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r2, 1
	sub	%r1, %r1, %r2
	lf	%f0, [%sp + 31]
	lf	%f1, [%sp + 35]
	lw	%r2, [%sp + 26]
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 37]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 38
	jalr	%r26
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	llif	%f0, 0.100000
	lhif	%f0, 0.100000
	lf	%f1, [%sp + 24]
	bgtf	%f1, %f0, bgtf_else.13106
	lli	%r1, 0
	j	bgtf_cont.13107
bgtf_else.13106:
	lli	%r1, 1
bgtf_cont.13107:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13108
	jr	%ra
bneq_else.13108:
	lli	%r1, 4
	lw	%r2, [%sp + 27]
	bgt	%r1, %r2, bgt_else.13110
	j	bgt_cont.13111
bgt_else.13110:
	lli	%r1, 1
	add	%r1, %r2, %r1
	lli	%r3, -1
	lhi	%r3, -1
	lw	%r4, [%sp + 28]
	add	%r1, %r4, %r1
	sw	%r3, [%r1 + 0]
bgt_cont.13111:
	lli	%r1, 2
	lw	%r3, [%sp + 30]
	bneq	%r3, %r1, bneq_else.13112
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lw	%r1, [%sp + 33]
	lw	%r1, [%r1 + 7]
	lli	%r3, 0
	add	%r1, %r1, %r3
	lf	%f2, [%r1 + 0]
	subf	%f0, %f0, %f2
	mulf	%f0, %f1, %f0
	lli	%r1, 1
	add	%r1, %r2, %r1
	lli	%r2, 0
	lw	%r3, [%sp + 29]
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	lf	%f2, [%sp + 4]
	addf	%f1, %f2, %f1
	lw	%r2, [%sp + 26]
	lw	%r3, [%sp + 12]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.13112:
	jr	%ra
bgt_else.13081:
	jr	%ra
trace_diffuse_ray.2909:
	lw	%r2, [%r27 + 15]
	lw	%r3, [%r27 + 14]
	lw	%r4, [%r27 + 13]
	lw	%r5, [%r27 + 12]
	lw	%r6, [%r27 + 11]
	lw	%r7, [%r27 + 10]
	lw	%r8, [%r27 + 9]
	lw	%r9, [%r27 + 8]
	lw	%r10, [%r27 + 7]
	lw	%r11, [%r27 + 6]
	lw	%r12, [%r27 + 5]
	lw	%r13, [%r27 + 4]
	lw	%r14, [%r27 + 3]
	lw	%r15, [%r27 + 2]
	lw	%r16, [%r27 + 1]
	llif	%f1, 1000000000.000000
	lhif	%f1, 1000000000.000000
	addi	%r17, %r4, 0
	sf	%f1, [%r17 + 0]
	lli	%r17, 0
	addi	%r18, %r7, 0
	lw	%r18, [%r18 + 0]
	sw	%r5, [%sp + 0]
	sw	%r16, [%sp + 1]
	sf	%f0, [%sp + 2]
	sw	%r10, [%sp + 3]
	sw	%r9, [%sp + 4]
	sw	%r6, [%sp + 5]
	sw	%r7, [%sp + 6]
	sw	%r11, [%sp + 7]
	sw	%r2, [%sp + 8]
	sw	%r13, [%sp + 9]
	sw	%r15, [%sp + 10]
	sw	%r14, [%sp + 11]
	sw	%r1, [%sp + 12]
	sw	%r8, [%sp + 13]
	sw	%r12, [%sp + 14]
	sw	%r4, [%sp + 15]
	add	%r2, %r0, %r18
	add	%r27, %r0, %r3
	add	%r3, %r0, %r1
	add	%r1, %r0, %r17
	sw	%ra, [%sp + 16]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 17
	jalr	%r26
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lw	%r1, [%sp + 15]
	addi	%r1, %r1, 0
	lf	%f0, [%r1 + 0]
	llif	%f1, -0.100000
	lhif	%f1, -0.100000
	bgtf	%f0, %f1, bgtf_else.13115
	lli	%r1, 0
	j	bgtf_cont.13116
bgtf_else.13115:
	lli	%r1, 1
bgtf_cont.13116:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13117
	lli	%r1, 0
	j	bneq_cont.13118
bneq_else.13117:
	llif	%f1, 100000000.000000
	lhif	%f1, 100000000.000000
	bgtf	%f1, %f0, bgtf_else.13119
	lli	%r1, 0
	j	bgtf_cont.13120
bgtf_else.13119:
	lli	%r1, 1
bgtf_cont.13120:
bneq_cont.13118:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13121
	jr	%ra
bneq_else.13121:
	lli	%r1, 0
	lw	%r2, [%sp + 14]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r2, [%sp + 13]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r2, [%sp + 12]
	lw	%r2, [%r2 + 0]
	lw	%r3, [%r1 + 1]
	lli	%r4, 1
	sw	%r1, [%sp + 16]
	bneq	%r3, %r4, bneq_else.13123
	lw	%r27, [%sp + 11]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 17]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 18
	jalr	%r26
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	j	bneq_cont.13124
bneq_else.13123:
	lli	%r2, 2
	bneq	%r3, %r2, bneq_else.13125
	lw	%r27, [%sp + 10]
	sw	%ra, [%sp + 17]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 18
	jalr	%r26
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	j	bneq_cont.13126
bneq_else.13125:
	lw	%r27, [%sp + 9]
	sw	%ra, [%sp + 17]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 18
	jalr	%r26
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
bneq_cont.13126:
bneq_cont.13124:
	lw	%r1, [%sp + 16]
	lw	%r2, [%sp + 7]
	lw	%r27, [%sp + 8]
	sw	%ra, [%sp + 17]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 18
	jalr	%r26
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lli	%r1, 0
	lli	%r2, 0
	lw	%r3, [%sp + 6]
	add	%r2, %r3, %r2
	lw	%r2, [%r2 + 0]
	lw	%r27, [%sp + 5]
	sw	%ra, [%sp + 17]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 18
	jalr	%r26
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13127
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 3]
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	veciprod.2597
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	negf	%f0, %f0
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f0, %f1, bgtf_else.13128
	lli	%r1, 0
	j	bgtf_cont.13129
bgtf_else.13128:
	lli	%r1, 1
bgtf_cont.13129:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13130
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	j	bneq_cont.13131
bneq_else.13130:
bneq_cont.13131:
	lf	%f1, [%sp + 2]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 16]
	lw	%r1, [%r1 + 7]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f1, [%r1 + 0]
	mulf	%f0, %f0, %f1
	lw	%r1, [%sp + 1]
	lw	%r2, [%sp + 0]
	j	vecaccum.2605
bneq_else.13127:
	jr	%ra
iter_trace_diffuse_rays.2912:
	lw	%r5, [%r27 + 1]
	lli	%r6, 0
	bgt	%r6, %r4, bgt_else.13133
	add	%r6, %r1, %r4
	lw	%r6, [%r6 + 0]
	lw	%r6, [%r6 + 0]
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r27, [%sp + 2]
	sw	%r5, [%sp + 3]
	sw	%r4, [%sp + 4]
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r6
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	veciprod.2597
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.13134
	lli	%r1, 0
	j	bgtf_cont.13135
bgtf_else.13134:
	lli	%r1, 1
bgtf_cont.13135:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13136
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 5]
	add	%r3, %r2, %r1
	lw	%r3, [%r3 + 0]
	llif	%f1, 150.000000
	lhif	%f1, 150.000000
	divf	%f0, %f0, %f1
	lw	%r27, [%sp + 3]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	j	bneq_cont.13137
bneq_else.13136:
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r3, [%sp + 5]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	llif	%f1, -150.000000
	lhif	%f1, -150.000000
	divf	%f0, %f0, %f1
	lw	%r27, [%sp + 3]
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
bneq_cont.13137:
	lli	%r1, 2
	lw	%r2, [%sp + 4]
	sub	%r4, %r2, %r1
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.13133:
	jr	%ra
trace_diffuse_ray_80percent.2921:
	lw	%r4, [%r27 + 3]
	lw	%r5, [%r27 + 2]
	lw	%r6, [%r27 + 1]
	lli	%r7, 0
	sw	%r2, [%sp + 0]
	sw	%r5, [%sp + 1]
	sw	%r3, [%sp + 2]
	sw	%r4, [%sp + 3]
	sw	%r6, [%sp + 4]
	sw	%r1, [%sp + 5]
	bneq	%r1, %r7, bneq_else.13139
	j	bneq_cont.13140
bneq_else.13139:
	lli	%r7, 0
	add	%r7, %r6, %r7
	lw	%r7, [%r7 + 0]
	sw	%r7, [%sp + 6]
	add	%r1, %r0, %r3
	add	%r27, %r0, %r4
	sw	%ra, [%sp + 7]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 8
	jalr	%r26
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r4, 118
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 0]
	lw	%r3, [%sp + 2]
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 7]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 8
	jalr	%r26
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
bneq_cont.13140:
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	bneq	%r2, %r1, bneq_else.13141
	j	bneq_cont.13142
bneq_else.13141:
	lli	%r1, 1
	lw	%r3, [%sp + 4]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	lw	%r4, [%sp + 2]
	lw	%r27, [%sp + 3]
	sw	%r1, [%sp + 7]
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r4, 118
	lw	%r1, [%sp + 7]
	lw	%r2, [%sp + 0]
	lw	%r3, [%sp + 2]
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
bneq_cont.13142:
	lli	%r1, 2
	lw	%r2, [%sp + 5]
	bneq	%r2, %r1, bneq_else.13143
	j	bneq_cont.13144
bneq_else.13143:
	lli	%r1, 2
	lw	%r3, [%sp + 4]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	lw	%r4, [%sp + 2]
	lw	%r27, [%sp + 3]
	sw	%r1, [%sp + 8]
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 9]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 10
	jalr	%r26
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r4, 118
	lw	%r1, [%sp + 8]
	lw	%r2, [%sp + 0]
	lw	%r3, [%sp + 2]
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 9]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 10
	jalr	%r26
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
bneq_cont.13144:
	lli	%r1, 3
	lw	%r2, [%sp + 5]
	bneq	%r2, %r1, bneq_else.13145
	j	bneq_cont.13146
bneq_else.13145:
	lli	%r1, 3
	lw	%r3, [%sp + 4]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	lw	%r4, [%sp + 2]
	lw	%r27, [%sp + 3]
	sw	%r1, [%sp + 9]
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 10]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 11
	jalr	%r26
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r4, 118
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 0]
	lw	%r3, [%sp + 2]
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 10]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 11
	jalr	%r26
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
bneq_cont.13146:
	lli	%r1, 4
	lw	%r2, [%sp + 5]
	bneq	%r2, %r1, bneq_else.13147
	jr	%ra
bneq_else.13147:
	lli	%r1, 4
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 3]
	sw	%r1, [%sp + 10]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 11]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 12
	jalr	%r26
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r4, 118
	lw	%r1, [%sp + 10]
	lw	%r2, [%sp + 0]
	lw	%r3, [%sp + 2]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
calc_diffuse_using_1point.2925:
	lw	%r3, [%r27 + 3]
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	lw	%r6, [%r1 + 5]
	lw	%r7, [%r1 + 7]
	lw	%r8, [%r1 + 1]
	lw	%r9, [%r1 + 4]
	add	%r6, %r6, %r2
	lw	%r6, [%r6 + 0]
	addi	%r10, %r6, 0
	lf	%f0, [%r10 + 0]
	addi	%r10, %r5, 0
	sf	%f0, [%r10 + 0]
	addi	%r10, %r6, 1
	lf	%f0, [%r10 + 0]
	addi	%r10, %r5, 1
	sf	%f0, [%r10 + 0]
	addi	%r6, %r6, 2
	lf	%f0, [%r6 + 0]
	addi	%r6, %r5, 2
	sf	%f0, [%r6 + 0]
	lw	%r1, [%r1 + 6]
	addi	%r1, %r1, 0
	lw	%r1, [%r1 + 0]
	add	%r6, %r7, %r2
	lw	%r6, [%r6 + 0]
	add	%r7, %r8, %r2
	lw	%r7, [%r7 + 0]
	sw	%r5, [%sp + 0]
	sw	%r4, [%sp + 1]
	sw	%r2, [%sp + 2]
	sw	%r9, [%sp + 3]
	add	%r2, %r0, %r6
	add	%r27, %r0, %r3
	add	%r3, %r0, %r7
	sw	%ra, [%sp + 4]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 5
	jalr	%r26
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r1, [%sp + 2]
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r2, [%r1 + 0]
	lw	%r1, [%sp + 1]
	lw	%r3, [%sp + 0]
	j	vecaccumv.2618
calc_diffuse_using_5points.2928:
	lw	%r6, [%r27 + 2]
	lw	%r7, [%r27 + 1]
	add	%r2, %r2, %r1
	lw	%r2, [%r2 + 0]
	lw	%r2, [%r2 + 5]
	subi	%r8, %r1, 1
	add	%r8, %r3, %r8
	lw	%r8, [%r8 + 0]
	lw	%r8, [%r8 + 5]
	add	%r9, %r3, %r1
	lw	%r9, [%r9 + 0]
	lw	%r9, [%r9 + 5]
	addi	%r10, %r1, 1
	add	%r10, %r3, %r10
	lw	%r10, [%r10 + 0]
	lw	%r10, [%r10 + 5]
	add	%r4, %r4, %r1
	lw	%r4, [%r4 + 0]
	lw	%r4, [%r4 + 5]
	add	%r2, %r2, %r5
	lw	%r2, [%r2 + 0]
	addi	%r11, %r2, 0
	lf	%f0, [%r11 + 0]
	addi	%r11, %r7, 0
	sf	%f0, [%r11 + 0]
	addi	%r11, %r2, 1
	lf	%f0, [%r11 + 0]
	addi	%r11, %r7, 1
	sf	%f0, [%r11 + 0]
	addi	%r2, %r2, 2
	lf	%f0, [%r2 + 0]
	addi	%r2, %r7, 2
	sf	%f0, [%r2 + 0]
	add	%r2, %r8, %r5
	lw	%r2, [%r2 + 0]
	sw	%r6, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r3, [%sp + 2]
	sw	%r4, [%sp + 3]
	sw	%r10, [%sp + 4]
	sw	%r7, [%sp + 5]
	sw	%r5, [%sp + 6]
	sw	%r9, [%sp + 7]
	add	%r1, %r0, %r7
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	vecadd.2609
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 7]
	add	%r2, %r2, %r1
	lw	%r2, [%r2 + 0]
	lw	%r3, [%sp + 5]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	vecadd.2609
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 4]
	add	%r2, %r2, %r1
	lw	%r2, [%r2 + 0]
	lw	%r3, [%sp + 5]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	vecadd.2609
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 3]
	add	%r2, %r2, %r1
	lw	%r2, [%r2 + 0]
	lw	%r3, [%sp + 5]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	vecadd.2609
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 1]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r1, [%r1 + 4]
	lw	%r2, [%sp + 6]
	add	%r1, %r1, %r2
	lw	%r2, [%r1 + 0]
	lw	%r1, [%sp + 0]
	lw	%r3, [%sp + 5]
	j	vecaccumv.2618
do_without_neighbors.2934:
	lw	%r3, [%r27 + 4]
	lw	%r4, [%r27 + 3]
	lw	%r5, [%r27 + 2]
	lw	%r6, [%r27 + 1]
	lli	%r7, 4
	bgt	%r2, %r7, bgt_else.13149
	lw	%r7, [%r1 + 2]
	lli	%r8, 0
	add	%r7, %r7, %r2
	lw	%r7, [%r7 + 0]
	bgt	%r8, %r7, bgt_else.13150
	lw	%r7, [%r1 + 3]
	add	%r7, %r7, %r2
	lw	%r7, [%r7 + 0]
	lli	%r8, 0
	sw	%r27, [%sp + 0]
	sw	%r6, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%r2, [%sp + 3]
	bneq	%r7, %r8, bneq_else.13151
	j	bneq_cont.13152
bneq_else.13151:
	lw	%r7, [%r1 + 5]
	lw	%r8, [%r1 + 7]
	lw	%r9, [%r1 + 1]
	lw	%r10, [%r1 + 4]
	add	%r7, %r7, %r2
	lw	%r7, [%r7 + 0]
	lli	%r11, 0
	lli	%r12, 0
	add	%r12, %r7, %r12
	lf	%f0, [%r12 + 0]
	add	%r11, %r5, %r11
	sf	%f0, [%r11 + 0]
	lli	%r11, 1
	lli	%r12, 1
	add	%r12, %r7, %r12
	lf	%f0, [%r12 + 0]
	add	%r11, %r5, %r11
	sf	%f0, [%r11 + 0]
	lli	%r11, 2
	lli	%r12, 2
	add	%r7, %r7, %r12
	lf	%f0, [%r7 + 0]
	add	%r7, %r5, %r11
	sf	%f0, [%r7 + 0]
	lw	%r7, [%r1 + 6]
	lli	%r11, 0
	add	%r7, %r7, %r11
	lw	%r7, [%r7 + 0]
	add	%r8, %r8, %r2
	lw	%r8, [%r8 + 0]
	add	%r9, %r9, %r2
	lw	%r9, [%r9 + 0]
	sw	%r5, [%sp + 4]
	sw	%r4, [%sp + 5]
	sw	%r10, [%sp + 6]
	add	%r2, %r0, %r8
	add	%r1, %r0, %r7
	add	%r27, %r0, %r3
	add	%r3, %r0, %r9
	sw	%ra, [%sp + 7]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 8
	jalr	%r26
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r1, [%sp + 3]
	lw	%r2, [%sp + 6]
	add	%r2, %r2, %r1
	lw	%r2, [%r2 + 0]
	lw	%r3, [%sp + 5]
	lw	%r4, [%sp + 4]
	add	%r1, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	vecaccumv.2618
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
bneq_cont.13152:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r2, %r2, %r1
	lli	%r1, 4
	bgt	%r2, %r1, bgt_else.13153
	lw	%r1, [%sp + 2]
	lw	%r3, [%r1 + 2]
	lli	%r4, 0
	add	%r3, %r3, %r2
	lw	%r3, [%r3 + 0]
	bgt	%r4, %r3, bgt_else.13154
	lw	%r3, [%r1 + 3]
	add	%r3, %r3, %r2
	lw	%r3, [%r3 + 0]
	lli	%r4, 0
	sw	%r2, [%sp + 7]
	bneq	%r3, %r4, bneq_else.13155
	j	bneq_cont.13156
bneq_else.13155:
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
bneq_cont.13156:
	lli	%r1, 1
	lw	%r2, [%sp + 7]
	add	%r2, %r2, %r1
	lw	%r1, [%sp + 2]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.13154:
	jr	%ra
bgt_else.13153:
	jr	%ra
bgt_else.13150:
	jr	%ra
bgt_else.13149:
	jr	%ra
neighbors_are_available.2944:
	add	%r6, %r3, %r1
	lw	%r6, [%r6 + 0]
	lw	%r6, [%r6 + 2]
	add	%r6, %r6, %r5
	lw	%r6, [%r6 + 0]
	add	%r2, %r2, %r1
	lw	%r2, [%r2 + 0]
	lw	%r2, [%r2 + 2]
	add	%r2, %r2, %r5
	lw	%r2, [%r2 + 0]
	bneq	%r2, %r6, bneq_else.13161
	add	%r2, %r4, %r1
	lw	%r2, [%r2 + 0]
	lw	%r2, [%r2 + 2]
	add	%r2, %r2, %r5
	lw	%r2, [%r2 + 0]
	bneq	%r2, %r6, bneq_else.13162
	lli	%r2, 1
	sub	%r2, %r1, %r2
	add	%r2, %r3, %r2
	lw	%r2, [%r2 + 0]
	lw	%r2, [%r2 + 2]
	add	%r2, %r2, %r5
	lw	%r2, [%r2 + 0]
	bneq	%r2, %r6, bneq_else.13163
	lli	%r2, 1
	add	%r1, %r1, %r2
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	lw	%r1, [%r1 + 2]
	add	%r1, %r1, %r5
	lw	%r1, [%r1 + 0]
	bneq	%r1, %r6, bneq_else.13164
	lli	%r1, 1
	jr	%ra
bneq_else.13164:
	lli	%r1, 0
	jr	%ra
bneq_else.13163:
	lli	%r1, 0
	jr	%ra
bneq_else.13162:
	lli	%r1, 0
	jr	%ra
bneq_else.13161:
	lli	%r1, 0
	jr	%ra
try_exploit_neighbors.2950:
	lw	%r7, [%r27 + 3]
	lw	%r8, [%r27 + 2]
	lw	%r9, [%r27 + 1]
	add	%r10, %r4, %r1
	lw	%r10, [%r10 + 0]
	lli	%r11, 4
	bgt	%r6, %r11, bgt_else.13165
	lli	%r11, 0
	lw	%r12, [%r10 + 2]
	add	%r12, %r12, %r6
	lw	%r12, [%r12 + 0]
	bgt	%r11, %r12, bgt_else.13166
	sw	%r2, [%sp + 0]
	sw	%r27, [%sp + 1]
	sw	%r5, [%sp + 2]
	sw	%r3, [%sp + 3]
	sw	%r8, [%sp + 4]
	sw	%r10, [%sp + 5]
	sw	%r7, [%sp + 6]
	sw	%r9, [%sp + 7]
	sw	%r6, [%sp + 8]
	sw	%r1, [%sp + 9]
	sw	%r4, [%sp + 10]
	add	%r2, %r0, %r3
	add	%r3, %r0, %r4
	add	%r4, %r0, %r5
	add	%r5, %r0, %r6
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	neighbors_are_available.2944
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13167
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 10]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r2, 4
	lw	%r3, [%sp + 8]
	bgt	%r3, %r2, bgt_else.13168
	lw	%r2, [%r1 + 2]
	lli	%r4, 0
	add	%r2, %r2, %r3
	lw	%r2, [%r2 + 0]
	bgt	%r4, %r2, bgt_else.13169
	lw	%r2, [%r1 + 3]
	add	%r2, %r2, %r3
	lw	%r2, [%r2 + 0]
	lli	%r4, 0
	sw	%r1, [%sp + 11]
	bneq	%r2, %r4, bneq_else.13170
	j	bneq_cont.13171
bneq_else.13170:
	lw	%r27, [%sp + 7]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 12]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 13
	jalr	%r26
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
bneq_cont.13171:
	lli	%r1, 1
	lw	%r2, [%sp + 8]
	add	%r2, %r2, %r1
	lw	%r1, [%sp + 11]
	lw	%r27, [%sp + 6]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.13169:
	jr	%ra
bgt_else.13168:
	jr	%ra
bneq_else.13167:
	lw	%r1, [%sp + 5]
	lw	%r1, [%r1 + 3]
	lw	%r5, [%sp + 8]
	add	%r1, %r1, %r5
	lw	%r1, [%r1 + 0]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13174
	j	bneq_cont.13175
bneq_else.13174:
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 3]
	lw	%r3, [%sp + 10]
	lw	%r4, [%sp + 2]
	lw	%r27, [%sp + 4]
	sw	%ra, [%sp + 12]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 13
	jalr	%r26
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
bneq_cont.13175:
	lli	%r1, 1
	lw	%r2, [%sp + 8]
	add	%r6, %r2, %r1
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 0]
	lw	%r3, [%sp + 3]
	lw	%r4, [%sp + 10]
	lw	%r5, [%sp + 2]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.13166:
	jr	%ra
bgt_else.13165:
	jr	%ra
write_ppm_header.2957:
	lw	%r1, [%r27 + 1]
	lli	%r2, 80
	sendc	%r2
	lli	%r2, 51
	sendc	%r2
	lli	%r2, 10
	sendc	%r2
	addi	%r2, %r1, 0
	lw	%r2, [%r2 + 0]
	sw	%r1, [%sp + 0]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	print_int.2514
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 32
	sendc	%r1
	lw	%r1, [%sp + 0]
	addi	%r1, %r1, 1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	print_int.2514
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 32
	sendc	%r1
	lli	%r1, 255
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	print_int.2514
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 10
	sendc	%r1
	jr	%ra
pretrace_diffuse_rays.2963:
	lw	%r3, [%r27 + 4]
	lw	%r4, [%r27 + 3]
	lw	%r5, [%r27 + 2]
	lw	%r6, [%r27 + 1]
	lli	%r7, 4
	bgt	%r2, %r7, bgt_else.13179
	lw	%r7, [%r1 + 2]
	add	%r7, %r7, %r2
	lw	%r7, [%r7 + 0]
	lli	%r8, 0
	bgt	%r8, %r7, bgt_else.13180
	lw	%r7, [%r1 + 3]
	add	%r7, %r7, %r2
	lw	%r7, [%r7 + 0]
	lli	%r8, 0
	sw	%r27, [%sp + 0]
	sw	%r2, [%sp + 1]
	bneq	%r7, %r8, bneq_else.13181
	j	bneq_cont.13182
bneq_else.13181:
	lw	%r7, [%r1 + 6]
	lli	%r8, 0
	add	%r7, %r7, %r8
	lw	%r7, [%r7 + 0]
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	lli	%r8, 0
	add	%r8, %r6, %r8
	sf	%f0, [%r8 + 0]
	lli	%r8, 1
	add	%r8, %r6, %r8
	sf	%f0, [%r8 + 0]
	lli	%r8, 2
	add	%r8, %r6, %r8
	sf	%f0, [%r8 + 0]
	lw	%r8, [%r1 + 7]
	lw	%r9, [%r1 + 1]
	add	%r5, %r5, %r7
	lw	%r5, [%r5 + 0]
	add	%r7, %r8, %r2
	lw	%r7, [%r7 + 0]
	add	%r8, %r9, %r2
	lw	%r8, [%r8 + 0]
	sw	%r6, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%r8, [%sp + 4]
	sw	%r7, [%sp + 5]
	sw	%r5, [%sp + 6]
	sw	%r4, [%sp + 7]
	add	%r1, %r0, %r8
	add	%r27, %r0, %r3
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r4, 118
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 5]
	lw	%r3, [%sp + 4]
	lw	%r27, [%sp + 7]
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 3]
	lw	%r2, [%r1 + 5]
	lw	%r3, [%sp + 1]
	add	%r2, %r2, %r3
	lw	%r2, [%r2 + 0]
	lli	%r4, 0
	lli	%r5, 0
	lw	%r6, [%sp + 2]
	add	%r5, %r6, %r5
	lf	%f0, [%r5 + 0]
	add	%r4, %r2, %r4
	sf	%f0, [%r4 + 0]
	lli	%r4, 1
	lli	%r5, 1
	add	%r5, %r6, %r5
	lf	%f0, [%r5 + 0]
	add	%r4, %r2, %r4
	sf	%f0, [%r4 + 0]
	lli	%r4, 2
	lli	%r5, 2
	add	%r5, %r6, %r5
	lf	%f0, [%r5 + 0]
	add	%r2, %r2, %r4
	sf	%f0, [%r2 + 0]
bneq_cont.13182:
	lli	%r2, 1
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.13180:
	jr	%ra
bgt_else.13179:
	jr	%ra
pretrace_pixels.2966:
	lw	%r4, [%r27 + 9]
	lw	%r5, [%r27 + 8]
	lw	%r6, [%r27 + 7]
	lw	%r7, [%r27 + 6]
	lw	%r8, [%r27 + 5]
	lw	%r9, [%r27 + 4]
	lw	%r10, [%r27 + 3]
	lw	%r11, [%r27 + 2]
	lw	%r12, [%r27 + 1]
	lli	%r13, 0
	bgt	%r13, %r2, bgt_else.13185
	lli	%r13, 0
	add	%r8, %r8, %r13
	lf	%f3, [%r8 + 0]
	lli	%r8, 0
	add	%r8, %r12, %r8
	lw	%r8, [%r8 + 0]
	sub	%r8, %r2, %r8
	itof	%f4, %r8
	mulf	%f3, %f3, %f4
	lli	%r8, 0
	lli	%r12, 0
	add	%r12, %r7, %r12
	lf	%f4, [%r12 + 0]
	mulf	%f4, %f3, %f4
	addf	%f4, %f4, %f0
	add	%r8, %r10, %r8
	sf	%f4, [%r8 + 0]
	lli	%r8, 1
	lli	%r12, 1
	add	%r12, %r7, %r12
	lf	%f4, [%r12 + 0]
	mulf	%f4, %f3, %f4
	addf	%f4, %f4, %f1
	add	%r8, %r10, %r8
	sf	%f4, [%r8 + 0]
	lli	%r8, 2
	lli	%r12, 2
	add	%r7, %r7, %r12
	lf	%f4, [%r7 + 0]
	mulf	%f3, %f3, %f4
	addf	%f3, %f3, %f2
	add	%r7, %r10, %r8
	sf	%f3, [%r7 + 0]
	lli	%r7, 0
	sf	%f2, [%sp + 0]
	sf	%f1, [%sp + 1]
	sf	%f0, [%sp + 2]
	sw	%r27, [%sp + 3]
	sw	%r11, [%sp + 4]
	sw	%r3, [%sp + 5]
	sw	%r10, [%sp + 6]
	sw	%r5, [%sp + 7]
	sw	%r2, [%sp + 8]
	sw	%r1, [%sp + 9]
	sw	%r6, [%sp + 10]
	sw	%r4, [%sp + 11]
	sw	%r9, [%sp + 12]
	add	%r2, %r0, %r7
	add	%r1, %r0, %r10
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	vecunit_sgn.2594
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	lli	%r1, 0
	lw	%r2, [%sp + 12]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 0
	lli	%r3, 0
	lw	%r4, [%sp + 11]
	add	%r3, %r4, %r3
	lf	%f0, [%r3 + 0]
	lw	%r3, [%sp + 10]
	add	%r1, %r3, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	lli	%r5, 1
	add	%r5, %r4, %r5
	lf	%f0, [%r5 + 0]
	add	%r1, %r3, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	lli	%r5, 2
	add	%r4, %r4, %r5
	lf	%f0, [%r4 + 0]
	add	%r1, %r3, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 0
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lw	%r3, [%sp + 8]
	lw	%r4, [%sp + 9]
	add	%r5, %r4, %r3
	lw	%r5, [%r5 + 0]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	lw	%r6, [%sp + 6]
	lw	%r27, [%sp + 7]
	add	%r3, %r0, %r5
	add	%r2, %r0, %r6
	sw	%ra, [%sp + 13]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 14
	jalr	%r26
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lw	%r1, [%sp + 8]
	lw	%r2, [%sp + 9]
	add	%r3, %r2, %r1
	lw	%r3, [%r3 + 0]
	lw	%r3, [%r3 + 0]
	lli	%r4, 0
	lli	%r5, 0
	lw	%r6, [%sp + 12]
	add	%r5, %r6, %r5
	lf	%f0, [%r5 + 0]
	add	%r4, %r3, %r4
	sf	%f0, [%r4 + 0]
	lli	%r4, 1
	lli	%r5, 1
	add	%r5, %r6, %r5
	lf	%f0, [%r5 + 0]
	add	%r4, %r3, %r4
	sf	%f0, [%r4 + 0]
	lli	%r4, 2
	lli	%r5, 2
	add	%r5, %r6, %r5
	lf	%f0, [%r5 + 0]
	add	%r3, %r3, %r4
	sf	%f0, [%r3 + 0]
	add	%r3, %r2, %r1
	lw	%r3, [%r3 + 0]
	lw	%r3, [%r3 + 6]
	lli	%r4, 0
	add	%r3, %r3, %r4
	lw	%r4, [%sp + 5]
	sw	%r4, [%r3 + 0]
	add	%r3, %r2, %r1
	lw	%r3, [%r3 + 0]
	lli	%r5, 0
	lw	%r27, [%sp + 4]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 13]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 14
	jalr	%r26
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r1, 1
	lw	%r2, [%sp + 8]
	sub	%r2, %r2, %r1
	lli	%r1, 1
	lw	%r3, [%sp + 5]
	add	%r1, %r3, %r1
	lli	%r3, 5
	bgt	%r3, %r1, bgt_else.13186
	lli	%r3, 5
	sub	%r3, %r1, %r3
	j	bgt_cont.13187
bgt_else.13186:
	add	%r3, %r0, %r1
bgt_cont.13187:
	lf	%f0, [%sp + 2]
	lf	%f1, [%sp + 1]
	lf	%f2, [%sp + 0]
	lw	%r1, [%sp + 9]
	lw	%r27, [%sp + 3]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.13185:
	jr	%ra
pretrace_line.2973:
	lw	%r4, [%r27 + 6]
	lw	%r5, [%r27 + 5]
	lw	%r6, [%r27 + 4]
	lw	%r7, [%r27 + 3]
	lw	%r8, [%r27 + 2]
	lw	%r9, [%r27 + 1]
	addi	%r6, %r6, 0
	lf	%f0, [%r6 + 0]
	addi	%r6, %r9, 1
	lw	%r6, [%r6 + 0]
	sub	%r2, %r2, %r6
	itof	%f1, %r2
	mulf	%f0, %f0, %f1
	addi	%r2, %r5, 0
	lf	%f1, [%r2 + 0]
	mulf	%f1, %f0, %f1
	addi	%r2, %r4, 0
	lf	%f2, [%r2 + 0]
	addf	%f1, %f1, %f2
	addi	%r2, %r5, 1
	lf	%f2, [%r2 + 0]
	mulf	%f2, %f0, %f2
	addi	%r2, %r4, 1
	lf	%f3, [%r2 + 0]
	addf	%f2, %f2, %f3
	addi	%r2, %r5, 2
	lf	%f3, [%r2 + 0]
	mulf	%f0, %f0, %f3
	addi	%r2, %r4, 2
	lf	%f3, [%r2 + 0]
	addf	%f0, %f0, %f3
	addi	%r2, %r8, 0
	lw	%r2, [%r2 + 0]
	subi	%r2, %r2, 1
	add	%r27, %r0, %r7
	movf	%f31, %f2
	movf	%f2, %f0
	movf	%f0, %f1
	movf	%f1, %f31
	lw	%r26, [%r27 + 0]
	jr	%r26
scan_pixel.2977:
	lw	%r6, [%r27 + 5]
	lw	%r7, [%r27 + 4]
	lw	%r8, [%r27 + 3]
	lw	%r9, [%r27 + 2]
	lw	%r10, [%r27 + 1]
	addi	%r11, %r8, 0
	lw	%r11, [%r11 + 0]
	bgt	%r11, %r1, bgt_else.13189
	jr	%ra
bgt_else.13189:
	add	%r11, %r4, %r1
	lw	%r11, [%r11 + 0]
	lw	%r11, [%r11 + 0]
	lli	%r12, 0
	lli	%r13, 0
	add	%r13, %r11, %r13
	lf	%f0, [%r13 + 0]
	add	%r12, %r7, %r12
	sf	%f0, [%r12 + 0]
	lli	%r12, 1
	lli	%r13, 1
	add	%r13, %r11, %r13
	lf	%f0, [%r13 + 0]
	add	%r12, %r7, %r12
	sf	%f0, [%r12 + 0]
	lli	%r12, 2
	lli	%r13, 2
	add	%r11, %r11, %r13
	lf	%f0, [%r11 + 0]
	add	%r11, %r7, %r12
	sf	%f0, [%r11 + 0]
	lli	%r11, 1
	add	%r11, %r8, %r11
	lw	%r11, [%r11 + 0]
	lli	%r12, 1
	add	%r12, %r2, %r12
	bgt	%r11, %r12, bgt_else.13191
	lli	%r8, 0
	j	bgt_cont.13192
bgt_else.13191:
	lli	%r11, 0
	bgt	%r2, %r11, bgt_else.13193
	lli	%r8, 0
	j	bgt_cont.13194
bgt_else.13193:
	lli	%r11, 0
	add	%r8, %r8, %r11
	lw	%r8, [%r8 + 0]
	lli	%r11, 1
	add	%r11, %r1, %r11
	bgt	%r8, %r11, bgt_else.13195
	lli	%r8, 0
	j	bgt_cont.13196
bgt_else.13195:
	lli	%r8, 0
	bgt	%r1, %r8, bgt_else.13197
	lli	%r8, 0
	j	bgt_cont.13198
bgt_else.13197:
	lli	%r8, 1
bgt_cont.13198:
bgt_cont.13196:
bgt_cont.13194:
bgt_cont.13192:
	lli	%r11, 0
	sw	%r5, [%sp + 0]
	sw	%r4, [%sp + 1]
	sw	%r3, [%sp + 2]
	sw	%r2, [%sp + 3]
	sw	%r27, [%sp + 4]
	sw	%r1, [%sp + 5]
	sw	%r7, [%sp + 6]
	bneq	%r8, %r11, bneq_else.13199
	add	%r6, %r4, %r1
	lw	%r6, [%r6 + 0]
	lli	%r8, 0
	lw	%r11, [%r6 + 2]
	lli	%r12, 0
	add	%r11, %r11, %r8
	lw	%r11, [%r11 + 0]
	bgt	%r12, %r11, bgt_else.13201
	lw	%r11, [%r6 + 3]
	add	%r11, %r11, %r8
	lw	%r11, [%r11 + 0]
	lli	%r12, 0
	sw	%r6, [%sp + 7]
	sw	%r9, [%sp + 8]
	bneq	%r11, %r12, bneq_else.13203
	j	bneq_cont.13204
bneq_else.13203:
	add	%r2, %r0, %r8
	add	%r1, %r0, %r6
	add	%r27, %r0, %r10
	sw	%ra, [%sp + 9]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 10
	jalr	%r26
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
bneq_cont.13204:
	lli	%r2, 1
	lw	%r1, [%sp + 7]
	lw	%r27, [%sp + 8]
	sw	%ra, [%sp + 9]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 10
	jalr	%r26
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	j	bgt_cont.13202
bgt_else.13201:
bgt_cont.13202:
	j	bneq_cont.13200
bneq_else.13199:
	lli	%r8, 0
	add	%r27, %r0, %r6
	add	%r6, %r0, %r8
	sw	%ra, [%sp + 9]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 10
	jalr	%r26
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
bneq_cont.13200:
	lli	%r1, 0
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	ftoi	%r1, %f0
	lli	%r3, 255
	bgt	%r1, %r3, bgt_else.13205
	lli	%r3, 0
	bgt	%r3, %r1, bgt_else.13207
	j	bgt_cont.13208
bgt_else.13207:
	lli	%r1, 0
bgt_cont.13208:
	j	bgt_cont.13206
bgt_else.13205:
	lli	%r1, 255
bgt_cont.13206:
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	print_int.2514
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r1, 32
	sendc	%r1
	lli	%r1, 1
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	ftoi	%r1, %f0
	lli	%r3, 255
	bgt	%r1, %r3, bgt_else.13209
	lli	%r3, 0
	bgt	%r3, %r1, bgt_else.13211
	j	bgt_cont.13212
bgt_else.13211:
	lli	%r1, 0
bgt_cont.13212:
	j	bgt_cont.13210
bgt_else.13209:
	lli	%r1, 255
bgt_cont.13210:
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	print_int.2514
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r1, 32
	sendc	%r1
	lli	%r1, 2
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	ftoi	%r1, %f0
	lli	%r2, 255
	bgt	%r1, %r2, bgt_else.13213
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.13215
	j	bgt_cont.13216
bgt_else.13215:
	lli	%r1, 0
bgt_cont.13216:
	j	bgt_cont.13214
bgt_else.13213:
	lli	%r1, 255
bgt_cont.13214:
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	print_int.2514
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r1, 10
	sendc	%r1
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 3]
	lw	%r3, [%sp + 2]
	lw	%r4, [%sp + 1]
	lw	%r5, [%sp + 0]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
scan_line.2983:
	lw	%r6, [%r27 + 3]
	lw	%r7, [%r27 + 2]
	lw	%r8, [%r27 + 1]
	addi	%r9, %r8, 1
	lw	%r9, [%r9 + 0]
	bgt	%r9, %r1, bgt_else.13217
	jr	%ra
bgt_else.13217:
	lli	%r9, 1
	add	%r8, %r8, %r9
	lw	%r8, [%r8 + 0]
	lli	%r9, 1
	sub	%r8, %r8, %r9
	sw	%r27, [%sp + 0]
	sw	%r5, [%sp + 1]
	sw	%r4, [%sp + 2]
	sw	%r3, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%r1, [%sp + 5]
	sw	%r6, [%sp + 6]
	bgt	%r8, %r1, bgt_else.13219
	j	bgt_cont.13220
bgt_else.13219:
	lli	%r8, 1
	add	%r8, %r1, %r8
	add	%r3, %r0, %r5
	add	%r2, %r0, %r8
	add	%r1, %r0, %r4
	add	%r27, %r0, %r7
	sw	%ra, [%sp + 7]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 8
	jalr	%r26
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
bgt_cont.13220:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	lw	%r3, [%sp + 4]
	lw	%r4, [%sp + 3]
	lw	%r5, [%sp + 2]
	lw	%r27, [%sp + 6]
	sw	%ra, [%sp + 7]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 8
	jalr	%r26
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lli	%r2, 2
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lli	%r3, 5
	bgt	%r3, %r2, bgt_else.13221
	lli	%r3, 5
	sub	%r5, %r2, %r3
	j	bgt_cont.13222
bgt_else.13221:
	add	%r5, %r0, %r2
bgt_cont.13222:
	lw	%r2, [%sp + 3]
	lw	%r3, [%sp + 2]
	lw	%r4, [%sp + 4]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
create_float5x3array.2989:
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r2, %r0, %hp
	addi	%hp, %hp, 3
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	add	%r2, %r0, %r1
	lli	%r1, 5
	add	%r3, %r0, %hp
	addi	%hp, %hp, 5
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj.create_array_loop
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 0]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lw	%r2, [%sp + 0]
	addi	%r3, %r2, 1
	sw	%r1, [%r3 + 0]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lw	%r2, [%sp + 0]
	addi	%r3, %r2, 2
	sw	%r1, [%r3 + 0]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lw	%r2, [%sp + 0]
	addi	%r3, %r2, 3
	sw	%r1, [%r3 + 0]
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r3, %r0, %hp
	addi	%hp, %hp, 3
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lw	%r2, [%sp + 0]
	addi	%r3, %r2, 4
	sw	%r1, [%r3 + 0]
	add	%r1, %r0, %r2
	jr	%ra
create_pixel.2991:
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r2, %r0, %hp
	addi	%hp, %hp, 3
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	create_float5x3array.2989
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, 5
	lli	%r3, 0
	add	%r4, %r0, %hp
	addi	%hp, %hp, 5
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj.create_array_loop
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 5
	lli	%r3, 0
	add	%r4, %r0, %hp
	addi	%hp, %hp, 5
	sw	%r1, [%sp + 2]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj.create_array_loop
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	sw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	create_float5x3array.2989
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	sw	%r1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	create_float5x3array.2989
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 1
	lli	%r3, 0
	add	%r4, %r0, %hp
	addi	%hp, %hp, 1
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj.create_array_loop
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	sw	%r1, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	create_float5x3array.2989
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 8
	sw	%r1, [%r2 + 7]
	lw	%r1, [%sp + 6]
	sw	%r1, [%r2 + 6]
	lw	%r1, [%sp + 5]
	sw	%r1, [%r2 + 5]
	lw	%r1, [%sp + 4]
	sw	%r1, [%r2 + 4]
	lw	%r1, [%sp + 3]
	sw	%r1, [%r2 + 3]
	lw	%r1, [%sp + 2]
	sw	%r1, [%r2 + 2]
	lw	%r1, [%sp + 1]
	sw	%r1, [%r2 + 1]
	lw	%r1, [%sp + 0]
	sw	%r1, [%r2 + 0]
	add	%r1, %r0, %r2
	jr	%ra
init_line_elements.2993:
	lli	%r3, 0
	bgt	%r3, %r2, bgt_else.13223
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	create_pixel.2991
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r2, [%sp + 0]
	lw	%r3, [%sp + 1]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	sub	%r1, %r2, %r1
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.13224
	sw	%r1, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	create_pixel.2991
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lw	%r2, [%sp + 2]
	lw	%r3, [%sp + 1]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	sub	%r1, %r2, %r1
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.13225
	sw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	create_pixel.2991
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r2, [%sp + 3]
	lw	%r3, [%sp + 1]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	sub	%r1, %r2, %r1
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.13226
	sw	%r1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	create_pixel.2991
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 1]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	sub	%r2, %r2, %r1
	add	%r1, %r0, %r3
	j	init_line_elements.2993
bgt_else.13226:
	add	%r1, %r0, %r3
	jr	%ra
bgt_else.13225:
	add	%r1, %r0, %r3
	jr	%ra
bgt_else.13224:
	add	%r1, %r0, %r3
	jr	%ra
bgt_else.13223:
	jr	%ra
calc_dirvec.3003:
	lw	%r4, [%r27 + 1]
	lli	%r5, 5
	bgt	%r5, %r1, bgt_else.13227
	mulf	%f2, %f0, %f0
	mulf	%f3, %f1, %f1
	addf	%f2, %f2, %f3
	llif	%f3, 1.000000
	lhif	%f3, 1.000000
	addf	%f2, %f2, %f3
	sqrt	%f2, %f2
	divf	%f0, %f0, %f2
	divf	%f1, %f1, %f2
	llif	%f3, 1.000000
	lhif	%f3, 1.000000
	divf	%f2, %f3, %f2
	add	%r1, %r4, %r2
	lw	%r1, [%r1 + 0]
	add	%r2, %r1, %r3
	lw	%r2, [%r2 + 0]
	lw	%r2, [%r2 + 0]
	lli	%r4, 0
	add	%r4, %r2, %r4
	sf	%f0, [%r4 + 0]
	lli	%r4, 1
	add	%r4, %r2, %r4
	sf	%f1, [%r4 + 0]
	lli	%r4, 2
	add	%r2, %r2, %r4
	sf	%f2, [%r2 + 0]
	lli	%r2, 40
	add	%r2, %r3, %r2
	add	%r2, %r1, %r2
	lw	%r2, [%r2 + 0]
	lw	%r2, [%r2 + 0]
	negf	%f3, %f1
	lli	%r4, 0
	add	%r4, %r2, %r4
	sf	%f0, [%r4 + 0]
	lli	%r4, 1
	add	%r4, %r2, %r4
	sf	%f2, [%r4 + 0]
	lli	%r4, 2
	add	%r2, %r2, %r4
	sf	%f3, [%r2 + 0]
	lli	%r2, 80
	add	%r2, %r3, %r2
	add	%r2, %r1, %r2
	lw	%r2, [%r2 + 0]
	lw	%r2, [%r2 + 0]
	negf	%f3, %f0
	negf	%f4, %f1
	lli	%r4, 0
	add	%r4, %r2, %r4
	sf	%f2, [%r4 + 0]
	lli	%r4, 1
	add	%r4, %r2, %r4
	sf	%f3, [%r4 + 0]
	lli	%r4, 2
	add	%r2, %r2, %r4
	sf	%f4, [%r2 + 0]
	lli	%r2, 1
	add	%r2, %r3, %r2
	add	%r2, %r1, %r2
	lw	%r2, [%r2 + 0]
	lw	%r2, [%r2 + 0]
	negf	%f3, %f0
	negf	%f4, %f1
	negf	%f5, %f2
	lli	%r4, 0
	add	%r4, %r2, %r4
	sf	%f3, [%r4 + 0]
	lli	%r4, 1
	add	%r4, %r2, %r4
	sf	%f4, [%r4 + 0]
	lli	%r4, 2
	add	%r2, %r2, %r4
	sf	%f5, [%r2 + 0]
	lli	%r2, 41
	add	%r2, %r3, %r2
	add	%r2, %r1, %r2
	lw	%r2, [%r2 + 0]
	lw	%r2, [%r2 + 0]
	negf	%f3, %f0
	negf	%f4, %f2
	lli	%r4, 0
	add	%r4, %r2, %r4
	sf	%f3, [%r4 + 0]
	lli	%r4, 1
	add	%r4, %r2, %r4
	sf	%f4, [%r4 + 0]
	lli	%r4, 2
	add	%r2, %r2, %r4
	sf	%f1, [%r2 + 0]
	lli	%r2, 81
	add	%r2, %r3, %r2
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lw	%r1, [%r1 + 0]
	negf	%f2, %f2
	lli	%r2, 0
	add	%r2, %r1, %r2
	sf	%f2, [%r2 + 0]
	lli	%r2, 1
	add	%r2, %r1, %r2
	sf	%f0, [%r2 + 0]
	lli	%r2, 2
	add	%r1, %r1, %r2
	sf	%f1, [%r1 + 0]
	jr	%ra
bgt_else.13227:
	mulf	%f0, %f1, %f1
	llif	%f1, 0.100000
	lhif	%f1, 0.100000
	addf	%f0, %f0, %f1
	sqrt	%f0, %f0
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	divf	%f1, %f1, %f0
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r27, [%sp + 2]
	sf	%f3, [%sp + 3]
	sw	%r1, [%sp + 4]
	sf	%f0, [%sp + 5]
	sf	%f2, [%sp + 6]
	movf	%f0, %f1
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	atan.2520
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lf	%f1, [%sp + 6]
	mulf	%f0, %f0, %f1
	sf	%f0, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	sin.2516
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lf	%f1, [%sp + 7]
	sf	%f0, [%sp + 8]
	movf	%f0, %f1
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	cos.2518
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lf	%f1, [%sp + 8]
	divf	%f0, %f1, %f0
	lf	%f1, [%sp + 5]
	mulf	%f0, %f0, %f1
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	mulf	%f1, %f0, %f0
	llif	%f2, 0.100000
	lhif	%f2, 0.100000
	addf	%f1, %f1, %f2
	sqrt	%f1, %f1
	llif	%f2, 1.000000
	lhif	%f2, 1.000000
	divf	%f2, %f2, %f1
	sf	%f0, [%sp + 9]
	sw	%r1, [%sp + 10]
	sf	%f1, [%sp + 11]
	movf	%f0, %f2
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	atan.2520
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lf	%f1, [%sp + 3]
	mulf	%f0, %f0, %f1
	sf	%f0, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	sin.2516
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lf	%f1, [%sp + 12]
	sf	%f0, [%sp + 13]
	movf	%f0, %f1
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	cos.2518
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lf	%f1, [%sp + 13]
	divf	%f0, %f1, %f0
	lf	%f1, [%sp + 11]
	mulf	%f1, %f0, %f1
	lf	%f0, [%sp + 9]
	lf	%f2, [%sp + 6]
	lf	%f3, [%sp + 3]
	lw	%r1, [%sp + 10]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
calc_dirvecs.3011:
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.13229
	itof	%f1, %r1
	llif	%f2, 0.200000
	lhif	%f2, 0.200000
	mulf	%f1, %f1, %f2
	llif	%f2, 0.900000
	lhif	%f2, 0.900000
	subf	%f2, %f1, %f2
	lli	%r5, 0
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	llif	%f3, 0.000000
	lhif	%f3, 0.000000
	sw	%r27, [%sp + 0]
	sf	%f0, [%sp + 1]
	sw	%r2, [%sp + 2]
	sw	%r4, [%sp + 3]
	sw	%r3, [%sp + 4]
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r5
	add	%r27, %r0, %r4
	movf	%f31, %f3
	movf	%f3, %f0
	movf	%f0, %f1
	movf	%f1, %f31
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r1, [%sp + 5]
	itof	%f0, %r1
	llif	%f1, 0.200000
	lhif	%f1, 0.200000
	mulf	%f0, %f0, %f1
	llif	%f1, 0.100000
	lhif	%f1, 0.100000
	addf	%f2, %f0, %f1
	lli	%r2, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	lli	%r3, 2
	lw	%r4, [%sp + 4]
	add	%r3, %r4, %r3
	lf	%f3, [%sp + 1]
	lw	%r5, [%sp + 2]
	lw	%r27, [%sp + 3]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r5
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	sub	%r1, %r2, %r1
	lli	%r2, 1
	lw	%r3, [%sp + 2]
	add	%r2, %r3, %r2
	lli	%r3, 5
	bgt	%r3, %r2, bgt_else.13230
	lli	%r3, 5
	sub	%r2, %r2, %r3
	j	bgt_cont.13231
bgt_else.13230:
bgt_cont.13231:
	lf	%f0, [%sp + 1]
	lw	%r3, [%sp + 4]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.13229:
	jr	%ra
calc_dirvec_rows.3016:
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.13233
	itof	%f0, %r1
	llif	%f1, 0.200000
	lhif	%f1, 0.200000
	mulf	%f0, %f0, %f1
	llif	%f1, 0.900000
	lhif	%f1, 0.900000
	subf	%f0, %f0, %f1
	lli	%r5, 4
	sw	%r27, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r2, [%sp + 2]
	sw	%r1, [%sp + 3]
	add	%r1, %r0, %r5
	add	%r27, %r0, %r4
	sw	%ra, [%sp + 4]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 5
	jalr	%r26
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	sub	%r1, %r2, %r1
	lli	%r2, 2
	lw	%r3, [%sp + 2]
	add	%r2, %r3, %r2
	lli	%r3, 5
	bgt	%r3, %r2, bgt_else.13234
	lli	%r3, 5
	sub	%r2, %r2, %r3
	j	bgt_cont.13235
bgt_else.13234:
bgt_cont.13235:
	lli	%r3, 4
	lw	%r4, [%sp + 1]
	add	%r3, %r4, %r3
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.13233:
	jr	%ra
create_dirvec_elements.3022:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r2, bgt_else.13237
	lli	%r4, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r5, %r0, %hp
	add	%hp, %hp, %r4
	sw	%r27, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%r3, [%sp + 3]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	add	%r2, %r0, %r1
	lli	%r1, 0
	lw	%r3, [%sp + 3]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	add	%r4, %r0, %hp
	add	%hp, %hp, %r1
	sw	%r2, [%sp + 4]
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj.create_array_loop
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r2 + 1]
	lw	%r1, [%sp + 4]
	sw	%r1, [%r2 + 0]
	add	%r1, %r0, %r2
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 2]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	sub	%r1, %r2, %r1
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.13238
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r4, %r0, %hp
	add	%hp, %hp, %r2
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r4
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	add	%r2, %r0, %r1
	lli	%r1, 0
	lw	%r3, [%sp + 3]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	add	%r3, %r0, %hp
	add	%hp, %hp, %r1
	sw	%r2, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj.create_array_loop
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r2 + 1]
	lw	%r1, [%sp + 6]
	sw	%r1, [%r2 + 0]
	add	%r1, %r0, %r2
	lw	%r2, [%sp + 5]
	lw	%r3, [%sp + 2]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	sub	%r2, %r2, %r1
	lw	%r27, [%sp + 0]
	add	%r1, %r0, %r3
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.13238:
	jr	%ra
bgt_else.13237:
	jr	%ra
create_dirvecs.3025:
	lw	%r2, [%r27 + 3]
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.13241
	lli	%r5, 120
	lli	%r6, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r7, %r0, %hp
	add	%hp, %hp, %r6
	sw	%r27, [%sp + 0]
	sw	%r4, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%r3, [%sp + 3]
	sw	%r5, [%sp + 4]
	sw	%r2, [%sp + 5]
	add	%r2, %r0, %r7
	add	%r1, %r0, %r6
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	add	%r2, %r0, %r1
	lli	%r1, 0
	lw	%r3, [%sp + 5]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	add	%r4, %r0, %hp
	add	%hp, %hp, %r1
	sw	%r2, [%sp + 6]
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj.create_array_loop
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r2 + 1]
	lw	%r1, [%sp + 6]
	sw	%r1, [%r2 + 0]
	add	%r3, %r0, %hp
	lw	%r1, [%sp + 4]
	add	%hp, %hp, %r1
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj.create_array_loop
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r2, [%sp + 2]
	lw	%r3, [%sp + 3]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	add	%r1, %r3, %r2
	lw	%r1, [%r1 + 0]
	lli	%r4, 118
	lli	%r5, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r6, %r0, %hp
	add	%hp, %hp, %r5
	sw	%r4, [%sp + 7]
	sw	%r1, [%sp + 8]
	add	%r2, %r0, %r6
	add	%r1, %r0, %r5
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	add	%r2, %r0, %r1
	lli	%r1, 0
	lw	%r3, [%sp + 5]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	add	%r4, %r0, %hp
	add	%hp, %hp, %r1
	sw	%r2, [%sp + 9]
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	yj.create_array_loop
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r2 + 1]
	lw	%r1, [%sp + 9]
	sw	%r1, [%r2 + 0]
	add	%r1, %r0, %r2
	lw	%r2, [%sp + 7]
	lw	%r3, [%sp + 8]
	add	%r2, %r3, %r2
	sw	%r1, [%r2 + 0]
	lli	%r2, 117
	lw	%r27, [%sp + 1]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 10]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 11
	jalr	%r26
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r1, 1
	lw	%r2, [%sp + 2]
	sub	%r1, %r2, %r1
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.13242
	lli	%r2, 120
	lli	%r3, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	add	%r4, %r0, %hp
	add	%hp, %hp, %r3
	sw	%r1, [%sp + 10]
	sw	%r2, [%sp + 11]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	add	%r2, %r0, %r1
	lli	%r1, 0
	lw	%r3, [%sp + 5]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	add	%r3, %r0, %hp
	add	%hp, %hp, %r1
	sw	%r2, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	yj.create_array_loop
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r2 + 1]
	lw	%r1, [%sp + 12]
	sw	%r1, [%r2 + 0]
	add	%r3, %r0, %hp
	lw	%r1, [%sp + 11]
	add	%hp, %hp, %r1
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	yj.create_array_loop
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lw	%r2, [%sp + 10]
	lw	%r3, [%sp + 3]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	add	%r1, %r3, %r2
	lw	%r1, [%r1 + 0]
	lli	%r3, 118
	lw	%r27, [%sp + 1]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 13]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 14
	jalr	%r26
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r1, 1
	lw	%r2, [%sp + 10]
	sub	%r1, %r2, %r1
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.13242:
	jr	%ra
bgt_else.13241:
	jr	%ra
init_dirvec_constants.3027:
	lw	%r3, [%r27 + 3]
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	lli	%r6, 0
	bgt	%r6, %r2, bgt_else.13245
	add	%r6, %r1, %r2
	lw	%r6, [%r6 + 0]
	lli	%r7, 0
	add	%r7, %r4, %r7
	lw	%r7, [%r7 + 0]
	lli	%r8, 1
	sub	%r7, %r7, %r8
	lli	%r8, 0
	sw	%r27, [%sp + 0]
	sw	%r5, [%sp + 1]
	sw	%r3, [%sp + 2]
	sw	%r4, [%sp + 3]
	sw	%r1, [%sp + 4]
	sw	%r2, [%sp + 5]
	bgt	%r8, %r7, bgt_else.13246
	add	%r8, %r3, %r7
	lw	%r8, [%r8 + 0]
	lw	%r9, [%r6 + 1]
	lw	%r10, [%r6 + 0]
	lw	%r11, [%r8 + 1]
	lli	%r12, 1
	sw	%r6, [%sp + 6]
	bneq	%r11, %r12, bneq_else.13248
	sw	%r7, [%sp + 7]
	sw	%r9, [%sp + 8]
	add	%r2, %r0, %r8
	add	%r1, %r0, %r10
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	setup_rect_table.2800
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r2, [%sp + 7]
	lw	%r3, [%sp + 8]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13249
bneq_else.13248:
	lli	%r12, 2
	bneq	%r11, %r12, bneq_else.13250
	sw	%r7, [%sp + 7]
	sw	%r9, [%sp + 8]
	add	%r2, %r0, %r8
	add	%r1, %r0, %r10
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	setup_surface_table.2803
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r2, [%sp + 7]
	lw	%r3, [%sp + 8]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13251
bneq_else.13250:
	sw	%r7, [%sp + 7]
	sw	%r9, [%sp + 8]
	add	%r2, %r0, %r8
	add	%r1, %r0, %r10
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	setup_second_table.2806
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r2, [%sp + 7]
	lw	%r3, [%sp + 8]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
bneq_cont.13251:
bneq_cont.13249:
	lli	%r1, 1
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 6]
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 9]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 10
	jalr	%r26
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	j	bgt_cont.13247
bgt_else.13246:
bgt_cont.13247:
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	sub	%r1, %r2, %r1
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.13252
	lw	%r2, [%sp + 4]
	add	%r3, %r2, %r1
	lw	%r3, [%r3 + 0]
	lli	%r4, 0
	lw	%r5, [%sp + 3]
	add	%r4, %r5, %r4
	lw	%r4, [%r4 + 0]
	lli	%r5, 1
	sub	%r4, %r4, %r5
	lli	%r5, 0
	sw	%r1, [%sp + 9]
	bgt	%r5, %r4, bgt_else.13253
	lw	%r5, [%sp + 2]
	add	%r5, %r5, %r4
	lw	%r5, [%r5 + 0]
	lw	%r6, [%r3 + 1]
	lw	%r7, [%r3 + 0]
	lw	%r8, [%r5 + 1]
	lli	%r9, 1
	sw	%r3, [%sp + 10]
	bneq	%r8, %r9, bneq_else.13255
	sw	%r4, [%sp + 11]
	sw	%r6, [%sp + 12]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r7
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	setup_rect_table.2800
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lw	%r2, [%sp + 11]
	lw	%r3, [%sp + 12]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13256
bneq_else.13255:
	lli	%r9, 2
	bneq	%r8, %r9, bneq_else.13257
	sw	%r4, [%sp + 11]
	sw	%r6, [%sp + 12]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r7
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	setup_surface_table.2803
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lw	%r2, [%sp + 11]
	lw	%r3, [%sp + 12]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13258
bneq_else.13257:
	sw	%r4, [%sp + 11]
	sw	%r6, [%sp + 12]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r7
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	setup_second_table.2806
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lw	%r2, [%sp + 11]
	lw	%r3, [%sp + 12]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
bneq_cont.13258:
bneq_cont.13256:
	lli	%r1, 1
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 10]
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 13]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 14
	jalr	%r26
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	j	bgt_cont.13254
bgt_else.13253:
bgt_cont.13254:
	lli	%r1, 1
	lw	%r2, [%sp + 9]
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 4]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.13252:
	jr	%ra
bgt_else.13245:
	jr	%ra
init_vecset_constants.3030:
	lw	%r2, [%r27 + 5]
	lw	%r3, [%r27 + 4]
	lw	%r4, [%r27 + 3]
	lw	%r5, [%r27 + 2]
	lw	%r6, [%r27 + 1]
	lli	%r7, 0
	bgt	%r7, %r1, bgt_else.13261
	add	%r7, %r6, %r1
	lw	%r7, [%r7 + 0]
	lli	%r8, 119
	add	%r8, %r7, %r8
	lw	%r8, [%r8 + 0]
	lli	%r9, 0
	add	%r3, %r3, %r9
	lw	%r3, [%r3 + 0]
	lli	%r9, 1
	sub	%r3, %r3, %r9
	lli	%r9, 0
	sw	%r27, [%sp + 0]
	sw	%r6, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%r7, [%sp + 3]
	sw	%r5, [%sp + 4]
	bgt	%r9, %r3, bgt_else.13262
	add	%r2, %r2, %r3
	lw	%r2, [%r2 + 0]
	lw	%r9, [%r8 + 1]
	lw	%r10, [%r8 + 0]
	lw	%r11, [%r2 + 1]
	lli	%r12, 1
	sw	%r8, [%sp + 5]
	sw	%r4, [%sp + 6]
	bneq	%r11, %r12, bneq_else.13264
	sw	%r3, [%sp + 7]
	sw	%r9, [%sp + 8]
	add	%r1, %r0, %r10
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	setup_rect_table.2800
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r2, [%sp + 7]
	lw	%r3, [%sp + 8]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13265
bneq_else.13264:
	lli	%r12, 2
	bneq	%r11, %r12, bneq_else.13266
	sw	%r3, [%sp + 7]
	sw	%r9, [%sp + 8]
	add	%r1, %r0, %r10
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	setup_surface_table.2803
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r2, [%sp + 7]
	lw	%r3, [%sp + 8]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13267
bneq_else.13266:
	sw	%r3, [%sp + 7]
	sw	%r9, [%sp + 8]
	add	%r1, %r0, %r10
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	setup_second_table.2806
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r2, [%sp + 7]
	lw	%r3, [%sp + 8]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
bneq_cont.13267:
bneq_cont.13265:
	lli	%r1, 1
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 5]
	lw	%r27, [%sp + 6]
	sw	%ra, [%sp + 9]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 10
	jalr	%r26
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	j	bgt_cont.13263
bgt_else.13262:
bgt_cont.13263:
	lli	%r2, 118
	lw	%r1, [%sp + 3]
	lw	%r27, [%sp + 4]
	sw	%ra, [%sp + 9]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 10
	jalr	%r26
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r1, 1
	lw	%r2, [%sp + 2]
	sub	%r1, %r2, %r1
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.13268
	lw	%r2, [%sp + 1]
	add	%r2, %r2, %r1
	lw	%r2, [%r2 + 0]
	lli	%r3, 119
	lw	%r27, [%sp + 4]
	sw	%r1, [%sp + 9]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 10]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 11
	jalr	%r26
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r1, 1
	lw	%r2, [%sp + 9]
	sub	%r1, %r2, %r1
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.13268:
	jr	%ra
bgt_else.13261:
	jr	%ra
setup_rect_reflection.3041:
	lw	%r3, [%r27 + 6]
	lw	%r4, [%r27 + 5]
	lw	%r5, [%r27 + 4]
	lw	%r6, [%r27 + 3]
	lw	%r7, [%r27 + 2]
	lw	%r8, [%r27 + 1]
	lli	%r9, 4
	mul	%r1, %r1, %r9
	addi	%r9, %r5, 0
	lw	%r9, [%r9 + 0]
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lw	%r2, [%r2 + 7]
	addi	%r2, %r2, 0
	lf	%f1, [%r2 + 0]
	subf	%f0, %f0, %f1
	addi	%r2, %r7, 0
	lf	%f1, [%r2 + 0]
	negf	%f1, %f1
	addi	%r2, %r7, 1
	lf	%f2, [%r2 + 0]
	negf	%f2, %f2
	addi	%r2, %r7, 2
	lf	%f3, [%r2 + 0]
	negf	%f3, %f3
	addi	%r2, %r1, 1
	addi	%r10, %r7, 0
	lf	%f4, [%r10 + 0]
	lli	%r10, 3
	llif	%f5, 0.000000
	lhif	%f5, 0.000000
	add	%r11, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r5, [%sp + 0]
	sf	%f1, [%sp + 1]
	sw	%r7, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%r9, [%sp + 4]
	sw	%r3, [%sp + 5]
	sw	%r2, [%sp + 6]
	sf	%f0, [%sp + 7]
	sw	%r8, [%sp + 8]
	sw	%r4, [%sp + 9]
	sf	%f3, [%sp + 10]
	sf	%f2, [%sp + 11]
	sf	%f4, [%sp + 12]
	sw	%r6, [%sp + 13]
	add	%r2, %r0, %r11
	add	%r1, %r0, %r10
	movf	%f0, %f5
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 13]
	addi	%r3, %r1, 0
	lw	%r3, [%r3 + 0]
	add	%r4, %r0, %hp
	add	%hp, %hp, %r3
	sw	%r2, [%sp + 14]
	add	%r1, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	yj.create_array_loop
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r2 + 1]
	lw	%r3, [%sp + 14]
	sw	%r3, [%r2 + 0]
	addi	%r4, %r3, 0
	lf	%f0, [%sp + 12]
	sf	%f0, [%r4 + 0]
	addi	%r4, %r3, 1
	lf	%f0, [%sp + 11]
	sf	%f0, [%r4 + 0]
	addi	%r4, %r3, 2
	lf	%f1, [%sp + 10]
	sf	%f1, [%r4 + 0]
	lw	%r4, [%sp + 13]
	addi	%r5, %r4, 0
	lw	%r5, [%r5 + 0]
	subi	%r5, %r5, 1
	lli	%r6, 0
	sw	%r2, [%sp + 15]
	bgt	%r6, %r5, bgt_else.13271
	lw	%r6, [%sp + 9]
	add	%r7, %r6, %r5
	lw	%r7, [%r7 + 0]
	lw	%r8, [%r7 + 1]
	lli	%r9, 1
	bneq	%r8, %r9, bneq_else.13273
	sw	%r5, [%sp + 16]
	sw	%r1, [%sp + 17]
	add	%r2, %r0, %r7
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	setup_rect_table.2800
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lw	%r2, [%sp + 16]
	lw	%r3, [%sp + 17]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13274
bneq_else.13273:
	lli	%r9, 2
	bneq	%r8, %r9, bneq_else.13275
	sw	%r5, [%sp + 16]
	sw	%r1, [%sp + 17]
	add	%r2, %r0, %r7
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	setup_surface_table.2803
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lw	%r2, [%sp + 16]
	lw	%r3, [%sp + 17]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13276
bneq_else.13275:
	sw	%r5, [%sp + 16]
	sw	%r1, [%sp + 17]
	add	%r2, %r0, %r7
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	setup_second_table.2806
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lw	%r2, [%sp + 16]
	lw	%r3, [%sp + 17]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
bneq_cont.13276:
bneq_cont.13274:
	lli	%r1, 1
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 15]
	lw	%r27, [%sp + 8]
	sw	%ra, [%sp + 18]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 19
	jalr	%r26
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	j	bgt_cont.13272
bgt_else.13271:
bgt_cont.13272:
	add	%r1, %r0, %hp
	addi	%hp, %hp, 3
	lf	%f0, [%sp + 7]
	sf	%f0, [%r1 + 2]
	lw	%r2, [%sp + 15]
	sw	%r2, [%r1 + 1]
	lw	%r2, [%sp + 6]
	sw	%r2, [%r1 + 0]
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 5]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	addi	%r1, %r2, 1
	lw	%r4, [%sp + 3]
	addi	%r5, %r4, 2
	lw	%r6, [%sp + 2]
	addi	%r7, %r6, 1
	lf	%f1, [%r7 + 0]
	lli	%r7, 3
	llif	%f2, 0.000000
	lhif	%f2, 0.000000
	add	%r8, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r1, [%sp + 18]
	sw	%r5, [%sp + 19]
	sf	%f1, [%sp + 20]
	add	%r2, %r0, %r8
	add	%r1, %r0, %r7
	movf	%f0, %f2
	sw	%ra, [%sp + 21]
	addi	%sp, %sp, 22
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 22
	lw	%ra, [%sp + 21]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 13]
	addi	%r3, %r1, 0
	lw	%r3, [%r3 + 0]
	add	%r4, %r0, %hp
	add	%hp, %hp, %r3
	sw	%r2, [%sp + 21]
	add	%r1, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	yj.create_array_loop
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r2 + 1]
	lw	%r3, [%sp + 21]
	sw	%r3, [%r2 + 0]
	addi	%r4, %r3, 0
	lf	%f0, [%sp + 1]
	sf	%f0, [%r4 + 0]
	addi	%r4, %r3, 1
	lf	%f1, [%sp + 20]
	sf	%f1, [%r4 + 0]
	addi	%r4, %r3, 2
	lf	%f1, [%sp + 10]
	sf	%f1, [%r4 + 0]
	lw	%r4, [%sp + 13]
	addi	%r5, %r4, 0
	lw	%r5, [%r5 + 0]
	subi	%r5, %r5, 1
	lli	%r6, 0
	sw	%r2, [%sp + 22]
	bgt	%r6, %r5, bgt_else.13277
	lw	%r6, [%sp + 9]
	add	%r7, %r6, %r5
	lw	%r7, [%r7 + 0]
	lw	%r8, [%r7 + 1]
	lli	%r9, 1
	bneq	%r8, %r9, bneq_else.13279
	sw	%r5, [%sp + 23]
	sw	%r1, [%sp + 24]
	add	%r2, %r0, %r7
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	setup_rect_table.2800
	subi	%sp, %sp, 26
	lw	%ra, [%sp + 25]
	lw	%r2, [%sp + 23]
	lw	%r3, [%sp + 24]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13280
bneq_else.13279:
	lli	%r9, 2
	bneq	%r8, %r9, bneq_else.13281
	sw	%r5, [%sp + 23]
	sw	%r1, [%sp + 24]
	add	%r2, %r0, %r7
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	setup_surface_table.2803
	subi	%sp, %sp, 26
	lw	%ra, [%sp + 25]
	lw	%r2, [%sp + 23]
	lw	%r3, [%sp + 24]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13282
bneq_else.13281:
	sw	%r5, [%sp + 23]
	sw	%r1, [%sp + 24]
	add	%r2, %r0, %r7
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	setup_second_table.2806
	subi	%sp, %sp, 26
	lw	%ra, [%sp + 25]
	lw	%r2, [%sp + 23]
	lw	%r3, [%sp + 24]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
bneq_cont.13282:
bneq_cont.13280:
	lli	%r1, 1
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 22]
	lw	%r27, [%sp + 8]
	sw	%ra, [%sp + 25]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 26
	jalr	%r26
	subi	%sp, %sp, 26
	lw	%ra, [%sp + 25]
	j	bgt_cont.13278
bgt_else.13277:
bgt_cont.13278:
	add	%r1, %r0, %hp
	addi	%hp, %hp, 3
	lf	%f0, [%sp + 7]
	sf	%f0, [%r1 + 2]
	lw	%r2, [%sp + 22]
	sw	%r2, [%r1 + 1]
	lw	%r2, [%sp + 19]
	sw	%r2, [%r1 + 0]
	lw	%r2, [%sp + 18]
	lw	%r3, [%sp + 5]
	add	%r2, %r3, %r2
	sw	%r1, [%r2 + 0]
	lw	%r1, [%sp + 4]
	addi	%r2, %r1, 2
	lw	%r4, [%sp + 3]
	addi	%r4, %r4, 3
	lw	%r5, [%sp + 2]
	addi	%r5, %r5, 2
	lf	%f1, [%r5 + 0]
	lli	%r5, 3
	llif	%f2, 0.000000
	lhif	%f2, 0.000000
	add	%r6, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r2, [%sp + 25]
	sw	%r4, [%sp + 26]
	sf	%f1, [%sp + 27]
	add	%r2, %r0, %r6
	add	%r1, %r0, %r5
	movf	%f0, %f2
	sw	%ra, [%sp + 28]
	addi	%sp, %sp, 29
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 29
	lw	%ra, [%sp + 28]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 13]
	addi	%r3, %r1, 0
	lw	%r3, [%r3 + 0]
	add	%r4, %r0, %hp
	add	%hp, %hp, %r3
	sw	%r2, [%sp + 28]
	add	%r1, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 29]
	addi	%sp, %sp, 30
	jal	yj.create_array_loop
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r2 + 1]
	lw	%r3, [%sp + 28]
	sw	%r3, [%r2 + 0]
	addi	%r4, %r3, 0
	lf	%f0, [%sp + 1]
	sf	%f0, [%r4 + 0]
	addi	%r4, %r3, 1
	lf	%f0, [%sp + 11]
	sf	%f0, [%r4 + 0]
	addi	%r4, %r3, 2
	lf	%f0, [%sp + 27]
	sf	%f0, [%r4 + 0]
	lw	%r4, [%sp + 13]
	addi	%r4, %r4, 0
	lw	%r4, [%r4 + 0]
	subi	%r4, %r4, 1
	lli	%r5, 0
	sw	%r2, [%sp + 29]
	bgt	%r5, %r4, bgt_else.13283
	lw	%r5, [%sp + 9]
	add	%r5, %r5, %r4
	lw	%r5, [%r5 + 0]
	lw	%r6, [%r5 + 1]
	lli	%r7, 1
	bneq	%r6, %r7, bneq_else.13285
	sw	%r4, [%sp + 30]
	sw	%r1, [%sp + 31]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	setup_rect_table.2800
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lw	%r2, [%sp + 30]
	lw	%r3, [%sp + 31]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13286
bneq_else.13285:
	lli	%r7, 2
	bneq	%r6, %r7, bneq_else.13287
	sw	%r4, [%sp + 30]
	sw	%r1, [%sp + 31]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	setup_surface_table.2803
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lw	%r2, [%sp + 30]
	lw	%r3, [%sp + 31]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13288
bneq_else.13287:
	sw	%r4, [%sp + 30]
	sw	%r1, [%sp + 31]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	setup_second_table.2806
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lw	%r2, [%sp + 30]
	lw	%r3, [%sp + 31]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
bneq_cont.13288:
bneq_cont.13286:
	lli	%r1, 1
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 29]
	lw	%r27, [%sp + 8]
	sw	%ra, [%sp + 32]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 33
	jalr	%r26
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	j	bgt_cont.13284
bgt_else.13283:
bgt_cont.13284:
	add	%r1, %r0, %hp
	addi	%hp, %hp, 3
	lf	%f0, [%sp + 7]
	sf	%f0, [%r1 + 2]
	lw	%r2, [%sp + 29]
	sw	%r2, [%r1 + 1]
	lw	%r2, [%sp + 26]
	sw	%r2, [%r1 + 0]
	lw	%r2, [%sp + 25]
	lw	%r3, [%sp + 5]
	add	%r2, %r3, %r2
	sw	%r1, [%r2 + 0]
	lw	%r1, [%sp + 4]
	addi	%r1, %r1, 3
	lw	%r2, [%sp + 0]
	addi	%r2, %r2, 0
	sw	%r1, [%r2 + 0]
	jr	%ra
setup_surface_reflection.3044:
	lw	%r3, [%r27 + 6]
	lw	%r4, [%r27 + 5]
	lw	%r5, [%r27 + 4]
	lw	%r6, [%r27 + 3]
	lw	%r7, [%r27 + 2]
	lw	%r8, [%r27 + 1]
	lli	%r9, 4
	mul	%r1, %r1, %r9
	addi	%r1, %r1, 1
	addi	%r9, %r5, 0
	lw	%r9, [%r9 + 0]
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lw	%r10, [%r2 + 7]
	addi	%r10, %r10, 0
	lf	%f1, [%r10 + 0]
	subf	%f0, %f0, %f1
	lw	%r10, [%r2 + 4]
	sw	%r5, [%sp + 0]
	sw	%r9, [%sp + 1]
	sw	%r3, [%sp + 2]
	sw	%r1, [%sp + 3]
	sf	%f0, [%sp + 4]
	sw	%r8, [%sp + 5]
	sw	%r4, [%sp + 6]
	sw	%r6, [%sp + 7]
	sw	%r7, [%sp + 8]
	sw	%r2, [%sp + 9]
	add	%r2, %r0, %r10
	add	%r1, %r0, %r7
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	veciprod.2597
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	llif	%f1, 2.000000
	lhif	%f1, 2.000000
	lw	%r1, [%sp + 9]
	lw	%r2, [%r1 + 4]
	addi	%r2, %r2, 0
	lf	%f2, [%r2 + 0]
	mulf	%f1, %f1, %f2
	mulf	%f1, %f1, %f0
	lw	%r2, [%sp + 8]
	addi	%r3, %r2, 0
	lf	%f2, [%r3 + 0]
	subf	%f1, %f1, %f2
	llif	%f2, 2.000000
	lhif	%f2, 2.000000
	lw	%r3, [%r1 + 4]
	addi	%r3, %r3, 1
	lf	%f3, [%r3 + 0]
	mulf	%f2, %f2, %f3
	mulf	%f2, %f2, %f0
	addi	%r3, %r2, 1
	lf	%f3, [%r3 + 0]
	subf	%f2, %f2, %f3
	llif	%f3, 2.000000
	lhif	%f3, 2.000000
	lw	%r1, [%r1 + 4]
	addi	%r1, %r1, 2
	lf	%f4, [%r1 + 0]
	mulf	%f3, %f3, %f4
	mulf	%f0, %f3, %f0
	addi	%r1, %r2, 2
	lf	%f3, [%r1 + 0]
	subf	%f0, %f0, %f3
	lli	%r1, 3
	llif	%f3, 0.000000
	lhif	%f3, 0.000000
	add	%r2, %r0, %hp
	addi	%hp, %hp, 3
	sf	%f0, [%sp + 10]
	sf	%f2, [%sp + 11]
	sf	%f1, [%sp + 12]
	movf	%f0, %f3
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	yj.create_float_array_loop
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 7]
	addi	%r3, %r1, 0
	lw	%r3, [%r3 + 0]
	add	%r4, %r0, %hp
	add	%hp, %hp, %r3
	sw	%r2, [%sp + 13]
	add	%r1, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	yj.create_array_loop
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r2 + 1]
	lw	%r3, [%sp + 13]
	sw	%r3, [%r2 + 0]
	addi	%r4, %r3, 0
	lf	%f0, [%sp + 12]
	sf	%f0, [%r4 + 0]
	addi	%r4, %r3, 1
	lf	%f0, [%sp + 11]
	sf	%f0, [%r4 + 0]
	addi	%r4, %r3, 2
	lf	%f0, [%sp + 10]
	sf	%f0, [%r4 + 0]
	lw	%r4, [%sp + 7]
	addi	%r4, %r4, 0
	lw	%r4, [%r4 + 0]
	subi	%r4, %r4, 1
	lli	%r5, 0
	sw	%r2, [%sp + 14]
	bgt	%r5, %r4, bgt_else.13290
	lw	%r5, [%sp + 6]
	add	%r5, %r5, %r4
	lw	%r5, [%r5 + 0]
	lw	%r6, [%r5 + 1]
	lli	%r7, 1
	bneq	%r6, %r7, bneq_else.13292
	sw	%r4, [%sp + 15]
	sw	%r1, [%sp + 16]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	setup_rect_table.2800
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lw	%r2, [%sp + 15]
	lw	%r3, [%sp + 16]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13293
bneq_else.13292:
	lli	%r7, 2
	bneq	%r6, %r7, bneq_else.13294
	sw	%r4, [%sp + 15]
	sw	%r1, [%sp + 16]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	setup_surface_table.2803
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lw	%r2, [%sp + 15]
	lw	%r3, [%sp + 16]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13295
bneq_else.13294:
	sw	%r4, [%sp + 15]
	sw	%r1, [%sp + 16]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	setup_second_table.2806
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lw	%r2, [%sp + 15]
	lw	%r3, [%sp + 16]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
bneq_cont.13295:
bneq_cont.13293:
	lli	%r1, 1
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 14]
	lw	%r27, [%sp + 5]
	sw	%ra, [%sp + 17]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 18
	jalr	%r26
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	j	bgt_cont.13291
bgt_else.13290:
bgt_cont.13291:
	add	%r1, %r0, %hp
	addi	%hp, %hp, 3
	lf	%f0, [%sp + 4]
	sf	%f0, [%r1 + 2]
	lw	%r2, [%sp + 14]
	sw	%r2, [%r1 + 1]
	lw	%r2, [%sp + 3]
	sw	%r2, [%r1 + 0]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 2]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	addi	%r1, %r2, 1
	lw	%r2, [%sp + 0]
	addi	%r2, %r2, 0
	sw	%r1, [%r2 + 0]
	jr	%ra
setup_reflections.3047:
	lw	%r2, [%r27 + 3]
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.13297
	add	%r4, %r4, %r1
	lw	%r4, [%r4 + 0]
	lw	%r5, [%r4 + 2]
	lli	%r6, 2
	bneq	%r5, %r6, bneq_else.13298
	lw	%r5, [%r4 + 7]
	lli	%r6, 0
	add	%r5, %r5, %r6
	lf	%f0, [%r5 + 0]
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	bgtf	%f1, %f0, bgtf_else.13299
	lli	%r5, 0
	j	bgtf_cont.13300
bgtf_else.13299:
	lli	%r5, 1
bgtf_cont.13300:
	lli	%r6, 0
	bneq	%r5, %r6, bneq_else.13301
	jr	%ra
bneq_else.13301:
	lw	%r5, [%r4 + 1]
	lli	%r6, 1
	bneq	%r5, %r6, bneq_else.13303
	add	%r2, %r0, %r4
	add	%r27, %r0, %r3
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.13303:
	lli	%r3, 2
	bneq	%r5, %r3, bneq_else.13304
	add	%r27, %r0, %r2
	add	%r2, %r0, %r4
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.13304:
	jr	%ra
bneq_else.13298:
	jr	%ra
bgt_else.13297:
	jr	%ra
rt.3049:
	lw	%r3, [%r27 + 23]
	lw	%r4, [%r27 + 22]
	lw	%r5, [%r27 + 21]
	lw	%r6, [%r27 + 20]
	lw	%r7, [%r27 + 19]
	lw	%r8, [%r27 + 18]
	lw	%r9, [%r27 + 17]
	lw	%r10, [%r27 + 16]
	lw	%r11, [%r27 + 15]
	lw	%r12, [%r27 + 14]
	lw	%r13, [%r27 + 13]
	lw	%r14, [%r27 + 12]
	lw	%r15, [%r27 + 11]
	lw	%r16, [%r27 + 10]
	lw	%r17, [%r27 + 9]
	lw	%r18, [%r27 + 8]
	lw	%r19, [%r27 + 7]
	lw	%r20, [%r27 + 6]
	lw	%r21, [%r27 + 5]
	lw	%r22, [%r27 + 4]
	lw	%r23, [%r27 + 3]
	lw	%r24, [%r27 + 2]
	lw	%r25, [%r27 + 1]
	addi	%r26, %r21, 0
	sw	%r1, [%r26 + 0]
	addi	%r26, %r21, 1
	sw	%r2, [%r26 + 0]
	sra	%r26, %r1, 1
	addi	%r27, %r22, 0
	sw	%r26, [%r27 + 0]
	sra	%r2, %r2, 1
	addi	%r22, %r22, 1
	sw	%r2, [%r22 + 0]
	llif	%f0, 128.000000
	lhif	%f0, 128.000000
	itof	%f1, %r1
	divf	%f0, %f0, %f1
	addi	%r1, %r6, 0
	sf	%f0, [%r1 + 0]
	addi	%r1, %r21, 0
	lw	%r1, [%r1 + 0]
	sw	%r7, [%sp + 0]
	sw	%r13, [%sp + 1]
	sw	%r5, [%sp + 2]
	sw	%r17, [%sp + 3]
	sw	%r19, [%sp + 4]
	sw	%r24, [%sp + 5]
	sw	%r15, [%sp + 6]
	sw	%r4, [%sp + 7]
	sw	%r18, [%sp + 8]
	sw	%r20, [%sp + 9]
	sw	%r25, [%sp + 10]
	sw	%r23, [%sp + 11]
	sw	%r3, [%sp + 12]
	sw	%r14, [%sp + 13]
	sw	%r12, [%sp + 14]
	sw	%r9, [%sp + 15]
	sw	%r16, [%sp + 16]
	sw	%r10, [%sp + 17]
	sw	%r11, [%sp + 18]
	sw	%r8, [%sp + 19]
	sw	%r21, [%sp + 20]
	sw	%r1, [%sp + 21]
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	create_pixel.2991
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	add	%r2, %r0, %r1
	add	%r3, %r0, %hp
	lw	%r1, [%sp + 21]
	add	%hp, %hp, %r1
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	yj.create_array_loop
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lw	%r2, [%sp + 20]
	addi	%r3, %r2, 0
	lw	%r3, [%r3 + 0]
	subi	%r3, %r3, 2
	lli	%r4, 0
	bgt	%r4, %r3, bgt_else.13308
	sw	%r3, [%sp + 22]
	sw	%r1, [%sp + 23]
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	create_pixel.2991
	subi	%sp, %sp, 25
	lw	%ra, [%sp + 24]
	lw	%r2, [%sp + 22]
	lw	%r3, [%sp + 23]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	sub	%r1, %r2, %r1
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.13310
	sw	%r1, [%sp + 24]
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	create_pixel.2991
	subi	%sp, %sp, 26
	lw	%ra, [%sp + 25]
	lw	%r2, [%sp + 24]
	lw	%r3, [%sp + 23]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	sub	%r2, %r2, %r1
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	init_line_elements.2993
	subi	%sp, %sp, 26
	lw	%ra, [%sp + 25]
	j	bgt_cont.13311
bgt_else.13310:
	add	%r1, %r0, %r3
bgt_cont.13311:
	j	bgt_cont.13309
bgt_else.13308:
bgt_cont.13309:
	lw	%r2, [%sp + 20]
	addi	%r3, %r2, 0
	lw	%r3, [%r3 + 0]
	sw	%r1, [%sp + 25]
	sw	%r3, [%sp + 26]
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	create_pixel.2991
	subi	%sp, %sp, 28
	lw	%ra, [%sp + 27]
	add	%r2, %r0, %r1
	add	%r3, %r0, %hp
	lw	%r1, [%sp + 26]
	add	%hp, %hp, %r1
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	yj.create_array_loop
	subi	%sp, %sp, 28
	lw	%ra, [%sp + 27]
	lw	%r2, [%sp + 20]
	addi	%r3, %r2, 0
	lw	%r3, [%r3 + 0]
	subi	%r3, %r3, 2
	lli	%r4, 0
	bgt	%r4, %r3, bgt_else.13312
	sw	%r3, [%sp + 27]
	sw	%r1, [%sp + 28]
	sw	%ra, [%sp + 29]
	addi	%sp, %sp, 30
	jal	create_pixel.2991
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	lw	%r2, [%sp + 27]
	lw	%r3, [%sp + 28]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	sub	%r1, %r2, %r1
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.13314
	sw	%r1, [%sp + 29]
	sw	%ra, [%sp + 30]
	addi	%sp, %sp, 31
	jal	create_pixel.2991
	subi	%sp, %sp, 31
	lw	%ra, [%sp + 30]
	lw	%r2, [%sp + 29]
	lw	%r3, [%sp + 28]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	sub	%r2, %r2, %r1
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 30]
	addi	%sp, %sp, 31
	jal	init_line_elements.2993
	subi	%sp, %sp, 31
	lw	%ra, [%sp + 30]
	j	bgt_cont.13315
bgt_else.13314:
	add	%r1, %r0, %r3
bgt_cont.13315:
	j	bgt_cont.13313
bgt_else.13312:
bgt_cont.13313:
	lw	%r2, [%sp + 20]
	addi	%r3, %r2, 0
	lw	%r3, [%r3 + 0]
	sw	%r1, [%sp + 30]
	sw	%r3, [%sp + 31]
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	create_pixel.2991
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	add	%r2, %r0, %r1
	add	%r3, %r0, %hp
	lw	%r1, [%sp + 31]
	add	%hp, %hp, %r1
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	yj.create_array_loop
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lw	%r2, [%sp + 20]
	addi	%r2, %r2, 0
	lw	%r2, [%r2 + 0]
	subi	%r2, %r2, 2
	lli	%r3, 0
	bgt	%r3, %r2, bgt_else.13316
	sw	%r2, [%sp + 32]
	sw	%r1, [%sp + 33]
	sw	%ra, [%sp + 34]
	addi	%sp, %sp, 35
	jal	create_pixel.2991
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	lw	%r2, [%sp + 32]
	lw	%r3, [%sp + 33]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	sub	%r1, %r2, %r1
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.13318
	sw	%r1, [%sp + 34]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	create_pixel.2991
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lw	%r2, [%sp + 34]
	lw	%r3, [%sp + 33]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	sub	%r2, %r2, %r1
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	init_line_elements.2993
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	j	bgt_cont.13319
bgt_else.13318:
	add	%r1, %r0, %r3
bgt_cont.13319:
	j	bgt_cont.13317
bgt_else.13316:
bgt_cont.13317:
	lw	%r27, [%sp + 19]
	sw	%r1, [%sp + 35]
	sw	%ra, [%sp + 36]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 37
	jalr	%r26
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	lw	%r27, [%sp + 18]
	sw	%ra, [%sp + 36]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 37
	jalr	%r26
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	lli	%r1, 0
	lw	%r27, [%sp + 17]
	sw	%r1, [%sp + 36]
	sw	%ra, [%sp + 37]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 38
	jalr	%r26
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.13320
	lli	%r1, 0
	lw	%r2, [%sp + 16]
	add	%r1, %r2, %r1
	lw	%r3, [%sp + 36]
	sw	%r3, [%r1 + 0]
	j	bneq_cont.13321
bneq_else.13320:
	lli	%r1, 1
	lw	%r27, [%sp + 15]
	sw	%ra, [%sp + 37]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 38
	jalr	%r26
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
bneq_cont.13321:
	lli	%r1, 0
	lw	%r27, [%sp + 14]
	sw	%ra, [%sp + 37]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 38
	jalr	%r26
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	lli	%r1, 0
	sw	%ra, [%sp + 37]
	addi	%sp, %sp, 38
	jal	read_or_network.2710
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	lw	%r2, [%sp + 13]
	addi	%r2, %r2, 0
	sw	%r1, [%r2 + 0]
	lw	%r27, [%sp + 12]
	sw	%ra, [%sp + 37]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 38
	jalr	%r26
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	lli	%r1, 4
	lw	%r27, [%sp + 11]
	sw	%ra, [%sp + 37]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 38
	jalr	%r26
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	lli	%r1, 9
	lli	%r2, 0
	lli	%r3, 0
	lw	%r27, [%sp + 10]
	sw	%ra, [%sp + 37]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 38
	jalr	%r26
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	lli	%r1, 4
	lw	%r27, [%sp + 9]
	sw	%ra, [%sp + 37]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 38
	jalr	%r26
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	lw	%r1, [%sp + 8]
	addi	%r2, %r1, 0
	lf	%f0, [%r2 + 0]
	lw	%r2, [%sp + 7]
	addi	%r3, %r2, 0
	sf	%f0, [%r3 + 0]
	addi	%r3, %r1, 1
	lf	%f0, [%r3 + 0]
	addi	%r3, %r2, 1
	sf	%f0, [%r3 + 0]
	addi	%r1, %r1, 2
	lf	%f0, [%r1 + 0]
	addi	%r1, %r2, 2
	sf	%f0, [%r1 + 0]
	lw	%r1, [%sp + 16]
	addi	%r3, %r1, 0
	lw	%r3, [%r3 + 0]
	subi	%r3, %r3, 1
	lli	%r4, 0
	bgt	%r4, %r3, bgt_else.13322
	lw	%r4, [%sp + 6]
	add	%r4, %r4, %r3
	lw	%r4, [%r4 + 0]
	lw	%r5, [%r4 + 1]
	lli	%r6, 1
	bneq	%r5, %r6, bneq_else.13324
	sw	%r3, [%sp + 37]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r4
	sw	%ra, [%sp + 38]
	addi	%sp, %sp, 39
	jal	setup_rect_table.2800
	subi	%sp, %sp, 39
	lw	%ra, [%sp + 38]
	lw	%r2, [%sp + 37]
	lw	%r3, [%sp + 5]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13325
bneq_else.13324:
	lli	%r6, 2
	bneq	%r5, %r6, bneq_else.13326
	sw	%r3, [%sp + 37]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r4
	sw	%ra, [%sp + 38]
	addi	%sp, %sp, 39
	jal	setup_surface_table.2803
	subi	%sp, %sp, 39
	lw	%ra, [%sp + 38]
	lw	%r2, [%sp + 37]
	lw	%r3, [%sp + 5]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.13327
bneq_else.13326:
	sw	%r3, [%sp + 37]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r4
	sw	%ra, [%sp + 38]
	addi	%sp, %sp, 39
	jal	setup_second_table.2806
	subi	%sp, %sp, 39
	lw	%ra, [%sp + 38]
	lw	%r2, [%sp + 37]
	lw	%r3, [%sp + 5]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
bneq_cont.13327:
bneq_cont.13325:
	lli	%r1, 1
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 3]
	lw	%r27, [%sp + 4]
	sw	%ra, [%sp + 38]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 39
	jalr	%r26
	subi	%sp, %sp, 39
	lw	%ra, [%sp + 38]
	j	bgt_cont.13323
bgt_else.13322:
bgt_cont.13323:
	lw	%r1, [%sp + 16]
	addi	%r1, %r1, 0
	lw	%r1, [%r1 + 0]
	subi	%r1, %r1, 1
	lw	%r27, [%sp + 2]
	sw	%ra, [%sp + 38]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 39
	jalr	%r26
	subi	%sp, %sp, 39
	lw	%ra, [%sp + 38]
	lli	%r2, 0
	lli	%r3, 0
	lw	%r1, [%sp + 30]
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 38]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 39
	jalr	%r26
	subi	%sp, %sp, 39
	lw	%ra, [%sp + 38]
	lli	%r1, 0
	lli	%r5, 2
	lw	%r2, [%sp + 25]
	lw	%r3, [%sp + 30]
	lw	%r4, [%sp + 35]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
yj.create_array_loop:
	bneq	%r0, %r1, bneq_else.13328
	add	%r1, %r0, %r3
	jr	%ra
bneq_else.13328:
	subi	%r1, %r1, 1
	add	%r4, %r3, %r1
	sw	%r2, [%r4 + 0]
	j	yj.create_array_loop
yj.create_float_array_loop:
	bneq	%r0, %r1, bneq_else.13329
	add	%r1, %r0, %r2
	jr	%ra
bneq_else.13329:
	subi	%r1, %r1, 1
	add	%r3, %r2, %r1
	sf	%f0, [%r3 + 0]
	j	yj.create_float_array_loop
yj_read_int:
	lli	%r1, 0
	lli	%r2, 0
	recv	%r1
	sll	%r1, %r1, 8
	recv	%r2
	xor	%r1, %r1, %r2
	sll	%r1, %r1, 8
	recv	%r2
	xor	%r1, %r1, %r2
	sll	%r1, %r1, 8
	recv	%r2
	xor	%r1, %r1, %r2
	jr	%ra
yj_read_float:
	lli	%r1, 0
	lli	%r2, 0
	recv	%r1
	sll	%r1, %r1, 8
	recv	%r2
	xor	%r1, %r1, %r2
	sll	%r1, %r1, 8
	recv	%r2
	xor	%r1, %r1, %r2
	sll	%r1, %r1, 8
	recv	%r2
	xor	%r1, %r1, %r2
	movi2f	%f0, %r1
	jr	%ra
yj_print_float_binary:
	movf2i	%r1, %f0
	sendc	%r1
	sra	%r1, %r1, 8
	sendc	%r1
	sra	%r1, %r1, 8
	sendc	%r1
	sra	%r1, %r1, 8
	sendc	%r1
	lli	%r1, 10
	sendc	%r1
	jr	%ra
yj_create_array:
	lli	%r3, 0
yj_create.loop:
	add	%r4, %hp, %r3
	sw	%r2, [%r4 + 0]
	addi	%r3, %r3, 1
	bgt	%r1, %r3, yj_create.loop
	add	%r1, %r0, %hp
	add	%hp, %hp, %r3
	jr	%ra
yj_create_float_array:
	lli	%r3, 0
yj_create_float.loop:
	add	%r4, %hp, %r3
	sf	%f0, [%r4 + 0]
	addi	%r3, %r3, 1
	bgt	%r1, %r3, yj_create_float.loop
	add	%r1, %r0, %hp
	add	%hp, %hp, %r3
	jr	%ra