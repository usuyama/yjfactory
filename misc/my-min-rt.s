entry:
	lli	%sp, 0
	addi	%ra, %r0, halt
	lli	%hp, 50000
	lli	%r1, 1
	lli	%r2, 0
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_create_array
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r2, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 0]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_create_float_array
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
	add	%r26, %r0, %r2
	add	%r2, %r0, %r1
	add	%r1, %r0, %r26
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_create_array
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_float_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 2]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj_create_float_array
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 3]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj_create_float_array
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 1
	llif	%f0, 255.000000
	lhif	%f0, 255.000000
	sw	%r1, [%sp + 4]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_create_float_array
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 50
	lli	%r3, 1
	lli	%r4, -1
	lhi	%r4, -1
	sw	%r1, [%sp + 5]
	sw	%r2, [%sp + 6]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj_create_array
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj_create_array
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 1
	lli	%r3, 1
	lli	%r4, 0
	add	%r4, %r1, %r4
	lw	%r4, [%r4 + 0]
	sw	%r1, [%sp + 7]
	sw	%r2, [%sp + 8]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	yj_create_array
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	yj_create_array
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 1
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 9]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	yj_create_float_array
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 1
	lli	%r3, 0
	sw	%r1, [%sp + 10]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	yj_create_array
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 1
	llif	%f0, 1000000000.000000
	lhif	%f0, 1000000000.000000
	sw	%r1, [%sp + 11]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj_create_float_array
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 12]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	yj_create_float_array
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 1
	lli	%r3, 0
	sw	%r1, [%sp + 13]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	yj_create_array
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 14]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	yj_create_float_array
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 15]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	yj_create_float_array
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 16]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	yj_create_float_array
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 17]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	yj_create_float_array
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lli	%r2, 2
	lli	%r3, 0
	sw	%r1, [%sp + 18]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 19]
	addi	%sp, %sp, 20
	jal	yj_create_array
	subi	%sp, %sp, 20
	lw	%ra, [%sp + 19]
	lli	%r2, 2
	lli	%r3, 0
	sw	%r1, [%sp + 19]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 20]
	addi	%sp, %sp, 21
	jal	yj_create_array
	subi	%sp, %sp, 21
	lw	%ra, [%sp + 20]
	lli	%r2, 1
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 20]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 21]
	addi	%sp, %sp, 22
	jal	yj_create_float_array
	subi	%sp, %sp, 22
	lw	%ra, [%sp + 21]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 21]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	yj_create_float_array
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 22]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 23]
	addi	%sp, %sp, 24
	jal	yj_create_float_array
	subi	%sp, %sp, 24
	lw	%ra, [%sp + 23]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 23]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	yj_create_float_array
	subi	%sp, %sp, 25
	lw	%ra, [%sp + 24]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 24]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	yj_create_float_array
	subi	%sp, %sp, 26
	lw	%ra, [%sp + 25]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 25]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 26]
	addi	%sp, %sp, 27
	jal	yj_create_float_array
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 26]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	yj_create_float_array
	subi	%sp, %sp, 28
	lw	%ra, [%sp + 27]
	lli	%r2, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 27]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 28]
	addi	%sp, %sp, 29
	jal	yj_create_float_array
	subi	%sp, %sp, 29
	lw	%ra, [%sp + 28]
	add	%r2, %r0, %r1
	lli	%r1, 0
	sw	%r2, [%sp + 28]
	sw	%ra, [%sp + 29]
	addi	%sp, %sp, 30
	jal	yj_create_array
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	lli	%r2, 0
	add	%r3, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r3 + 1]
	lw	%r1, [%sp + 28]
	sw	%r1, [%r3 + 0]
	add	%r1, %r0, %r3
	add	%r26, %r0, %r2
	add	%r2, %r0, %r1
	add	%r1, %r0, %r26
	sw	%ra, [%sp + 29]
	addi	%sp, %sp, 30
	jal	yj_create_array
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	add	%r2, %r0, %r1
	lli	%r1, 5
	sw	%ra, [%sp + 29]
	addi	%sp, %sp, 30
	jal	yj_create_array
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	lli	%r2, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 29]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 30]
	addi	%sp, %sp, 31
	jal	yj_create_float_array
	subi	%sp, %sp, 31
	lw	%ra, [%sp + 30]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 30]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 31]
	addi	%sp, %sp, 32
	jal	yj_create_float_array
	subi	%sp, %sp, 32
	lw	%ra, [%sp + 31]
	lli	%r2, 60
	lw	%r3, [%sp + 30]
	sw	%r1, [%sp + 31]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	yj_create_array
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r2 + 1]
	lw	%r1, [%sp + 31]
	sw	%r1, [%r2 + 0]
	add	%r1, %r0, %r2
	lli	%r2, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 32]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 33]
	addi	%sp, %sp, 34
	jal	yj_create_float_array
	subi	%sp, %sp, 34
	lw	%ra, [%sp + 33]
	add	%r2, %r0, %r1
	lli	%r1, 0
	sw	%r2, [%sp + 33]
	sw	%ra, [%sp + 34]
	addi	%sp, %sp, 35
	jal	yj_create_array
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r2 + 1]
	lw	%r1, [%sp + 33]
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
	add	%r26, %r0, %r2
	add	%r2, %r0, %r1
	add	%r1, %r0, %r26
	sw	%ra, [%sp + 34]
	addi	%sp, %sp, 35
	jal	yj_create_array
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	lli	%r2, 1
	lli	%r3, 0
	sw	%r1, [%sp + 34]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	yj_create_array
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 6
	addi	%r3, %r0, read_screen_settings.2606
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
	addi	%r8, %r0, read_light.2608
	sw	%r8, [%r7 + 0]
	lw	%r8, [%sp + 4]
	sw	%r8, [%r7 + 2]
	lw	%r9, [%sp + 5]
	sw	%r9, [%r7 + 1]
	add	%r10, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r11, %r0, read_nth_object.2613
	sw	%r11, [%r10 + 0]
	lw	%r11, [%sp + 1]
	sw	%r11, [%r10 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r13, %r0, read_object.2615
	sw	%r13, [%r12 + 0]
	sw	%r10, [%r12 + 2]
	lw	%r10, [%sp + 0]
	sw	%r10, [%r12 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r14, %r0, read_all_object.2617
	sw	%r14, [%r13 + 0]
	sw	%r12, [%r13 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r14, %r0, read_and_network.2623
	sw	%r14, [%r12 + 0]
	lw	%r14, [%sp + 7]
	sw	%r14, [%r12 + 1]
	add	%r15, %r0, %hp
	addi	%hp, %hp, 6
	addi	%r16, %r0, read_parameter.2625
	sw	%r16, [%r15 + 0]
	sw	%r2, [%r15 + 5]
	sw	%r7, [%r15 + 4]
	sw	%r12, [%r15 + 3]
	sw	%r13, [%r15 + 2]
	lw	%r2, [%sp + 9]
	sw	%r2, [%r15 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r12, %r0, solver_rect_surface.2627
	sw	%r12, [%r7 + 0]
	lw	%r12, [%sp + 10]
	sw	%r12, [%r7 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, solver_rect.2636
	sw	%r16, [%r13 + 0]
	sw	%r7, [%r13 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, solver_surface.2642
	sw	%r16, [%r7 + 0]
	sw	%r12, [%r7 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r17, %r0, solver_second.2661
	sw	%r17, [%r16 + 0]
	sw	%r12, [%r16 + 1]
	add	%r17, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r18, %r0, solver.2667
	sw	%r18, [%r17 + 0]
	sw	%r7, [%r17 + 4]
	sw	%r16, [%r17 + 3]
	sw	%r13, [%r17 + 2]
	sw	%r11, [%r17 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r13, %r0, solver_rect_fast.2671
	sw	%r13, [%r7 + 0]
	sw	%r12, [%r7 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, solver_surface_fast.2678
	sw	%r16, [%r13 + 0]
	sw	%r12, [%r13 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r18, %r0, solver_second_fast.2684
	sw	%r18, [%r16 + 0]
	sw	%r12, [%r16 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r19, %r0, solver_fast.2690
	sw	%r19, [%r18 + 0]
	sw	%r13, [%r18 + 4]
	sw	%r16, [%r18 + 3]
	sw	%r7, [%r18 + 2]
	sw	%r11, [%r18 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, solver_surface_fast2.2694
	sw	%r16, [%r13 + 0]
	sw	%r12, [%r13 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r19, %r0, solver_second_fast2.2701
	sw	%r19, [%r16 + 0]
	sw	%r12, [%r16 + 1]
	add	%r19, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r20, %r0, solver_fast2.2708
	sw	%r20, [%r19 + 0]
	sw	%r13, [%r19 + 4]
	sw	%r16, [%r19 + 3]
	sw	%r7, [%r19 + 2]
	sw	%r11, [%r19 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r13, %r0, iter_setup_dirvec_constants.2720
	sw	%r13, [%r7 + 0]
	sw	%r11, [%r7 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r16, %r0, setup_dirvec_constants.2723
	sw	%r16, [%r13 + 0]
	sw	%r10, [%r13 + 2]
	sw	%r7, [%r13 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, setup_startp_constants.2725
	sw	%r16, [%r7 + 0]
	sw	%r11, [%r7 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r20, %r0, setup_startp.2728
	sw	%r20, [%r16 + 0]
	lw	%r20, [%sp + 23]
	sw	%r20, [%r16 + 3]
	sw	%r7, [%r16 + 2]
	sw	%r10, [%r16 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r21, %r0, check_all_inside.2750
	sw	%r21, [%r7 + 0]
	sw	%r11, [%r7 + 1]
	add	%r21, %r0, %hp
	addi	%hp, %hp, 8
	addi	%r22, %r0, shadow_check_and_group.2756
	sw	%r22, [%r21 + 0]
	sw	%r18, [%r21 + 7]
	sw	%r12, [%r21 + 6]
	sw	%r11, [%r21 + 5]
	lw	%r22, [%sp + 32]
	sw	%r22, [%r21 + 4]
	sw	%r8, [%r21 + 3]
	lw	%r23, [%sp + 13]
	sw	%r23, [%r21 + 2]
	sw	%r7, [%r21 + 1]
	add	%r24, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r25, %r0, shadow_check_one_or_group.2759
	sw	%r25, [%r24 + 0]
	sw	%r21, [%r24 + 2]
	sw	%r14, [%r24 + 1]
	add	%r21, %r0, %hp
	addi	%hp, %hp, 6
	addi	%r25, %r0, shadow_check_one_or_matrix.2762
	sw	%r25, [%r21 + 0]
	sw	%r18, [%r21 + 5]
	sw	%r12, [%r21 + 4]
	sw	%r24, [%r21 + 3]
	sw	%r22, [%r21 + 2]
	sw	%r23, [%r21 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 10
	addi	%r24, %r0, solve_each_element.2765
	sw	%r24, [%r18 + 0]
	lw	%r24, [%sp + 12]
	sw	%r24, [%r18 + 9]
	lw	%r25, [%sp + 22]
	sw	%r25, [%r18 + 8]
	sw	%r12, [%r18 + 7]
	sw	%r17, [%r18 + 6]
	sw	%r11, [%r18 + 5]
	lw	%r26, [%sp + 11]
	sw	%r26, [%r18 + 4]
	sw	%r23, [%r18 + 3]
	lw	%r27, [%sp + 14]
	sw	%r27, [%r18 + 2]
	sw	%r7, [%r18 + 1]
	add	%r22, %r0, %hp
	addi	%hp, %hp, 3
	sw	%r15, [%sp + 35]
	addi	%r15, %r0, solve_one_or_network.2769
	sw	%r15, [%r22 + 0]
	sw	%r18, [%r22 + 2]
	sw	%r14, [%r22 + 1]
	add	%r15, %r0, %hp
	addi	%hp, %hp, 6
	addi	%r18, %r0, trace_or_matrix.2773
	sw	%r18, [%r15 + 0]
	sw	%r24, [%r15 + 5]
	sw	%r25, [%r15 + 4]
	sw	%r12, [%r15 + 3]
	sw	%r17, [%r15 + 2]
	sw	%r22, [%r15 + 1]
	add	%r17, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r18, %r0, judge_intersection.2777
	sw	%r18, [%r17 + 0]
	sw	%r15, [%r17 + 3]
	sw	%r24, [%r17 + 2]
	sw	%r2, [%r17 + 1]
	add	%r15, %r0, %hp
	addi	%hp, %hp, 10
	addi	%r18, %r0, solve_each_element_fast.2779
	sw	%r18, [%r15 + 0]
	sw	%r24, [%r15 + 9]
	sw	%r20, [%r15 + 8]
	sw	%r19, [%r15 + 7]
	sw	%r12, [%r15 + 6]
	sw	%r11, [%r15 + 5]
	sw	%r26, [%r15 + 4]
	sw	%r23, [%r15 + 3]
	sw	%r27, [%r15 + 2]
	sw	%r7, [%r15 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r18, %r0, solve_one_or_network_fast.2783
	sw	%r18, [%r7 + 0]
	sw	%r15, [%r7 + 2]
	sw	%r14, [%r7 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r15, %r0, trace_or_matrix_fast.2787
	sw	%r15, [%r14 + 0]
	sw	%r24, [%r14 + 4]
	sw	%r19, [%r14 + 3]
	sw	%r12, [%r14 + 2]
	sw	%r7, [%r14 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r12, %r0, judge_intersection_fast.2791
	sw	%r12, [%r7 + 0]
	sw	%r14, [%r7 + 3]
	sw	%r24, [%r7 + 2]
	sw	%r2, [%r7 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r14, %r0, get_nvector_rect.2793
	sw	%r14, [%r12 + 0]
	lw	%r14, [%sp + 15]
	sw	%r14, [%r12 + 2]
	sw	%r26, [%r12 + 1]
	add	%r15, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r18, %r0, get_nvector_plane.2795
	sw	%r18, [%r15 + 0]
	sw	%r14, [%r15 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r19, %r0, get_nvector_second.2797
	sw	%r19, [%r18 + 0]
	sw	%r14, [%r18 + 2]
	sw	%r23, [%r18 + 1]
	add	%r19, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r20, %r0, get_nvector.2799
	sw	%r20, [%r19 + 0]
	sw	%r18, [%r19 + 3]
	sw	%r12, [%r19 + 2]
	sw	%r15, [%r19 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r15, %r0, utexture.2802
	sw	%r15, [%r12 + 0]
	lw	%r15, [%sp + 16]
	sw	%r15, [%r12 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r20, %r0, add_light.2805
	sw	%r20, [%r18 + 0]
	sw	%r15, [%r18 + 2]
	lw	%r20, [%sp + 18]
	sw	%r20, [%r18 + 1]
	add	%r22, %r0, %hp
	addi	%hp, %hp, 9
	sw	%r13, [%sp + 36]
	addi	%r13, %r0, trace_reflections.2809
	sw	%r13, [%r22 + 0]
	sw	%r21, [%r22 + 8]
	lw	%r13, [%sp + 34]
	sw	%r13, [%r22 + 7]
	sw	%r2, [%r22 + 6]
	sw	%r14, [%r22 + 5]
	sw	%r7, [%r22 + 4]
	sw	%r26, [%r22 + 3]
	sw	%r27, [%r22 + 2]
	sw	%r18, [%r22 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 21
	addi	%r10, %r0, trace_ray.2814
	sw	%r10, [%r13 + 0]
	sw	%r12, [%r13 + 20]
	sw	%r22, [%r13 + 19]
	sw	%r24, [%r13 + 18]
	sw	%r15, [%r13 + 17]
	sw	%r25, [%r13 + 16]
	sw	%r21, [%r13 + 15]
	sw	%r16, [%r13 + 14]
	sw	%r20, [%r13 + 13]
	sw	%r2, [%r13 + 12]
	sw	%r11, [%r13 + 11]
	sw	%r14, [%r13 + 10]
	sw	%r1, [%r13 + 9]
	sw	%r8, [%r13 + 8]
	sw	%r17, [%r13 + 7]
	sw	%r26, [%r13 + 6]
	sw	%r23, [%r13 + 5]
	sw	%r27, [%r13 + 4]
	sw	%r19, [%r13 + 3]
	sw	%r9, [%r13 + 2]
	sw	%r18, [%r13 + 1]
	add	%r9, %r0, %hp
	addi	%hp, %hp, 13
	addi	%r10, %r0, trace_diffuse_ray.2820
	sw	%r10, [%r9 + 0]
	sw	%r12, [%r9 + 12]
	sw	%r15, [%r9 + 11]
	sw	%r21, [%r9 + 10]
	sw	%r2, [%r9 + 9]
	sw	%r11, [%r9 + 8]
	sw	%r14, [%r9 + 7]
	sw	%r8, [%r9 + 6]
	sw	%r7, [%r9 + 5]
	sw	%r23, [%r9 + 4]
	sw	%r27, [%r9 + 3]
	sw	%r19, [%r9 + 2]
	lw	%r2, [%sp + 17]
	sw	%r2, [%r9 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r10, %r0, iter_trace_diffuse_rays.2823
	sw	%r10, [%r7 + 0]
	sw	%r9, [%r7 + 1]
	add	%r9, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r10, %r0, trace_diffuse_rays.2828
	sw	%r10, [%r9 + 0]
	sw	%r16, [%r9 + 2]
	sw	%r7, [%r9 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r10, %r0, trace_diffuse_ray_80percent.2832
	sw	%r10, [%r7 + 0]
	sw	%r9, [%r7 + 2]
	lw	%r10, [%sp + 29]
	sw	%r10, [%r7 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r14, %r0, calc_diffuse_using_1point.2836
	sw	%r14, [%r12 + 0]
	sw	%r7, [%r12 + 3]
	sw	%r20, [%r12 + 2]
	sw	%r2, [%r12 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r14, %r0, calc_diffuse_using_5points.2839
	sw	%r14, [%r7 + 0]
	sw	%r20, [%r7 + 2]
	sw	%r2, [%r7 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r15, %r0, do_without_neighbors.2845
	sw	%r15, [%r14 + 0]
	sw	%r12, [%r14 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r15, %r0, neighbors_exist.2848
	sw	%r15, [%r12 + 0]
	lw	%r15, [%sp + 19]
	sw	%r15, [%r12 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r17, %r0, try_exploit_neighbors.2861
	sw	%r17, [%r16 + 0]
	sw	%r14, [%r16 + 2]
	sw	%r7, [%r16 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r17, %r0, write_ppm_header.2868
	sw	%r17, [%r7 + 0]
	sw	%r15, [%r7 + 1]
	add	%r17, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r18, %r0, write_rgb.2872
	sw	%r18, [%r17 + 0]
	sw	%r20, [%r17 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r19, %r0, pretrace_diffuse_rays.2874
	sw	%r19, [%r18 + 0]
	sw	%r9, [%r18 + 3]
	sw	%r10, [%r18 + 2]
	sw	%r2, [%r18 + 1]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 10
	addi	%r9, %r0, pretrace_pixels.2877
	sw	%r9, [%r2 + 0]
	sw	%r3, [%r2 + 9]
	sw	%r13, [%r2 + 8]
	sw	%r25, [%r2 + 7]
	sw	%r6, [%r2 + 6]
	lw	%r3, [%sp + 21]
	sw	%r3, [%r2 + 5]
	sw	%r20, [%r2 + 4]
	lw	%r6, [%sp + 27]
	sw	%r6, [%r2 + 3]
	sw	%r18, [%r2 + 2]
	lw	%r6, [%sp + 20]
	sw	%r6, [%r2 + 1]
	add	%r9, %r0, %hp
	addi	%hp, %hp, 7
	addi	%r13, %r0, pretrace_line.2884
	sw	%r13, [%r9 + 0]
	sw	%r4, [%r9 + 6]
	sw	%r5, [%r9 + 5]
	sw	%r3, [%r9 + 4]
	sw	%r2, [%r9 + 3]
	sw	%r15, [%r9 + 2]
	sw	%r6, [%r9 + 1]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 7
	addi	%r4, %r0, scan_pixel.2888
	sw	%r4, [%r2 + 0]
	sw	%r17, [%r2 + 6]
	sw	%r16, [%r2 + 5]
	sw	%r20, [%r2 + 4]
	sw	%r12, [%r2 + 3]
	sw	%r15, [%r2 + 2]
	sw	%r14, [%r2 + 1]
	add	%r4, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r5, %r0, scan_line.2894
	sw	%r5, [%r4 + 0]
	sw	%r2, [%r4 + 3]
	sw	%r9, [%r4 + 2]
	sw	%r15, [%r4 + 1]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r5, %r0, create_pixelline.2907
	sw	%r5, [%r2 + 0]
	sw	%r15, [%r2 + 1]
	add	%r5, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r12, %r0, calc_dirvec.2914
	sw	%r12, [%r5 + 0]
	sw	%r10, [%r5 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r13, %r0, calc_dirvecs.2922
	sw	%r13, [%r12 + 0]
	sw	%r5, [%r12 + 1]
	add	%r5, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r13, %r0, calc_dirvec_rows.2927
	sw	%r13, [%r5 + 0]
	sw	%r12, [%r5 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r13, %r0, create_dirvec.2931
	sw	%r13, [%r12 + 0]
	lw	%r13, [%sp + 0]
	sw	%r13, [%r12 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, create_dirvec_elements.2933
	sw	%r16, [%r14 + 0]
	sw	%r12, [%r14 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r17, %r0, create_dirvecs.2936
	sw	%r17, [%r16 + 0]
	sw	%r10, [%r16 + 3]
	sw	%r14, [%r16 + 2]
	sw	%r12, [%r16 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r17, %r0, init_dirvec_constants.2938
	sw	%r17, [%r14 + 0]
	lw	%r17, [%sp + 36]
	sw	%r17, [%r14 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r19, %r0, init_vecset_constants.2941
	sw	%r19, [%r18 + 0]
	sw	%r14, [%r18 + 2]
	sw	%r10, [%r18 + 1]
	add	%r10, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r14, %r0, init_dirvecs.2943
	sw	%r14, [%r10 + 0]
	sw	%r18, [%r10 + 3]
	sw	%r16, [%r10 + 2]
	sw	%r5, [%r10 + 1]
	add	%r5, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r14, %r0, add_reflection.2945
	sw	%r14, [%r5 + 0]
	sw	%r17, [%r5 + 3]
	lw	%r14, [%sp + 34]
	sw	%r14, [%r5 + 2]
	sw	%r12, [%r5 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r14, %r0, setup_rect_reflection.2952
	sw	%r14, [%r12 + 0]
	sw	%r1, [%r12 + 3]
	sw	%r8, [%r12 + 2]
	sw	%r5, [%r12 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r16, %r0, setup_surface_reflection.2955
	sw	%r16, [%r14 + 0]
	sw	%r1, [%r14 + 3]
	sw	%r8, [%r14 + 2]
	sw	%r5, [%r14 + 1]
	add	%r1, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r5, %r0, setup_reflections.2958
	sw	%r5, [%r1 + 0]
	sw	%r14, [%r1 + 3]
	sw	%r12, [%r1 + 2]
	sw	%r11, [%r1 + 1]
	add	%r27, %r0, %hp
	addi	%hp, %hp, 15
	addi	%r5, %r0, rt.2960
	sw	%r5, [%r27 + 0]
	sw	%r7, [%r27 + 14]
	sw	%r1, [%r27 + 13]
	sw	%r17, [%r27 + 12]
	sw	%r3, [%r27 + 11]
	sw	%r4, [%r27 + 10]
	lw	%r1, [%sp + 35]
	sw	%r1, [%r27 + 9]
	sw	%r9, [%r27 + 8]
	sw	%r13, [%r27 + 7]
	lw	%r1, [%sp + 32]
	sw	%r1, [%r27 + 6]
	sw	%r8, [%r27 + 5]
	sw	%r10, [%r27 + 4]
	sw	%r15, [%r27 + 3]
	sw	%r6, [%r27 + 2]
	sw	%r2, [%r27 + 1]
	lli	%r1, 256
	lli	%r2, 256
	sw	%ra, [%sp + 37]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 38
	jalr	%r26
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	lli	%r1, 0
	jr	%ra
halt:
	halt
fispos.2433:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f0, %f1, bgtf_else.8707
	lli	%r1, 0
	jr	%ra
bgtf_else.8707:
	lli	%r1, 1
	jr	%ra
fisneg.2435:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.8708
	lli	%r1, 0
	jr	%ra
bgtf_else.8708:
	lli	%r1, 1
	jr	%ra
fiszero.2437:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r1, %f0
	movf2i	%r2, %f1
	bneq	%r1, %r2, bneq_else.8709
	lli	%r1, 1
	jr	%ra
bneq_else.8709:
	lli	%r1, 0
	jr	%ra
fhalf.2439:
	llif	%f1, 0.500000
	lhif	%f1, 0.500000
	mulf	%f0, %f0, %f1
	jr	%ra
fsqr.2441:
	mulf	%f0, %f0, %f0
	jr	%ra
fless.2443:
	bgtf	%f1, %f0, bgtf_else.8710
	lli	%r1, 0
	jr	%ra
bgtf_else.8710:
	lli	%r1, 1
	jr	%ra
xor.2476:
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.8711
	add	%r1, %r0, %r2
	jr	%ra
bneq_else.8711:
	lli	%r1, 0
	bneq	%r2, %r1, bneq_else.8712
	lli	%r1, 1
	jr	%ra
bneq_else.8712:
	lli	%r1, 0
	jr	%ra
sgn.2479:
	sf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	fiszero.2437
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8713
	lf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	fispos.2433
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8714
	llif	%f0, -1.000000
	lhif	%f0, -1.000000
	jr	%ra
bneq_else.8714:
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	jr	%ra
bneq_else.8713:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	jr	%ra
fneg_cond.2481:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8715
	j	yj_fneg
bneq_else.8715:
	jr	%ra
add_mod5.2484:
	add	%r1, %r1, %r2
	lli	%r2, 5
	bgt	%r2, %r1, bgt_else.8716
	lli	%r2, 5
	sub	%r1, %r1, %r2
	jr	%ra
bgt_else.8716:
	jr	%ra
vecset.2487:
	lli	%r2, 0
	add	%r2, %r1, %r2
	sf	%f0, [%r2 + 0]
	lli	%r2, 1
	add	%r2, %r1, %r2
	sf	%f1, [%r2 + 0]
	lli	%r2, 2
	add	%r1, %r1, %r2
	sf	%f2, [%r1 + 0]
	jr	%ra
vecfill.2492:
	lli	%r2, 0
	add	%r2, %r1, %r2
	sf	%f0, [%r2 + 0]
	lli	%r2, 1
	add	%r2, %r1, %r2
	sf	%f0, [%r2 + 0]
	lli	%r2, 2
	add	%r1, %r1, %r2
	sf	%f0, [%r1 + 0]
	jr	%ra
vecbzero.2495:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	j	vecfill.2492
veccpy.2497:
	lli	%r3, 0
	lli	%r4, 0
	add	%r4, %r2, %r4
	lf	%f0, [%r4 + 0]
	add	%r3, %r1, %r3
	sf	%f0, [%r3 + 0]
	lli	%r3, 1
	lli	%r4, 1
	add	%r4, %r2, %r4
	lf	%f0, [%r4 + 0]
	add	%r3, %r1, %r3
	sf	%f0, [%r3 + 0]
	lli	%r3, 2
	lli	%r4, 2
	add	%r2, %r2, %r4
	lf	%f0, [%r2 + 0]
	add	%r1, %r1, %r3
	sf	%f0, [%r1 + 0]
	jr	%ra
vecunit_sgn.2505:
	lli	%r3, 0
	add	%r3, %r1, %r3
	lf	%f0, [%r3 + 0]
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	fsqr.2441
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sf	%f0, [%sp + 2]
	movf	%f0, %f1
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	fsqr.2441
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lf	%f1, [%sp + 2]
	addf	%f0, %f1, %f0
	lli	%r1, 2
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sf	%f0, [%sp + 3]
	movf	%f0, %f1
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	fsqr.2441
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lf	%f1, [%sp + 3]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj_sqrt
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	sf	%f0, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fiszero.2437
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8720
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	bneq	%r2, %r1, bneq_else.8722
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lf	%f1, [%sp + 4]
	divf	%f0, %f0, %f1
	j	bneq_cont.8723
bneq_else.8722:
	llif	%f0, -1.000000
	lhif	%f0, -1.000000
	lf	%f1, [%sp + 4]
	divf	%f0, %f0, %f1
bneq_cont.8723:
	j	bneq_cont.8721
bneq_else.8720:
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
bneq_cont.8721:
	lli	%r1, 0
	lli	%r2, 0
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	mulf	%f1, %f1, %f0
	add	%r1, %r3, %r1
	sf	%f1, [%r1 + 0]
	lli	%r1, 1
	lli	%r2, 1
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	mulf	%f1, %f1, %f0
	add	%r1, %r3, %r1
	sf	%f1, [%r1 + 0]
	lli	%r1, 2
	lli	%r2, 2
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	mulf	%f0, %f1, %f0
	add	%r1, %r3, %r1
	sf	%f0, [%r1 + 0]
	jr	%ra
veciprod.2508:
	lli	%r3, 0
	add	%r3, %r1, %r3
	lf	%f0, [%r3 + 0]
	lli	%r3, 0
	add	%r3, %r2, %r3
	lf	%f1, [%r3 + 0]
	mulf	%f0, %f0, %f1
	lli	%r3, 1
	add	%r3, %r1, %r3
	lf	%f1, [%r3 + 0]
	lli	%r3, 1
	add	%r3, %r2, %r3
	lf	%f2, [%r3 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	lli	%r3, 2
	add	%r1, %r1, %r3
	lf	%f1, [%r1 + 0]
	lli	%r1, 2
	add	%r1, %r2, %r1
	lf	%f2, [%r1 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	jr	%ra
veciprod2.2511:
	lli	%r2, 0
	add	%r2, %r1, %r2
	lf	%f3, [%r2 + 0]
	mulf	%f0, %f3, %f0
	lli	%r2, 1
	add	%r2, %r1, %r2
	lf	%f3, [%r2 + 0]
	mulf	%f1, %f3, %f1
	addf	%f0, %f0, %f1
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f1, [%r1 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	jr	%ra
vecaccum.2516:
	lli	%r3, 0
	lli	%r4, 0
	add	%r4, %r1, %r4
	lf	%f1, [%r4 + 0]
	lli	%r4, 0
	add	%r4, %r2, %r4
	lf	%f2, [%r4 + 0]
	mulf	%f2, %f0, %f2
	addf	%f1, %f1, %f2
	add	%r3, %r1, %r3
	sf	%f1, [%r3 + 0]
	lli	%r3, 1
	lli	%r4, 1
	add	%r4, %r1, %r4
	lf	%f1, [%r4 + 0]
	lli	%r4, 1
	add	%r4, %r2, %r4
	lf	%f2, [%r4 + 0]
	mulf	%f2, %f0, %f2
	addf	%f1, %f1, %f2
	add	%r3, %r1, %r3
	sf	%f1, [%r3 + 0]
	lli	%r3, 2
	lli	%r4, 2
	add	%r4, %r1, %r4
	lf	%f1, [%r4 + 0]
	lli	%r4, 2
	add	%r2, %r2, %r4
	lf	%f2, [%r2 + 0]
	mulf	%f0, %f0, %f2
	addf	%f0, %f1, %f0
	add	%r1, %r1, %r3
	sf	%f0, [%r1 + 0]
	jr	%ra
vecadd.2520:
	lli	%r3, 0
	lli	%r4, 0
	add	%r4, %r1, %r4
	lf	%f0, [%r4 + 0]
	lli	%r4, 0
	add	%r4, %r2, %r4
	lf	%f1, [%r4 + 0]
	addf	%f0, %f0, %f1
	add	%r3, %r1, %r3
	sf	%f0, [%r3 + 0]
	lli	%r3, 1
	lli	%r4, 1
	add	%r4, %r1, %r4
	lf	%f0, [%r4 + 0]
	lli	%r4, 1
	add	%r4, %r2, %r4
	lf	%f1, [%r4 + 0]
	addf	%f0, %f0, %f1
	add	%r3, %r1, %r3
	sf	%f0, [%r3 + 0]
	lli	%r3, 2
	lli	%r4, 2
	add	%r4, %r1, %r4
	lf	%f0, [%r4 + 0]
	lli	%r4, 2
	add	%r2, %r2, %r4
	lf	%f1, [%r2 + 0]
	addf	%f0, %f0, %f1
	add	%r1, %r1, %r3
	sf	%f0, [%r1 + 0]
	jr	%ra
vecscale.2526:
	lli	%r2, 0
	lli	%r3, 0
	add	%r3, %r1, %r3
	lf	%f1, [%r3 + 0]
	mulf	%f1, %f1, %f0
	add	%r2, %r1, %r2
	sf	%f1, [%r2 + 0]
	lli	%r2, 1
	lli	%r3, 1
	add	%r3, %r1, %r3
	lf	%f1, [%r3 + 0]
	mulf	%f1, %f1, %f0
	add	%r2, %r1, %r2
	sf	%f1, [%r2 + 0]
	lli	%r2, 2
	lli	%r3, 2
	add	%r3, %r1, %r3
	lf	%f1, [%r3 + 0]
	mulf	%f0, %f1, %f0
	add	%r1, %r1, %r2
	sf	%f0, [%r1 + 0]
	jr	%ra
vecaccumv.2529:
	lli	%r4, 0
	lli	%r5, 0
	add	%r5, %r1, %r5
	lf	%f0, [%r5 + 0]
	lli	%r5, 0
	add	%r5, %r2, %r5
	lf	%f1, [%r5 + 0]
	lli	%r5, 0
	add	%r5, %r3, %r5
	lf	%f2, [%r5 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	add	%r4, %r1, %r4
	sf	%f0, [%r4 + 0]
	lli	%r4, 1
	lli	%r5, 1
	add	%r5, %r1, %r5
	lf	%f0, [%r5 + 0]
	lli	%r5, 1
	add	%r5, %r2, %r5
	lf	%f1, [%r5 + 0]
	lli	%r5, 1
	add	%r5, %r3, %r5
	lf	%f2, [%r5 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	add	%r4, %r1, %r4
	sf	%f0, [%r4 + 0]
	lli	%r4, 2
	lli	%r5, 2
	add	%r5, %r1, %r5
	lf	%f0, [%r5 + 0]
	lli	%r5, 2
	add	%r2, %r2, %r5
	lf	%f1, [%r2 + 0]
	lli	%r2, 2
	add	%r2, %r3, %r2
	lf	%f2, [%r2 + 0]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	add	%r1, %r1, %r4
	sf	%f0, [%r1 + 0]
	jr	%ra
o_texturetype.2533:
	lw	%r1, [%r1 + 0]
	jr	%ra
o_form.2535:
	lw	%r1, [%r1 + 1]
	jr	%ra
o_reflectiontype.2537:
	lw	%r1, [%r1 + 2]
	jr	%ra
o_isinvert.2539:
	lw	%r1, [%r1 + 6]
	jr	%ra
o_isrot.2541:
	lw	%r1, [%r1 + 3]
	jr	%ra
o_param_a.2543:
	lw	%r1, [%r1 + 4]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_b.2545:
	lw	%r1, [%r1 + 4]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_c.2547:
	lw	%r1, [%r1 + 4]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_abc.2549:
	lw	%r1, [%r1 + 4]
	jr	%ra
o_param_x.2551:
	lw	%r1, [%r1 + 5]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_y.2553:
	lw	%r1, [%r1 + 5]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_z.2555:
	lw	%r1, [%r1 + 5]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_diffuse.2557:
	lw	%r1, [%r1 + 7]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_hilight.2559:
	lw	%r1, [%r1 + 7]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_color_red.2561:
	lw	%r1, [%r1 + 8]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_color_green.2563:
	lw	%r1, [%r1 + 8]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_color_blue.2565:
	lw	%r1, [%r1 + 8]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_r1.2567:
	lw	%r1, [%r1 + 9]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_r2.2569:
	lw	%r1, [%r1 + 9]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_r3.2571:
	lw	%r1, [%r1 + 9]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_ctbl.2573:
	lw	%r1, [%r1 + 10]
	jr	%ra
p_rgb.2575:
	lw	%r1, [%r1 + 0]
	jr	%ra
p_intersection_points.2577:
	lw	%r1, [%r1 + 1]
	jr	%ra
p_surface_ids.2579:
	lw	%r1, [%r1 + 2]
	jr	%ra
p_calc_diffuse.2581:
	lw	%r1, [%r1 + 3]
	jr	%ra
p_energy.2583:
	lw	%r1, [%r1 + 4]
	jr	%ra
p_received_ray_20percent.2585:
	lw	%r1, [%r1 + 5]
	jr	%ra
p_group_id.2587:
	lw	%r1, [%r1 + 6]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	jr	%ra
p_set_group_id.2589:
	lw	%r1, [%r1 + 6]
	lli	%r3, 0
	add	%r1, %r1, %r3
	sw	%r2, [%r1 + 0]
	jr	%ra
p_nvectors.2592:
	lw	%r1, [%r1 + 7]
	jr	%ra
d_vec.2594:
	lw	%r1, [%r1 + 0]
	jr	%ra
d_const.2596:
	lw	%r1, [%r1 + 1]
	jr	%ra
r_surface_id.2598:
	lw	%r1, [%r1 + 0]
	jr	%ra
r_dvec.2600:
	lw	%r1, [%r1 + 1]
	jr	%ra
r_bright.2602:
	lf	%f0, [%r1 + 2]
	jr	%ra
rad.2604:
	llif	%f1, 0.017453
	lhif	%f1, 0.017453
	mulf	%f0, %f0, %f1
	jr	%ra
read_screen_settings.2606:
	lw	%r1, [%r27 + 5]
	lw	%r2, [%r27 + 4]
	lw	%r3, [%r27 + 3]
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	lli	%r6, 0
	sw	%r1, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r4, [%sp + 2]
	sw	%r2, [%sp + 3]
	sw	%r6, [%sp + 4]
	sw	%r5, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj_read_float
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	sw	%r1, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj_read_float
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	sw	%r1, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	yj_read_float
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 7]
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	yj_read_float
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	rad.2604
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	yj_cos
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lf	%f1, [%sp + 8]
	sf	%f0, [%sp + 9]
	movf	%f0, %f1
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	yj_sin
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	sf	%f0, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	yj_read_float
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	rad.2604
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	sf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj_cos
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lf	%f1, [%sp + 11]
	sf	%f0, [%sp + 12]
	movf	%f0, %f1
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	yj_sin
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r1, 0
	lf	%f1, [%sp + 9]
	mulf	%f2, %f1, %f0
	llif	%f3, 200.000000
	lhif	%f3, 200.000000
	mulf	%f2, %f2, %f3
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	sf	%f2, [%r1 + 0]
	lli	%r1, 1
	llif	%f2, -200.000000
	lhif	%f2, -200.000000
	lf	%f3, [%sp + 10]
	mulf	%f2, %f3, %f2
	add	%r1, %r2, %r1
	sf	%f2, [%r1 + 0]
	lli	%r1, 2
	lf	%f2, [%sp + 12]
	mulf	%f4, %f1, %f2
	llif	%f5, 200.000000
	lhif	%f5, 200.000000
	mulf	%f4, %f4, %f5
	add	%r1, %r2, %r1
	sf	%f4, [%r1 + 0]
	lli	%r1, 0
	lw	%r3, [%sp + 2]
	add	%r1, %r3, %r1
	sf	%f2, [%r1 + 0]
	lli	%r1, 1
	llif	%f4, 0.000000
	lhif	%f4, 0.000000
	add	%r1, %r3, %r1
	sf	%f4, [%r1 + 0]
	lli	%r1, 2
	sf	%f0, [%sp + 13]
	sw	%r1, [%sp + 14]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	yj_fneg
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r1, [%sp + 14]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 0
	lf	%f0, [%sp + 10]
	sw	%r1, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	yj_fneg
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f1, [%sp + 13]
	mulf	%f0, %f0, %f1
	lw	%r1, [%sp + 15]
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	lf	%f0, [%sp + 9]
	sw	%r1, [%sp + 16]
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	yj_fneg
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lw	%r1, [%sp + 16]
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	lf	%f0, [%sp + 10]
	sw	%r1, [%sp + 17]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	yj_fneg
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 12]
	mulf	%f0, %f0, %f1
	lw	%r1, [%sp + 17]
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 0
	lli	%r2, 0
	lw	%r3, [%sp + 5]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lli	%r2, 0
	lw	%r4, [%sp + 3]
	add	%r2, %r4, %r2
	lf	%f1, [%r2 + 0]
	subf	%f0, %f0, %f1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	lli	%r5, 1
	add	%r5, %r3, %r5
	lf	%f0, [%r5 + 0]
	lli	%r5, 1
	add	%r5, %r4, %r5
	lf	%f1, [%r5 + 0]
	subf	%f0, %f0, %f1
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	lli	%r5, 2
	add	%r3, %r3, %r5
	lf	%f0, [%r3 + 0]
	lli	%r3, 2
	add	%r3, %r4, %r3
	lf	%f1, [%r3 + 0]
	subf	%f0, %f0, %f1
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	jr	%ra
read_light.2608:
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
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	rad.2604
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	sf	%f0, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj_sin
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r1, 1
	sw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj_fneg
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r1, [%sp + 3]
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj_read_float
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	rad.2604
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lf	%f1, [%sp + 2]
	sf	%f0, [%sp + 4]
	movf	%f0, %f1
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_cos
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 4]
	sf	%f0, [%sp + 5]
	movf	%f0, %f1
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj_sin
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r1, 0
	lf	%f1, [%sp + 5]
	mulf	%f0, %f1, %f0
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lf	%f0, [%sp + 4]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj_cos
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r1, 2
	lf	%f1, [%sp + 5]
	mulf	%f0, %f1, %f0
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 0
	sw	%r1, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj_read_float
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	jr	%ra
rotate_quadratic_matrix.2610:
	lli	%r3, 0
	add	%r3, %r2, %r3
	lf	%f0, [%r3 + 0]
	sw	%r1, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_cos
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 0
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sf	%f0, [%sp + 2]
	movf	%f0, %f1
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj_sin
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sf	%f0, [%sp + 3]
	movf	%f0, %f1
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj_cos
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sf	%f0, [%sp + 4]
	movf	%f0, %f1
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_sin
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r1, 2
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sf	%f0, [%sp + 5]
	movf	%f0, %f1
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj_cos
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r1, 2
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sf	%f0, [%sp + 6]
	movf	%f0, %f1
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj_sin
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
	sf	%f0, [%sp + 7]
	sf	%f8, [%sp + 8]
	sf	%f10, [%sp + 9]
	sf	%f6, [%sp + 10]
	sf	%f9, [%sp + 11]
	sf	%f3, [%sp + 12]
	movf	%f0, %f4
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	yj_fneg
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lf	%f1, [%sp + 4]
	lf	%f2, [%sp + 3]
	mulf	%f2, %f2, %f1
	lf	%f3, [%sp + 2]
	mulf	%f1, %f3, %f1
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f3, [%r1 + 0]
	lli	%r1, 1
	add	%r1, %r2, %r1
	lf	%f4, [%r1 + 0]
	lli	%r1, 2
	add	%r1, %r2, %r1
	lf	%f5, [%r1 + 0]
	lli	%r1, 0
	lf	%f6, [%sp + 12]
	sf	%f1, [%sp + 13]
	sf	%f2, [%sp + 14]
	sw	%r1, [%sp + 15]
	sf	%f5, [%sp + 16]
	sf	%f0, [%sp + 17]
	sf	%f4, [%sp + 18]
	sf	%f3, [%sp + 19]
	movf	%f0, %f6
	sw	%ra, [%sp + 20]
	addi	%sp, %sp, 21
	jal	fsqr.2441
	subi	%sp, %sp, 21
	lw	%ra, [%sp + 20]
	lf	%f1, [%sp + 19]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 11]
	sf	%f0, [%sp + 20]
	movf	%f0, %f2
	sw	%ra, [%sp + 21]
	addi	%sp, %sp, 22
	jal	fsqr.2441
	subi	%sp, %sp, 22
	lw	%ra, [%sp + 21]
	lf	%f1, [%sp + 18]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 20]
	addf	%f0, %f2, %f0
	lf	%f2, [%sp + 17]
	sf	%f0, [%sp + 21]
	movf	%f0, %f2
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	fsqr.2441
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lf	%f1, [%sp + 16]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 21]
	addf	%f0, %f2, %f0
	lw	%r1, [%sp + 15]
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	lf	%f0, [%sp + 10]
	sw	%r1, [%sp + 22]
	sw	%ra, [%sp + 23]
	addi	%sp, %sp, 24
	jal	fsqr.2441
	subi	%sp, %sp, 24
	lw	%ra, [%sp + 23]
	lf	%f1, [%sp + 19]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 9]
	sf	%f0, [%sp + 23]
	movf	%f0, %f2
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	fsqr.2441
	subi	%sp, %sp, 25
	lw	%ra, [%sp + 24]
	lf	%f1, [%sp + 18]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 23]
	addf	%f0, %f2, %f0
	lf	%f2, [%sp + 14]
	sf	%f0, [%sp + 24]
	movf	%f0, %f2
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	fsqr.2441
	subi	%sp, %sp, 26
	lw	%ra, [%sp + 25]
	lf	%f1, [%sp + 16]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 24]
	addf	%f0, %f2, %f0
	lw	%r1, [%sp + 22]
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	lf	%f0, [%sp + 8]
	sw	%r1, [%sp + 25]
	sw	%ra, [%sp + 26]
	addi	%sp, %sp, 27
	jal	fsqr.2441
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	lf	%f1, [%sp + 19]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 7]
	sf	%f0, [%sp + 26]
	movf	%f0, %f2
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	fsqr.2441
	subi	%sp, %sp, 28
	lw	%ra, [%sp + 27]
	lf	%f1, [%sp + 18]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 26]
	addf	%f0, %f2, %f0
	lf	%f2, [%sp + 13]
	sf	%f0, [%sp + 27]
	movf	%f0, %f2
	sw	%ra, [%sp + 28]
	addi	%sp, %sp, 29
	jal	fsqr.2441
	subi	%sp, %sp, 29
	lw	%ra, [%sp + 28]
	lf	%f1, [%sp + 16]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 27]
	addf	%f0, %f2, %f0
	lw	%r1, [%sp + 25]
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 0
	llif	%f0, 2.000000
	lhif	%f0, 2.000000
	lf	%f2, [%sp + 10]
	lf	%f3, [%sp + 19]
	mulf	%f4, %f3, %f2
	lf	%f5, [%sp + 8]
	mulf	%f4, %f4, %f5
	lf	%f6, [%sp + 9]
	lf	%f7, [%sp + 18]
	mulf	%f8, %f7, %f6
	lf	%f9, [%sp + 7]
	mulf	%f8, %f8, %f9
	addf	%f4, %f4, %f8
	lf	%f8, [%sp + 14]
	mulf	%f10, %f1, %f8
	lf	%f11, [%sp + 13]
	mulf	%f10, %f10, %f11
	addf	%f4, %f4, %f10
	mulf	%f0, %f0, %f4
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	llif	%f0, 2.000000
	lhif	%f0, 2.000000
	lf	%f4, [%sp + 12]
	mulf	%f10, %f3, %f4
	mulf	%f5, %f10, %f5
	lf	%f10, [%sp + 11]
	mulf	%f12, %f7, %f10
	mulf	%f9, %f12, %f9
	addf	%f5, %f5, %f9
	lf	%f9, [%sp + 17]
	mulf	%f12, %f1, %f9
	mulf	%f11, %f12, %f11
	addf	%f5, %f5, %f11
	mulf	%f0, %f0, %f5
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	llif	%f0, 2.000000
	lhif	%f0, 2.000000
	mulf	%f3, %f3, %f4
	mulf	%f2, %f3, %f2
	mulf	%f3, %f7, %f10
	mulf	%f3, %f3, %f6
	addf	%f2, %f2, %f3
	mulf	%f1, %f1, %f9
	mulf	%f1, %f1, %f8
	addf	%f1, %f2, %f1
	mulf	%f0, %f0, %f1
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	jr	%ra
read_nth_object.2613:
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
	bneq	%r1, %r2, bneq_else.8733
	lli	%r1, 0
	jr	%ra
bneq_else.8733:
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
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj_create_float_array
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
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	yj_create_float_array
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
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	fisneg.2435
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lli	%r2, 2
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 14]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	yj_create_float_array
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
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	yj_create_float_array
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
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	yj_create_float_array
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lli	%r2, 0
	lw	%r3, [%sp + 5]
	sw	%r1, [%sp + 22]
	bneq	%r3, %r2, bneq_else.8734
	j	bneq_cont.8735
bneq_else.8734:
	lli	%r2, 0
	sw	%r2, [%sp + 23]
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	yj_read_float
	subi	%sp, %sp, 25
	lw	%ra, [%sp + 24]
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	rad.2604
	subi	%sp, %sp, 25
	lw	%ra, [%sp + 24]
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
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	rad.2604
	subi	%sp, %sp, 26
	lw	%ra, [%sp + 25]
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
	sw	%ra, [%sp + 26]
	addi	%sp, %sp, 27
	jal	rad.2604
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	lw	%r1, [%sp + 25]
	lw	%r2, [%sp + 22]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.8735:
	lli	%r1, 2
	lw	%r2, [%sp + 3]
	bneq	%r2, %r1, bneq_else.8736
	lli	%r1, 1
	j	bneq_cont.8737
bneq_else.8736:
	lw	%r1, [%sp + 14]
bneq_cont.8737:
	lli	%r3, 4
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 26]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	yj_create_float_array
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
	bneq	%r5, %r2, bneq_else.8738
	lli	%r2, 0
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lli	%r2, 0
	sw	%r2, [%sp + 27]
	sf	%f0, [%sp + 28]
	sw	%ra, [%sp + 29]
	addi	%sp, %sp, 30
	jal	fiszero.2437
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8740
	lf	%f0, [%sp + 28]
	sw	%ra, [%sp + 29]
	addi	%sp, %sp, 30
	jal	sgn.2479
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	lf	%f1, [%sp + 28]
	sf	%f0, [%sp + 29]
	movf	%f0, %f1
	sw	%ra, [%sp + 30]
	addi	%sp, %sp, 31
	jal	fsqr.2441
	subi	%sp, %sp, 31
	lw	%ra, [%sp + 30]
	lf	%f1, [%sp + 29]
	divf	%f0, %f1, %f0
	j	bneq_cont.8741
bneq_else.8740:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.8741:
	lw	%r1, [%sp + 27]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	lli	%r1, 1
	sw	%r1, [%sp + 30]
	sf	%f0, [%sp + 31]
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	fiszero.2437
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8742
	lf	%f0, [%sp + 31]
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	sgn.2479
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lf	%f1, [%sp + 31]
	sf	%f0, [%sp + 32]
	movf	%f0, %f1
	sw	%ra, [%sp + 33]
	addi	%sp, %sp, 34
	jal	fsqr.2441
	subi	%sp, %sp, 34
	lw	%ra, [%sp + 33]
	lf	%f1, [%sp + 32]
	divf	%f0, %f1, %f0
	j	bneq_cont.8743
bneq_else.8742:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.8743:
	lw	%r1, [%sp + 30]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	lli	%r1, 2
	sw	%r1, [%sp + 33]
	sf	%f0, [%sp + 34]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	fiszero.2437
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8744
	lf	%f0, [%sp + 34]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	sgn.2479
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lf	%f1, [%sp + 34]
	sf	%f0, [%sp + 35]
	movf	%f0, %f1
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	fsqr.2441
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	lf	%f1, [%sp + 35]
	divf	%f0, %f1, %f0
	j	bneq_cont.8745
bneq_else.8744:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.8745:
	lw	%r1, [%sp + 33]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.8739
bneq_else.8738:
	lli	%r2, 2
	bneq	%r5, %r2, bneq_else.8746
	lli	%r2, 0
	lw	%r5, [%sp + 14]
	bneq	%r5, %r2, bneq_else.8748
	lli	%r2, 1
	j	bneq_cont.8749
bneq_else.8748:
	lli	%r2, 0
bneq_cont.8749:
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	vecunit_sgn.2505
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	j	bneq_cont.8747
bneq_else.8746:
bneq_cont.8747:
bneq_cont.8739:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	bneq	%r2, %r1, bneq_else.8750
	j	bneq_cont.8751
bneq_else.8750:
	lw	%r1, [%sp + 7]
	lw	%r2, [%sp + 22]
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	rotate_quadratic_matrix.2610
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
bneq_cont.8751:
	lli	%r1, 1
	jr	%ra
read_object.2615:
	lw	%r2, [%r27 + 2]
	lw	%r3, [%r27 + 1]
	lli	%r4, 60
	bgt	%r4, %r1, bgt_else.8752
	jr	%ra
bgt_else.8752:
	sw	%r27, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r3, [%sp + 2]
	add	%r27, %r0, %r2
	sw	%ra, [%sp + 3]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 4
	jalr	%r26
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8754
	lli	%r1, 0
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 1]
	sw	%r2, [%r1 + 0]
	jr	%ra
bneq_else.8754:
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
read_all_object.2617:
	lw	%r27, [%r27 + 1]
	lli	%r1, 0
	lw	%r26, [%r27 + 0]
	jr	%r26
read_net_item.2619:
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_read_int
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, -1
	lhi	%r2, -1
	bneq	%r1, %r2, bneq_else.8756
	lli	%r1, 1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lli	%r2, -1
	lhi	%r2, -1
	j	yj_create_array
bneq_else.8756:
	lli	%r2, 1
	lw	%r3, [%sp + 0]
	add	%r2, %r3, %r2
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	read_net_item.2619
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r2, [%sp + 0]
	add	%r2, %r1, %r2
	lw	%r3, [%sp + 1]
	sw	%r3, [%r2 + 0]
	jr	%ra
read_or_network.2621:
	lli	%r2, 0
	sw	%r1, [%sp + 0]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	read_net_item.2619
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	add	%r2, %r0, %r1
	lli	%r1, 0
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r3, -1
	lhi	%r3, -1
	bneq	%r1, %r3, bneq_else.8757
	lli	%r1, 1
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	j	yj_create_array
bneq_else.8757:
	lli	%r1, 1
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	sw	%r2, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	read_or_network.2621
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r2, [%sp + 0]
	add	%r2, %r1, %r2
	lw	%r3, [%sp + 1]
	sw	%r3, [%r2 + 0]
	jr	%ra
read_and_network.2623:
	lw	%r2, [%r27 + 1]
	lli	%r3, 0
	sw	%r27, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r2, [%sp + 2]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	read_net_item.2619
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 0
	add	%r2, %r1, %r2
	lw	%r2, [%r2 + 0]
	lli	%r3, -1
	lhi	%r3, -1
	bneq	%r2, %r3, bneq_else.8758
	jr	%ra
bneq_else.8758:
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 2]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	lli	%r1, 1
	add	%r1, %r2, %r1
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
read_parameter.2625:
	lw	%r1, [%r27 + 5]
	lw	%r2, [%r27 + 4]
	lw	%r3, [%r27 + 3]
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	sw	%r5, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r4, [%sp + 2]
	sw	%r2, [%sp + 3]
	add	%r27, %r0, %r1
	sw	%ra, [%sp + 4]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 5
	jalr	%r26
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r27, [%sp + 3]
	sw	%ra, [%sp + 4]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 5
	jalr	%r26
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r27, [%sp + 2]
	sw	%ra, [%sp + 4]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 5
	jalr	%r26
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r1, 0
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 4]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 5
	jalr	%r26
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r1, 0
	lli	%r2, 0
	sw	%r1, [%sp + 4]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	read_or_network.2621
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 0]
	add	%r2, %r3, %r2
	sw	%r1, [%r2 + 0]
	jr	%ra
solver_rect_surface.2627:
	lw	%r6, [%r27 + 1]
	add	%r7, %r2, %r3
	lf	%f3, [%r7 + 0]
	sw	%r6, [%sp + 0]
	sf	%f2, [%sp + 1]
	sw	%r5, [%sp + 2]
	sf	%f1, [%sp + 3]
	sw	%r4, [%sp + 4]
	sf	%f0, [%sp + 5]
	sw	%r3, [%sp + 6]
	sw	%r2, [%sp + 7]
	sw	%r1, [%sp + 8]
	movf	%f0, %f3
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	fiszero.2437
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8761
	lw	%r1, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_abc.2549
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r2, [%sp + 8]
	sw	%r1, [%sp + 9]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_isinvert.2539
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lw	%r2, [%sp + 6]
	lw	%r3, [%sp + 7]
	add	%r4, %r3, %r2
	lf	%f0, [%r4 + 0]
	sw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fisneg.2435
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	xor.2476
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r2, [%sp + 6]
	lw	%r3, [%sp + 9]
	add	%r4, %r3, %r2
	lf	%f0, [%r4 + 0]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fneg_cond.2481
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lf	%f1, [%sp + 5]
	subf	%f0, %f0, %f1
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	divf	%f0, %f0, %f1
	lw	%r1, [%sp + 4]
	add	%r3, %r2, %r1
	lf	%f1, [%r3 + 0]
	mulf	%f1, %f0, %f1
	lf	%f2, [%sp + 3]
	addf	%f1, %f1, %f2
	sf	%f0, [%sp + 11]
	movf	%f0, %f1
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj_fabs
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 9]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	fless.2443
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8762
	lli	%r1, 0
	jr	%ra
bneq_else.8762:
	lw	%r1, [%sp + 2]
	lw	%r2, [%sp + 7]
	add	%r2, %r2, %r1
	lf	%f0, [%r2 + 0]
	lf	%f1, [%sp + 11]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 1]
	addf	%f0, %f0, %f2
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj_fabs
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lw	%r1, [%sp + 2]
	lw	%r2, [%sp + 9]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	fless.2443
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8763
	lli	%r1, 0
	jr	%ra
bneq_else.8763:
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 11]
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
bneq_else.8761:
	lli	%r1, 0
	jr	%ra
solver_rect.2636:
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
	bneq	%r1, %r2, bneq_else.8764
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
	bneq	%r1, %r2, bneq_else.8765
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
	bneq	%r1, %r2, bneq_else.8766
	lli	%r1, 0
	jr	%ra
bneq_else.8766:
	lli	%r1, 3
	jr	%ra
bneq_else.8765:
	lli	%r1, 2
	jr	%ra
bneq_else.8764:
	lli	%r1, 1
	jr	%ra
solver_surface.2642:
	lw	%r3, [%r27 + 1]
	sw	%r3, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_param_abc.2549
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 4]
	sw	%r2, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	veciprod.2508
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	fispos.2433
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8767
	lli	%r1, 0
	jr	%ra
bneq_else.8767:
	lli	%r1, 0
	lf	%f0, [%sp + 3]
	lf	%f1, [%sp + 2]
	lf	%f2, [%sp + 1]
	lw	%r2, [%sp + 5]
	sw	%r1, [%sp + 7]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	veciprod2.2511
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	yj_fneg
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lf	%f1, [%sp + 6]
	divf	%f0, %f0, %f1
	lw	%r1, [%sp + 7]
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
quadratic.2648:
	sf	%f0, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	fsqr.2441
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r1, [%sp + 3]
	sf	%f0, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_param_a.2543
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 4]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 2]
	sf	%f0, [%sp + 5]
	movf	%f0, %f1
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fsqr.2441
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r1, [%sp + 3]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	o_param_b.2545
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lf	%f1, [%sp + 6]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 5]
	addf	%f0, %f1, %f0
	lf	%f1, [%sp + 1]
	sf	%f0, [%sp + 7]
	movf	%f0, %f1
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	fsqr.2441
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 3]
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_c.2547
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lf	%f1, [%sp + 8]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 7]
	addf	%f0, %f1, %f0
	lw	%r1, [%sp + 3]
	sf	%f0, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_isrot.2541
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8768
	lf	%f0, [%sp + 9]
	jr	%ra
bneq_else.8768:
	lf	%f0, [%sp + 1]
	lf	%f1, [%sp + 2]
	mulf	%f2, %f1, %f0
	lw	%r1, [%sp + 3]
	sf	%f2, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_param_r1.2567
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lf	%f1, [%sp + 10]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 9]
	addf	%f0, %f1, %f0
	lf	%f1, [%sp + 0]
	lf	%f2, [%sp + 1]
	mulf	%f2, %f2, %f1
	lw	%r1, [%sp + 3]
	sf	%f0, [%sp + 11]
	sf	%f2, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	o_param_r2.2569
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lf	%f1, [%sp + 12]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 11]
	addf	%f0, %f1, %f0
	lf	%f1, [%sp + 2]
	lf	%f2, [%sp + 0]
	mulf	%f1, %f2, %f1
	lw	%r1, [%sp + 3]
	sf	%f0, [%sp + 13]
	sf	%f1, [%sp + 14]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	o_param_r3.2571
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lf	%f1, [%sp + 14]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 13]
	addf	%f0, %f1, %f0
	jr	%ra
bilinear.2653:
	mulf	%f6, %f0, %f3
	sf	%f3, [%sp + 0]
	sf	%f0, [%sp + 1]
	sf	%f5, [%sp + 2]
	sf	%f2, [%sp + 3]
	sw	%r1, [%sp + 4]
	sf	%f4, [%sp + 5]
	sf	%f1, [%sp + 6]
	sf	%f6, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	o_param_a.2543
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lf	%f1, [%sp + 7]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 5]
	lf	%f2, [%sp + 6]
	mulf	%f3, %f2, %f1
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 8]
	sf	%f3, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_param_b.2545
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 9]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 8]
	addf	%f0, %f1, %f0
	lf	%f1, [%sp + 2]
	lf	%f2, [%sp + 3]
	mulf	%f3, %f2, %f1
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 10]
	sf	%f3, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_param_c.2547
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lf	%f1, [%sp + 11]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 10]
	addf	%f0, %f1, %f0
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	o_isrot.2541
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8769
	lf	%f0, [%sp + 12]
	jr	%ra
bneq_else.8769:
	lf	%f0, [%sp + 5]
	lf	%f1, [%sp + 3]
	mulf	%f2, %f1, %f0
	lf	%f3, [%sp + 2]
	lf	%f4, [%sp + 6]
	mulf	%f5, %f4, %f3
	addf	%f2, %f2, %f5
	lw	%r1, [%sp + 4]
	sf	%f2, [%sp + 13]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	o_param_r1.2567
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lf	%f1, [%sp + 13]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 2]
	lf	%f2, [%sp + 1]
	mulf	%f1, %f2, %f1
	lf	%f3, [%sp + 0]
	lf	%f4, [%sp + 3]
	mulf	%f4, %f4, %f3
	addf	%f1, %f1, %f4
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 14]
	sf	%f1, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	o_param_r2.2569
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f1, [%sp + 15]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 14]
	addf	%f0, %f1, %f0
	lf	%f1, [%sp + 5]
	lf	%f2, [%sp + 1]
	mulf	%f1, %f2, %f1
	lf	%f2, [%sp + 0]
	lf	%f3, [%sp + 6]
	mulf	%f2, %f3, %f2
	addf	%f1, %f1, %f2
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 16]
	sf	%f1, [%sp + 17]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	o_param_r3.2571
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 17]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 16]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	fhalf.2439
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 12]
	addf	%f0, %f1, %f0
	jr	%ra
solver_second.2661:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	add	%r4, %r2, %r4
	lf	%f3, [%r4 + 0]
	lli	%r4, 1
	add	%r4, %r2, %r4
	lf	%f4, [%r4 + 0]
	lli	%r4, 2
	add	%r4, %r2, %r4
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
	jal	quadratic.2648
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	fiszero.2437
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8770
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	lli	%r1, 1
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lli	%r1, 2
	add	%r1, %r2, %r1
	lf	%f2, [%r1 + 0]
	lf	%f3, [%sp + 3]
	lf	%f4, [%sp + 2]
	lf	%f5, [%sp + 1]
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	bilinear.2653
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
	jal	quadratic.2648
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_form.2535
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 3
	bneq	%r1, %r2, bneq_else.8771
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lf	%f1, [%sp + 8]
	subf	%f0, %f1, %f0
	j	bneq_cont.8772
bneq_else.8771:
	lf	%f0, [%sp + 8]
bneq_cont.8772:
	lf	%f1, [%sp + 7]
	sf	%f0, [%sp + 9]
	movf	%f0, %f1
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fsqr.2441
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 6]
	mulf	%f1, %f2, %f1
	subf	%f0, %f0, %f1
	sf	%f0, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fispos.2433
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8773
	lli	%r1, 0
	jr	%ra
bneq_else.8773:
	lf	%f0, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	yj_sqrt
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_isinvert.2539
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8774
	lf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj_fneg
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	j	bneq_cont.8775
bneq_else.8774:
	lf	%f0, [%sp + 11]
bneq_cont.8775:
	lli	%r1, 0
	lf	%f1, [%sp + 7]
	subf	%f0, %f0, %f1
	lf	%f1, [%sp + 6]
	divf	%f0, %f0, %f1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
bneq_else.8770:
	lli	%r1, 0
	jr	%ra
solver.2667:
	lw	%r4, [%r27 + 4]
	lw	%r5, [%r27 + 3]
	lw	%r6, [%r27 + 2]
	lw	%r7, [%r27 + 1]
	add	%r1, %r7, %r1
	lw	%r1, [%r1 + 0]
	lli	%r7, 0
	add	%r7, %r3, %r7
	lf	%f0, [%r7 + 0]
	sw	%r5, [%sp + 0]
	sw	%r4, [%sp + 1]
	sw	%r2, [%sp + 2]
	sw	%r6, [%sp + 3]
	sw	%r1, [%sp + 4]
	sw	%r3, [%sp + 5]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	o_param_x.2551
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lf	%f1, [%sp + 6]
	subf	%f0, %f1, %f0
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 7]
	sf	%f1, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_y.2553
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lf	%f1, [%sp + 8]
	subf	%f0, %f1, %f0
	lli	%r1, 2
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 9]
	sf	%f1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_param_z.2555
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lf	%f1, [%sp + 10]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_form.2535
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.8776
	lf	%f0, [%sp + 7]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 11]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 3]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8776:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.8777
	lf	%f0, [%sp + 7]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 11]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8777:
	lf	%f0, [%sp + 7]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 11]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
solver_rect_fast.2671:
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	add	%r5, %r3, %r5
	lf	%f3, [%r5 + 0]
	subf	%f3, %f3, %f0
	lli	%r5, 1
	add	%r5, %r3, %r5
	lf	%f4, [%r5 + 0]
	mulf	%f3, %f3, %f4
	lli	%r5, 1
	add	%r5, %r2, %r5
	lf	%f4, [%r5 + 0]
	mulf	%f4, %f3, %f4
	addf	%f4, %f4, %f1
	sw	%r4, [%sp + 0]
	sf	%f0, [%sp + 1]
	sf	%f1, [%sp + 2]
	sw	%r3, [%sp + 3]
	sf	%f2, [%sp + 4]
	sf	%f3, [%sp + 5]
	sw	%r2, [%sp + 6]
	sw	%r1, [%sp + 7]
	movf	%f0, %f4
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	yj_fabs
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 7]
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_b.2545
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	movf	%f1, %f0
	lf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	fless.2443
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8778
	lli	%r1, 0
	j	bneq_cont.8779
bneq_else.8778:
	lli	%r1, 2
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	lf	%f1, [%sp + 5]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 4]
	addf	%f0, %f0, %f2
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	yj_fabs
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r1, [%sp + 7]
	sf	%f0, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_param_c.2547
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	movf	%f1, %f0
	lf	%f0, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fless.2443
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8780
	lli	%r1, 0
	j	bneq_cont.8781
bneq_else.8780:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fiszero.2437
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8782
	lli	%r1, 1
	j	bneq_cont.8783
bneq_else.8782:
	lli	%r1, 0
bneq_cont.8783:
bneq_cont.8781:
bneq_cont.8779:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8784
	lli	%r1, 2
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	lf	%f1, [%sp + 2]
	subf	%f0, %f0, %f1
	lli	%r1, 3
	add	%r1, %r2, %r1
	lf	%f2, [%r1 + 0]
	mulf	%f0, %f0, %f2
	lli	%r1, 0
	lw	%r3, [%sp + 6]
	add	%r1, %r3, %r1
	lf	%f2, [%r1 + 0]
	mulf	%f2, %f0, %f2
	lf	%f3, [%sp + 1]
	addf	%f2, %f2, %f3
	sf	%f0, [%sp + 10]
	movf	%f0, %f2
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	yj_fabs
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r1, [%sp + 7]
	sf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_param_a.2543
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	movf	%f1, %f0
	lf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	fless.2443
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8785
	lli	%r1, 0
	j	bneq_cont.8786
bneq_else.8785:
	lli	%r1, 2
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	lf	%f1, [%sp + 10]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 4]
	addf	%f0, %f0, %f2
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj_fabs
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lw	%r1, [%sp + 7]
	sf	%f0, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	o_param_c.2547
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	movf	%f1, %f0
	lf	%f0, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	fless.2443
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8787
	lli	%r1, 0
	j	bneq_cont.8788
bneq_else.8787:
	lli	%r1, 3
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	fiszero.2437
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8789
	lli	%r1, 1
	j	bneq_cont.8790
bneq_else.8789:
	lli	%r1, 0
bneq_cont.8790:
bneq_cont.8788:
bneq_cont.8786:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8791
	lli	%r1, 4
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	lf	%f1, [%sp + 4]
	subf	%f0, %f0, %f1
	lli	%r1, 5
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	mulf	%f0, %f0, %f1
	lli	%r1, 0
	lw	%r3, [%sp + 6]
	add	%r1, %r3, %r1
	lf	%f1, [%r1 + 0]
	mulf	%f1, %f0, %f1
	lf	%f2, [%sp + 1]
	addf	%f1, %f1, %f2
	sf	%f0, [%sp + 13]
	movf	%f0, %f1
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	yj_fabs
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lw	%r1, [%sp + 7]
	sf	%f0, [%sp + 14]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	o_param_a.2543
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	movf	%f1, %f0
	lf	%f0, [%sp + 14]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	fless.2443
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8792
	lli	%r1, 0
	j	bneq_cont.8793
bneq_else.8792:
	lli	%r1, 1
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	lf	%f1, [%sp + 13]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 2]
	addf	%f0, %f0, %f2
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	yj_fabs
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r1, [%sp + 7]
	sf	%f0, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	o_param_b.2545
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	movf	%f1, %f0
	lf	%f0, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	fless.2443
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8794
	lli	%r1, 0
	j	bneq_cont.8795
bneq_else.8794:
	lli	%r1, 5
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	fiszero.2437
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8796
	lli	%r1, 1
	j	bneq_cont.8797
bneq_else.8796:
	lli	%r1, 0
bneq_cont.8797:
bneq_cont.8795:
bneq_cont.8793:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8798
	lli	%r1, 0
	jr	%ra
bneq_else.8798:
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 13]
	sf	%f0, [%r1 + 0]
	lli	%r1, 3
	jr	%ra
bneq_else.8791:
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 10]
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	jr	%ra
bneq_else.8784:
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 5]
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
solver_surface_fast.2678:
	lw	%r1, [%r27 + 1]
	lli	%r3, 0
	add	%r3, %r2, %r3
	lf	%f3, [%r3 + 0]
	sw	%r1, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%r2, [%sp + 4]
	movf	%f0, %f3
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fisneg.2435
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8799
	lli	%r1, 0
	jr	%ra
bneq_else.8799:
	lli	%r1, 0
	lli	%r2, 1
	lw	%r3, [%sp + 4]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lf	%f1, [%sp + 3]
	mulf	%f0, %f0, %f1
	lli	%r2, 2
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	lf	%f2, [%sp + 2]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	lli	%r2, 3
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	lf	%f2, [%sp + 1]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
solver_second_fast.2684:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	add	%r4, %r2, %r4
	lf	%f3, [%r4 + 0]
	sw	%r3, [%sp + 0]
	sf	%f3, [%sp + 1]
	sw	%r1, [%sp + 2]
	sf	%f2, [%sp + 3]
	sf	%f1, [%sp + 4]
	sf	%f0, [%sp + 5]
	sw	%r2, [%sp + 6]
	movf	%f0, %f3
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	fiszero.2437
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8800
	lli	%r1, 1
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	lf	%f1, [%sp + 5]
	mulf	%f0, %f0, %f1
	lli	%r1, 2
	add	%r1, %r2, %r1
	lf	%f2, [%r1 + 0]
	lf	%f3, [%sp + 4]
	mulf	%f2, %f2, %f3
	addf	%f0, %f0, %f2
	lli	%r1, 3
	add	%r1, %r2, %r1
	lf	%f2, [%r1 + 0]
	lf	%f4, [%sp + 3]
	mulf	%f2, %f2, %f4
	addf	%f0, %f0, %f2
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 7]
	movf	%f2, %f4
	movf	%f0, %f1
	movf	%f1, %f3
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	quadratic.2648
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_form.2535
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 3
	bneq	%r1, %r2, bneq_else.8801
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lf	%f1, [%sp + 8]
	subf	%f0, %f1, %f0
	j	bneq_cont.8802
bneq_else.8801:
	lf	%f0, [%sp + 8]
bneq_cont.8802:
	lf	%f1, [%sp + 7]
	sf	%f0, [%sp + 9]
	movf	%f0, %f1
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fsqr.2441
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 1]
	mulf	%f1, %f2, %f1
	subf	%f0, %f0, %f1
	sf	%f0, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fispos.2433
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8803
	lli	%r1, 0
	jr	%ra
bneq_else.8803:
	lw	%r1, [%sp + 2]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_isinvert.2539
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8804
	lli	%r1, 0
	lf	%f0, [%sp + 10]
	sw	%r1, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj_sqrt
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lf	%f1, [%sp + 7]
	subf	%f0, %f1, %f0
	lli	%r1, 4
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	mulf	%f0, %f0, %f1
	lw	%r1, [%sp + 11]
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.8805
bneq_else.8804:
	lli	%r1, 0
	lf	%f0, [%sp + 10]
	sw	%r1, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	yj_sqrt
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lf	%f1, [%sp + 7]
	addf	%f0, %f1, %f0
	lli	%r1, 4
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	mulf	%f0, %f0, %f1
	lw	%r1, [%sp + 12]
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.8805:
	lli	%r1, 1
	jr	%ra
bneq_else.8800:
	lli	%r1, 0
	jr	%ra
solver_fast.2690:
	lw	%r4, [%r27 + 4]
	lw	%r5, [%r27 + 3]
	lw	%r6, [%r27 + 2]
	lw	%r7, [%r27 + 1]
	add	%r7, %r7, %r1
	lw	%r7, [%r7 + 0]
	lli	%r8, 0
	add	%r8, %r3, %r8
	lf	%f0, [%r8 + 0]
	sw	%r5, [%sp + 0]
	sw	%r4, [%sp + 1]
	sw	%r6, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%r7, [%sp + 5]
	sw	%r3, [%sp + 6]
	sf	%f0, [%sp + 7]
	add	%r1, %r0, %r7
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	o_param_x.2551
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lf	%f1, [%sp + 7]
	subf	%f0, %f1, %f0
	lli	%r1, 1
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 5]
	sf	%f0, [%sp + 8]
	sf	%f1, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_param_y.2553
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 9]
	subf	%f0, %f1, %f0
	lli	%r1, 2
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 5]
	sf	%f0, [%sp + 10]
	sf	%f1, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_param_z.2555
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lf	%f1, [%sp + 11]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	d_const.2596
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lw	%r2, [%sp + 3]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lw	%r2, [%sp + 5]
	sw	%r1, [%sp + 13]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	o_form.2535
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.8806
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	d_vec.2594
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	add	%r2, %r0, %r1
	lf	%f0, [%sp + 8]
	lf	%f1, [%sp + 10]
	lf	%f2, [%sp + 12]
	lw	%r1, [%sp + 5]
	lw	%r3, [%sp + 13]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8806:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.8807
	lf	%f0, [%sp + 8]
	lf	%f1, [%sp + 10]
	lf	%f2, [%sp + 12]
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 13]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8807:
	lf	%f0, [%sp + 8]
	lf	%f1, [%sp + 10]
	lf	%f2, [%sp + 12]
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 13]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
solver_surface_fast2.2694:
	lw	%r1, [%r27 + 1]
	lli	%r4, 0
	add	%r4, %r2, %r4
	lf	%f0, [%r4 + 0]
	sw	%r1, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r2, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	fisneg.2435
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8808
	lli	%r1, 0
	jr	%ra
bneq_else.8808:
	lli	%r1, 0
	lli	%r2, 0
	lw	%r3, [%sp + 2]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lli	%r2, 3
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	mulf	%f0, %f0, %f1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
solver_second_fast2.2701:
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	add	%r5, %r2, %r5
	lf	%f3, [%r5 + 0]
	sw	%r4, [%sp + 0]
	sw	%r1, [%sp + 1]
	sf	%f3, [%sp + 2]
	sw	%r3, [%sp + 3]
	sf	%f2, [%sp + 4]
	sf	%f1, [%sp + 5]
	sf	%f0, [%sp + 6]
	sw	%r2, [%sp + 7]
	movf	%f0, %f3
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	fiszero.2437
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8809
	lli	%r1, 1
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	lf	%f1, [%sp + 6]
	mulf	%f0, %f0, %f1
	lli	%r1, 2
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lf	%f2, [%sp + 5]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	lli	%r1, 3
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lf	%f2, [%sp + 4]
	mulf	%f1, %f1, %f2
	addf	%f0, %f0, %f1
	lli	%r1, 3
	lw	%r3, [%sp + 3]
	add	%r1, %r3, %r1
	lf	%f1, [%r1 + 0]
	sf	%f0, [%sp + 8]
	sf	%f1, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fsqr.2441
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 2]
	mulf	%f1, %f2, %f1
	subf	%f0, %f0, %f1
	sf	%f0, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fispos.2433
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8810
	lli	%r1, 0
	jr	%ra
bneq_else.8810:
	lw	%r1, [%sp + 1]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_isinvert.2539
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8811
	lli	%r1, 0
	lf	%f0, [%sp + 10]
	sw	%r1, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj_sqrt
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lf	%f1, [%sp + 8]
	subf	%f0, %f1, %f0
	lli	%r1, 4
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	mulf	%f0, %f0, %f1
	lw	%r1, [%sp + 11]
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.8812
bneq_else.8811:
	lli	%r1, 0
	lf	%f0, [%sp + 10]
	sw	%r1, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	yj_sqrt
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lf	%f1, [%sp + 8]
	addf	%f0, %f1, %f0
	lli	%r1, 4
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	mulf	%f0, %f0, %f1
	lw	%r1, [%sp + 12]
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.8812:
	lli	%r1, 1
	jr	%ra
bneq_else.8809:
	lli	%r1, 0
	jr	%ra
solver_fast2.2708:
	lw	%r3, [%r27 + 4]
	lw	%r4, [%r27 + 3]
	lw	%r5, [%r27 + 2]
	lw	%r6, [%r27 + 1]
	add	%r6, %r6, %r1
	lw	%r6, [%r6 + 0]
	sw	%r4, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r5, [%sp + 2]
	sw	%r6, [%sp + 3]
	sw	%r1, [%sp + 4]
	sw	%r2, [%sp + 5]
	add	%r1, %r0, %r6
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_param_ctbl.2573
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	add	%r2, %r1, %r2
	lf	%f0, [%r2 + 0]
	lli	%r2, 1
	add	%r2, %r1, %r2
	lf	%f1, [%r2 + 0]
	lli	%r2, 2
	add	%r2, %r1, %r2
	lf	%f2, [%r2 + 0]
	lw	%r2, [%sp + 5]
	sw	%r1, [%sp + 6]
	sf	%f2, [%sp + 7]
	sf	%f1, [%sp + 8]
	sf	%f0, [%sp + 9]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	d_const.2596
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lw	%r2, [%sp + 4]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lw	%r2, [%sp + 3]
	sw	%r1, [%sp + 10]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_form.2535
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.8813
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	d_vec.2594
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	add	%r2, %r0, %r1
	lf	%f0, [%sp + 9]
	lf	%f1, [%sp + 8]
	lf	%f2, [%sp + 7]
	lw	%r1, [%sp + 3]
	lw	%r3, [%sp + 10]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8813:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.8814
	lf	%f0, [%sp + 9]
	lf	%f1, [%sp + 8]
	lf	%f2, [%sp + 7]
	lw	%r1, [%sp + 3]
	lw	%r2, [%sp + 10]
	lw	%r3, [%sp + 6]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8814:
	lf	%f0, [%sp + 9]
	lf	%f1, [%sp + 8]
	lf	%f2, [%sp + 7]
	lw	%r1, [%sp + 3]
	lw	%r2, [%sp + 10]
	lw	%r3, [%sp + 6]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
setup_rect_table.2711:
	lli	%r3, 6
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_float_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 0
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	sw	%r1, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	fiszero.2437
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8815
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 3]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_isinvert.2539
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	sw	%r1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fisneg.2435
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	xor.2476
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_param_a.2543
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fneg_cond.2481
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r1, [%sp + 3]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lli	%r3, 0
	lw	%r4, [%sp + 1]
	add	%r3, %r4, %r3
	lf	%f1, [%r3 + 0]
	divf	%f0, %f0, %f1
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.8816
bneq_else.8815:
	lli	%r1, 1
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.8816:
	lli	%r1, 1
	lw	%r3, [%sp + 1]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fiszero.2437
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8817
	lli	%r1, 2
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 6]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	o_isinvert.2539
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 1
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	sw	%r1, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	fisneg.2435
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	xor.2476
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 8]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_b.2545
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r1, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	fneg_cond.2481
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 3
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lli	%r3, 1
	lw	%r4, [%sp + 1]
	add	%r3, %r4, %r3
	lf	%f1, [%r3 + 0]
	divf	%f0, %f0, %f1
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.8818
bneq_else.8817:
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.8818:
	lli	%r1, 2
	lw	%r3, [%sp + 1]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	fiszero.2437
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8819
	lli	%r1, 4
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 9]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_isinvert.2539
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 2
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	sw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fisneg.2435
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	xor.2476
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 11]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_param_c.2547
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lw	%r1, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	fneg_cond.2481
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 5
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lli	%r3, 2
	lw	%r4, [%sp + 1]
	add	%r3, %r4, %r3
	lf	%f1, [%r3 + 0]
	divf	%f0, %f0, %f1
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.8820
bneq_else.8819:
	lli	%r1, 5
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.8820:
	add	%r1, %r0, %r2
	jr	%ra
setup_surface_table.2714:
	lli	%r3, 4
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_float_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 0
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 2]
	sf	%f0, [%sp + 3]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_param_a.2543
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lf	%f1, [%sp + 3]
	mulf	%f0, %f1, %f0
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 4]
	sf	%f1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_param_b.2545
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lf	%f1, [%sp + 5]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 4]
	addf	%f0, %f1, %f0
	lli	%r1, 2
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 6]
	sf	%f1, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	o_param_c.2547
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lf	%f1, [%sp + 7]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 6]
	addf	%f0, %f1, %f0
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	fispos.2433
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8821
	lli	%r1, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.8822
bneq_else.8821:
	lli	%r1, 0
	llif	%f0, -1.000000
	lhif	%f0, -1.000000
	lf	%f1, [%sp + 8]
	divf	%f0, %f0, %f1
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	lw	%r3, [%sp + 0]
	sw	%r1, [%sp + 9]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_param_a.2543
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 8]
	divf	%f0, %f0, %f1
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	yj_fneg
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	lw	%r3, [%sp + 0]
	sw	%r1, [%sp + 10]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_param_b.2545
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lf	%f1, [%sp + 8]
	divf	%f0, %f0, %f1
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	yj_fneg
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r1, [%sp + 10]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 3
	lw	%r3, [%sp + 0]
	sw	%r1, [%sp + 11]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_param_c.2547
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lf	%f1, [%sp + 8]
	divf	%f0, %f0, %f1
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj_fneg
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lw	%r1, [%sp + 11]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.8822:
	add	%r1, %r0, %r2
	jr	%ra
setup_second_table.2717:
	lli	%r3, 5
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_float_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 0
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lli	%r2, 1
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	lli	%r2, 2
	add	%r2, %r3, %r2
	lf	%f2, [%r2 + 0]
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 2]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	quadratic.2648
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r1, 0
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 3]
	sf	%f1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_param_a.2543
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 4]
	mulf	%f0, %f1, %f0
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_fneg
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 5]
	sf	%f1, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	o_param_b.2545
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lf	%f1, [%sp + 6]
	mulf	%f0, %f1, %f0
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj_fneg
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r1, 2
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 7]
	sf	%f1, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_c.2547
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lf	%f1, [%sp + 8]
	mulf	%f0, %f1, %f0
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	yj_fneg
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r1, 0
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lf	%f1, [%sp + 3]
	sf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_isrot.2541
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8823
	lli	%r1, 1
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 5]
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 7]
	sf	%f0, [%r1 + 0]
	lli	%r1, 3
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 9]
	sf	%f0, [%r1 + 0]
	j	bneq_cont.8824
bneq_else.8823:
	lli	%r1, 1
	lli	%r2, 2
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 10]
	sf	%f0, [%sp + 11]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_param_r2.2569
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lf	%f1, [%sp + 11]
	mulf	%f0, %f1, %f0
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 12]
	sf	%f1, [%sp + 13]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	o_param_r3.2571
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lf	%f1, [%sp + 13]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 12]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	fhalf.2439
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lf	%f1, [%sp + 5]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 10]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	lli	%r3, 2
	lw	%r4, [%sp + 1]
	add	%r3, %r4, %r3
	lf	%f0, [%r3 + 0]
	lw	%r3, [%sp + 0]
	sw	%r1, [%sp + 14]
	sf	%f0, [%sp + 15]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	o_param_r1.2567
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f1, [%sp + 15]
	mulf	%f0, %f1, %f0
	lli	%r1, 0
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 16]
	sf	%f1, [%sp + 17]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	o_param_r3.2571
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 17]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 16]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	fhalf.2439
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 7]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 14]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 3
	lli	%r3, 1
	lw	%r4, [%sp + 1]
	add	%r3, %r4, %r3
	lf	%f0, [%r3 + 0]
	lw	%r3, [%sp + 0]
	sw	%r1, [%sp + 18]
	sf	%f0, [%sp + 19]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 20]
	addi	%sp, %sp, 21
	jal	o_param_r1.2567
	subi	%sp, %sp, 21
	lw	%ra, [%sp + 20]
	lf	%f1, [%sp + 19]
	mulf	%f0, %f1, %f0
	lli	%r1, 0
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 20]
	sf	%f1, [%sp + 21]
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	o_param_r2.2569
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lf	%f1, [%sp + 21]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 20]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	fhalf.2439
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lf	%f1, [%sp + 9]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 18]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.8824:
	lf	%f0, [%sp + 3]
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	fiszero.2437
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8825
	lli	%r1, 4
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lf	%f1, [%sp + 3]
	divf	%f0, %f0, %f1
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.8826
bneq_else.8825:
bneq_cont.8826:
	lw	%r1, [%sp + 2]
	jr	%ra
iter_setup_dirvec_constants.2720:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r2, bgt_else.8827
	add	%r3, %r3, %r2
	lw	%r3, [%r3 + 0]
	sw	%r27, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r3, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	d_const.2596
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r2, [%sp + 3]
	sw	%r1, [%sp + 4]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	d_vec.2594
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 2]
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_form.2535
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.8828
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 2]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	setup_rect_table.2711
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 4]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.8829
bneq_else.8828:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.8830
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 2]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	setup_surface_table.2714
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 4]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.8831
bneq_else.8830:
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 2]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	setup_second_table.2717
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 4]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
bneq_cont.8831:
bneq_cont.8829:
	lli	%r1, 1
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 3]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.8827:
	jr	%ra
setup_dirvec_constants.2723:
	lw	%r2, [%r27 + 2]
	lw	%r27, [%r27 + 1]
	lli	%r3, 0
	add	%r2, %r2, %r3
	lw	%r2, [%r2 + 0]
	lli	%r3, 1
	sub	%r2, %r2, %r3
	lw	%r26, [%r27 + 0]
	jr	%r26
setup_startp_constants.2725:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r2, bgt_else.8833
	add	%r3, %r3, %r2
	lw	%r3, [%r3 + 0]
	sw	%r27, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%r3, [%sp + 3]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_param_ctbl.2573
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r2, [%sp + 3]
	sw	%r1, [%sp + 4]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_form.2535
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	lli	%r3, 0
	lw	%r4, [%sp + 2]
	add	%r3, %r4, %r3
	lf	%f0, [%r3 + 0]
	lw	%r3, [%sp + 3]
	sw	%r1, [%sp + 5]
	sw	%r2, [%sp + 6]
	sf	%f0, [%sp + 7]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	o_param_x.2551
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lf	%f1, [%sp + 7]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	lli	%r3, 1
	lw	%r4, [%sp + 2]
	add	%r3, %r4, %r3
	lf	%f0, [%r3 + 0]
	lw	%r3, [%sp + 3]
	sw	%r1, [%sp + 8]
	sf	%f0, [%sp + 9]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_param_y.2553
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 9]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 8]
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	lli	%r3, 2
	lw	%r4, [%sp + 2]
	add	%r3, %r4, %r3
	lf	%f0, [%r3 + 0]
	lw	%r3, [%sp + 3]
	sw	%r1, [%sp + 10]
	sf	%f0, [%sp + 11]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_param_z.2555
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lf	%f1, [%sp + 11]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 10]
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	lw	%r3, [%sp + 5]
	bneq	%r3, %r1, bneq_else.8834
	lli	%r1, 3
	lw	%r3, [%sp + 3]
	sw	%r1, [%sp + 12]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	o_param_abc.2549
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 0
	lw	%r3, [%sp + 4]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lli	%r2, 1
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	lli	%r2, 2
	add	%r2, %r3, %r2
	lf	%f2, [%r2 + 0]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	veciprod2.2511
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lw	%r1, [%sp + 12]
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.8835
bneq_else.8834:
	lli	%r1, 2
	bgt	%r3, %r1, bgt_else.8836
	j	bgt_cont.8837
bgt_else.8836:
	lli	%r1, 0
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	lli	%r1, 1
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lli	%r1, 2
	add	%r1, %r2, %r1
	lf	%f2, [%r1 + 0]
	lw	%r1, [%sp + 3]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	quadratic.2648
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r1, 3
	lli	%r2, 3
	lw	%r3, [%sp + 5]
	bneq	%r3, %r2, bneq_else.8838
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	subf	%f0, %f0, %f1
	j	bneq_cont.8839
bneq_else.8838:
bneq_cont.8839:
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bgt_cont.8837:
bneq_cont.8835:
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 2]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.8833:
	jr	%ra
setup_startp.2728:
	lw	%r2, [%r27 + 3]
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	sw	%r1, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r4, [%sp + 2]
	add	%r26, %r0, %r2
	add	%r2, %r0, %r1
	add	%r1, %r0, %r26
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	veccpy.2497
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r1, 0
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r2, 1
	sub	%r2, %r1, %r2
	lw	%r1, [%sp + 0]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
is_rect_outside.2730:
	sf	%f2, [%sp + 0]
	sf	%f1, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj_fabs
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_param_a.2543
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	movf	%f1, %f0
	lf	%f0, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	fless.2443
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8841
	lli	%r1, 0
	j	bneq_cont.8842
bneq_else.8841:
	lf	%f0, [%sp + 1]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj_fabs
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_param_b.2545
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	movf	%f1, %f0
	lf	%f0, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fless.2443
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8843
	lli	%r1, 0
	j	bneq_cont.8844
bneq_else.8843:
	lf	%f0, [%sp + 0]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_fabs
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_param_c.2547
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	movf	%f1, %f0
	lf	%f0, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fless.2443
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
bneq_cont.8844:
bneq_cont.8842:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8845
	lw	%r1, [%sp + 2]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_isinvert.2539
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8846
	lli	%r1, 1
	jr	%ra
bneq_else.8846:
	lli	%r1, 0
	jr	%ra
bneq_else.8845:
	lw	%r1, [%sp + 2]
	j	o_isinvert.2539
is_plane_outside.2735:
	sw	%r1, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_param_abc.2549
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lf	%f0, [%sp + 3]
	lf	%f1, [%sp + 2]
	lf	%f2, [%sp + 1]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	veciprod2.2511
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_isinvert.2539
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f0, [%sp + 4]
	sw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fisneg.2435
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	xor.2476
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8847
	lli	%r1, 1
	jr	%ra
bneq_else.8847:
	lli	%r1, 0
	jr	%ra
is_second_outside.2740:
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	quadratic.2648
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	o_form.2535
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 3
	bneq	%r1, %r2, bneq_else.8848
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lf	%f1, [%sp + 1]
	subf	%f0, %f1, %f0
	j	bneq_cont.8849
bneq_else.8848:
	lf	%f0, [%sp + 1]
bneq_cont.8849:
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	o_isinvert.2539
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lf	%f0, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	fisneg.2435
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	xor.2476
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8850
	lli	%r1, 1
	jr	%ra
bneq_else.8850:
	lli	%r1, 0
	jr	%ra
is_outside.2745:
	sf	%f2, [%sp + 0]
	sf	%f1, [%sp + 1]
	sw	%r1, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_param_x.2551
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lf	%f1, [%sp + 3]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_param_y.2553
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 1]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_param_z.2555
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lf	%f1, [%sp + 0]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	o_form.2535
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.8851
	lf	%f0, [%sp + 4]
	lf	%f1, [%sp + 5]
	lf	%f2, [%sp + 6]
	lw	%r1, [%sp + 2]
	j	is_rect_outside.2730
bneq_else.8851:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.8852
	lf	%f0, [%sp + 4]
	lf	%f1, [%sp + 5]
	lf	%f2, [%sp + 6]
	lw	%r1, [%sp + 2]
	j	is_plane_outside.2735
bneq_else.8852:
	lf	%f0, [%sp + 4]
	lf	%f1, [%sp + 5]
	lf	%f2, [%sp + 6]
	lw	%r1, [%sp + 2]
	j	is_second_outside.2740
check_all_inside.2750:
	lw	%r3, [%r27 + 1]
	add	%r4, %r2, %r1
	lw	%r4, [%r4 + 0]
	lli	%r5, -1
	lhi	%r5, -1
	bneq	%r4, %r5, bneq_else.8853
	lli	%r1, 1
	jr	%ra
bneq_else.8853:
	add	%r3, %r3, %r4
	lw	%r3, [%r3 + 0]
	sf	%f2, [%sp + 0]
	sf	%f1, [%sp + 1]
	sf	%f0, [%sp + 2]
	sw	%r2, [%sp + 3]
	sw	%r27, [%sp + 4]
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	is_outside.2745
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8854
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 2]
	lf	%f1, [%sp + 1]
	lf	%f2, [%sp + 0]
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8854:
	lli	%r1, 0
	jr	%ra
shadow_check_and_group.2756:
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
	bneq	%r10, %r11, bneq_else.8855
	lli	%r1, 0
	jr	%ra
bneq_else.8855:
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
	sf	%f0, [%sp + 9]
	bneq	%r1, %r2, bneq_else.8856
	lli	%r1, 0
	j	bneq_cont.8857
bneq_else.8856:
	llif	%f1, -0.200000
	lhif	%f1, -0.200000
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fless.2443
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
bneq_cont.8857:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8858
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_isinvert.2539
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8859
	lli	%r1, 0
	jr	%ra
bneq_else.8859:
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8858:
	llif	%f0, 0.010000
	lhif	%f0, 0.010000
	lf	%f1, [%sp + 9]
	addf	%f0, %f1, %f0
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
	lw	%r27, [%sp + 0]
	movf	%f31, %f2
	movf	%f2, %f0
	movf	%f0, %f1
	movf	%f1, %f31
	sw	%ra, [%sp + 10]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 11
	jalr	%r26
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8860
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8860:
	lli	%r1, 1
	jr	%ra
shadow_check_one_or_group.2759:
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	add	%r5, %r2, %r1
	lw	%r5, [%r5 + 0]
	lli	%r6, -1
	lhi	%r6, -1
	bneq	%r5, %r6, bneq_else.8861
	lli	%r1, 0
	jr	%ra
bneq_else.8861:
	add	%r4, %r4, %r5
	lw	%r4, [%r4 + 0]
	lli	%r5, 0
	sw	%r2, [%sp + 0]
	sw	%r27, [%sp + 1]
	sw	%r1, [%sp + 2]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r5
	add	%r27, %r0, %r3
	sw	%ra, [%sp + 3]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 4
	jalr	%r26
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8862
	lli	%r1, 1
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 0]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8862:
	lli	%r1, 1
	jr	%ra
shadow_check_one_or_matrix.2762:
	lw	%r3, [%r27 + 5]
	lw	%r4, [%r27 + 4]
	lw	%r5, [%r27 + 3]
	lw	%r6, [%r27 + 2]
	lw	%r7, [%r27 + 1]
	add	%r8, %r2, %r1
	lw	%r8, [%r8 + 0]
	lli	%r9, 0
	add	%r9, %r8, %r9
	lw	%r9, [%r9 + 0]
	lli	%r10, -1
	lhi	%r10, -1
	bneq	%r9, %r10, bneq_else.8863
	lli	%r1, 0
	jr	%ra
bneq_else.8863:
	lli	%r10, 99
	sw	%r8, [%sp + 0]
	sw	%r5, [%sp + 1]
	sw	%r2, [%sp + 2]
	sw	%r27, [%sp + 3]
	sw	%r1, [%sp + 4]
	bneq	%r9, %r10, bneq_else.8864
	lli	%r1, 1
	j	bneq_cont.8865
bneq_else.8864:
	sw	%r4, [%sp + 5]
	add	%r2, %r0, %r6
	add	%r1, %r0, %r9
	add	%r27, %r0, %r3
	add	%r3, %r0, %r7
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8866
	lli	%r1, 0
	j	bneq_cont.8867
bneq_else.8866:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	llif	%f1, -0.100000
	lhif	%f1, -0.100000
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fless.2443
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8868
	lli	%r1, 0
	j	bneq_cont.8869
bneq_else.8868:
	lli	%r1, 1
	lw	%r2, [%sp + 0]
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8870
	lli	%r1, 0
	j	bneq_cont.8871
bneq_else.8870:
	lli	%r1, 1
bneq_cont.8871:
bneq_cont.8869:
bneq_cont.8867:
bneq_cont.8865:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8872
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 3]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8872:
	lli	%r1, 1
	lw	%r2, [%sp + 0]
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8873
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 3]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8873:
	lli	%r1, 1
	jr	%ra
solve_each_element.2765:
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
	bneq	%r13, %r14, bneq_else.8874
	jr	%ra
bneq_else.8874:
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
	bneq	%r1, %r2, bneq_else.8876
	lw	%r1, [%sp + 11]
	lw	%r2, [%sp + 12]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	o_isinvert.2539
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8877
	jr	%ra
bneq_else.8877:
	lli	%r1, 1
	lw	%r2, [%sp + 10]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 8]
	lw	%r3, [%sp + 7]
	lw	%r27, [%sp + 9]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8876:
	lli	%r2, 0
	lw	%r3, [%sp + 6]
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 13]
	sf	%f1, [%sp + 14]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	fless.2443
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8879
	j	bneq_cont.8880
bneq_else.8879:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lf	%f0, [%sp + 14]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	fless.2443
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8881
	j	bneq_cont.8882
bneq_else.8881:
	llif	%f0, 0.010000
	lhif	%f0, 0.010000
	lf	%f1, [%sp + 14]
	addf	%f0, %f1, %f0
	lli	%r1, 0
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	mulf	%f1, %f1, %f0
	lli	%r1, 0
	lw	%r3, [%sp + 4]
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
	mulf	%f3, %f3, %f0
	lli	%r1, 2
	add	%r1, %r3, %r1
	lf	%f4, [%r1 + 0]
	addf	%f3, %f3, %f4
	lli	%r1, 0
	lw	%r3, [%sp + 8]
	lw	%r27, [%sp + 3]
	sf	%f3, [%sp + 15]
	sf	%f2, [%sp + 16]
	sf	%f1, [%sp + 17]
	sf	%f0, [%sp + 18]
	add	%r2, %r0, %r3
	movf	%f0, %f1
	movf	%f1, %f2
	movf	%f2, %f3
	sw	%ra, [%sp + 19]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 20
	jalr	%r26
	subi	%sp, %sp, 20
	lw	%ra, [%sp + 19]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8883
	j	bneq_cont.8884
bneq_else.8883:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 18]
	sf	%f0, [%r1 + 0]
	lf	%f0, [%sp + 17]
	lf	%f1, [%sp + 16]
	lf	%f2, [%sp + 15]
	lw	%r1, [%sp + 2]
	sw	%ra, [%sp + 19]
	addi	%sp, %sp, 20
	jal	vecset.2487
	subi	%sp, %sp, 20
	lw	%ra, [%sp + 19]
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
bneq_cont.8884:
bneq_cont.8882:
bneq_cont.8880:
	lli	%r1, 1
	lw	%r2, [%sp + 10]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 8]
	lw	%r3, [%sp + 7]
	lw	%r27, [%sp + 9]
	lw	%r26, [%r27 + 0]
	jr	%r26
solve_one_or_network.2769:
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	add	%r6, %r2, %r1
	lw	%r6, [%r6 + 0]
	lli	%r7, -1
	lhi	%r7, -1
	bneq	%r6, %r7, bneq_else.8885
	jr	%ra
bneq_else.8885:
	add	%r5, %r5, %r6
	lw	%r5, [%r5 + 0]
	lli	%r6, 0
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r27, [%sp + 2]
	sw	%r1, [%sp + 3]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r6
	add	%r27, %r0, %r4
	sw	%ra, [%sp + 4]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 5
	jalr	%r26
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
trace_or_matrix.2773:
	lw	%r4, [%r27 + 5]
	lw	%r5, [%r27 + 4]
	lw	%r6, [%r27 + 3]
	lw	%r7, [%r27 + 2]
	lw	%r8, [%r27 + 1]
	add	%r9, %r2, %r1
	lw	%r9, [%r9 + 0]
	lli	%r10, 0
	add	%r10, %r9, %r10
	lw	%r10, [%r10 + 0]
	lli	%r11, -1
	lhi	%r11, -1
	bneq	%r10, %r11, bneq_else.8887
	jr	%ra
bneq_else.8887:
	lli	%r11, 99
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r27, [%sp + 2]
	sw	%r1, [%sp + 3]
	bneq	%r10, %r11, bneq_else.8889
	lli	%r4, 1
	add	%r2, %r0, %r9
	add	%r1, %r0, %r4
	add	%r27, %r0, %r8
	sw	%ra, [%sp + 4]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 5
	jalr	%r26
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	j	bneq_cont.8890
bneq_else.8889:
	sw	%r9, [%sp + 4]
	sw	%r8, [%sp + 5]
	sw	%r4, [%sp + 6]
	sw	%r6, [%sp + 7]
	add	%r2, %r0, %r3
	add	%r1, %r0, %r10
	add	%r27, %r0, %r7
	add	%r3, %r0, %r5
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8891
	j	bneq_cont.8892
bneq_else.8891:
	lli	%r1, 0
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	lli	%r1, 0
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	fless.2443
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8893
	j	bneq_cont.8894
bneq_else.8893:
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 5]
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
bneq_cont.8894:
bneq_cont.8892:
bneq_cont.8890:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
judge_intersection.2777:
	lw	%r2, [%r27 + 3]
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	llif	%f0, 1000000000.000000
	lhif	%f0, 1000000000.000000
	add	%r5, %r3, %r5
	sf	%f0, [%r5 + 0]
	lli	%r5, 0
	lli	%r6, 0
	add	%r4, %r4, %r6
	lw	%r4, [%r4 + 0]
	sw	%r3, [%sp + 0]
	add	%r3, %r0, %r1
	add	%r27, %r0, %r2
	add	%r2, %r0, %r4
	add	%r1, %r0, %r5
	sw	%ra, [%sp + 1]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 2
	jalr	%r26
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	llif	%f0, -0.100000
	lhif	%f0, -0.100000
	sf	%f1, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	fless.2443
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8895
	lli	%r1, 0
	jr	%ra
bneq_else.8895:
	llif	%f1, 100000000.000000
	lhif	%f1, 100000000.000000
	lf	%f0, [%sp + 1]
	j	fless.2443
solve_each_element_fast.2779:
	lw	%r4, [%r27 + 9]
	lw	%r5, [%r27 + 8]
	lw	%r6, [%r27 + 7]
	lw	%r7, [%r27 + 6]
	lw	%r8, [%r27 + 5]
	lw	%r9, [%r27 + 4]
	lw	%r10, [%r27 + 3]
	lw	%r11, [%r27 + 2]
	lw	%r12, [%r27 + 1]
	sw	%r9, [%sp + 0]
	sw	%r11, [%sp + 1]
	sw	%r10, [%sp + 2]
	sw	%r12, [%sp + 3]
	sw	%r5, [%sp + 4]
	sw	%r4, [%sp + 5]
	sw	%r7, [%sp + 6]
	sw	%r27, [%sp + 7]
	sw	%r8, [%sp + 8]
	sw	%r3, [%sp + 9]
	sw	%r6, [%sp + 10]
	sw	%r1, [%sp + 11]
	sw	%r2, [%sp + 12]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	d_vec.2594
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lw	%r2, [%sp + 11]
	lw	%r3, [%sp + 12]
	add	%r4, %r3, %r2
	lw	%r4, [%r4 + 0]
	lli	%r5, -1
	lhi	%r5, -1
	bneq	%r4, %r5, bneq_else.8896
	jr	%ra
bneq_else.8896:
	lw	%r5, [%sp + 9]
	lw	%r27, [%sp + 10]
	sw	%r1, [%sp + 13]
	sw	%r4, [%sp + 14]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 15]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 16
	jalr	%r26
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8898
	lw	%r1, [%sp + 14]
	lw	%r2, [%sp + 8]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	o_isinvert.2539
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8899
	jr	%ra
bneq_else.8899:
	lli	%r1, 1
	lw	%r2, [%sp + 11]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 12]
	lw	%r3, [%sp + 9]
	lw	%r27, [%sp + 7]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8898:
	lli	%r2, 0
	lw	%r3, [%sp + 6]
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 15]
	sf	%f1, [%sp + 16]
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	fless.2443
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8901
	j	bneq_cont.8902
bneq_else.8901:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lf	%f0, [%sp + 16]
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	fless.2443
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8903
	j	bneq_cont.8904
bneq_else.8903:
	llif	%f0, 0.010000
	lhif	%f0, 0.010000
	lf	%f1, [%sp + 16]
	addf	%f0, %f1, %f0
	lli	%r1, 0
	lw	%r2, [%sp + 13]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	mulf	%f1, %f1, %f0
	lli	%r1, 0
	lw	%r3, [%sp + 4]
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
	mulf	%f3, %f3, %f0
	lli	%r1, 2
	add	%r1, %r3, %r1
	lf	%f4, [%r1 + 0]
	addf	%f3, %f3, %f4
	lli	%r1, 0
	lw	%r2, [%sp + 12]
	lw	%r27, [%sp + 3]
	sf	%f3, [%sp + 17]
	sf	%f2, [%sp + 18]
	sf	%f1, [%sp + 19]
	sf	%f0, [%sp + 20]
	movf	%f0, %f1
	movf	%f1, %f2
	movf	%f2, %f3
	sw	%ra, [%sp + 21]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 22
	jalr	%r26
	subi	%sp, %sp, 22
	lw	%ra, [%sp + 21]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8905
	j	bneq_cont.8906
bneq_else.8905:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 20]
	sf	%f0, [%r1 + 0]
	lf	%f0, [%sp + 19]
	lf	%f1, [%sp + 18]
	lf	%f2, [%sp + 17]
	lw	%r1, [%sp + 2]
	sw	%ra, [%sp + 21]
	addi	%sp, %sp, 22
	jal	vecset.2487
	subi	%sp, %sp, 22
	lw	%ra, [%sp + 21]
	lli	%r1, 0
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 14]
	sw	%r2, [%r1 + 0]
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 15]
	sw	%r2, [%r1 + 0]
bneq_cont.8906:
bneq_cont.8904:
bneq_cont.8902:
	lli	%r1, 1
	lw	%r2, [%sp + 11]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 12]
	lw	%r3, [%sp + 9]
	lw	%r27, [%sp + 7]
	lw	%r26, [%r27 + 0]
	jr	%r26
solve_one_or_network_fast.2783:
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	add	%r6, %r2, %r1
	lw	%r6, [%r6 + 0]
	lli	%r7, -1
	lhi	%r7, -1
	bneq	%r6, %r7, bneq_else.8907
	jr	%ra
bneq_else.8907:
	add	%r5, %r5, %r6
	lw	%r5, [%r5 + 0]
	lli	%r6, 0
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r27, [%sp + 2]
	sw	%r1, [%sp + 3]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r6
	add	%r27, %r0, %r4
	sw	%ra, [%sp + 4]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 5
	jalr	%r26
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
trace_or_matrix_fast.2787:
	lw	%r4, [%r27 + 4]
	lw	%r5, [%r27 + 3]
	lw	%r6, [%r27 + 2]
	lw	%r7, [%r27 + 1]
	add	%r8, %r2, %r1
	lw	%r8, [%r8 + 0]
	lli	%r9, 0
	add	%r9, %r8, %r9
	lw	%r9, [%r9 + 0]
	lli	%r10, -1
	lhi	%r10, -1
	bneq	%r9, %r10, bneq_else.8909
	jr	%ra
bneq_else.8909:
	lli	%r10, 99
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r27, [%sp + 2]
	sw	%r1, [%sp + 3]
	bneq	%r9, %r10, bneq_else.8911
	lli	%r4, 1
	add	%r2, %r0, %r8
	add	%r1, %r0, %r4
	add	%r27, %r0, %r7
	sw	%ra, [%sp + 4]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 5
	jalr	%r26
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	j	bneq_cont.8912
bneq_else.8911:
	sw	%r8, [%sp + 4]
	sw	%r7, [%sp + 5]
	sw	%r4, [%sp + 6]
	sw	%r6, [%sp + 7]
	add	%r2, %r0, %r3
	add	%r1, %r0, %r9
	add	%r27, %r0, %r5
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8913
	j	bneq_cont.8914
bneq_else.8913:
	lli	%r1, 0
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	lli	%r1, 0
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	fless.2443
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8915
	j	bneq_cont.8916
bneq_else.8915:
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 5]
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
bneq_cont.8916:
bneq_cont.8914:
bneq_cont.8912:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
judge_intersection_fast.2791:
	lw	%r2, [%r27 + 3]
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	llif	%f0, 1000000000.000000
	lhif	%f0, 1000000000.000000
	add	%r5, %r3, %r5
	sf	%f0, [%r5 + 0]
	lli	%r5, 0
	lli	%r6, 0
	add	%r4, %r4, %r6
	lw	%r4, [%r4 + 0]
	sw	%r3, [%sp + 0]
	add	%r3, %r0, %r1
	add	%r27, %r0, %r2
	add	%r2, %r0, %r4
	add	%r1, %r0, %r5
	sw	%ra, [%sp + 1]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 2
	jalr	%r26
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	llif	%f0, -0.100000
	lhif	%f0, -0.100000
	sf	%f1, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	fless.2443
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8917
	lli	%r1, 0
	jr	%ra
bneq_else.8917:
	llif	%f1, 100000000.000000
	lhif	%f1, 100000000.000000
	lf	%f0, [%sp + 1]
	j	fless.2443
get_nvector_rect.2793:
	lw	%r2, [%r27 + 2]
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	add	%r3, %r3, %r4
	lw	%r3, [%r3 + 0]
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r3, [%sp + 2]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	vecbzero.2495
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r1, 1
	lw	%r2, [%sp + 2]
	sub	%r1, %r2, %r1
	lli	%r3, 1
	sub	%r2, %r2, %r3
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	sw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	sgn.2479
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj_fneg
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r1, [%sp + 3]
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	jr	%ra
get_nvector_plane.2795:
	lw	%r2, [%r27 + 1]
	lli	%r3, 0
	sw	%r1, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r2, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	o_param_a.2543
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj_fneg
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lw	%r1, [%sp + 1]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	lw	%r3, [%sp + 0]
	sw	%r1, [%sp + 3]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_param_b.2545
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj_fneg
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r1, [%sp + 3]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	lw	%r3, [%sp + 0]
	sw	%r1, [%sp + 4]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_param_c.2547
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_fneg
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	jr	%ra
get_nvector_second.2797:
	lw	%r2, [%r27 + 2]
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	add	%r4, %r3, %r4
	lf	%f0, [%r4 + 0]
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r3, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_param_x.2551
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lf	%f1, [%sp + 3]
	subf	%f0, %f1, %f0
	lli	%r1, 1
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 4]
	sf	%f1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_param_y.2553
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lf	%f1, [%sp + 5]
	subf	%f0, %f1, %f0
	lli	%r1, 2
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 6]
	sf	%f1, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	o_param_z.2555
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lf	%f1, [%sp + 7]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_a.2543
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lf	%f1, [%sp + 4]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_param_b.2545
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 6]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_param_c.2547
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lf	%f1, [%sp + 8]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_isrot.2541
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8920
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 9]
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 10]
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 11]
	sf	%f0, [%r1 + 0]
	j	bneq_cont.8921
bneq_else.8920:
	lli	%r1, 0
	lw	%r2, [%sp + 1]
	sw	%r1, [%sp + 12]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	o_param_r3.2571
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lf	%f1, [%sp + 6]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 13]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	o_param_r2.2569
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lf	%f1, [%sp + 8]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 13]
	addf	%f0, %f2, %f0
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	fhalf.2439
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lf	%f1, [%sp + 9]
	addf	%f0, %f1, %f0
	lw	%r1, [%sp + 12]
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	lw	%r3, [%sp + 1]
	sw	%r1, [%sp + 14]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	o_param_r3.2571
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lf	%f1, [%sp + 4]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	o_param_r1.2567
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f1, [%sp + 8]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 15]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	fhalf.2439
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f1, [%sp + 10]
	addf	%f0, %f1, %f0
	lw	%r1, [%sp + 14]
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	lw	%r3, [%sp + 1]
	sw	%r1, [%sp + 16]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	o_param_r2.2569
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lf	%f1, [%sp + 4]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 17]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	o_param_r1.2567
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 6]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 17]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	fhalf.2439
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 11]
	addf	%f0, %f1, %f0
	lw	%r1, [%sp + 16]
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.8921:
	lw	%r1, [%sp + 1]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	o_isinvert.2539
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 0]
	j	vecunit_sgn.2505
get_nvector.2799:
	lw	%r3, [%r27 + 3]
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	sw	%r3, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r5, [%sp + 2]
	sw	%r2, [%sp + 3]
	sw	%r4, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_form.2535
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.8922
	lw	%r1, [%sp + 3]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8922:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.8923
	lw	%r1, [%sp + 1]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8923:
	lw	%r1, [%sp + 1]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
utexture.2802:
	lw	%r3, [%r27 + 1]
	sw	%r2, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	o_texturetype.2533
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 0
	lw	%r3, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%r2, [%sp + 4]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_color_red.2561
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	lw	%r3, [%sp + 2]
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_color_green.2563
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	lw	%r3, [%sp + 2]
	sw	%r1, [%sp + 6]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	o_color_blue.2565
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	lw	%r3, [%sp + 3]
	bneq	%r3, %r1, bneq_else.8924
	lli	%r1, 0
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	o_param_x.2551
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lf	%f1, [%sp + 7]
	subf	%f0, %f1, %f0
	llif	%f1, 0.050000
	lhif	%f1, 0.050000
	mulf	%f1, %f0, %f1
	sf	%f0, [%sp + 8]
	movf	%f0, %f1
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	yj_floor
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	llif	%f1, 20.000000
	lhif	%f1, 20.000000
	mulf	%f0, %f0, %f1
	lf	%f1, [%sp + 8]
	subf	%f0, %f1, %f0
	llif	%f1, 10.000000
	lhif	%f1, 10.000000
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	fless.2443
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 2
	lw	%r3, [%sp + 0]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lw	%r2, [%sp + 2]
	sw	%r1, [%sp + 9]
	sf	%f0, [%sp + 10]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_param_z.2555
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lf	%f1, [%sp + 10]
	subf	%f0, %f1, %f0
	llif	%f1, 0.050000
	lhif	%f1, 0.050000
	mulf	%f1, %f0, %f1
	sf	%f0, [%sp + 11]
	movf	%f0, %f1
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj_floor
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	llif	%f1, 20.000000
	lhif	%f1, 20.000000
	mulf	%f0, %f0, %f1
	lf	%f1, [%sp + 11]
	subf	%f0, %f1, %f0
	llif	%f1, 10.000000
	lhif	%f1, 10.000000
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	fless.2443
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 1
	lli	%r3, 0
	lw	%r4, [%sp + 9]
	bneq	%r4, %r3, bneq_else.8925
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.8927
	llif	%f0, 255.000000
	lhif	%f0, 255.000000
	j	bneq_cont.8928
bneq_else.8927:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.8928:
	j	bneq_cont.8926
bneq_else.8925:
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.8929
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	j	bneq_cont.8930
bneq_else.8929:
	llif	%f0, 255.000000
	lhif	%f0, 255.000000
bneq_cont.8930:
bneq_cont.8926:
	lw	%r1, [%sp + 1]
	add	%r1, %r1, %r2
	sf	%f0, [%r1 + 0]
	jr	%ra
bneq_else.8924:
	lli	%r1, 2
	bneq	%r3, %r1, bneq_else.8932
	lli	%r1, 1
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	llif	%f1, 0.250000
	lhif	%f1, 0.250000
	mulf	%f0, %f0, %f1
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj_sin
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	fsqr.2441
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r1, 0
	llif	%f1, 255.000000
	lhif	%f1, 255.000000
	mulf	%f1, %f1, %f0
	lw	%r2, [%sp + 1]
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
bneq_else.8932:
	lli	%r1, 3
	bneq	%r3, %r1, bneq_else.8934
	lli	%r1, 0
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	o_param_x.2551
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lf	%f1, [%sp + 12]
	subf	%f0, %f1, %f0
	lli	%r1, 2
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 13]
	sf	%f1, [%sp + 14]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	o_param_z.2555
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lf	%f1, [%sp + 14]
	subf	%f0, %f1, %f0
	lf	%f1, [%sp + 13]
	sf	%f0, [%sp + 15]
	movf	%f0, %f1
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	fsqr.2441
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f1, [%sp + 15]
	sf	%f0, [%sp + 16]
	movf	%f0, %f1
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	fsqr.2441
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lf	%f1, [%sp + 16]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	yj_sqrt
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	llif	%f1, 10.000000
	lhif	%f1, 10.000000
	divf	%f0, %f0, %f1
	sf	%f0, [%sp + 17]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	yj_floor
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 17]
	subf	%f0, %f1, %f0
	llif	%f1, 3.141593
	lhif	%f1, 3.141593
	mulf	%f0, %f0, %f1
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	yj_cos
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	fsqr.2441
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lli	%r1, 1
	llif	%f1, 255.000000
	lhif	%f1, 255.000000
	mulf	%f1, %f0, %f1
	lw	%r2, [%sp + 1]
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
bneq_else.8934:
	lli	%r1, 4
	bneq	%r3, %r1, bneq_else.8936
	lli	%r1, 0
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 18]
	sw	%ra, [%sp + 19]
	addi	%sp, %sp, 20
	jal	o_param_x.2551
	subi	%sp, %sp, 20
	lw	%ra, [%sp + 19]
	lf	%f1, [%sp + 18]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 19]
	sw	%ra, [%sp + 20]
	addi	%sp, %sp, 21
	jal	o_param_a.2543
	subi	%sp, %sp, 21
	lw	%ra, [%sp + 20]
	sw	%ra, [%sp + 20]
	addi	%sp, %sp, 21
	jal	yj_sqrt
	subi	%sp, %sp, 21
	lw	%ra, [%sp + 20]
	lf	%f1, [%sp + 19]
	mulf	%f0, %f1, %f0
	lli	%r1, 2
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 20]
	sf	%f1, [%sp + 21]
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	o_param_z.2555
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lf	%f1, [%sp + 21]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 22]
	sw	%ra, [%sp + 23]
	addi	%sp, %sp, 24
	jal	o_param_c.2547
	subi	%sp, %sp, 24
	lw	%ra, [%sp + 23]
	sw	%ra, [%sp + 23]
	addi	%sp, %sp, 24
	jal	yj_sqrt
	subi	%sp, %sp, 24
	lw	%ra, [%sp + 23]
	lf	%f1, [%sp + 22]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 20]
	sf	%f0, [%sp + 23]
	movf	%f0, %f1
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	fsqr.2441
	subi	%sp, %sp, 25
	lw	%ra, [%sp + 24]
	lf	%f1, [%sp + 23]
	sf	%f0, [%sp + 24]
	movf	%f0, %f1
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	fsqr.2441
	subi	%sp, %sp, 26
	lw	%ra, [%sp + 25]
	lf	%f1, [%sp + 24]
	addf	%f0, %f1, %f0
	lf	%f1, [%sp + 20]
	sf	%f0, [%sp + 25]
	movf	%f0, %f1
	sw	%ra, [%sp + 26]
	addi	%sp, %sp, 27
	jal	yj_fabs
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	llif	%f1, 0.000100
	lhif	%f1, 0.000100
	sw	%ra, [%sp + 26]
	addi	%sp, %sp, 27
	jal	fless.2443
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8937
	lf	%f0, [%sp + 20]
	lf	%f1, [%sp + 23]
	divf	%f0, %f1, %f0
	sw	%ra, [%sp + 26]
	addi	%sp, %sp, 27
	jal	yj_fabs
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	sw	%ra, [%sp + 26]
	addi	%sp, %sp, 27
	jal	yj_atan
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	llif	%f1, 30.000000
	lhif	%f1, 30.000000
	mulf	%f0, %f0, %f1
	llif	%f1, 3.141593
	lhif	%f1, 3.141593
	divf	%f0, %f0, %f1
	j	bneq_cont.8938
bneq_else.8937:
	llif	%f0, 15.000000
	lhif	%f0, 15.000000
bneq_cont.8938:
	sf	%f0, [%sp + 26]
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	yj_floor
	subi	%sp, %sp, 28
	lw	%ra, [%sp + 27]
	lf	%f1, [%sp + 26]
	subf	%f0, %f1, %f0
	lli	%r1, 1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 27]
	sf	%f1, [%sp + 28]
	sw	%ra, [%sp + 29]
	addi	%sp, %sp, 30
	jal	o_param_y.2553
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	lf	%f1, [%sp + 28]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 29]
	sw	%ra, [%sp + 30]
	addi	%sp, %sp, 31
	jal	o_param_b.2545
	subi	%sp, %sp, 31
	lw	%ra, [%sp + 30]
	sw	%ra, [%sp + 30]
	addi	%sp, %sp, 31
	jal	yj_sqrt
	subi	%sp, %sp, 31
	lw	%ra, [%sp + 30]
	lf	%f1, [%sp + 29]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 25]
	sf	%f0, [%sp + 30]
	movf	%f0, %f1
	sw	%ra, [%sp + 31]
	addi	%sp, %sp, 32
	jal	yj_fabs
	subi	%sp, %sp, 32
	lw	%ra, [%sp + 31]
	llif	%f1, 0.000100
	lhif	%f1, 0.000100
	sw	%ra, [%sp + 31]
	addi	%sp, %sp, 32
	jal	fless.2443
	subi	%sp, %sp, 32
	lw	%ra, [%sp + 31]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8939
	lf	%f0, [%sp + 25]
	lf	%f1, [%sp + 30]
	divf	%f0, %f1, %f0
	sw	%ra, [%sp + 31]
	addi	%sp, %sp, 32
	jal	yj_fabs
	subi	%sp, %sp, 32
	lw	%ra, [%sp + 31]
	sw	%ra, [%sp + 31]
	addi	%sp, %sp, 32
	jal	yj_atan
	subi	%sp, %sp, 32
	lw	%ra, [%sp + 31]
	llif	%f1, 30.000000
	lhif	%f1, 30.000000
	mulf	%f0, %f0, %f1
	llif	%f1, 3.141593
	lhif	%f1, 3.141593
	divf	%f0, %f0, %f1
	j	bneq_cont.8940
bneq_else.8939:
	llif	%f0, 15.000000
	lhif	%f0, 15.000000
bneq_cont.8940:
	sf	%f0, [%sp + 31]
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	yj_floor
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lf	%f1, [%sp + 31]
	subf	%f0, %f1, %f0
	llif	%f1, 0.150000
	lhif	%f1, 0.150000
	llif	%f2, 0.500000
	lhif	%f2, 0.500000
	lf	%f3, [%sp + 27]
	subf	%f2, %f2, %f3
	sf	%f0, [%sp + 32]
	sf	%f1, [%sp + 33]
	movf	%f0, %f2
	sw	%ra, [%sp + 34]
	addi	%sp, %sp, 35
	jal	fsqr.2441
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	lf	%f1, [%sp + 33]
	subf	%f0, %f1, %f0
	llif	%f1, 0.500000
	lhif	%f1, 0.500000
	lf	%f2, [%sp + 32]
	subf	%f1, %f1, %f2
	sf	%f0, [%sp + 34]
	movf	%f0, %f1
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	fsqr.2441
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lf	%f1, [%sp + 34]
	subf	%f0, %f1, %f0
	sf	%f0, [%sp + 35]
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	fisneg.2435
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8941
	lf	%f0, [%sp + 35]
	j	bneq_cont.8942
bneq_else.8941:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.8942:
	lli	%r1, 2
	llif	%f1, 255.000000
	lhif	%f1, 255.000000
	mulf	%f0, %f1, %f0
	llif	%f1, 0.300000
	lhif	%f1, 0.300000
	divf	%f0, %f0, %f1
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	jr	%ra
bneq_else.8936:
	jr	%ra
add_light.2805:
	lw	%r1, [%r27 + 2]
	lw	%r2, [%r27 + 1]
	sf	%f2, [%sp + 0]
	sf	%f1, [%sp + 1]
	sf	%f0, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fispos.2433
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8945
	j	bneq_cont.8946
bneq_else.8945:
	lf	%f0, [%sp + 2]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 3]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	vecaccum.2516
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
bneq_cont.8946:
	lf	%f0, [%sp + 1]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fispos.2433
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8947
	jr	%ra
bneq_else.8947:
	lf	%f0, [%sp + 1]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fsqr.2441
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fsqr.2441
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 0]
	mulf	%f0, %f0, %f1
	lli	%r1, 0
	lli	%r2, 0
	lw	%r3, [%sp + 4]
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
trace_reflections.2809:
	lw	%r3, [%r27 + 8]
	lw	%r4, [%r27 + 7]
	lw	%r5, [%r27 + 6]
	lw	%r6, [%r27 + 5]
	lw	%r7, [%r27 + 4]
	lw	%r8, [%r27 + 3]
	lw	%r9, [%r27 + 2]
	lw	%r10, [%r27 + 1]
	lli	%r11, 0
	bgt	%r11, %r1, bgt_else.8950
	add	%r4, %r4, %r1
	lw	%r4, [%r4 + 0]
	sw	%r27, [%sp + 0]
	sw	%r1, [%sp + 1]
	sf	%f1, [%sp + 2]
	sw	%r10, [%sp + 3]
	sw	%r2, [%sp + 4]
	sf	%f0, [%sp + 5]
	sw	%r6, [%sp + 6]
	sw	%r3, [%sp + 7]
	sw	%r5, [%sp + 8]
	sw	%r4, [%sp + 9]
	sw	%r8, [%sp + 10]
	sw	%r9, [%sp + 11]
	sw	%r7, [%sp + 12]
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	r_dvec.2600
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lw	%r27, [%sp + 12]
	sw	%r1, [%sp + 13]
	sw	%ra, [%sp + 14]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 15
	jalr	%r26
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8951
	j	bneq_cont.8952
bneq_else.8951:
	lli	%r1, 0
	lw	%r2, [%sp + 11]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r2, 4
	mul	%r1, %r1, %r2
	lli	%r2, 0
	lw	%r3, [%sp + 10]
	add	%r2, %r3, %r2
	lw	%r2, [%r2 + 0]
	add	%r1, %r1, %r2
	lw	%r2, [%sp + 9]
	sw	%r1, [%sp + 14]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	r_surface_id.2598
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r2, [%sp + 14]
	bneq	%r2, %r1, bneq_else.8953
	lli	%r1, 0
	lli	%r2, 0
	lw	%r3, [%sp + 8]
	add	%r2, %r3, %r2
	lw	%r2, [%r2 + 0]
	lw	%r27, [%sp + 7]
	sw	%ra, [%sp + 15]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 16
	jalr	%r26
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8955
	lw	%r1, [%sp + 13]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	d_vec.2594
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 6]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	veciprod.2508
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r1, [%sp + 9]
	sf	%f0, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	r_bright.2602
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f1, [%sp + 5]
	mulf	%f2, %f0, %f1
	lf	%f3, [%sp + 15]
	mulf	%f2, %f2, %f3
	lw	%r1, [%sp + 13]
	sf	%f2, [%sp + 16]
	sf	%f0, [%sp + 17]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	d_vec.2594
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	veciprod.2508
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 17]
	mulf	%f1, %f1, %f0
	lf	%f0, [%sp + 16]
	lf	%f2, [%sp + 2]
	lw	%r27, [%sp + 3]
	sw	%ra, [%sp + 18]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 19
	jalr	%r26
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	j	bneq_cont.8956
bneq_else.8955:
bneq_cont.8956:
	j	bneq_cont.8954
bneq_else.8953:
bneq_cont.8954:
bneq_cont.8952:
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	sub	%r1, %r2, %r1
	lf	%f0, [%sp + 5]
	lf	%f1, [%sp + 2]
	lw	%r2, [%sp + 4]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.8950:
	jr	%ra
trace_ray.2814:
	lw	%r4, [%r27 + 20]
	lw	%r5, [%r27 + 19]
	lw	%r6, [%r27 + 18]
	lw	%r7, [%r27 + 17]
	lw	%r8, [%r27 + 16]
	lw	%r9, [%r27 + 15]
	lw	%r10, [%r27 + 14]
	lw	%r11, [%r27 + 13]
	lw	%r12, [%r27 + 12]
	lw	%r13, [%r27 + 11]
	lw	%r14, [%r27 + 10]
	lw	%r15, [%r27 + 9]
	lw	%r16, [%r27 + 8]
	lw	%r17, [%r27 + 7]
	lw	%r18, [%r27 + 6]
	lw	%r19, [%r27 + 5]
	lw	%r20, [%r27 + 4]
	lw	%r21, [%r27 + 3]
	lw	%r22, [%r27 + 2]
	lw	%r23, [%r27 + 1]
	lli	%r24, 4
	bgt	%r1, %r24, bgt_else.8958
	sw	%r27, [%sp + 0]
	sf	%f1, [%sp + 1]
	sw	%r6, [%sp + 2]
	sw	%r5, [%sp + 3]
	sw	%r15, [%sp + 4]
	sw	%r10, [%sp + 5]
	sw	%r23, [%sp + 6]
	sw	%r9, [%sp + 7]
	sw	%r12, [%sp + 8]
	sw	%r14, [%sp + 9]
	sw	%r7, [%sp + 10]
	sw	%r3, [%sp + 11]
	sw	%r18, [%sp + 12]
	sw	%r4, [%sp + 13]
	sw	%r19, [%sp + 14]
	sw	%r8, [%sp + 15]
	sw	%r21, [%sp + 16]
	sw	%r13, [%sp + 17]
	sw	%r20, [%sp + 18]
	sw	%r11, [%sp + 19]
	sw	%r22, [%sp + 20]
	sf	%f0, [%sp + 21]
	sw	%r16, [%sp + 22]
	sw	%r1, [%sp + 23]
	sw	%r2, [%sp + 24]
	sw	%r17, [%sp + 25]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 26]
	addi	%sp, %sp, 27
	jal	p_surface_ids.2579
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	lw	%r2, [%sp + 24]
	lw	%r27, [%sp + 25]
	sw	%r1, [%sp + 26]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 27]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 28
	jalr	%r26
	subi	%sp, %sp, 28
	lw	%ra, [%sp + 27]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8959
	lli	%r1, -1
	lhi	%r1, -1
	lw	%r2, [%sp + 23]
	lw	%r3, [%sp + 26]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	lli	%r1, 0
	bneq	%r2, %r1, bneq_else.8960
	jr	%ra
bneq_else.8960:
	lw	%r1, [%sp + 24]
	lw	%r2, [%sp + 22]
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	veciprod.2508
	subi	%sp, %sp, 28
	lw	%ra, [%sp + 27]
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	yj_fneg
	subi	%sp, %sp, 28
	lw	%ra, [%sp + 27]
	sf	%f0, [%sp + 27]
	sw	%ra, [%sp + 28]
	addi	%sp, %sp, 29
	jal	fispos.2433
	subi	%sp, %sp, 29
	lw	%ra, [%sp + 28]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8962
	jr	%ra
bneq_else.8962:
	lf	%f0, [%sp + 27]
	sw	%ra, [%sp + 28]
	addi	%sp, %sp, 29
	jal	fsqr.2441
	subi	%sp, %sp, 29
	lw	%ra, [%sp + 28]
	lf	%f1, [%sp + 27]
	mulf	%f0, %f0, %f1
	lf	%f1, [%sp + 21]
	mulf	%f0, %f0, %f1
	lli	%r1, 0
	lw	%r2, [%sp + 20]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	mulf	%f0, %f0, %f1
	lli	%r1, 0
	lli	%r2, 0
	lw	%r3, [%sp + 19]
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
bneq_else.8959:
	lli	%r1, 0
	lw	%r2, [%sp + 18]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r2, [%sp + 17]
	add	%r2, %r2, %r1
	lw	%r2, [%r2 + 0]
	sw	%r1, [%sp + 28]
	sw	%r2, [%sp + 29]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 30]
	addi	%sp, %sp, 31
	jal	o_reflectiontype.2537
	subi	%sp, %sp, 31
	lw	%ra, [%sp + 30]
	lw	%r2, [%sp + 29]
	sw	%r1, [%sp + 30]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 31]
	addi	%sp, %sp, 32
	jal	o_diffuse.2557
	subi	%sp, %sp, 32
	lw	%ra, [%sp + 31]
	lf	%f1, [%sp + 21]
	mulf	%f0, %f0, %f1
	lw	%r1, [%sp + 29]
	lw	%r2, [%sp + 24]
	lw	%r27, [%sp + 16]
	sf	%f0, [%sp + 31]
	sw	%ra, [%sp + 32]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 33
	jalr	%r26
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lw	%r1, [%sp + 15]
	lw	%r2, [%sp + 14]
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	veccpy.2497
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lw	%r1, [%sp + 29]
	lw	%r2, [%sp + 14]
	lw	%r27, [%sp + 13]
	sw	%ra, [%sp + 32]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 33
	jalr	%r26
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lli	%r1, 4
	lw	%r2, [%sp + 28]
	mul	%r1, %r2, %r1
	lli	%r2, 0
	lw	%r3, [%sp + 12]
	add	%r2, %r3, %r2
	lw	%r2, [%r2 + 0]
	add	%r1, %r1, %r2
	lw	%r2, [%sp + 23]
	lw	%r3, [%sp + 26]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lw	%r1, [%sp + 11]
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	p_intersection_points.2577
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lw	%r2, [%sp + 23]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lw	%r3, [%sp + 14]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	veccpy.2497
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lw	%r1, [%sp + 11]
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	p_calc_diffuse.2581
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lw	%r2, [%sp + 29]
	sw	%r1, [%sp + 32]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 33]
	addi	%sp, %sp, 34
	jal	o_diffuse.2557
	subi	%sp, %sp, 34
	lw	%ra, [%sp + 33]
	llif	%f1, 0.500000
	lhif	%f1, 0.500000
	sw	%ra, [%sp + 33]
	addi	%sp, %sp, 34
	jal	fless.2443
	subi	%sp, %sp, 34
	lw	%ra, [%sp + 33]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8965
	lli	%r1, 1
	lw	%r2, [%sp + 23]
	lw	%r3, [%sp + 32]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	lw	%r1, [%sp + 11]
	sw	%ra, [%sp + 33]
	addi	%sp, %sp, 34
	jal	p_energy.2583
	subi	%sp, %sp, 34
	lw	%ra, [%sp + 33]
	lw	%r2, [%sp + 23]
	add	%r3, %r1, %r2
	lw	%r3, [%r3 + 0]
	lw	%r4, [%sp + 10]
	sw	%r1, [%sp + 33]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 34]
	addi	%sp, %sp, 35
	jal	veccpy.2497
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	lw	%r1, [%sp + 23]
	lw	%r2, [%sp + 33]
	add	%r2, %r2, %r1
	lw	%r2, [%r2 + 0]
	llif	%f0, 0.003906
	lhif	%f0, 0.003906
	lf	%f1, [%sp + 31]
	mulf	%f0, %f0, %f1
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 34]
	addi	%sp, %sp, 35
	jal	vecscale.2526
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	lw	%r1, [%sp + 11]
	sw	%ra, [%sp + 34]
	addi	%sp, %sp, 35
	jal	p_nvectors.2592
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	lw	%r2, [%sp + 23]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lw	%r3, [%sp + 9]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 34]
	addi	%sp, %sp, 35
	jal	veccpy.2497
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	j	bneq_cont.8966
bneq_else.8965:
	lli	%r1, 0
	lw	%r2, [%sp + 23]
	lw	%r3, [%sp + 32]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
bneq_cont.8966:
	llif	%f0, -2.000000
	lhif	%f0, -2.000000
	lw	%r1, [%sp + 24]
	lw	%r2, [%sp + 9]
	sf	%f0, [%sp + 34]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	veciprod.2508
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lf	%f1, [%sp + 34]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 24]
	lw	%r2, [%sp + 9]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	vecaccum.2516
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lw	%r1, [%sp + 29]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	o_hilight.2559
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lf	%f1, [%sp + 21]
	mulf	%f0, %f1, %f0
	lli	%r1, 0
	lli	%r2, 0
	lw	%r3, [%sp + 8]
	add	%r2, %r3, %r2
	lw	%r2, [%r2 + 0]
	lw	%r27, [%sp + 7]
	sf	%f0, [%sp + 35]
	sw	%ra, [%sp + 36]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 37
	jalr	%r26
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8967
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 22]
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	veciprod.2508
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	yj_fneg
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	lf	%f1, [%sp + 31]
	mulf	%f0, %f0, %f1
	lw	%r1, [%sp + 24]
	lw	%r2, [%sp + 22]
	sf	%f0, [%sp + 36]
	sw	%ra, [%sp + 37]
	addi	%sp, %sp, 38
	jal	veciprod.2508
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	sw	%ra, [%sp + 37]
	addi	%sp, %sp, 38
	jal	yj_fneg
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	movf	%f1, %f0
	lf	%f0, [%sp + 36]
	lf	%f2, [%sp + 35]
	lw	%r27, [%sp + 6]
	sw	%ra, [%sp + 37]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 38
	jalr	%r26
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	j	bneq_cont.8968
bneq_else.8967:
bneq_cont.8968:
	lw	%r1, [%sp + 14]
	lw	%r27, [%sp + 5]
	sw	%ra, [%sp + 37]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 38
	jalr	%r26
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	lli	%r1, 0
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r2, 1
	sub	%r1, %r1, %r2
	lf	%f0, [%sp + 31]
	lf	%f1, [%sp + 35]
	lw	%r2, [%sp + 24]
	lw	%r27, [%sp + 3]
	sw	%ra, [%sp + 37]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 38
	jalr	%r26
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	llif	%f0, 0.100000
	lhif	%f0, 0.100000
	lf	%f1, [%sp + 21]
	sw	%ra, [%sp + 37]
	addi	%sp, %sp, 38
	jal	fless.2443
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8969
	jr	%ra
bneq_else.8969:
	lli	%r1, 4
	lw	%r2, [%sp + 23]
	bgt	%r1, %r2, bgt_else.8971
	j	bgt_cont.8972
bgt_else.8971:
	lli	%r1, 1
	add	%r1, %r2, %r1
	lli	%r3, -1
	lhi	%r3, -1
	lw	%r4, [%sp + 26]
	add	%r1, %r4, %r1
	sw	%r3, [%r1 + 0]
bgt_cont.8972:
	lli	%r1, 2
	lw	%r3, [%sp + 30]
	bneq	%r3, %r1, bneq_else.8973
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lw	%r1, [%sp + 29]
	sf	%f0, [%sp + 37]
	sw	%ra, [%sp + 38]
	addi	%sp, %sp, 39
	jal	o_diffuse.2557
	subi	%sp, %sp, 39
	lw	%ra, [%sp + 38]
	lf	%f1, [%sp + 37]
	subf	%f0, %f1, %f0
	lf	%f1, [%sp + 21]
	mulf	%f0, %f1, %f0
	lli	%r1, 1
	lw	%r2, [%sp + 23]
	add	%r1, %r2, %r1
	lli	%r2, 0
	lw	%r3, [%sp + 2]
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	lf	%f2, [%sp + 1]
	addf	%f1, %f2, %f1
	lw	%r2, [%sp + 24]
	lw	%r3, [%sp + 11]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8973:
	jr	%ra
bgt_else.8958:
	jr	%ra
trace_diffuse_ray.2820:
	lw	%r2, [%r27 + 12]
	lw	%r3, [%r27 + 11]
	lw	%r4, [%r27 + 10]
	lw	%r5, [%r27 + 9]
	lw	%r6, [%r27 + 8]
	lw	%r7, [%r27 + 7]
	lw	%r8, [%r27 + 6]
	lw	%r9, [%r27 + 5]
	lw	%r10, [%r27 + 4]
	lw	%r11, [%r27 + 3]
	lw	%r12, [%r27 + 2]
	lw	%r13, [%r27 + 1]
	sw	%r3, [%sp + 0]
	sw	%r13, [%sp + 1]
	sf	%f0, [%sp + 2]
	sw	%r8, [%sp + 3]
	sw	%r7, [%sp + 4]
	sw	%r4, [%sp + 5]
	sw	%r5, [%sp + 6]
	sw	%r10, [%sp + 7]
	sw	%r2, [%sp + 8]
	sw	%r12, [%sp + 9]
	sw	%r1, [%sp + 10]
	sw	%r6, [%sp + 11]
	sw	%r11, [%sp + 12]
	add	%r27, %r0, %r9
	sw	%ra, [%sp + 13]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 14
	jalr	%r26
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8976
	jr	%ra
bneq_else.8976:
	lli	%r1, 0
	lw	%r2, [%sp + 12]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r2, [%sp + 11]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r2, [%sp + 10]
	sw	%r1, [%sp + 13]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	d_vec.2594
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 13]
	lw	%r27, [%sp + 9]
	sw	%ra, [%sp + 14]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 15
	jalr	%r26
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lw	%r1, [%sp + 13]
	lw	%r2, [%sp + 7]
	lw	%r27, [%sp + 8]
	sw	%ra, [%sp + 14]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 15
	jalr	%r26
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lli	%r1, 0
	lli	%r2, 0
	lw	%r3, [%sp + 6]
	add	%r2, %r3, %r2
	lw	%r2, [%r2 + 0]
	lw	%r27, [%sp + 5]
	sw	%ra, [%sp + 14]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 15
	jalr	%r26
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8978
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 3]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	veciprod.2508
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	yj_fneg
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	sf	%f0, [%sp + 14]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	fispos.2433
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8979
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	j	bneq_cont.8980
bneq_else.8979:
	lf	%f0, [%sp + 14]
bneq_cont.8980:
	lf	%f1, [%sp + 2]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 13]
	sf	%f0, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	o_diffuse.2557
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f1, [%sp + 15]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	lw	%r2, [%sp + 0]
	j	vecaccum.2516
bneq_else.8978:
	jr	%ra
iter_trace_diffuse_rays.2823:
	lw	%r5, [%r27 + 1]
	lli	%r6, 0
	bgt	%r6, %r4, bgt_else.8982
	add	%r6, %r1, %r4
	lw	%r6, [%r6 + 0]
	sw	%r3, [%sp + 0]
	sw	%r27, [%sp + 1]
	sw	%r5, [%sp + 2]
	sw	%r4, [%sp + 3]
	sw	%r1, [%sp + 4]
	sw	%r2, [%sp + 5]
	add	%r1, %r0, %r6
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	d_vec.2594
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	veciprod.2508
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	fisneg.2435
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8983
	lw	%r1, [%sp + 3]
	lw	%r2, [%sp + 4]
	add	%r3, %r2, %r1
	lw	%r3, [%r3 + 0]
	llif	%f0, 150.000000
	lhif	%f0, 150.000000
	lf	%f1, [%sp + 6]
	divf	%f0, %f1, %f0
	lw	%r27, [%sp + 2]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 7]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 8
	jalr	%r26
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	j	bneq_cont.8984
bneq_else.8983:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r3, [%sp + 4]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	llif	%f0, -150.000000
	lhif	%f0, -150.000000
	lf	%f1, [%sp + 6]
	divf	%f0, %f1, %f0
	lw	%r27, [%sp + 2]
	sw	%ra, [%sp + 7]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 8
	jalr	%r26
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
bneq_cont.8984:
	lli	%r1, 2
	lw	%r2, [%sp + 3]
	sub	%r4, %r2, %r1
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 5]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.8982:
	jr	%ra
trace_diffuse_rays.2828:
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%r5, [%sp + 3]
	add	%r1, %r0, %r3
	add	%r27, %r0, %r4
	sw	%ra, [%sp + 4]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 5
	jalr	%r26
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r4, 118
	lw	%r1, [%sp + 2]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 3]
	lw	%r26, [%r27 + 0]
	jr	%r26
trace_diffuse_ray_80percent.2832:
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	lli	%r6, 0
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r4, [%sp + 2]
	sw	%r5, [%sp + 3]
	sw	%r1, [%sp + 4]
	bneq	%r1, %r6, bneq_else.8986
	j	bneq_cont.8987
bneq_else.8986:
	lli	%r6, 0
	add	%r6, %r5, %r6
	lw	%r6, [%r6 + 0]
	add	%r1, %r0, %r6
	add	%r27, %r0, %r4
	sw	%ra, [%sp + 5]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 6
	jalr	%r26
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
bneq_cont.8987:
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	bneq	%r2, %r1, bneq_else.8988
	j	bneq_cont.8989
bneq_else.8988:
	lli	%r1, 1
	lw	%r3, [%sp + 3]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	lw	%r4, [%sp + 1]
	lw	%r5, [%sp + 0]
	lw	%r27, [%sp + 2]
	add	%r3, %r0, %r5
	add	%r2, %r0, %r4
	sw	%ra, [%sp + 5]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 6
	jalr	%r26
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
bneq_cont.8989:
	lli	%r1, 2
	lw	%r2, [%sp + 4]
	bneq	%r2, %r1, bneq_else.8990
	j	bneq_cont.8991
bneq_else.8990:
	lli	%r1, 2
	lw	%r3, [%sp + 3]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	lw	%r4, [%sp + 1]
	lw	%r5, [%sp + 0]
	lw	%r27, [%sp + 2]
	add	%r3, %r0, %r5
	add	%r2, %r0, %r4
	sw	%ra, [%sp + 5]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 6
	jalr	%r26
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
bneq_cont.8991:
	lli	%r1, 3
	lw	%r2, [%sp + 4]
	bneq	%r2, %r1, bneq_else.8992
	j	bneq_cont.8993
bneq_else.8992:
	lli	%r1, 3
	lw	%r3, [%sp + 3]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	lw	%r4, [%sp + 1]
	lw	%r5, [%sp + 0]
	lw	%r27, [%sp + 2]
	add	%r3, %r0, %r5
	add	%r2, %r0, %r4
	sw	%ra, [%sp + 5]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 6
	jalr	%r26
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
bneq_cont.8993:
	lli	%r1, 4
	lw	%r2, [%sp + 4]
	bneq	%r2, %r1, bneq_else.8994
	jr	%ra
bneq_else.8994:
	lli	%r1, 4
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
calc_diffuse_using_1point.2836:
	lw	%r3, [%r27 + 3]
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	sw	%r4, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r5, [%sp + 2]
	sw	%r2, [%sp + 3]
	sw	%r1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	p_received_ray_20percent.2585
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 4]
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	p_nvectors.2592
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 4]
	sw	%r1, [%sp + 6]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	p_intersection_points.2577
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r2, [%sp + 4]
	sw	%r1, [%sp + 7]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	p_energy.2583
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r2, [%sp + 3]
	lw	%r3, [%sp + 5]
	add	%r3, %r3, %r2
	lw	%r3, [%r3 + 0]
	lw	%r4, [%sp + 2]
	sw	%r1, [%sp + 8]
	add	%r2, %r0, %r3
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	veccpy.2497
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	p_group_id.2587
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r2, [%sp + 3]
	lw	%r3, [%sp + 6]
	add	%r3, %r3, %r2
	lw	%r3, [%r3 + 0]
	lw	%r4, [%sp + 7]
	add	%r4, %r4, %r2
	lw	%r4, [%r4 + 0]
	lw	%r27, [%sp + 1]
	add	%r2, %r0, %r3
	add	%r3, %r0, %r4
	sw	%ra, [%sp + 9]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 10
	jalr	%r26
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r1, [%sp + 3]
	lw	%r2, [%sp + 8]
	add	%r1, %r2, %r1
	lw	%r2, [%r1 + 0]
	lw	%r1, [%sp + 0]
	lw	%r3, [%sp + 2]
	j	vecaccumv.2529
calc_diffuse_using_5points.2839:
	lw	%r6, [%r27 + 2]
	lw	%r7, [%r27 + 1]
	add	%r2, %r2, %r1
	lw	%r2, [%r2 + 0]
	sw	%r6, [%sp + 0]
	sw	%r7, [%sp + 1]
	sw	%r5, [%sp + 2]
	sw	%r4, [%sp + 3]
	sw	%r3, [%sp + 4]
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	p_received_ray_20percent.2585
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 1
	lw	%r3, [%sp + 5]
	sub	%r2, %r3, %r2
	lw	%r4, [%sp + 4]
	add	%r2, %r4, %r2
	lw	%r2, [%r2 + 0]
	sw	%r1, [%sp + 6]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	p_received_ray_20percent.2585
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r2, [%sp + 5]
	lw	%r3, [%sp + 4]
	add	%r4, %r3, %r2
	lw	%r4, [%r4 + 0]
	sw	%r1, [%sp + 7]
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	p_received_ray_20percent.2585
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 1
	lw	%r3, [%sp + 5]
	add	%r2, %r3, %r2
	lw	%r4, [%sp + 4]
	add	%r2, %r4, %r2
	lw	%r2, [%r2 + 0]
	sw	%r1, [%sp + 8]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	p_received_ray_20percent.2585
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r2, [%sp + 5]
	lw	%r3, [%sp + 3]
	add	%r3, %r3, %r2
	lw	%r3, [%r3 + 0]
	sw	%r1, [%sp + 9]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	p_received_ray_20percent.2585
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lw	%r2, [%sp + 2]
	lw	%r3, [%sp + 6]
	add	%r3, %r3, %r2
	lw	%r3, [%r3 + 0]
	lw	%r4, [%sp + 1]
	sw	%r1, [%sp + 10]
	add	%r2, %r0, %r3
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	veccpy.2497
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r1, [%sp + 2]
	lw	%r2, [%sp + 7]
	add	%r2, %r2, %r1
	lw	%r2, [%r2 + 0]
	lw	%r3, [%sp + 1]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	vecadd.2520
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r1, [%sp + 2]
	lw	%r2, [%sp + 8]
	add	%r2, %r2, %r1
	lw	%r2, [%r2 + 0]
	lw	%r3, [%sp + 1]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	vecadd.2520
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r1, [%sp + 2]
	lw	%r2, [%sp + 9]
	add	%r2, %r2, %r1
	lw	%r2, [%r2 + 0]
	lw	%r3, [%sp + 1]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	vecadd.2520
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r1, [%sp + 2]
	lw	%r2, [%sp + 10]
	add	%r2, %r2, %r1
	lw	%r2, [%r2 + 0]
	lw	%r3, [%sp + 1]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	vecadd.2520
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	p_energy.2583
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r2, [%sp + 2]
	add	%r1, %r1, %r2
	lw	%r2, [%r1 + 0]
	lw	%r1, [%sp + 0]
	lw	%r3, [%sp + 1]
	j	vecaccumv.2529
do_without_neighbors.2845:
	lw	%r3, [%r27 + 1]
	lli	%r4, 4
	bgt	%r2, %r4, bgt_else.8996
	sw	%r27, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%r2, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	p_surface_ids.2579
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	lw	%r3, [%sp + 3]
	add	%r1, %r1, %r3
	lw	%r1, [%r1 + 0]
	bgt	%r2, %r1, bgt_else.8997
	lw	%r1, [%sp + 2]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	p_calc_diffuse.2581
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r2, [%sp + 3]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.8998
	j	bneq_cont.8999
bneq_else.8998:
	lw	%r1, [%sp + 2]
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 4]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 5
	jalr	%r26
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
bneq_cont.8999:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r2, %r2, %r1
	lw	%r1, [%sp + 2]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.8997:
	jr	%ra
bgt_else.8996:
	jr	%ra
neighbors_exist.2848:
	lw	%r3, [%r27 + 1]
	lli	%r4, 1
	add	%r4, %r3, %r4
	lw	%r4, [%r4 + 0]
	lli	%r5, 1
	add	%r5, %r2, %r5
	bgt	%r4, %r5, bgt_else.9002
	lli	%r1, 0
	jr	%ra
bgt_else.9002:
	lli	%r4, 0
	bgt	%r2, %r4, bgt_else.9003
	lli	%r1, 0
	jr	%ra
bgt_else.9003:
	lli	%r2, 0
	add	%r2, %r3, %r2
	lw	%r2, [%r2 + 0]
	lli	%r3, 1
	add	%r3, %r1, %r3
	bgt	%r2, %r3, bgt_else.9004
	lli	%r1, 0
	jr	%ra
bgt_else.9004:
	lli	%r2, 0
	bgt	%r1, %r2, bgt_else.9005
	lli	%r1, 0
	jr	%ra
bgt_else.9005:
	lli	%r1, 1
	jr	%ra
get_surface_id.2852:
	sw	%r2, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	p_surface_ids.2579
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lw	%r2, [%sp + 0]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	jr	%ra
neighbors_are_available.2855:
	add	%r6, %r3, %r1
	lw	%r6, [%r6 + 0]
	sw	%r3, [%sp + 0]
	sw	%r4, [%sp + 1]
	sw	%r5, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%r2, [%sp + 4]
	add	%r2, %r0, %r5
	add	%r1, %r0, %r6
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	get_surface_id.2852
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 3]
	lw	%r3, [%sp + 4]
	add	%r3, %r3, %r2
	lw	%r3, [%r3 + 0]
	lw	%r4, [%sp + 2]
	sw	%r1, [%sp + 5]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	get_surface_id.2852
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 5]
	bneq	%r1, %r2, bneq_else.9006
	lw	%r1, [%sp + 3]
	lw	%r3, [%sp + 1]
	add	%r3, %r3, %r1
	lw	%r3, [%r3 + 0]
	lw	%r4, [%sp + 2]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	get_surface_id.2852
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 5]
	bneq	%r1, %r2, bneq_else.9007
	lli	%r1, 1
	lw	%r3, [%sp + 3]
	sub	%r1, %r3, %r1
	lw	%r4, [%sp + 0]
	add	%r1, %r4, %r1
	lw	%r1, [%r1 + 0]
	lw	%r5, [%sp + 2]
	add	%r2, %r0, %r5
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	get_surface_id.2852
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 5]
	bneq	%r1, %r2, bneq_else.9008
	lli	%r1, 1
	lw	%r3, [%sp + 3]
	add	%r1, %r3, %r1
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	lw	%r3, [%sp + 2]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	get_surface_id.2852
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 5]
	bneq	%r1, %r2, bneq_else.9009
	lli	%r1, 1
	jr	%ra
bneq_else.9009:
	lli	%r1, 0
	jr	%ra
bneq_else.9008:
	lli	%r1, 0
	jr	%ra
bneq_else.9007:
	lli	%r1, 0
	jr	%ra
bneq_else.9006:
	lli	%r1, 0
	jr	%ra
try_exploit_neighbors.2861:
	lw	%r7, [%r27 + 2]
	lw	%r8, [%r27 + 1]
	add	%r9, %r4, %r1
	lw	%r9, [%r9 + 0]
	lli	%r10, 4
	bgt	%r6, %r10, bgt_else.9010
	lli	%r10, 0
	sw	%r2, [%sp + 0]
	sw	%r27, [%sp + 1]
	sw	%r8, [%sp + 2]
	sw	%r9, [%sp + 3]
	sw	%r7, [%sp + 4]
	sw	%r6, [%sp + 5]
	sw	%r5, [%sp + 6]
	sw	%r4, [%sp + 7]
	sw	%r3, [%sp + 8]
	sw	%r1, [%sp + 9]
	sw	%r10, [%sp + 10]
	add	%r2, %r0, %r6
	add	%r1, %r0, %r9
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	get_surface_id.2852
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r2, [%sp + 10]
	bgt	%r2, %r1, bgt_else.9011
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 8]
	lw	%r3, [%sp + 7]
	lw	%r4, [%sp + 6]
	lw	%r5, [%sp + 5]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	neighbors_are_available.2855
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9012
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r2, [%sp + 5]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9012:
	lw	%r1, [%sp + 3]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	p_calc_diffuse.2581
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r5, [%sp + 5]
	add	%r1, %r1, %r5
	lw	%r1, [%r1 + 0]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9013
	j	bneq_cont.9014
bneq_else.9013:
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 8]
	lw	%r3, [%sp + 7]
	lw	%r4, [%sp + 6]
	lw	%r27, [%sp + 2]
	sw	%ra, [%sp + 11]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 12
	jalr	%r26
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
bneq_cont.9014:
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r6, %r2, %r1
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 0]
	lw	%r3, [%sp + 8]
	lw	%r4, [%sp + 7]
	lw	%r5, [%sp + 6]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9011:
	jr	%ra
bgt_else.9010:
	jr	%ra
write_ppm_header.2868:
	lw	%r1, [%r27 + 1]
	lli	%r2, 80
	sw	%r1, [%sp + 0]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_print_char
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 51
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_print_char
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 10
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_print_char
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_print_int
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 32
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_print_char
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_print_int
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 32
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_print_char
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 255
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_print_int
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 10
	j	yj_print_char
write_rgb_element.2870:
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_int_of_float
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r2, 255
	bgt	%r1, %r2, bgt_else.9017
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.9019
	j	bgt_cont.9020
bgt_else.9019:
	lli	%r1, 0
bgt_cont.9020:
	j	bgt_cont.9018
bgt_else.9017:
	lli	%r1, 255
bgt_cont.9018:
	j	yj_print_int
write_rgb.2872:
	lw	%r1, [%r27 + 1]
	lli	%r2, 0
	add	%r2, %r1, %r2
	lf	%f0, [%r2 + 0]
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	write_rgb_element.2870
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 32
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_print_char
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	write_rgb_element.2870
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 32
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_print_char
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 2
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	write_rgb_element.2870
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 10
	j	yj_print_char
pretrace_diffuse_rays.2874:
	lw	%r3, [%r27 + 3]
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	lli	%r6, 4
	bgt	%r2, %r6, bgt_else.9021
	sw	%r27, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r4, [%sp + 2]
	sw	%r5, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	get_surface_id.2852
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.9022
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	p_calc_diffuse.2581
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 4]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.9023
	j	bneq_cont.9024
bneq_else.9023:
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	p_group_id.2587
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 3]
	sw	%r1, [%sp + 6]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	vecbzero.2495
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	p_nvectors.2592
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r2, [%sp + 5]
	sw	%r1, [%sp + 7]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	p_intersection_points.2577
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r2, [%sp + 6]
	lw	%r3, [%sp + 2]
	add	%r2, %r3, %r2
	lw	%r2, [%r2 + 0]
	lw	%r3, [%sp + 4]
	lw	%r4, [%sp + 7]
	add	%r4, %r4, %r3
	lw	%r4, [%r4 + 0]
	add	%r1, %r1, %r3
	lw	%r1, [%r1 + 0]
	lw	%r27, [%sp + 1]
	add	%r3, %r0, %r1
	add	%r1, %r0, %r2
	add	%r2, %r0, %r4
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	p_received_ray_20percent.2585
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r2, [%sp + 4]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lw	%r3, [%sp + 3]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	veccpy.2497
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
bneq_cont.9024:
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r2, %r2, %r1
	lw	%r1, [%sp + 5]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9022:
	jr	%ra
bgt_else.9021:
	jr	%ra
pretrace_pixels.2877:
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
	bgt	%r13, %r2, bgt_else.9027
	lli	%r13, 0
	add	%r8, %r8, %r13
	lf	%f3, [%r8 + 0]
	lli	%r8, 0
	add	%r8, %r12, %r8
	lw	%r8, [%r8 + 0]
	sub	%r8, %r2, %r8
	sw	%r27, [%sp + 0]
	sw	%r11, [%sp + 1]
	sw	%r3, [%sp + 2]
	sw	%r5, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%r1, [%sp + 5]
	sw	%r4, [%sp + 6]
	sw	%r6, [%sp + 7]
	sw	%r9, [%sp + 8]
	sf	%f2, [%sp + 9]
	sf	%f1, [%sp + 10]
	sw	%r10, [%sp + 11]
	sf	%f0, [%sp + 12]
	sw	%r7, [%sp + 13]
	sf	%f3, [%sp + 14]
	add	%r1, %r0, %r8
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	yj_float_of_int
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lf	%f1, [%sp + 14]
	mulf	%f0, %f1, %f0
	lli	%r1, 0
	lli	%r2, 0
	lw	%r3, [%sp + 13]
	add	%r2, %r3, %r2
	lf	%f1, [%r2 + 0]
	mulf	%f1, %f0, %f1
	lf	%f2, [%sp + 12]
	addf	%f1, %f1, %f2
	lw	%r2, [%sp + 11]
	add	%r1, %r2, %r1
	sf	%f1, [%r1 + 0]
	lli	%r1, 1
	lli	%r4, 1
	add	%r4, %r3, %r4
	lf	%f1, [%r4 + 0]
	mulf	%f1, %f0, %f1
	lf	%f3, [%sp + 10]
	addf	%f1, %f1, %f3
	add	%r1, %r2, %r1
	sf	%f1, [%r1 + 0]
	lli	%r1, 2
	lli	%r4, 2
	add	%r3, %r3, %r4
	lf	%f1, [%r3 + 0]
	mulf	%f0, %f0, %f1
	lf	%f1, [%sp + 9]
	addf	%f0, %f0, %f1
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 0
	add	%r26, %r0, %r2
	add	%r2, %r0, %r1
	add	%r1, %r0, %r26
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	vecunit_sgn.2505
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r1, [%sp + 8]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	vecbzero.2495
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r1, [%sp + 7]
	lw	%r2, [%sp + 6]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	veccpy.2497
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r1, 0
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 5]
	add	%r4, %r3, %r2
	lw	%r4, [%r4 + 0]
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	lw	%r5, [%sp + 11]
	lw	%r27, [%sp + 3]
	add	%r3, %r0, %r4
	add	%r2, %r0, %r5
	sw	%ra, [%sp + 15]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 16
	jalr	%r26
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 5]
	add	%r3, %r2, %r1
	lw	%r3, [%r3 + 0]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	p_rgb.2575
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r2, [%sp + 8]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	veccpy.2497
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 5]
	add	%r3, %r2, %r1
	lw	%r3, [%r3 + 0]
	lw	%r4, [%sp + 2]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	p_set_group_id.2589
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 5]
	add	%r3, %r2, %r1
	lw	%r3, [%r3 + 0]
	lli	%r4, 0
	lw	%r27, [%sp + 1]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 15]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 16
	jalr	%r26
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	sub	%r1, %r2, %r1
	lli	%r2, 1
	lw	%r3, [%sp + 2]
	sw	%r1, [%sp + 15]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	add_mod5.2484
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	add	%r3, %r0, %r1
	lf	%f0, [%sp + 12]
	lf	%f1, [%sp + 10]
	lf	%f2, [%sp + 9]
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 15]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9027:
	jr	%ra
pretrace_line.2884:
	lw	%r4, [%r27 + 6]
	lw	%r5, [%r27 + 5]
	lw	%r6, [%r27 + 4]
	lw	%r7, [%r27 + 3]
	lw	%r8, [%r27 + 2]
	lw	%r9, [%r27 + 1]
	lli	%r10, 0
	add	%r6, %r6, %r10
	lf	%f0, [%r6 + 0]
	lli	%r6, 1
	add	%r6, %r9, %r6
	lw	%r6, [%r6 + 0]
	sub	%r2, %r2, %r6
	sw	%r3, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r7, [%sp + 2]
	sw	%r8, [%sp + 3]
	sw	%r4, [%sp + 4]
	sw	%r5, [%sp + 5]
	sf	%f0, [%sp + 6]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj_float_of_int
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lf	%f1, [%sp + 6]
	mulf	%f0, %f1, %f0
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	mulf	%f1, %f0, %f1
	lli	%r1, 0
	lw	%r3, [%sp + 4]
	add	%r1, %r3, %r1
	lf	%f2, [%r1 + 0]
	addf	%f1, %f1, %f2
	lli	%r1, 1
	add	%r1, %r2, %r1
	lf	%f2, [%r1 + 0]
	mulf	%f2, %f0, %f2
	lli	%r1, 1
	add	%r1, %r3, %r1
	lf	%f3, [%r1 + 0]
	addf	%f2, %f2, %f3
	lli	%r1, 2
	add	%r1, %r2, %r1
	lf	%f3, [%r1 + 0]
	mulf	%f0, %f0, %f3
	lli	%r1, 2
	add	%r1, %r3, %r1
	lf	%f3, [%r1 + 0]
	addf	%f0, %f0, %f3
	lli	%r1, 0
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r2, 1
	sub	%r2, %r1, %r2
	lw	%r1, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	movf	%f31, %f2
	movf	%f2, %f0
	movf	%f0, %f1
	movf	%f1, %f31
	lw	%r26, [%r27 + 0]
	jr	%r26
scan_pixel.2888:
	lw	%r6, [%r27 + 6]
	lw	%r7, [%r27 + 5]
	lw	%r8, [%r27 + 4]
	lw	%r9, [%r27 + 3]
	lw	%r10, [%r27 + 2]
	lw	%r11, [%r27 + 1]
	lli	%r12, 0
	add	%r10, %r10, %r12
	lw	%r10, [%r10 + 0]
	bgt	%r10, %r1, bgt_else.9029
	jr	%ra
bgt_else.9029:
	add	%r10, %r4, %r1
	lw	%r10, [%r10 + 0]
	sw	%r27, [%sp + 0]
	sw	%r6, [%sp + 1]
	sw	%r3, [%sp + 2]
	sw	%r7, [%sp + 3]
	sw	%r11, [%sp + 4]
	sw	%r4, [%sp + 5]
	sw	%r5, [%sp + 6]
	sw	%r2, [%sp + 7]
	sw	%r1, [%sp + 8]
	sw	%r9, [%sp + 9]
	sw	%r8, [%sp + 10]
	add	%r1, %r0, %r10
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	p_rgb.2575
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	veccpy.2497
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r1, [%sp + 8]
	lw	%r2, [%sp + 7]
	lw	%r3, [%sp + 6]
	lw	%r27, [%sp + 9]
	sw	%ra, [%sp + 11]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 12
	jalr	%r26
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9031
	lw	%r1, [%sp + 8]
	lw	%r2, [%sp + 5]
	add	%r3, %r2, %r1
	lw	%r3, [%r3 + 0]
	lli	%r4, 0
	lw	%r27, [%sp + 4]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 11]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 12
	jalr	%r26
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	j	bneq_cont.9032
bneq_else.9031:
	lli	%r6, 0
	lw	%r1, [%sp + 8]
	lw	%r2, [%sp + 7]
	lw	%r3, [%sp + 2]
	lw	%r4, [%sp + 5]
	lw	%r5, [%sp + 6]
	lw	%r27, [%sp + 3]
	sw	%ra, [%sp + 11]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 12
	jalr	%r26
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
bneq_cont.9032:
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 11]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 12
	jalr	%r26
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r1, 1
	lw	%r2, [%sp + 8]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 7]
	lw	%r3, [%sp + 2]
	lw	%r4, [%sp + 5]
	lw	%r5, [%sp + 6]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
scan_line.2894:
	lw	%r6, [%r27 + 3]
	lw	%r7, [%r27 + 2]
	lw	%r8, [%r27 + 1]
	lli	%r9, 1
	add	%r9, %r8, %r9
	lw	%r9, [%r9 + 0]
	bgt	%r9, %r1, bgt_else.9033
	jr	%ra
bgt_else.9033:
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
	bgt	%r8, %r1, bgt_else.9035
	j	bgt_cont.9036
bgt_else.9035:
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
bgt_cont.9036:
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
	sw	%r1, [%sp + 7]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	add_mod5.2484
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	add	%r5, %r0, %r1
	lw	%r1, [%sp + 7]
	lw	%r2, [%sp + 3]
	lw	%r3, [%sp + 2]
	lw	%r4, [%sp + 4]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
create_float5x3array.2900:
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_create_float_array
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	add	%r2, %r0, %r1
	lli	%r1, 5
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_create_array
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r2, 1
	lli	%r3, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_float_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r2, [%sp + 0]
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	sw	%r1, [%r2 + 0]
	lli	%r1, 2
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 2]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj_create_float_array
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lw	%r2, [%sp + 2]
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	sw	%r1, [%r2 + 0]
	lli	%r1, 3
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 3]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj_create_float_array
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r2, [%sp + 3]
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	sw	%r1, [%r2 + 0]
	lli	%r1, 4
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 4]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_create_float_array
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	sw	%r1, [%r2 + 0]
	add	%r1, %r0, %r3
	jr	%ra
create_pixel.2902:
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_create_float_array
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	create_float5x3array.2900
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, 5
	lli	%r3, 0
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 5
	lli	%r3, 0
	sw	%r1, [%sp + 2]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj_create_array
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	sw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	create_float5x3array.2900
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	sw	%r1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	create_float5x3array.2900
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 1
	lli	%r3, 0
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj_create_array
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	sw	%r1, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	create_float5x3array.2900
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
init_line_elements.2904:
	lli	%r3, 0
	bgt	%r3, %r2, bgt_else.9037
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	create_pixel.2902
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r2, [%sp + 0]
	lw	%r3, [%sp + 1]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	sub	%r2, %r2, %r1
	add	%r1, %r0, %r3
	j	init_line_elements.2904
bgt_else.9037:
	jr	%ra
create_pixelline.2907:
	lw	%r1, [%r27 + 1]
	lli	%r2, 0
	add	%r2, %r1, %r2
	lw	%r2, [%r2 + 0]
	sw	%r1, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	create_pixel.2902
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 0
	lw	%r3, [%sp + 0]
	add	%r2, %r3, %r2
	lw	%r2, [%r2 + 0]
	lli	%r3, 2
	sub	%r2, %r2, %r3
	j	init_line_elements.2904
tan.2909:
	sf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_sin
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lf	%f1, [%sp + 0]
	sf	%f0, [%sp + 1]
	movf	%f0, %f1
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_cos
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lf	%f1, [%sp + 1]
	divf	%f0, %f1, %f0
	jr	%ra
adjust_position.2911:
	mulf	%f0, %f0, %f0
	llif	%f2, 0.100000
	lhif	%f2, 0.100000
	addf	%f0, %f0, %f2
	sf	%f1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_sqrt
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	divf	%f1, %f1, %f0
	sf	%f0, [%sp + 1]
	movf	%f0, %f1
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_atan
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lf	%f1, [%sp + 0]
	mulf	%f0, %f0, %f1
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	tan.2909
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lf	%f1, [%sp + 1]
	mulf	%f0, %f0, %f1
	jr	%ra
calc_dirvec.2914:
	lw	%r4, [%r27 + 1]
	lli	%r5, 5
	bgt	%r5, %r1, bgt_else.9038
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r4, [%sp + 2]
	sf	%f0, [%sp + 3]
	sf	%f1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fsqr.2441
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 4]
	sf	%f0, [%sp + 5]
	movf	%f0, %f1
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fsqr.2441
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lf	%f1, [%sp + 5]
	addf	%f0, %f1, %f0
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	addf	%f0, %f0, %f1
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj_sqrt
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lf	%f1, [%sp + 3]
	divf	%f1, %f1, %f0
	lf	%f2, [%sp + 4]
	divf	%f2, %f2, %f0
	llif	%f3, 1.000000
	lhif	%f3, 1.000000
	divf	%f0, %f3, %f0
	lw	%r1, [%sp + 1]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r2, [%sp + 0]
	add	%r3, %r1, %r2
	lw	%r3, [%r3 + 0]
	sw	%r1, [%sp + 6]
	sf	%f0, [%sp + 7]
	sf	%f2, [%sp + 8]
	sf	%f1, [%sp + 9]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	d_vec.2594
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f0, [%sp + 9]
	lf	%f1, [%sp + 8]
	lf	%f2, [%sp + 7]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	vecset.2487
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r1, 40
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lw	%r3, [%sp + 6]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	d_vec.2594
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f0, [%sp + 8]
	sw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	yj_fneg
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	movf	%f2, %f0
	lf	%f0, [%sp + 9]
	lf	%f1, [%sp + 7]
	lw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	vecset.2487
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r1, 80
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lw	%r3, [%sp + 6]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	d_vec.2594
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lf	%f0, [%sp + 9]
	sw	%r1, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj_fneg
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lf	%f1, [%sp + 8]
	sf	%f0, [%sp + 12]
	movf	%f0, %f1
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	yj_fneg
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	movf	%f2, %f0
	lf	%f0, [%sp + 7]
	lf	%f1, [%sp + 12]
	lw	%r1, [%sp + 11]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	vecset.2487
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r1, 1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lw	%r3, [%sp + 6]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	d_vec.2594
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lf	%f0, [%sp + 9]
	sw	%r1, [%sp + 13]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	yj_fneg
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lf	%f1, [%sp + 8]
	sf	%f0, [%sp + 14]
	movf	%f0, %f1
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	yj_fneg
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lf	%f1, [%sp + 7]
	sf	%f0, [%sp + 15]
	movf	%f0, %f1
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	yj_fneg
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	movf	%f2, %f0
	lf	%f0, [%sp + 14]
	lf	%f1, [%sp + 15]
	lw	%r1, [%sp + 13]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	vecset.2487
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lli	%r1, 41
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lw	%r3, [%sp + 6]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	d_vec.2594
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f0, [%sp + 9]
	sw	%r1, [%sp + 16]
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	yj_fneg
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lf	%f1, [%sp + 7]
	sf	%f0, [%sp + 17]
	movf	%f0, %f1
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	yj_fneg
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	movf	%f1, %f0
	lf	%f0, [%sp + 17]
	lf	%f2, [%sp + 8]
	lw	%r1, [%sp + 16]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	vecset.2487
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lli	%r1, 81
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 6]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	d_vec.2594
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f0, [%sp + 7]
	sw	%r1, [%sp + 18]
	sw	%ra, [%sp + 19]
	addi	%sp, %sp, 20
	jal	yj_fneg
	subi	%sp, %sp, 20
	lw	%ra, [%sp + 19]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 8]
	lw	%r1, [%sp + 18]
	j	vecset.2487
bgt_else.9038:
	sf	%f2, [%sp + 19]
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r27, [%sp + 20]
	sf	%f3, [%sp + 21]
	sw	%r1, [%sp + 22]
	movf	%f0, %f1
	movf	%f1, %f2
	sw	%ra, [%sp + 23]
	addi	%sp, %sp, 24
	jal	adjust_position.2911
	subi	%sp, %sp, 24
	lw	%ra, [%sp + 23]
	lli	%r1, 1
	lw	%r2, [%sp + 22]
	add	%r1, %r2, %r1
	lf	%f1, [%sp + 21]
	sf	%f0, [%sp + 23]
	sw	%r1, [%sp + 24]
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	adjust_position.2911
	subi	%sp, %sp, 26
	lw	%ra, [%sp + 25]
	movf	%f1, %f0
	lf	%f0, [%sp + 23]
	lf	%f2, [%sp + 19]
	lf	%f3, [%sp + 21]
	lw	%r1, [%sp + 24]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 20]
	lw	%r26, [%r27 + 0]
	jr	%r26
calc_dirvecs.2922:
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.9039
	sw	%r27, [%sp + 0]
	sw	%r1, [%sp + 1]
	sf	%f0, [%sp + 2]
	sw	%r3, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%r4, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj_float_of_int
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	llif	%f1, 0.200000
	lhif	%f1, 0.200000
	mulf	%f0, %f0, %f1
	llif	%f1, 0.900000
	lhif	%f1, 0.900000
	subf	%f2, %f0, %f1
	lli	%r1, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	lf	%f3, [%sp + 2]
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 3]
	lw	%r27, [%sp + 5]
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r1, [%sp + 1]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	yj_float_of_int
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	llif	%f1, 0.200000
	lhif	%f1, 0.200000
	mulf	%f0, %f0, %f1
	llif	%f1, 0.100000
	lhif	%f1, 0.100000
	addf	%f2, %f0, %f1
	lli	%r1, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	lli	%r2, 2
	lw	%r3, [%sp + 3]
	add	%r2, %r3, %r2
	lf	%f3, [%sp + 2]
	lw	%r4, [%sp + 4]
	lw	%r27, [%sp + 5]
	add	%r3, %r0, %r2
	add	%r2, %r0, %r4
	sw	%ra, [%sp + 6]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 7
	jalr	%r26
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	sub	%r1, %r2, %r1
	lli	%r2, 1
	lw	%r3, [%sp + 4]
	sw	%r1, [%sp + 6]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	add_mod5.2484
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	add	%r2, %r0, %r1
	lf	%f0, [%sp + 2]
	lw	%r1, [%sp + 6]
	lw	%r3, [%sp + 3]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9039:
	jr	%ra
calc_dirvec_rows.2927:
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.9041
	sw	%r27, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r3, [%sp + 2]
	sw	%r2, [%sp + 3]
	sw	%r4, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_float_of_int
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	llif	%f1, 0.200000
	lhif	%f1, 0.200000
	mulf	%f0, %f0, %f1
	llif	%f1, 0.900000
	lhif	%f1, 0.900000
	subf	%f0, %f0, %f1
	lli	%r1, 4
	lw	%r2, [%sp + 3]
	lw	%r3, [%sp + 2]
	lw	%r27, [%sp + 4]
	sw	%ra, [%sp + 5]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 6
	jalr	%r26
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	sub	%r1, %r2, %r1
	lli	%r2, 2
	lw	%r3, [%sp + 3]
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	add_mod5.2484
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	add	%r2, %r0, %r1
	lli	%r1, 4
	lw	%r3, [%sp + 2]
	add	%r3, %r3, %r1
	lw	%r1, [%sp + 5]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9041:
	jr	%ra
create_dirvec.2931:
	lw	%r1, [%r27 + 1]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 0]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_create_float_array
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	add	%r2, %r0, %r1
	lli	%r1, 0
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	lw	%r1, [%r1 + 0]
	sw	%r2, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	sw	%r1, [%r2 + 1]
	lw	%r1, [%sp + 1]
	sw	%r1, [%r2 + 0]
	add	%r1, %r0, %r2
	jr	%ra
create_dirvec_elements.2933:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r2, bgt_else.9043
	sw	%r27, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r1, [%sp + 2]
	add	%r27, %r0, %r3
	sw	%ra, [%sp + 3]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 4
	jalr	%r26
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 2]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	sub	%r2, %r2, %r1
	lw	%r27, [%sp + 0]
	add	%r1, %r0, %r3
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9043:
	jr	%ra
create_dirvecs.2936:
	lw	%r2, [%r27 + 3]
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.9045
	lli	%r5, 120
	sw	%r27, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%r2, [%sp + 3]
	sw	%r5, [%sp + 4]
	add	%r27, %r0, %r4
	sw	%ra, [%sp + 5]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 6
	jalr	%r26
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_create_array
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 2]
	lw	%r3, [%sp + 3]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	add	%r1, %r3, %r2
	lw	%r1, [%r1 + 0]
	lli	%r3, 118
	lw	%r27, [%sp + 1]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 5]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 6
	jalr	%r26
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r1, 1
	lw	%r2, [%sp + 2]
	sub	%r1, %r2, %r1
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9045:
	jr	%ra
init_dirvec_constants.2938:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r2, bgt_else.9047
	add	%r4, %r1, %r2
	lw	%r4, [%r4 + 0]
	sw	%r1, [%sp + 0]
	sw	%r27, [%sp + 1]
	sw	%r2, [%sp + 2]
	add	%r1, %r0, %r4
	add	%r27, %r0, %r3
	sw	%ra, [%sp + 3]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 4
	jalr	%r26
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r1, 1
	lw	%r2, [%sp + 2]
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 0]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9047:
	jr	%ra
init_vecset_constants.2941:
	lw	%r2, [%r27 + 2]
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r1, bgt_else.9049
	add	%r3, %r3, %r1
	lw	%r3, [%r3 + 0]
	lli	%r4, 119
	sw	%r27, [%sp + 0]
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r3
	add	%r27, %r0, %r2
	add	%r2, %r0, %r4
	sw	%ra, [%sp + 2]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 3
	jalr	%r26
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	sub	%r1, %r2, %r1
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9049:
	jr	%ra
init_dirvecs.2943:
	lw	%r1, [%r27 + 3]
	lw	%r2, [%r27 + 2]
	lw	%r3, [%r27 + 1]
	lli	%r4, 4
	sw	%r1, [%sp + 0]
	sw	%r3, [%sp + 1]
	add	%r1, %r0, %r4
	add	%r27, %r0, %r2
	sw	%ra, [%sp + 2]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 3
	jalr	%r26
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 9
	lli	%r2, 0
	lli	%r3, 0
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 2]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 3
	jalr	%r26
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 4
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
add_reflection.2945:
	lw	%r3, [%r27 + 3]
	lw	%r4, [%r27 + 2]
	lw	%r27, [%r27 + 1]
	sw	%r1, [%sp + 0]
	sw	%r4, [%sp + 1]
	sw	%r2, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%r3, [%sp + 4]
	sf	%f3, [%sp + 5]
	sf	%f2, [%sp + 6]
	sf	%f1, [%sp + 7]
	sw	%ra, [%sp + 8]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 9
	jalr	%r26
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	sw	%r1, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	d_vec.2594
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lf	%f0, [%sp + 7]
	lf	%f1, [%sp + 6]
	lf	%f2, [%sp + 5]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	vecset.2487
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r1, [%sp + 8]
	lw	%r27, [%sp + 4]
	sw	%ra, [%sp + 9]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 10
	jalr	%r26
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	add	%r1, %r0, %hp
	addi	%hp, %hp, 3
	lf	%f0, [%sp + 3]
	sf	%f0, [%r1 + 2]
	lw	%r2, [%sp + 8]
	sw	%r2, [%r1 + 1]
	lw	%r2, [%sp + 2]
	sw	%r2, [%r1 + 0]
	lw	%r2, [%sp + 0]
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	sw	%r1, [%r2 + 0]
	jr	%ra
setup_rect_reflection.2952:
	lw	%r3, [%r27 + 3]
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	lli	%r6, 4
	mul	%r1, %r1, %r6
	lli	%r6, 0
	add	%r6, %r3, %r6
	lw	%r6, [%r6 + 0]
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	sw	%r3, [%sp + 0]
	sw	%r6, [%sp + 1]
	sw	%r5, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%r4, [%sp + 4]
	sf	%f0, [%sp + 5]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_diffuse.2557
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lf	%f1, [%sp + 5]
	subf	%f0, %f1, %f0
	lli	%r1, 0
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sf	%f0, [%sp + 6]
	movf	%f0, %f1
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	yj_fneg
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sf	%f0, [%sp + 7]
	movf	%f0, %f1
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	yj_fneg
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r1, 2
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sf	%f0, [%sp + 8]
	movf	%f0, %f1
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	yj_fneg
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	movf	%f3, %f0
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lli	%r3, 0
	lw	%r4, [%sp + 4]
	add	%r3, %r4, %r3
	lf	%f1, [%r3 + 0]
	lf	%f0, [%sp + 6]
	lf	%f2, [%sp + 8]
	lw	%r3, [%sp + 1]
	lw	%r27, [%sp + 2]
	sf	%f3, [%sp + 9]
	add	%r2, %r0, %r1
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 10]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 11
	jalr	%r26
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lli	%r3, 2
	lw	%r4, [%sp + 3]
	add	%r3, %r4, %r3
	lli	%r5, 1
	lw	%r6, [%sp + 4]
	add	%r5, %r6, %r5
	lf	%f2, [%r5 + 0]
	lf	%f0, [%sp + 6]
	lf	%f1, [%sp + 7]
	lf	%f3, [%sp + 9]
	lw	%r27, [%sp + 2]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 10]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 11
	jalr	%r26
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r1, 2
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lli	%r3, 3
	lw	%r4, [%sp + 3]
	add	%r3, %r4, %r3
	lli	%r4, 2
	lw	%r5, [%sp + 4]
	add	%r4, %r5, %r4
	lf	%f3, [%r4 + 0]
	lf	%f0, [%sp + 6]
	lf	%f1, [%sp + 7]
	lf	%f2, [%sp + 8]
	lw	%r27, [%sp + 2]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 10]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 11
	jalr	%r26
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r1, 0
	lli	%r2, 3
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	sw	%r2, [%r1 + 0]
	jr	%ra
setup_surface_reflection.2955:
	lw	%r3, [%r27 + 3]
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	lli	%r6, 4
	mul	%r1, %r1, %r6
	lli	%r6, 1
	add	%r1, %r1, %r6
	lli	%r6, 0
	add	%r6, %r3, %r6
	lw	%r6, [%r6 + 0]
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	sw	%r3, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r6, [%sp + 2]
	sw	%r5, [%sp + 3]
	sw	%r4, [%sp + 4]
	sw	%r2, [%sp + 5]
	sf	%f0, [%sp + 6]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	o_diffuse.2557
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lf	%f1, [%sp + 6]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 5]
	sf	%f0, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	o_param_abc.2549
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	veciprod.2508
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	llif	%f1, 2.000000
	lhif	%f1, 2.000000
	lw	%r1, [%sp + 5]
	sf	%f0, [%sp + 8]
	sf	%f1, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_param_a.2543
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 9]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 8]
	mulf	%f0, %f0, %f1
	lli	%r1, 0
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lf	%f2, [%r1 + 0]
	subf	%f0, %f0, %f2
	llif	%f2, 2.000000
	lhif	%f2, 2.000000
	lw	%r1, [%sp + 5]
	sf	%f0, [%sp + 10]
	sf	%f2, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_param_b.2545
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lf	%f1, [%sp + 11]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 8]
	mulf	%f0, %f0, %f1
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lf	%f2, [%r1 + 0]
	subf	%f0, %f0, %f2
	llif	%f2, 2.000000
	lhif	%f2, 2.000000
	lw	%r1, [%sp + 5]
	sf	%f0, [%sp + 12]
	sf	%f2, [%sp + 13]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	o_param_c.2547
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lf	%f1, [%sp + 13]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 8]
	mulf	%f0, %f0, %f1
	lli	%r1, 2
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	subf	%f3, %f0, %f1
	lf	%f0, [%sp + 7]
	lf	%f1, [%sp + 10]
	lf	%f2, [%sp + 12]
	lw	%r1, [%sp + 2]
	lw	%r2, [%sp + 1]
	lw	%r27, [%sp + 3]
	sw	%ra, [%sp + 14]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 15
	jalr	%r26
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lli	%r1, 0
	lli	%r2, 1
	lw	%r3, [%sp + 2]
	add	%r2, %r3, %r2
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	sw	%r2, [%r1 + 0]
	jr	%ra
setup_reflections.2958:
	lw	%r2, [%r27 + 3]
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.9054
	add	%r4, %r4, %r1
	lw	%r4, [%r4 + 0]
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r3, [%sp + 2]
	sw	%r4, [%sp + 3]
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_reflectiontype.2537
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.9055
	lw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_diffuse.2557
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	fless.2443
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9056
	jr	%ra
bneq_else.9056:
	lw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_form.2535
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.9058
	lw	%r1, [%sp + 1]
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9058:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.9059
	lw	%r1, [%sp + 1]
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9059:
	jr	%ra
bneq_else.9055:
	jr	%ra
bgt_else.9054:
	jr	%ra
rt.2960:
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
	lli	%r17, 0
	add	%r17, %r14, %r17
	sw	%r1, [%r17 + 0]
	lli	%r17, 1
	add	%r14, %r14, %r17
	sw	%r2, [%r14 + 0]
	lli	%r14, 0
	sra	%r17, %r1, 1
	add	%r14, %r15, %r14
	sw	%r17, [%r14 + 0]
	lli	%r14, 1
	sra	%r2, %r2, 1
	add	%r14, %r15, %r14
	sw	%r2, [%r14 + 0]
	lli	%r2, 0
	llif	%f0, 128.000000
	lhif	%f0, 128.000000
	sw	%r7, [%sp + 0]
	sw	%r9, [%sp + 1]
	sw	%r4, [%sp + 2]
	sw	%r10, [%sp + 3]
	sw	%r5, [%sp + 4]
	sw	%r12, [%sp + 5]
	sw	%r11, [%sp + 6]
	sw	%r13, [%sp + 7]
	sw	%r3, [%sp + 8]
	sw	%r8, [%sp + 9]
	sw	%r16, [%sp + 10]
	sw	%r2, [%sp + 11]
	sw	%r6, [%sp + 12]
	sf	%f0, [%sp + 13]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	yj_float_of_int
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lf	%f1, [%sp + 13]
	divf	%f0, %f1, %f0
	lw	%r1, [%sp + 11]
	lw	%r2, [%sp + 12]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lw	%r27, [%sp + 10]
	sw	%ra, [%sp + 14]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 15
	jalr	%r26
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lw	%r27, [%sp + 10]
	sw	%r1, [%sp + 14]
	sw	%ra, [%sp + 15]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 16
	jalr	%r26
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r27, [%sp + 10]
	sw	%r1, [%sp + 15]
	sw	%ra, [%sp + 16]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 17
	jalr	%r26
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lw	%r27, [%sp + 9]
	sw	%r1, [%sp + 16]
	sw	%ra, [%sp + 17]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 18
	jalr	%r26
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lw	%r27, [%sp + 8]
	sw	%ra, [%sp + 17]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 18
	jalr	%r26
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lw	%r27, [%sp + 7]
	sw	%ra, [%sp + 17]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 18
	jalr	%r26
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lw	%r1, [%sp + 6]
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	d_vec.2594
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lw	%r2, [%sp + 5]
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	veccpy.2497
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lw	%r1, [%sp + 6]
	lw	%r27, [%sp + 4]
	sw	%ra, [%sp + 17]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 18
	jalr	%r26
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lli	%r1, 0
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r2, 1
	sub	%r1, %r1, %r2
	lw	%r27, [%sp + 2]
	sw	%ra, [%sp + 17]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 18
	jalr	%r26
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lli	%r2, 0
	lli	%r3, 0
	lw	%r1, [%sp + 15]
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 17]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 18
	jalr	%r26
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lli	%r1, 0
	lli	%r5, 2
	lw	%r2, [%sp + 14]
	lw	%r3, [%sp + 15]
	lw	%r4, [%sp + 16]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
yj_print_int:
	sendw	%r1
	jr	%ra
yj_print_float:
	print_float	%f0
	jr	%ra
yj_print_char:
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
yj_sin:
	sin	%f0, %f0
	jr	%ra
yj_cos:
	cos	%f0, %f0
	jr	%ra
yj_atan:
	atan	%f0, %f0
	jr	%ra
yj_float_of_int:
	itof	%f0, %r1
	jr	%ra
yj_int_of_float:
	ftoi	%r1, %f0
	jr	%ra
yj_sqrt:
	sqrt	%f0, %f0
	jr	%ra
yj_floor:
	floor	%f0, %f0
	jr	%ra
yj_read_int:
	read_int	%r1
	jr	%ra
yj_read_float:
	read_float	%f0
	jr	%ra
yj_fabs:
	absf	%f0, %f0
	jr	%ra
yj_fneg:
	negf	%f0, %f0
	jr	%ra%yj_print_int:
	sendw	%r1
	jr	%ra
yj_print_float:
	print_float	%f0
	jr	%ra
yj_print_char:
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
yj_sin:
	sin	%f0, %f0
	jr	%ra
yj_cos:
	cos	%f0, %f0
	jr	%ra
yj_atan:
	atan	%f0, %f0
	jr	%ra
yj_float_of_int:
	itof	%f0, %r1
	jr	%ra
yj_int_of_float:
	ftoi	%r1, %f0
	jr	%ra
yj_sqrt:
	sqrt	%f0, %f0
	jr	%ra
yj_floor:
	floor	%f0, %f0
	jr	%ra
yj_read_int:
	read_int	%r1
	jr	%ra
yj_read_float:
	read_float	%f0
	jr	%ra
yj_fabs:
	absf	%f0, %f0
	jr	%ra
yj_fneg:
	negf	%f0, %f0
	jr	%ra%