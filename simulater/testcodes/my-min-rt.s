entry:
	lli	%sp, 0
	lli	%ra, 0
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
	jal	yj_create_array
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
	jal	yj_create_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 2]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	yj_create_array
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 3]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	yj_create_array
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 1
	llif	%f0, 255.000000
	lhif	%f0, 255.000000
	sw	%r1, [%sp + 4]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_create_array
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 50
	lli	%r3, 1
	lli	%r4, -1
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
	jal	yj_create_array
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
	jal	yj_create_array
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 12]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	yj_create_array
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
	jal	yj_create_array
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 15]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	yj_create_array
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 16]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	yj_create_array
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 17]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	yj_create_array
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
	jal	yj_create_array
	subi	%sp, %sp, 22
	lw	%ra, [%sp + 21]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 21]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	yj_create_array
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 22]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 23]
	addi	%sp, %sp, 24
	jal	yj_create_array
	subi	%sp, %sp, 24
	lw	%ra, [%sp + 23]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 23]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	yj_create_array
	subi	%sp, %sp, 25
	lw	%ra, [%sp + 24]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 24]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	yj_create_array
	subi	%sp, %sp, 26
	lw	%ra, [%sp + 25]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 25]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 26]
	addi	%sp, %sp, 27
	jal	yj_create_array
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 26]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	yj_create_array
	subi	%sp, %sp, 28
	lw	%ra, [%sp + 27]
	lli	%r2, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 27]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 28]
	addi	%sp, %sp, 29
	jal	yj_create_array
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
	jal	yj_create_array
	subi	%sp, %sp, 31
	lw	%ra, [%sp + 30]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 30]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 31]
	addi	%sp, %sp, 32
	jal	yj_create_array
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
	jal	yj_create_array
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
	addi	%r3, %r0, read_screen_settings.2608
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
	addi	%r8, %r0, read_light.2610
	sw	%r8, [%r7 + 0]
	lw	%r8, [%sp + 4]
	sw	%r8, [%r7 + 2]
	lw	%r9, [%sp + 5]
	sw	%r9, [%r7 + 1]
	add	%r10, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r11, %r0, read_nth_object.2615
	sw	%r11, [%r10 + 0]
	lw	%r11, [%sp + 1]
	sw	%r11, [%r10 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r13, %r0, read_object.2617
	sw	%r13, [%r12 + 0]
	sw	%r10, [%r12 + 2]
	lw	%r10, [%sp + 0]
	sw	%r10, [%r12 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r14, %r0, read_all_object.2619
	sw	%r14, [%r13 + 0]
	sw	%r12, [%r13 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r14, %r0, read_and_network.2625
	sw	%r14, [%r12 + 0]
	lw	%r14, [%sp + 7]
	sw	%r14, [%r12 + 1]
	add	%r15, %r0, %hp
	addi	%hp, %hp, 6
	addi	%r16, %r0, read_parameter.2627
	sw	%r16, [%r15 + 0]
	sw	%r2, [%r15 + 5]
	sw	%r7, [%r15 + 4]
	sw	%r12, [%r15 + 3]
	sw	%r13, [%r15 + 2]
	lw	%r2, [%sp + 9]
	sw	%r2, [%r15 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r12, %r0, solver_rect_surface.2629
	sw	%r12, [%r7 + 0]
	lw	%r12, [%sp + 10]
	sw	%r12, [%r7 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, solver_rect.2638
	sw	%r16, [%r13 + 0]
	sw	%r7, [%r13 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, solver_surface.2644
	sw	%r16, [%r7 + 0]
	sw	%r12, [%r7 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r17, %r0, solver_second.2663
	sw	%r17, [%r16 + 0]
	sw	%r12, [%r16 + 1]
	add	%r17, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r18, %r0, solver.2669
	sw	%r18, [%r17 + 0]
	sw	%r7, [%r17 + 4]
	sw	%r16, [%r17 + 3]
	sw	%r13, [%r17 + 2]
	sw	%r11, [%r17 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r13, %r0, solver_rect_fast.2673
	sw	%r13, [%r7 + 0]
	sw	%r12, [%r7 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, solver_surface_fast.2680
	sw	%r16, [%r13 + 0]
	sw	%r12, [%r13 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r18, %r0, solver_second_fast.2686
	sw	%r18, [%r16 + 0]
	sw	%r12, [%r16 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r19, %r0, solver_fast.2692
	sw	%r19, [%r18 + 0]
	sw	%r13, [%r18 + 4]
	sw	%r16, [%r18 + 3]
	sw	%r7, [%r18 + 2]
	sw	%r11, [%r18 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, solver_surface_fast2.2696
	sw	%r16, [%r13 + 0]
	sw	%r12, [%r13 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r19, %r0, solver_second_fast2.2703
	sw	%r19, [%r16 + 0]
	sw	%r12, [%r16 + 1]
	add	%r19, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r20, %r0, solver_fast2.2710
	sw	%r20, [%r19 + 0]
	sw	%r13, [%r19 + 4]
	sw	%r16, [%r19 + 3]
	sw	%r7, [%r19 + 2]
	sw	%r11, [%r19 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r13, %r0, iter_setup_dirvec_constants.2722
	sw	%r13, [%r7 + 0]
	sw	%r11, [%r7 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r16, %r0, setup_dirvec_constants.2725
	sw	%r16, [%r13 + 0]
	sw	%r10, [%r13 + 2]
	sw	%r7, [%r13 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, setup_startp_constants.2727
	sw	%r16, [%r7 + 0]
	sw	%r11, [%r7 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r20, %r0, setup_startp.2730
	sw	%r20, [%r16 + 0]
	lw	%r20, [%sp + 23]
	sw	%r20, [%r16 + 3]
	sw	%r7, [%r16 + 2]
	sw	%r10, [%r16 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r21, %r0, check_all_inside.2752
	sw	%r21, [%r7 + 0]
	sw	%r11, [%r7 + 1]
	add	%r21, %r0, %hp
	addi	%hp, %hp, 8
	addi	%r22, %r0, shadow_check_and_group.2758
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
	addi	%r25, %r0, shadow_check_one_or_group.2761
	sw	%r25, [%r24 + 0]
	sw	%r21, [%r24 + 2]
	sw	%r14, [%r24 + 1]
	add	%r21, %r0, %hp
	addi	%hp, %hp, 6
	addi	%r25, %r0, shadow_check_one_or_matrix.2764
	sw	%r25, [%r21 + 0]
	sw	%r18, [%r21 + 5]
	sw	%r12, [%r21 + 4]
	sw	%r24, [%r21 + 3]
	sw	%r22, [%r21 + 2]
	sw	%r23, [%r21 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 10
	addi	%r24, %r0, solve_each_element.2767
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
	addi	%r15, %r0, solve_one_or_network.2771
	sw	%r15, [%r22 + 0]
	sw	%r18, [%r22 + 2]
	sw	%r14, [%r22 + 1]
	add	%r15, %r0, %hp
	addi	%hp, %hp, 6
	addi	%r18, %r0, trace_or_matrix.2775
	sw	%r18, [%r15 + 0]
	sw	%r24, [%r15 + 5]
	sw	%r25, [%r15 + 4]
	sw	%r12, [%r15 + 3]
	sw	%r17, [%r15 + 2]
	sw	%r22, [%r15 + 1]
	add	%r17, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r18, %r0, judge_intersection.2779
	sw	%r18, [%r17 + 0]
	sw	%r15, [%r17 + 3]
	sw	%r24, [%r17 + 2]
	sw	%r2, [%r17 + 1]
	add	%r15, %r0, %hp
	addi	%hp, %hp, 10
	addi	%r18, %r0, solve_each_element_fast.2781
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
	addi	%r18, %r0, solve_one_or_network_fast.2785
	sw	%r18, [%r7 + 0]
	sw	%r15, [%r7 + 2]
	sw	%r14, [%r7 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r15, %r0, trace_or_matrix_fast.2789
	sw	%r15, [%r14 + 0]
	sw	%r24, [%r14 + 4]
	sw	%r19, [%r14 + 3]
	sw	%r12, [%r14 + 2]
	sw	%r7, [%r14 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r12, %r0, judge_intersection_fast.2793
	sw	%r12, [%r7 + 0]
	sw	%r14, [%r7 + 3]
	sw	%r24, [%r7 + 2]
	sw	%r2, [%r7 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r14, %r0, get_nvector_rect.2795
	sw	%r14, [%r12 + 0]
	lw	%r14, [%sp + 15]
	sw	%r14, [%r12 + 2]
	sw	%r26, [%r12 + 1]
	add	%r15, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r18, %r0, get_nvector_plane.2797
	sw	%r18, [%r15 + 0]
	sw	%r14, [%r15 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r19, %r0, get_nvector_second.2799
	sw	%r19, [%r18 + 0]
	sw	%r14, [%r18 + 2]
	sw	%r23, [%r18 + 1]
	add	%r19, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r20, %r0, get_nvector.2801
	sw	%r20, [%r19 + 0]
	sw	%r18, [%r19 + 3]
	sw	%r12, [%r19 + 2]
	sw	%r15, [%r19 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r15, %r0, utexture.2804
	sw	%r15, [%r12 + 0]
	lw	%r15, [%sp + 16]
	sw	%r15, [%r12 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r20, %r0, add_light.2807
	sw	%r20, [%r18 + 0]
	sw	%r15, [%r18 + 2]
	lw	%r20, [%sp + 18]
	sw	%r20, [%r18 + 1]
	add	%r22, %r0, %hp
	addi	%hp, %hp, 9
	sw	%r13, [%sp + 36]
	addi	%r13, %r0, trace_reflections.2811
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
	addi	%r10, %r0, trace_ray.2816
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
	addi	%r10, %r0, trace_diffuse_ray.2822
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
	addi	%r10, %r0, iter_trace_diffuse_rays.2825
	sw	%r10, [%r7 + 0]
	sw	%r9, [%r7 + 1]
	add	%r9, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r10, %r0, trace_diffuse_rays.2830
	sw	%r10, [%r9 + 0]
	sw	%r16, [%r9 + 2]
	sw	%r7, [%r9 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r10, %r0, trace_diffuse_ray_80percent.2834
	sw	%r10, [%r7 + 0]
	sw	%r9, [%r7 + 2]
	lw	%r10, [%sp + 29]
	sw	%r10, [%r7 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r14, %r0, calc_diffuse_using_1point.2838
	sw	%r14, [%r12 + 0]
	sw	%r7, [%r12 + 3]
	sw	%r20, [%r12 + 2]
	sw	%r2, [%r12 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r14, %r0, calc_diffuse_using_5points.2841
	sw	%r14, [%r7 + 0]
	sw	%r20, [%r7 + 2]
	sw	%r2, [%r7 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r15, %r0, do_without_neighbors.2847
	sw	%r15, [%r14 + 0]
	sw	%r12, [%r14 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r15, %r0, neighbors_exist.2850
	sw	%r15, [%r12 + 0]
	lw	%r15, [%sp + 19]
	sw	%r15, [%r12 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r17, %r0, try_exploit_neighbors.2863
	sw	%r17, [%r16 + 0]
	sw	%r14, [%r16 + 2]
	sw	%r7, [%r16 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r17, %r0, write_ppm_header.2870
	sw	%r17, [%r7 + 0]
	sw	%r15, [%r7 + 1]
	add	%r17, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r18, %r0, write_rgb.2874
	sw	%r18, [%r17 + 0]
	sw	%r20, [%r17 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r19, %r0, pretrace_diffuse_rays.2876
	sw	%r19, [%r18 + 0]
	sw	%r9, [%r18 + 3]
	sw	%r10, [%r18 + 2]
	sw	%r2, [%r18 + 1]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 10
	addi	%r9, %r0, pretrace_pixels.2879
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
	addi	%r13, %r0, pretrace_line.2886
	sw	%r13, [%r9 + 0]
	sw	%r4, [%r9 + 6]
	sw	%r5, [%r9 + 5]
	sw	%r3, [%r9 + 4]
	sw	%r2, [%r9 + 3]
	sw	%r15, [%r9 + 2]
	sw	%r6, [%r9 + 1]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 7
	addi	%r4, %r0, scan_pixel.2890
	sw	%r4, [%r2 + 0]
	sw	%r17, [%r2 + 6]
	sw	%r16, [%r2 + 5]
	sw	%r20, [%r2 + 4]
	sw	%r12, [%r2 + 3]
	sw	%r15, [%r2 + 2]
	sw	%r14, [%r2 + 1]
	add	%r4, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r5, %r0, scan_line.2896
	sw	%r5, [%r4 + 0]
	sw	%r2, [%r4 + 3]
	sw	%r9, [%r4 + 2]
	sw	%r15, [%r4 + 1]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r5, %r0, create_pixelline.2909
	sw	%r5, [%r2 + 0]
	sw	%r15, [%r2 + 1]
	add	%r5, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r12, %r0, calc_dirvec.2916
	sw	%r12, [%r5 + 0]
	sw	%r10, [%r5 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r13, %r0, calc_dirvecs.2924
	sw	%r13, [%r12 + 0]
	sw	%r5, [%r12 + 1]
	add	%r5, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r13, %r0, calc_dirvec_rows.2929
	sw	%r13, [%r5 + 0]
	sw	%r12, [%r5 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r13, %r0, create_dirvec.2933
	sw	%r13, [%r12 + 0]
	lw	%r13, [%sp + 0]
	sw	%r13, [%r12 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, create_dirvec_elements.2935
	sw	%r16, [%r14 + 0]
	sw	%r12, [%r14 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r17, %r0, create_dirvecs.2938
	sw	%r17, [%r16 + 0]
	sw	%r10, [%r16 + 3]
	sw	%r14, [%r16 + 2]
	sw	%r12, [%r16 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r17, %r0, init_dirvec_constants.2940
	sw	%r17, [%r14 + 0]
	lw	%r17, [%sp + 36]
	sw	%r17, [%r14 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r19, %r0, init_vecset_constants.2943
	sw	%r19, [%r18 + 0]
	sw	%r14, [%r18 + 2]
	sw	%r10, [%r18 + 1]
	add	%r10, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r14, %r0, init_dirvecs.2945
	sw	%r14, [%r10 + 0]
	sw	%r18, [%r10 + 3]
	sw	%r16, [%r10 + 2]
	sw	%r5, [%r10 + 1]
	add	%r5, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r14, %r0, add_reflection.2947
	sw	%r14, [%r5 + 0]
	sw	%r17, [%r5 + 3]
	lw	%r14, [%sp + 34]
	sw	%r14, [%r5 + 2]
	sw	%r12, [%r5 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r14, %r0, setup_rect_reflection.2954
	sw	%r14, [%r12 + 0]
	sw	%r1, [%r12 + 3]
	sw	%r8, [%r12 + 2]
	sw	%r5, [%r12 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r16, %r0, setup_surface_reflection.2957
	sw	%r16, [%r14 + 0]
	sw	%r1, [%r14 + 3]
	sw	%r8, [%r14 + 2]
	sw	%r5, [%r14 + 1]
	add	%r1, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r5, %r0, setup_reflections.2960
	sw	%r5, [%r1 + 0]
	sw	%r14, [%r1 + 3]
	sw	%r12, [%r1 + 2]
	sw	%r11, [%r1 + 1]
	add	%r27, %r0, %hp
	addi	%hp, %hp, 15
	addi	%r5, %r0, rt.2962
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
	lli	%r1, 128
	lli	%r2, 128
	sw	%ra, [%sp + 37]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 38
	jalr	%r26
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	lli	%r1, 0
	jr	%ra
	halt
fispos.2435:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f0, %f1, bgtf_else.8711
	lli	%r1, 0
	jr	%ra
bgtf_else.8711:
	lli	%r1, 1
	jr	%ra
fisneg.2437:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.8712
	lli	%r1, 0
	jr	%ra
bgtf_else.8712:
	lli	%r1, 1
	jr	%ra
fiszero.2439:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r1, %f0
	movf2i	%r2, %f1
	bneq	%r1, %r2, bneq_else.8713
	lli	%r1, 1
	jr	%ra
bneq_else.8713:
	lli	%r1, 0
	jr	%ra
fhalf.2441:
	llif	%f1, 0.500000
	lhif	%f1, 0.500000
	mulf	%f0, %f0, %f1
	jr	%ra
fsqr.2443:
	mulf	%f0, %f0, %f0
	jr	%ra
fless.2445:
	bgtf	%f1, %f0, bgtf_else.8714
	lli	%r1, 0
	jr	%ra
bgtf_else.8714:
	lli	%r1, 1
	jr	%ra
xor.2478:
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.8715
	add	%r1, %r0, %r2
	jr	%ra
bneq_else.8715:
	lli	%r1, 0
	bneq	%r2, %r1, bneq_else.8716
	lli	%r1, 1
	jr	%ra
bneq_else.8716:
	lli	%r1, 0
	jr	%ra
sgn.2481:
	sf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	fiszero.2439
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8717
	lf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	fispos.2435
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8718
	llif	%f0, -1.000000
	lhif	%f0, -1.000000
	jr	%ra
bneq_else.8718:
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	jr	%ra
bneq_else.8717:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	jr	%ra
fneg_cond.2483:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8719
	jal	yj_fneg
bneq_else.8719:
	jr	%ra
add_mod5.2486:
	add	%r1, %r1, %r2
	lli	%r2, 5
	bgt	%r2, %r1, bgt_else.8720
	lli	%r2, 5
	sub	%r1, %r1, %r2
	jr	%ra
bgt_else.8720:
	jr	%ra
vecset.2489:
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
vecfill.2494:
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
vecbzero.2497:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	jal	vecfill.2494
veccpy.2499:
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
vecunit_sgn.2507:
	lli	%r3, 0
	add	%r3, %r1, %r3
	lf	%f0, [%r3 + 0]
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	fsqr.2443
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sf	%f0, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	fsqr.2443
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lf	%f1, [%sp + 2]
	addf	%f0, %f1, %f0
	lli	%r1, 2
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sf	%f0, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	fsqr.2443
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
	jal	fiszero.2439
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8724
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	beq	%r2, %r1, beq_else.8726
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lf	%f1, [%sp + 4]
	divf	%f0, %f0, %f1
	j	beq_cont.8727
beq_else.8726:
	llif	%f0, -1.000000
	lhif	%f0, -1.000000
	lf	%f1, [%sp + 4]
	divf	%f0, %f0, %f1
beq_cont.8727:
	j	beq_cont.8725
beq_else.8724:
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
beq_cont.8725:
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
veciprod.2510:
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
veciprod2.2513:
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
vecaccum.2518:
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
vecadd.2522:
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
vecscale.2528:
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
vecaccumv.2531:
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
o_texturetype.2535:
	lw	%r1, [%r1 + 0]
	jr	%ra
o_form.2537:
	lw	%r1, [%r1 + 1]
	jr	%ra
o_reflectiontype.2539:
	lw	%r1, [%r1 + 2]
	jr	%ra
o_isinvert.2541:
	lw	%r1, [%r1 + 6]
	jr	%ra
o_isrot.2543:
	lw	%r1, [%r1 + 3]
	jr	%ra
o_param_a.2545:
	lw	%r1, [%r1 + 4]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_b.2547:
	lw	%r1, [%r1 + 4]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_c.2549:
	lw	%r1, [%r1 + 4]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_abc.2551:
	lw	%r1, [%r1 + 4]
	jr	%ra
o_param_x.2553:
	lw	%r1, [%r1 + 5]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_y.2555:
	lw	%r1, [%r1 + 5]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_z.2557:
	lw	%r1, [%r1 + 5]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_diffuse.2559:
	lw	%r1, [%r1 + 7]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_hilight.2561:
	lw	%r1, [%r1 + 7]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_color_red.2563:
	lw	%r1, [%r1 + 8]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_color_green.2565:
	lw	%r1, [%r1 + 8]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_color_blue.2567:
	lw	%r1, [%r1 + 8]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_r1.2569:
	lw	%r1, [%r1 + 9]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_r2.2571:
	lw	%r1, [%r1 + 9]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_r3.2573:
	lw	%r1, [%r1 + 9]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_ctbl.2575:
	lw	%r1, [%r1 + 10]
	jr	%ra
p_rgb.2577:
	lw	%r1, [%r1 + 0]
	jr	%ra
p_intersection_points.2579:
	lw	%r1, [%r1 + 1]
	jr	%ra
p_surface_ids.2581:
	lw	%r1, [%r1 + 2]
	jr	%ra
p_calc_diffuse.2583:
	lw	%r1, [%r1 + 3]
	jr	%ra
p_energy.2585:
	lw	%r1, [%r1 + 4]
	jr	%ra
p_received_ray_20percent.2587:
	lw	%r1, [%r1 + 5]
	jr	%ra
p_group_id.2589:
	lw	%r1, [%r1 + 6]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	jr	%ra
p_set_group_id.2591:
	lw	%r1, [%r1 + 6]
	lli	%r3, 0
	add	%r1, %r1, %r3
	sw	%r2, [%r1 + 0]
	jr	%ra
p_nvectors.2594:
	lw	%r1, [%r1 + 7]
	jr	%ra
d_vec.2596:
	lw	%r1, [%r1 + 0]
	jr	%ra
d_const.2598:
	lw	%r1, [%r1 + 1]
	jr	%ra
r_surface_id.2600:
	lw	%r1, [%r1 + 0]
	jr	%ra
r_dvec.2602:
	lw	%r1, [%r1 + 1]
	jr	%ra
r_bright.2604:
	lf	%f0, [%r1 + 2]
	jr	%ra
rad.2606:
	llif	%f1, 0.017453
	lhif	%f1, 0.017453
	mulf	%f0, %f0, %f1
	jr	%ra
read_screen_settings.2608:
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
	jal	rad.2606
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
	jal	rad.2606
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
read_light.2610:
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
	jal	rad.2606
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
	jal	rad.2606
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lf	%f1, [%sp + 2]
	sf	%f0, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	yj_cos
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 4]
	sf	%f0, [%sp + 5]
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
rotate_quadratic_matrix.2612:
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
	sw	%ra, [%sp + 20]
	addi	%sp, %sp, 21
	jal	fsqr.2443
	subi	%sp, %sp, 21
	lw	%ra, [%sp + 20]
	lf	%f1, [%sp + 19]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 11]
	sf	%f0, [%sp + 20]
	sw	%ra, [%sp + 21]
	addi	%sp, %sp, 22
	jal	fsqr.2443
	subi	%sp, %sp, 22
	lw	%ra, [%sp + 21]
	lf	%f1, [%sp + 18]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 20]
	addf	%f0, %f2, %f0
	lf	%f2, [%sp + 17]
	sf	%f0, [%sp + 21]
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	fsqr.2443
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
	jal	fsqr.2443
	subi	%sp, %sp, 24
	lw	%ra, [%sp + 23]
	lf	%f1, [%sp + 19]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 9]
	sf	%f0, [%sp + 23]
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	fsqr.2443
	subi	%sp, %sp, 25
	lw	%ra, [%sp + 24]
	lf	%f1, [%sp + 18]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 23]
	addf	%f0, %f2, %f0
	lf	%f2, [%sp + 14]
	sf	%f0, [%sp + 24]
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	fsqr.2443
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
	jal	fsqr.2443
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	lf	%f1, [%sp + 19]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 7]
	sf	%f0, [%sp + 26]
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	fsqr.2443
	subi	%sp, %sp, 28
	lw	%ra, [%sp + 27]
	lf	%f1, [%sp + 18]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 26]
	addf	%f0, %f2, %f0
	lf	%f2, [%sp + 13]
	sf	%f0, [%sp + 27]
	sw	%ra, [%sp + 28]
	addi	%sp, %sp, 29
	jal	fsqr.2443
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
read_nth_object.2615:
	lw	%r2, [%r27 + 1]
	sw	%r1, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_read_int
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, -1
	bneq	%r1, %r2, bneq_else.8737
	lli	%r1, 0
	jr	%ra
bneq_else.8737:
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
	jal	yj_create_array
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
	jal	yj_create_array
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
	jal	fisneg.2437
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lli	%r2, 2
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 14]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	yj_create_array
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
	jal	yj_create_array
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
	jal	yj_create_array
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lli	%r2, 0
	lw	%r3, [%sp + 5]
	sw	%r1, [%sp + 22]
	beq	%r3, %r2, beq_else.8738
	j	beq_cont.8739
beq_else.8738:
	lli	%r2, 0
	sw	%r2, [%sp + 23]
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	yj_read_float
	subi	%sp, %sp, 25
	lw	%ra, [%sp + 24]
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	rad.2606
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
	jal	rad.2606
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
	jal	rad.2606
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	lw	%r1, [%sp + 25]
	lw	%r2, [%sp + 22]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
beq_cont.8739:
	lli	%r1, 2
	lw	%r2, [%sp + 3]
	beq	%r2, %r1, beq_else.8740
	lli	%r1, 1
	j	beq_cont.8741
beq_else.8740:
	lw	%r1, [%sp + 14]
beq_cont.8741:
	lli	%r3, 4
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 26]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	yj_create_array
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
	beq	%r5, %r2, beq_else.8742
	lli	%r2, 0
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lli	%r2, 0
	sw	%r2, [%sp + 27]
	sf	%f0, [%sp + 28]
	sw	%ra, [%sp + 29]
	addi	%sp, %sp, 30
	jal	fiszero.2439
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8744
	lf	%f0, [%sp + 28]
	sw	%ra, [%sp + 29]
	addi	%sp, %sp, 30
	jal	sgn.2481
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	lf	%f1, [%sp + 28]
	sf	%f0, [%sp + 29]
	sw	%ra, [%sp + 30]
	addi	%sp, %sp, 31
	jal	fsqr.2443
	subi	%sp, %sp, 31
	lw	%ra, [%sp + 30]
	lf	%f1, [%sp + 29]
	divf	%f0, %f1, %f0
	j	beq_cont.8745
beq_else.8744:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
beq_cont.8745:
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
	jal	fiszero.2439
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8746
	lf	%f0, [%sp + 31]
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	sgn.2481
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lf	%f1, [%sp + 31]
	sf	%f0, [%sp + 32]
	sw	%ra, [%sp + 33]
	addi	%sp, %sp, 34
	jal	fsqr.2443
	subi	%sp, %sp, 34
	lw	%ra, [%sp + 33]
	lf	%f1, [%sp + 32]
	divf	%f0, %f1, %f0
	j	beq_cont.8747
beq_else.8746:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
beq_cont.8747:
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
	jal	fiszero.2439
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8748
	lf	%f0, [%sp + 34]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	sgn.2481
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lf	%f1, [%sp + 34]
	sf	%f0, [%sp + 35]
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	fsqr.2443
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	lf	%f1, [%sp + 35]
	divf	%f0, %f1, %f0
	j	beq_cont.8749
beq_else.8748:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
beq_cont.8749:
	lw	%r1, [%sp + 33]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	beq_cont.8743
beq_else.8742:
	lli	%r2, 2
	beq	%r5, %r2, beq_else.8750
	lli	%r2, 0
	lw	%r5, [%sp + 14]
	beq	%r5, %r2, beq_else.8752
	lli	%r2, 1
	j	beq_cont.8753
beq_else.8752:
	lli	%r2, 0
beq_cont.8753:
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	vecunit_sgn.2507
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	j	beq_cont.8751
beq_else.8750:
beq_cont.8751:
beq_cont.8743:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	beq	%r2, %r1, beq_else.8754
	j	beq_cont.8755
beq_else.8754:
	lw	%r1, [%sp + 7]
	lw	%r2, [%sp + 22]
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	rotate_quadratic_matrix.2612
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
beq_cont.8755:
	lli	%r1, 1
	jr	%ra
read_object.2617:
	lw	%r2, [%r27 + 2]
	lw	%r3, [%r27 + 1]
	lli	%r4, 60
	bgt	%r4, %r1, bgt_else.8756
	jr	%ra
bgt_else.8756:
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
	bneq	%r1, %r2, bneq_else.8758
	lli	%r1, 0
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 1]
	sw	%r2, [%r1 + 0]
	jr	%ra
bneq_else.8758:
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
read_all_object.2619:
	lw	%r27, [%r27 + 1]
	lli	%r1, 0
	lw	%r26, [%r27 + 0]
	jr	%r26
read_net_item.2621:
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_read_int
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, -1
	bneq	%r1, %r2, bneq_else.8760
	lli	%r1, 1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lli	%r2, -1
	jal	yj_create_array
bneq_else.8760:
	lli	%r2, 1
	lw	%r3, [%sp + 0]
	add	%r2, %r3, %r2
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	read_net_item.2621
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r2, [%sp + 0]
	add	%r2, %r1, %r2
	lw	%r3, [%sp + 1]
	sw	%r3, [%r2 + 0]
	jr	%ra
read_or_network.2623:
	lli	%r2, 0
	sw	%r1, [%sp + 0]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	read_net_item.2621
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	add	%r2, %r0, %r1
	lli	%r1, 0
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r3, -1
	bneq	%r1, %r3, bneq_else.8761
	lli	%r1, 1
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	jal	yj_create_array
bneq_else.8761:
	lli	%r1, 1
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	sw	%r2, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	read_or_network.2623
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r2, [%sp + 0]
	add	%r2, %r1, %r2
	lw	%r3, [%sp + 1]
	sw	%r3, [%r2 + 0]
	jr	%ra
read_and_network.2625:
	lw	%r2, [%r27 + 1]
	lli	%r3, 0
	sw	%r27, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r2, [%sp + 2]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	read_net_item.2621
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 0
	add	%r2, %r1, %r2
	lw	%r2, [%r2 + 0]
	lli	%r3, -1
	bneq	%r2, %r3, bneq_else.8762
	jr	%ra
bneq_else.8762:
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 2]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	lli	%r1, 1
	add	%r1, %r2, %r1
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
read_parameter.2627:
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
	jal	read_or_network.2623
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 0]
	add	%r2, %r3, %r2
	sw	%r1, [%r2 + 0]
	jr	%ra
solver_rect_surface.2629:
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
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	fiszero.2439
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8765
	lw	%r1, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_abc.2551
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r2, [%sp + 8]
	sw	%r1, [%sp + 9]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_isinvert.2541
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lw	%r2, [%sp + 6]
	lw	%r3, [%sp + 7]
	add	%r4, %r3, %r2
	lf	%f0, [%r4 + 0]
	sw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fisneg.2437
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	xor.2478
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r2, [%sp + 6]
	lw	%r3, [%sp + 9]
	add	%r4, %r3, %r2
	lf	%f0, [%r4 + 0]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fneg_cond.2483
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
	jal	fless.2445
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8766
	lli	%r1, 0
	jr	%ra
bneq_else.8766:
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
	jal	fless.2445
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8767
	lli	%r1, 0
	jr	%ra
bneq_else.8767:
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 11]
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
bneq_else.8765:
	lli	%r1, 0
	jr	%ra
solver_rect.2638:
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
	bneq	%r1, %r2, bneq_else.8768
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
	bneq	%r1, %r2, bneq_else.8769
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
	bneq	%r1, %r2, bneq_else.8770
	lli	%r1, 0
	jr	%ra
bneq_else.8770:
	lli	%r1, 3
	jr	%ra
bneq_else.8769:
	lli	%r1, 2
	jr	%ra
bneq_else.8768:
	lli	%r1, 1
	jr	%ra
solver_surface.2644:
	lw	%r3, [%r27 + 1]
	sw	%r3, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_param_abc.2551
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 4]
	sw	%r2, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	veciprod.2510
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	fispos.2435
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8771
	lli	%r1, 0
	jr	%ra
bneq_else.8771:
	lli	%r1, 0
	lf	%f0, [%sp + 3]
	lf	%f1, [%sp + 2]
	lf	%f2, [%sp + 1]
	lw	%r2, [%sp + 5]
	sw	%r1, [%sp + 7]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	veciprod2.2513
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
quadratic.2650:
	sf	%f0, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	fsqr.2443
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r1, [%sp + 3]
	sf	%f0, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_param_a.2545
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 4]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 2]
	sf	%f0, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fsqr.2443
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r1, [%sp + 3]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	o_param_b.2547
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lf	%f1, [%sp + 6]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 5]
	addf	%f0, %f1, %f0
	lf	%f1, [%sp + 1]
	sf	%f0, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	fsqr.2443
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 3]
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_c.2549
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
	jal	o_isrot.2543
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8772
	lf	%f0, [%sp + 9]
	jr	%ra
bneq_else.8772:
	lf	%f0, [%sp + 1]
	lf	%f1, [%sp + 2]
	mulf	%f2, %f1, %f0
	lw	%r1, [%sp + 3]
	sf	%f2, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_param_r1.2569
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
	jal	o_param_r2.2571
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
	jal	o_param_r3.2573
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lf	%f1, [%sp + 14]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 13]
	addf	%f0, %f1, %f0
	jr	%ra
bilinear.2655:
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
	jal	o_param_a.2545
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
	jal	o_param_b.2547
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
	jal	o_param_c.2549
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
	jal	o_isrot.2543
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8773
	lf	%f0, [%sp + 12]
	jr	%ra
bneq_else.8773:
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
	jal	o_param_r1.2569
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
	jal	o_param_r2.2571
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
	jal	o_param_r3.2573
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 17]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 16]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	fhalf.2441
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 12]
	addf	%f0, %f1, %f0
	jr	%ra
solver_second.2663:
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
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	quadratic.2650
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	fiszero.2439
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8774
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
	jal	bilinear.2655
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lf	%f1, [%sp + 3]
	lf	%f2, [%sp + 2]
	lf	%f3, [%sp + 1]
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	quadratic.2650
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_form.2537
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 3
	beq	%r1, %r2, beq_else.8775
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lf	%f1, [%sp + 8]
	subf	%f0, %f1, %f0
	j	beq_cont.8776
beq_else.8775:
	lf	%f0, [%sp + 8]
beq_cont.8776:
	lf	%f1, [%sp + 7]
	sf	%f0, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fsqr.2443
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 6]
	mulf	%f1, %f2, %f1
	subf	%f0, %f0, %f1
	sf	%f0, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fispos.2435
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8777
	lli	%r1, 0
	jr	%ra
bneq_else.8777:
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
	jal	o_isinvert.2541
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8778
	lf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj_fneg
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	j	beq_cont.8779
beq_else.8778:
	lf	%f0, [%sp + 11]
beq_cont.8779:
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
bneq_else.8774:
	lli	%r1, 0
	jr	%ra
solver.2669:
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
	jal	o_param_x.2553
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
	jal	o_param_y.2555
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
	jal	o_param_z.2557
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lf	%f1, [%sp + 10]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_form.2537
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.8780
	lf	%f0, [%sp + 7]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 11]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 3]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8780:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.8781
	lf	%f0, [%sp + 7]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 11]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8781:
	lf	%f0, [%sp + 7]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 11]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
solver_rect_fast.2673:
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
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	yj_fabs
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 7]
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_b.2547
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	movf	%f1, %f0
	lf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	fless.2445
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8782
	lli	%r1, 0
	j	beq_cont.8783
beq_else.8782:
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
	jal	o_param_c.2549
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	movf	%f1, %f0
	lf	%f0, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fless.2445
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8784
	lli	%r1, 0
	j	beq_cont.8785
beq_else.8784:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fiszero.2439
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8786
	lli	%r1, 1
	j	beq_cont.8787
beq_else.8786:
	lli	%r1, 0
beq_cont.8787:
beq_cont.8785:
beq_cont.8783:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8788
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
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	yj_fabs
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r1, [%sp + 7]
	sf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_param_a.2545
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	movf	%f1, %f0
	lf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	fless.2445
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8789
	lli	%r1, 0
	j	beq_cont.8790
beq_else.8789:
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
	jal	o_param_c.2549
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	movf	%f1, %f0
	lf	%f0, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	fless.2445
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8791
	lli	%r1, 0
	j	beq_cont.8792
beq_else.8791:
	lli	%r1, 3
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	fiszero.2439
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8793
	lli	%r1, 1
	j	beq_cont.8794
beq_else.8793:
	lli	%r1, 0
beq_cont.8794:
beq_cont.8792:
beq_cont.8790:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8795
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
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	yj_fabs
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lw	%r1, [%sp + 7]
	sf	%f0, [%sp + 14]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	o_param_a.2545
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	movf	%f1, %f0
	lf	%f0, [%sp + 14]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	fless.2445
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8796
	lli	%r1, 0
	j	beq_cont.8797
beq_else.8796:
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
	jal	o_param_b.2547
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	movf	%f1, %f0
	lf	%f0, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	fless.2445
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8798
	lli	%r1, 0
	j	beq_cont.8799
beq_else.8798:
	lli	%r1, 5
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	fiszero.2439
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8800
	lli	%r1, 1
	j	beq_cont.8801
beq_else.8800:
	lli	%r1, 0
beq_cont.8801:
beq_cont.8799:
beq_cont.8797:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8802
	lli	%r1, 0
	jr	%ra
bneq_else.8802:
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 13]
	sf	%f0, [%r1 + 0]
	lli	%r1, 3
	jr	%ra
bneq_else.8795:
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 10]
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	jr	%ra
bneq_else.8788:
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 5]
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
solver_surface_fast.2680:
	lw	%r1, [%r27 + 1]
	lli	%r3, 0
	add	%r3, %r2, %r3
	lf	%f3, [%r3 + 0]
	sw	%r1, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fisneg.2437
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8803
	lli	%r1, 0
	jr	%ra
bneq_else.8803:
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
solver_second_fast.2686:
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
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	fiszero.2439
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8804
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
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	quadratic.2650
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_form.2537
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 3
	beq	%r1, %r2, beq_else.8805
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lf	%f1, [%sp + 8]
	subf	%f0, %f1, %f0
	j	beq_cont.8806
beq_else.8805:
	lf	%f0, [%sp + 8]
beq_cont.8806:
	lf	%f1, [%sp + 7]
	sf	%f0, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fsqr.2443
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 1]
	mulf	%f1, %f2, %f1
	subf	%f0, %f0, %f1
	sf	%f0, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fispos.2435
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8807
	lli	%r1, 0
	jr	%ra
bneq_else.8807:
	lw	%r1, [%sp + 2]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_isinvert.2541
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8808
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
	j	beq_cont.8809
beq_else.8808:
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
beq_cont.8809:
	lli	%r1, 1
	jr	%ra
bneq_else.8804:
	lli	%r1, 0
	jr	%ra
solver_fast.2692:
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
	jal	o_param_x.2553
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
	jal	o_param_y.2555
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
	jal	o_param_z.2557
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lf	%f1, [%sp + 11]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	d_const.2598
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
	jal	o_form.2537
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.8810
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	d_vec.2596
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
bneq_else.8810:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.8811
	lf	%f0, [%sp + 8]
	lf	%f1, [%sp + 10]
	lf	%f2, [%sp + 12]
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 13]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8811:
	lf	%f0, [%sp + 8]
	lf	%f1, [%sp + 10]
	lf	%f2, [%sp + 12]
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 13]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
solver_surface_fast2.2696:
	lw	%r1, [%r27 + 1]
	lli	%r4, 0
	add	%r4, %r2, %r4
	lf	%f0, [%r4 + 0]
	sw	%r1, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r2, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	fisneg.2437
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8812
	lli	%r1, 0
	jr	%ra
bneq_else.8812:
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
solver_second_fast2.2703:
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
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	fiszero.2439
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8813
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
	jal	fsqr.2443
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 2]
	mulf	%f1, %f2, %f1
	subf	%f0, %f0, %f1
	sf	%f0, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fispos.2435
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8814
	lli	%r1, 0
	jr	%ra
bneq_else.8814:
	lw	%r1, [%sp + 1]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_isinvert.2541
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8815
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
	j	beq_cont.8816
beq_else.8815:
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
beq_cont.8816:
	lli	%r1, 1
	jr	%ra
bneq_else.8813:
	lli	%r1, 0
	jr	%ra
solver_fast2.2710:
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
	jal	o_param_ctbl.2575
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
	jal	d_const.2598
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
	jal	o_form.2537
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.8817
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	d_vec.2596
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
bneq_else.8817:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.8818
	lf	%f0, [%sp + 9]
	lf	%f1, [%sp + 8]
	lf	%f2, [%sp + 7]
	lw	%r1, [%sp + 3]
	lw	%r2, [%sp + 10]
	lw	%r3, [%sp + 6]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8818:
	lf	%f0, [%sp + 9]
	lf	%f1, [%sp + 8]
	lf	%f2, [%sp + 7]
	lw	%r1, [%sp + 3]
	lw	%r2, [%sp + 10]
	lw	%r3, [%sp + 6]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
setup_rect_table.2713:
	lli	%r3, 6
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_array
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 0
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	sw	%r1, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	fiszero.2439
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8819
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 3]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_isinvert.2541
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	sw	%r1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fisneg.2437
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	xor.2478
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_param_a.2545
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fneg_cond.2483
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
	j	beq_cont.8820
beq_else.8819:
	lli	%r1, 1
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
beq_cont.8820:
	lli	%r1, 1
	lw	%r3, [%sp + 1]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fiszero.2439
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8821
	lli	%r1, 2
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 6]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	o_isinvert.2541
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 1
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	sw	%r1, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	fisneg.2437
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	xor.2478
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 8]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_b.2547
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r1, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	fneg_cond.2483
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
	j	beq_cont.8822
beq_else.8821:
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
beq_cont.8822:
	lli	%r1, 2
	lw	%r3, [%sp + 1]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	fiszero.2439
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8823
	lli	%r1, 4
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 9]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_isinvert.2541
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 2
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	sw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fisneg.2437
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	xor.2478
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 11]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_param_c.2549
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lw	%r1, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	fneg_cond.2483
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
	j	beq_cont.8824
beq_else.8823:
	lli	%r1, 5
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
beq_cont.8824:
	add	%r1, %r0, %r2
	jr	%ra
setup_surface_table.2716:
	lli	%r3, 4
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_array
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
	jal	o_param_a.2545
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
	jal	o_param_b.2547
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
	jal	o_param_c.2549
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lf	%f1, [%sp + 7]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 6]
	addf	%f0, %f1, %f0
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	fispos.2435
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8825
	lli	%r1, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	beq_cont.8826
beq_else.8825:
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
	jal	o_param_a.2545
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
	jal	o_param_b.2547
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
	jal	o_param_c.2549
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
beq_cont.8826:
	add	%r1, %r0, %r2
	jr	%ra
setup_second_table.2719:
	lli	%r3, 5
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_create_array
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
	jal	quadratic.2650
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
	jal	o_param_a.2545
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
	jal	o_param_b.2547
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
	jal	o_param_c.2549
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
	jal	o_isrot.2543
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8827
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
	j	beq_cont.8828
beq_else.8827:
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
	jal	o_param_r2.2571
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
	jal	o_param_r3.2573
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lf	%f1, [%sp + 13]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 12]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	fhalf.2441
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
	jal	o_param_r1.2569
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
	jal	o_param_r3.2573
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 17]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 16]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	fhalf.2441
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
	jal	o_param_r1.2569
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
	jal	o_param_r2.2571
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lf	%f1, [%sp + 21]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 20]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	fhalf.2441
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lf	%f1, [%sp + 9]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 18]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
beq_cont.8828:
	lf	%f0, [%sp + 3]
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	fiszero.2439
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8829
	lli	%r1, 4
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lf	%f1, [%sp + 3]
	divf	%f0, %f0, %f1
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	beq_cont.8830
beq_else.8829:
beq_cont.8830:
	lw	%r1, [%sp + 2]
	jr	%ra
iter_setup_dirvec_constants.2722:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r2, bgt_else.8831
	add	%r3, %r3, %r2
	lw	%r3, [%r3 + 0]
	sw	%r27, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r3, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	d_const.2598
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r2, [%sp + 3]
	sw	%r1, [%sp + 4]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	d_vec.2596
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 2]
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_form.2537
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 1
	beq	%r1, %r2, beq_else.8832
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 2]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	setup_rect_table.2713
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 4]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	beq_cont.8833
beq_else.8832:
	lli	%r2, 2
	beq	%r1, %r2, beq_else.8834
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 2]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	setup_surface_table.2716
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 4]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	beq_cont.8835
beq_else.8834:
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 2]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	setup_second_table.2719
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 4]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
beq_cont.8835:
beq_cont.8833:
	lli	%r1, 1
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 3]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.8831:
	jr	%ra
setup_dirvec_constants.2725:
	lw	%r2, [%r27 + 2]
	lw	%r27, [%r27 + 1]
	lli	%r3, 0
	add	%r2, %r2, %r3
	lw	%r2, [%r2 + 0]
	lli	%r3, 1
	sub	%r2, %r2, %r3
	lw	%r26, [%r27 + 0]
	jr	%r26
setup_startp_constants.2727:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r2, bgt_else.8837
	add	%r3, %r3, %r2
	lw	%r3, [%r3 + 0]
	sw	%r27, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%r3, [%sp + 3]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_param_ctbl.2575
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r2, [%sp + 3]
	sw	%r1, [%sp + 4]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_form.2537
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
	jal	o_param_x.2553
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
	jal	o_param_y.2555
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
	jal	o_param_z.2557
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
	beq	%r3, %r1, beq_else.8838
	lli	%r1, 3
	lw	%r3, [%sp + 3]
	sw	%r1, [%sp + 12]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	o_param_abc.2551
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
	jal	veciprod2.2513
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lw	%r1, [%sp + 12]
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	beq_cont.8839
beq_else.8838:
	lli	%r1, 2
	bgt	%r1, %r3, bgt_else.8840
	j	bgt_cont.8841
bgt_else.8840:
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
	jal	quadratic.2650
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r1, 3
	lli	%r2, 3
	lw	%r3, [%sp + 5]
	beq	%r3, %r2, beq_else.8842
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	subf	%f0, %f0, %f1
	j	beq_cont.8843
beq_else.8842:
beq_cont.8843:
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bgt_cont.8841:
beq_cont.8839:
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 2]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.8837:
	jr	%ra
setup_startp.2730:
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
	jal	veccpy.2499
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
is_rect_outside.2732:
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
	jal	o_param_a.2545
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	movf	%f1, %f0
	lf	%f0, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	fless.2445
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8845
	lli	%r1, 0
	j	beq_cont.8846
beq_else.8845:
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
	jal	o_param_b.2547
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	movf	%f1, %f0
	lf	%f0, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fless.2445
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8847
	lli	%r1, 0
	j	beq_cont.8848
beq_else.8847:
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
	jal	o_param_c.2549
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	movf	%f1, %f0
	lf	%f0, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fless.2445
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
beq_cont.8848:
beq_cont.8846:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8849
	lw	%r1, [%sp + 2]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_isinvert.2541
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8850
	lli	%r1, 1
	jr	%ra
bneq_else.8850:
	lli	%r1, 0
	jr	%ra
bneq_else.8849:
	lw	%r1, [%sp + 2]
	jal	o_isinvert.2541
is_plane_outside.2737:
	sw	%r1, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_param_abc.2551
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lf	%f0, [%sp + 3]
	lf	%f1, [%sp + 2]
	lf	%f2, [%sp + 1]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	veciprod2.2513
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_isinvert.2541
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f0, [%sp + 4]
	sw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fisneg.2437
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	xor.2478
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8851
	lli	%r1, 1
	jr	%ra
bneq_else.8851:
	lli	%r1, 0
	jr	%ra
is_second_outside.2742:
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	quadratic.2650
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	o_form.2537
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 3
	beq	%r1, %r2, beq_else.8852
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lf	%f1, [%sp + 1]
	subf	%f0, %f1, %f0
	j	beq_cont.8853
beq_else.8852:
	lf	%f0, [%sp + 1]
beq_cont.8853:
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	o_isinvert.2541
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lf	%f0, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	fisneg.2437
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	xor.2478
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8854
	lli	%r1, 1
	jr	%ra
bneq_else.8854:
	lli	%r1, 0
	jr	%ra
is_outside.2747:
	sf	%f2, [%sp + 0]
	sf	%f1, [%sp + 1]
	sw	%r1, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_param_x.2553
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lf	%f1, [%sp + 3]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_param_y.2555
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 1]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_param_z.2557
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lf	%f1, [%sp + 0]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	o_form.2537
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.8855
	lf	%f0, [%sp + 4]
	lf	%f1, [%sp + 5]
	lf	%f2, [%sp + 6]
	lw	%r1, [%sp + 2]
	jal	is_rect_outside.2732
bneq_else.8855:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.8856
	lf	%f0, [%sp + 4]
	lf	%f1, [%sp + 5]
	lf	%f2, [%sp + 6]
	lw	%r1, [%sp + 2]
	jal	is_plane_outside.2737
bneq_else.8856:
	lf	%f0, [%sp + 4]
	lf	%f1, [%sp + 5]
	lf	%f2, [%sp + 6]
	lw	%r1, [%sp + 2]
	jal	is_second_outside.2742
check_all_inside.2752:
	lw	%r3, [%r27 + 1]
	add	%r4, %r2, %r1
	lw	%r4, [%r4 + 0]
	lli	%r5, -1
	bneq	%r4, %r5, bneq_else.8857
	lli	%r1, 1
	jr	%ra
bneq_else.8857:
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
	jal	is_outside.2747
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8858
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
bneq_else.8858:
	lli	%r1, 0
	jr	%ra
shadow_check_and_group.2758:
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
	bneq	%r10, %r11, bneq_else.8859
	lli	%r1, 0
	jr	%ra
bneq_else.8859:
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
	beq	%r1, %r2, beq_else.8860
	lli	%r1, 0
	j	beq_cont.8861
beq_else.8860:
	llif	%f1, -0.200000
	lhif	%f1, -0.200000
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fless.2445
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
beq_cont.8861:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8862
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_isinvert.2541
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8863
	lli	%r1, 0
	jr	%ra
bneq_else.8863:
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8862:
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
	sw	%ra, [%sp + 10]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 11
	jalr	%r26
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8864
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8864:
	lli	%r1, 1
	jr	%ra
shadow_check_one_or_group.2761:
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	add	%r5, %r2, %r1
	lw	%r5, [%r5 + 0]
	lli	%r6, -1
	bneq	%r5, %r6, bneq_else.8865
	lli	%r1, 0
	jr	%ra
bneq_else.8865:
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
	bneq	%r1, %r2, bneq_else.8866
	lli	%r1, 1
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 0]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8866:
	lli	%r1, 1
	jr	%ra
shadow_check_one_or_matrix.2764:
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
	bneq	%r9, %r10, bneq_else.8867
	lli	%r1, 0
	jr	%ra
bneq_else.8867:
	lli	%r10, 99
	sw	%r8, [%sp + 0]
	sw	%r5, [%sp + 1]
	sw	%r2, [%sp + 2]
	sw	%r27, [%sp + 3]
	sw	%r1, [%sp + 4]
	beq	%r9, %r10, beq_else.8868
	lli	%r1, 1
	j	beq_cont.8869
beq_else.8868:
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
	beq	%r1, %r2, beq_else.8870
	lli	%r1, 0
	j	beq_cont.8871
beq_else.8870:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	llif	%f1, -0.100000
	lhif	%f1, -0.100000
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fless.2445
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8872
	lli	%r1, 0
	j	beq_cont.8873
beq_else.8872:
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
	beq	%r1, %r2, beq_else.8874
	lli	%r1, 0
	j	beq_cont.8875
beq_else.8874:
	lli	%r1, 1
beq_cont.8875:
beq_cont.8873:
beq_cont.8871:
beq_cont.8869:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8876
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 3]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8876:
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
	bneq	%r1, %r2, bneq_else.8877
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 3]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8877:
	lli	%r1, 1
	jr	%ra
solve_each_element.2767:
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
	bneq	%r13, %r14, bneq_else.8878
	jr	%ra
bneq_else.8878:
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
	bneq	%r1, %r2, bneq_else.8880
	lw	%r1, [%sp + 11]
	lw	%r2, [%sp + 12]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	o_isinvert.2541
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8881
	jr	%ra
bneq_else.8881:
	lli	%r1, 1
	lw	%r2, [%sp + 10]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 8]
	lw	%r3, [%sp + 7]
	lw	%r27, [%sp + 9]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8880:
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
	jal	fless.2445
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8883
	j	beq_cont.8884
beq_else.8883:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lf	%f0, [%sp + 14]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	fless.2445
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8885
	j	beq_cont.8886
beq_else.8885:
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
	sw	%ra, [%sp + 19]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 20
	jalr	%r26
	subi	%sp, %sp, 20
	lw	%ra, [%sp + 19]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8887
	j	beq_cont.8888
beq_else.8887:
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
	jal	vecset.2489
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
beq_cont.8888:
beq_cont.8886:
beq_cont.8884:
	lli	%r1, 1
	lw	%r2, [%sp + 10]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 8]
	lw	%r3, [%sp + 7]
	lw	%r27, [%sp + 9]
	lw	%r26, [%r27 + 0]
	jr	%r26
solve_one_or_network.2771:
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	add	%r6, %r2, %r1
	lw	%r6, [%r6 + 0]
	lli	%r7, -1
	bneq	%r6, %r7, bneq_else.8889
	jr	%ra
bneq_else.8889:
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
trace_or_matrix.2775:
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
	bneq	%r10, %r11, bneq_else.8891
	jr	%ra
bneq_else.8891:
	lli	%r11, 99
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r27, [%sp + 2]
	sw	%r1, [%sp + 3]
	beq	%r10, %r11, beq_else.8893
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
	j	beq_cont.8894
beq_else.8893:
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
	beq	%r1, %r2, beq_else.8895
	j	beq_cont.8896
beq_else.8895:
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
	jal	fless.2445
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8897
	j	beq_cont.8898
beq_else.8897:
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
beq_cont.8898:
beq_cont.8896:
beq_cont.8894:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
judge_intersection.2779:
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
	jal	fless.2445
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8899
	lli	%r1, 0
	jr	%ra
bneq_else.8899:
	llif	%f1, 100000000.000000
	lhif	%f1, 100000000.000000
	lf	%f0, [%sp + 1]
	jal	fless.2445
solve_each_element_fast.2781:
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
	jal	d_vec.2596
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lw	%r2, [%sp + 11]
	lw	%r3, [%sp + 12]
	add	%r4, %r3, %r2
	lw	%r4, [%r4 + 0]
	lli	%r5, -1
	bneq	%r4, %r5, bneq_else.8900
	jr	%ra
bneq_else.8900:
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
	bneq	%r1, %r2, bneq_else.8902
	lw	%r1, [%sp + 14]
	lw	%r2, [%sp + 8]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	o_isinvert.2541
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8903
	jr	%ra
bneq_else.8903:
	lli	%r1, 1
	lw	%r2, [%sp + 11]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 12]
	lw	%r3, [%sp + 9]
	lw	%r27, [%sp + 7]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8902:
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
	jal	fless.2445
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8905
	j	beq_cont.8906
beq_else.8905:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lf	%f0, [%sp + 16]
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	fless.2445
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8907
	j	beq_cont.8908
beq_else.8907:
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
	sw	%ra, [%sp + 21]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 22
	jalr	%r26
	subi	%sp, %sp, 22
	lw	%ra, [%sp + 21]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8909
	j	beq_cont.8910
beq_else.8909:
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
	jal	vecset.2489
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
beq_cont.8910:
beq_cont.8908:
beq_cont.8906:
	lli	%r1, 1
	lw	%r2, [%sp + 11]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 12]
	lw	%r3, [%sp + 9]
	lw	%r27, [%sp + 7]
	lw	%r26, [%r27 + 0]
	jr	%r26
solve_one_or_network_fast.2785:
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	add	%r6, %r2, %r1
	lw	%r6, [%r6 + 0]
	lli	%r7, -1
	bneq	%r6, %r7, bneq_else.8911
	jr	%ra
bneq_else.8911:
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
trace_or_matrix_fast.2789:
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
	bneq	%r9, %r10, bneq_else.8913
	jr	%ra
bneq_else.8913:
	lli	%r10, 99
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r27, [%sp + 2]
	sw	%r1, [%sp + 3]
	beq	%r9, %r10, beq_else.8915
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
	j	beq_cont.8916
beq_else.8915:
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
	beq	%r1, %r2, beq_else.8917
	j	beq_cont.8918
beq_else.8917:
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
	jal	fless.2445
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8919
	j	beq_cont.8920
beq_else.8919:
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
beq_cont.8920:
beq_cont.8918:
beq_cont.8916:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
judge_intersection_fast.2793:
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
	jal	fless.2445
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8921
	lli	%r1, 0
	jr	%ra
bneq_else.8921:
	llif	%f1, 100000000.000000
	lhif	%f1, 100000000.000000
	lf	%f0, [%sp + 1]
	jal	fless.2445
get_nvector_rect.2795:
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
	jal	vecbzero.2497
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
	jal	sgn.2481
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
get_nvector_plane.2797:
	lw	%r2, [%r27 + 1]
	lli	%r3, 0
	sw	%r1, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r2, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	o_param_a.2545
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
	jal	o_param_b.2547
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
	jal	o_param_c.2549
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
get_nvector_second.2799:
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
	jal	o_param_x.2553
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
	jal	o_param_y.2555
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
	jal	o_param_z.2557
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lf	%f1, [%sp + 7]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_a.2545
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lf	%f1, [%sp + 4]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_param_b.2547
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 6]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_param_c.2549
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lf	%f1, [%sp + 8]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_isrot.2543
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8924
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
	j	beq_cont.8925
beq_else.8924:
	lli	%r1, 0
	lw	%r2, [%sp + 1]
	sw	%r1, [%sp + 12]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	o_param_r3.2573
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lf	%f1, [%sp + 6]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 13]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	o_param_r2.2571
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lf	%f1, [%sp + 8]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 13]
	addf	%f0, %f2, %f0
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	fhalf.2441
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
	jal	o_param_r3.2573
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lf	%f1, [%sp + 4]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	o_param_r1.2569
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f1, [%sp + 8]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 15]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	fhalf.2441
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
	jal	o_param_r2.2571
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lf	%f1, [%sp + 4]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 17]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	o_param_r1.2569
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 6]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 17]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	fhalf.2441
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 11]
	addf	%f0, %f1, %f0
	lw	%r1, [%sp + 16]
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
beq_cont.8925:
	lw	%r1, [%sp + 1]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	o_isinvert.2541
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 0]
	jal	vecunit_sgn.2507
get_nvector.2801:
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
	jal	o_form.2537
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.8926
	lw	%r1, [%sp + 3]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8926:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.8927
	lw	%r1, [%sp + 1]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.8927:
	lw	%r1, [%sp + 1]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
utexture.2804:
	lw	%r3, [%r27 + 1]
	sw	%r2, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	o_texturetype.2535
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 0
	lw	%r3, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%r2, [%sp + 4]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_color_red.2563
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
	jal	o_color_green.2565
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
	jal	o_color_blue.2567
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	lw	%r3, [%sp + 3]
	bneq	%r3, %r1, bneq_else.8928
	lli	%r1, 0
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	o_param_x.2553
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lf	%f1, [%sp + 7]
	subf	%f0, %f1, %f0
	llif	%f1, 0.050000
	lhif	%f1, 0.050000
	mulf	%f1, %f0, %f1
	sf	%f0, [%sp + 8]
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
	jal	fless.2445
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
	jal	o_param_z.2557
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lf	%f1, [%sp + 10]
	subf	%f0, %f1, %f0
	llif	%f1, 0.050000
	lhif	%f1, 0.050000
	mulf	%f1, %f0, %f1
	sf	%f0, [%sp + 11]
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
	jal	fless.2445
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 1
	lli	%r3, 0
	lw	%r4, [%sp + 9]
	beq	%r4, %r3, beq_else.8929
	lli	%r3, 0
	beq	%r1, %r3, beq_else.8931
	llif	%f0, 255.000000
	lhif	%f0, 255.000000
	j	beq_cont.8932
beq_else.8931:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
beq_cont.8932:
	j	beq_cont.8930
beq_else.8929:
	lli	%r3, 0
	beq	%r1, %r3, beq_else.8933
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	j	beq_cont.8934
beq_else.8933:
	llif	%f0, 255.000000
	lhif	%f0, 255.000000
beq_cont.8934:
beq_cont.8930:
	lw	%r1, [%sp + 1]
	add	%r1, %r1, %r2
	sf	%f0, [%r1 + 0]
	jr	%ra
bneq_else.8928:
	lli	%r1, 2
	bneq	%r3, %r1, bneq_else.8936
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
	jal	fsqr.2443
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
bneq_else.8936:
	lli	%r1, 3
	bneq	%r3, %r1, bneq_else.8938
	lli	%r1, 0
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	o_param_x.2553
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
	jal	o_param_z.2557
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lf	%f1, [%sp + 14]
	subf	%f0, %f1, %f0
	lf	%f1, [%sp + 13]
	sf	%f0, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	fsqr.2443
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f1, [%sp + 15]
	sf	%f0, [%sp + 16]
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	fsqr.2443
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
	jal	fsqr.2443
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
bneq_else.8938:
	lli	%r1, 4
	bneq	%r3, %r1, bneq_else.8940
	lli	%r1, 0
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 18]
	sw	%ra, [%sp + 19]
	addi	%sp, %sp, 20
	jal	o_param_x.2553
	subi	%sp, %sp, 20
	lw	%ra, [%sp + 19]
	lf	%f1, [%sp + 18]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 19]
	sw	%ra, [%sp + 20]
	addi	%sp, %sp, 21
	jal	o_param_a.2545
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
	jal	o_param_z.2557
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lf	%f1, [%sp + 21]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 22]
	sw	%ra, [%sp + 23]
	addi	%sp, %sp, 24
	jal	o_param_c.2549
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
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	fsqr.2443
	subi	%sp, %sp, 25
	lw	%ra, [%sp + 24]
	lf	%f1, [%sp + 23]
	sf	%f0, [%sp + 24]
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	fsqr.2443
	subi	%sp, %sp, 26
	lw	%ra, [%sp + 25]
	lf	%f1, [%sp + 24]
	addf	%f0, %f1, %f0
	lf	%f1, [%sp + 20]
	sf	%f0, [%sp + 25]
	sw	%ra, [%sp + 26]
	addi	%sp, %sp, 27
	jal	yj_fabs
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	llif	%f1, 0.000100
	lhif	%f1, 0.000100
	sw	%ra, [%sp + 26]
	addi	%sp, %sp, 27
	jal	fless.2445
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8941
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
	j	beq_cont.8942
beq_else.8941:
	llif	%f0, 15.000000
	lhif	%f0, 15.000000
beq_cont.8942:
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
	jal	o_param_y.2555
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	lf	%f1, [%sp + 28]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 29]
	sw	%ra, [%sp + 30]
	addi	%sp, %sp, 31
	jal	o_param_b.2547
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
	sw	%ra, [%sp + 31]
	addi	%sp, %sp, 32
	jal	yj_fabs
	subi	%sp, %sp, 32
	lw	%ra, [%sp + 31]
	llif	%f1, 0.000100
	lhif	%f1, 0.000100
	sw	%ra, [%sp + 31]
	addi	%sp, %sp, 32
	jal	fless.2445
	subi	%sp, %sp, 32
	lw	%ra, [%sp + 31]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8943
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
	j	beq_cont.8944
beq_else.8943:
	llif	%f0, 15.000000
	lhif	%f0, 15.000000
beq_cont.8944:
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
	sw	%ra, [%sp + 34]
	addi	%sp, %sp, 35
	jal	fsqr.2443
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	lf	%f1, [%sp + 33]
	subf	%f0, %f1, %f0
	llif	%f1, 0.500000
	lhif	%f1, 0.500000
	lf	%f2, [%sp + 32]
	subf	%f1, %f1, %f2
	sf	%f0, [%sp + 34]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	fsqr.2443
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lf	%f1, [%sp + 34]
	subf	%f0, %f1, %f0
	sf	%f0, [%sp + 35]
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	fisneg.2437
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8945
	lf	%f0, [%sp + 35]
	j	beq_cont.8946
beq_else.8945:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
beq_cont.8946:
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
bneq_else.8940:
	jr	%ra
add_light.2807:
	lw	%r1, [%r27 + 2]
	lw	%r2, [%r27 + 1]
	sf	%f2, [%sp + 0]
	sf	%f1, [%sp + 1]
	sf	%f0, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fispos.2435
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8949
	j	beq_cont.8950
beq_else.8949:
	lf	%f0, [%sp + 2]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 3]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	vecaccum.2518
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
beq_cont.8950:
	lf	%f0, [%sp + 1]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fispos.2435
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8951
	jr	%ra
bneq_else.8951:
	lf	%f0, [%sp + 1]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fsqr.2443
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fsqr.2443
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
trace_reflections.2811:
	lw	%r3, [%r27 + 8]
	lw	%r4, [%r27 + 7]
	lw	%r5, [%r27 + 6]
	lw	%r6, [%r27 + 5]
	lw	%r7, [%r27 + 4]
	lw	%r8, [%r27 + 3]
	lw	%r9, [%r27 + 2]
	lw	%r10, [%r27 + 1]
	lli	%r11, 0
	bgt	%r11, %r1, bgt_else.8954
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
	jal	r_dvec.2602
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
	beq	%r1, %r2, beq_else.8955
	j	beq_cont.8956
beq_else.8955:
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
	jal	r_surface_id.2600
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r2, [%sp + 14]
	beq	%r2, %r1, beq_else.8957
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
	beq	%r1, %r2, beq_else.8959
	lw	%r1, [%sp + 13]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	d_vec.2596
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 6]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	veciprod.2510
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r1, [%sp + 9]
	sf	%f0, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	r_bright.2604
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
	jal	d_vec.2596
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	veciprod.2510
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
	j	beq_cont.8960
beq_else.8959:
beq_cont.8960:
	j	beq_cont.8958
beq_else.8957:
beq_cont.8958:
beq_cont.8956:
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	sub	%r1, %r2, %r1
	lf	%f0, [%sp + 5]
	lf	%f1, [%sp + 2]
	lw	%r2, [%sp + 4]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.8954:
	jr	%ra
trace_ray.2816:
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
	bgt	%r1, %r24, bgt_else.8962
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
	jal	p_surface_ids.2581
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
	bneq	%r1, %r2, bneq_else.8963
	lli	%r1, -1
	lw	%r2, [%sp + 23]
	lw	%r3, [%sp + 26]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	lli	%r1, 0
	bneq	%r2, %r1, bneq_else.8964
	jr	%ra
bneq_else.8964:
	lw	%r1, [%sp + 24]
	lw	%r2, [%sp + 22]
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	veciprod.2510
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
	jal	fispos.2435
	subi	%sp, %sp, 29
	lw	%ra, [%sp + 28]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8966
	jr	%ra
bneq_else.8966:
	lf	%f0, [%sp + 27]
	sw	%ra, [%sp + 28]
	addi	%sp, %sp, 29
	jal	fsqr.2443
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
bneq_else.8963:
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
	jal	o_reflectiontype.2539
	subi	%sp, %sp, 31
	lw	%ra, [%sp + 30]
	lw	%r2, [%sp + 29]
	sw	%r1, [%sp + 30]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 31]
	addi	%sp, %sp, 32
	jal	o_diffuse.2559
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
	jal	veccpy.2499
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
	jal	p_intersection_points.2579
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lw	%r2, [%sp + 23]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lw	%r3, [%sp + 14]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	veccpy.2499
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lw	%r1, [%sp + 11]
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	p_calc_diffuse.2583
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lw	%r2, [%sp + 29]
	sw	%r1, [%sp + 32]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 33]
	addi	%sp, %sp, 34
	jal	o_diffuse.2559
	subi	%sp, %sp, 34
	lw	%ra, [%sp + 33]
	llif	%f1, 0.500000
	lhif	%f1, 0.500000
	sw	%ra, [%sp + 33]
	addi	%sp, %sp, 34
	jal	fless.2445
	subi	%sp, %sp, 34
	lw	%ra, [%sp + 33]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8969
	lli	%r1, 1
	lw	%r2, [%sp + 23]
	lw	%r3, [%sp + 32]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	lw	%r1, [%sp + 11]
	sw	%ra, [%sp + 33]
	addi	%sp, %sp, 34
	jal	p_energy.2585
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
	jal	veccpy.2499
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
	jal	vecscale.2528
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	lw	%r1, [%sp + 11]
	sw	%ra, [%sp + 34]
	addi	%sp, %sp, 35
	jal	p_nvectors.2594
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	lw	%r2, [%sp + 23]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lw	%r3, [%sp + 9]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 34]
	addi	%sp, %sp, 35
	jal	veccpy.2499
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	j	beq_cont.8970
beq_else.8969:
	lli	%r1, 0
	lw	%r2, [%sp + 23]
	lw	%r3, [%sp + 32]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
beq_cont.8970:
	llif	%f0, -2.000000
	lhif	%f0, -2.000000
	lw	%r1, [%sp + 24]
	lw	%r2, [%sp + 9]
	sf	%f0, [%sp + 34]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	veciprod.2510
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lf	%f1, [%sp + 34]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 24]
	lw	%r2, [%sp + 9]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	vecaccum.2518
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lw	%r1, [%sp + 29]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	o_hilight.2561
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
	beq	%r1, %r2, beq_else.8971
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 22]
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	veciprod.2510
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
	jal	veciprod.2510
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
	j	beq_cont.8972
beq_else.8971:
beq_cont.8972:
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
	jal	fless.2445
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8973
	jr	%ra
bneq_else.8973:
	lli	%r1, 4
	lw	%r2, [%sp + 23]
	bgt	%r2, %r1, bgt_else.8975
	j	bgt_cont.8976
bgt_else.8975:
	lli	%r1, 1
	add	%r1, %r2, %r1
	lli	%r3, -1
	lw	%r4, [%sp + 26]
	add	%r1, %r4, %r1
	sw	%r3, [%r1 + 0]
bgt_cont.8976:
	lli	%r1, 2
	lw	%r3, [%sp + 30]
	bneq	%r3, %r1, bneq_else.8977
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lw	%r1, [%sp + 29]
	sf	%f0, [%sp + 37]
	sw	%ra, [%sp + 38]
	addi	%sp, %sp, 39
	jal	o_diffuse.2559
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
bneq_else.8977:
	jr	%ra
bgt_else.8962:
	jr	%ra
trace_diffuse_ray.2822:
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
	bneq	%r1, %r2, bneq_else.8980
	jr	%ra
bneq_else.8980:
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
	jal	d_vec.2596
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
	bneq	%r1, %r2, bneq_else.8982
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 3]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	veciprod.2510
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
	jal	fispos.2435
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8983
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	j	beq_cont.8984
beq_else.8983:
	lf	%f0, [%sp + 14]
beq_cont.8984:
	lf	%f1, [%sp + 2]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 13]
	sf	%f0, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	o_diffuse.2559
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f1, [%sp + 15]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	lw	%r2, [%sp + 0]
	jal	vecaccum.2518
bneq_else.8982:
	jr	%ra
iter_trace_diffuse_rays.2825:
	lw	%r5, [%r27 + 1]
	lli	%r6, 0
	bgt	%r6, %r4, bgt_else.8986
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
	jal	d_vec.2596
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	veciprod.2510
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	fisneg.2437
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.8987
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
	j	beq_cont.8988
beq_else.8987:
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
beq_cont.8988:
	lli	%r1, 2
	lw	%r2, [%sp + 3]
	sub	%r4, %r2, %r1
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 5]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.8986:
	jr	%ra
trace_diffuse_rays.2830:
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
trace_diffuse_ray_80percent.2834:
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	lli	%r6, 0
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r4, [%sp + 2]
	sw	%r5, [%sp + 3]
	sw	%r1, [%sp + 4]
	beq	%r1, %r6, beq_else.8990
	j	beq_cont.8991
beq_else.8990:
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
beq_cont.8991:
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	beq	%r2, %r1, beq_else.8992
	j	beq_cont.8993
beq_else.8992:
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
beq_cont.8993:
	lli	%r1, 2
	lw	%r2, [%sp + 4]
	beq	%r2, %r1, beq_else.8994
	j	beq_cont.8995
beq_else.8994:
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
beq_cont.8995:
	lli	%r1, 3
	lw	%r2, [%sp + 4]
	beq	%r2, %r1, beq_else.8996
	j	beq_cont.8997
beq_else.8996:
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
beq_cont.8997:
	lli	%r1, 4
	lw	%r2, [%sp + 4]
	bneq	%r2, %r1, bneq_else.8998
	jr	%ra
bneq_else.8998:
	lli	%r1, 4
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
calc_diffuse_using_1point.2838:
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
	jal	p_received_ray_20percent.2587
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 4]
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	p_nvectors.2594
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 4]
	sw	%r1, [%sp + 6]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	p_intersection_points.2579
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r2, [%sp + 4]
	sw	%r1, [%sp + 7]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	p_energy.2585
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
	jal	veccpy.2499
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	p_group_id.2589
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
	jal	vecaccumv.2531
calc_diffuse_using_5points.2841:
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
	jal	p_received_ray_20percent.2587
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
	jal	p_received_ray_20percent.2587
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
	jal	p_received_ray_20percent.2587
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
	jal	p_received_ray_20percent.2587
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
	jal	p_received_ray_20percent.2587
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
	jal	veccpy.2499
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
	jal	vecadd.2522
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
	jal	vecadd.2522
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
	jal	vecadd.2522
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
	jal	vecadd.2522
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	p_energy.2585
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r2, [%sp + 2]
	add	%r1, %r1, %r2
	lw	%r2, [%r1 + 0]
	lw	%r1, [%sp + 0]
	lw	%r3, [%sp + 1]
	jal	vecaccumv.2531
do_without_neighbors.2847:
	lw	%r3, [%r27 + 1]
	lli	%r4, 4
	bgt	%r2, %r4, bgt_else.9000
	sw	%r27, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%r2, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	p_surface_ids.2581
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	lw	%r3, [%sp + 3]
	add	%r1, %r1, %r3
	lw	%r1, [%r1 + 0]
	bgt	%r2, %r1, bgt_else.9001
	lw	%r1, [%sp + 2]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	p_calc_diffuse.2583
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r2, [%sp + 3]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lli	%r3, 0
	beq	%r1, %r3, beq_else.9002
	j	beq_cont.9003
beq_else.9002:
	lw	%r1, [%sp + 2]
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 4]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 5
	jalr	%r26
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
beq_cont.9003:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r2, %r2, %r1
	lw	%r1, [%sp + 2]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9001:
	jr	%ra
bgt_else.9000:
	jr	%ra
neighbors_exist.2850:
	lw	%r3, [%r27 + 1]
	lli	%r4, 1
	add	%r4, %r3, %r4
	lw	%r4, [%r4 + 0]
	lli	%r5, 1
	add	%r5, %r2, %r5
	bgt	%r4, %r5, bgt_else.9006
	lli	%r1, 0
	jr	%ra
bgt_else.9006:
	lli	%r4, 0
	bgt	%r2, %r4, bgt_else.9007
	lli	%r1, 0
	jr	%ra
bgt_else.9007:
	lli	%r2, 0
	add	%r2, %r3, %r2
	lw	%r2, [%r2 + 0]
	lli	%r3, 1
	add	%r3, %r1, %r3
	bgt	%r2, %r3, bgt_else.9008
	lli	%r1, 0
	jr	%ra
bgt_else.9008:
	lli	%r2, 0
	bgt	%r1, %r2, bgt_else.9009
	lli	%r1, 0
	jr	%ra
bgt_else.9009:
	lli	%r1, 1
	jr	%ra
get_surface_id.2854:
	sw	%r2, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	p_surface_ids.2581
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lw	%r2, [%sp + 0]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	jr	%ra
neighbors_are_available.2857:
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
	jal	get_surface_id.2854
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
	jal	get_surface_id.2854
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 5]
	bneq	%r1, %r2, bneq_else.9010
	lw	%r1, [%sp + 3]
	lw	%r3, [%sp + 1]
	add	%r3, %r3, %r1
	lw	%r3, [%r3 + 0]
	lw	%r4, [%sp + 2]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	get_surface_id.2854
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 5]
	bneq	%r1, %r2, bneq_else.9011
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
	jal	get_surface_id.2854
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 5]
	bneq	%r1, %r2, bneq_else.9012
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
	jal	get_surface_id.2854
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 5]
	bneq	%r1, %r2, bneq_else.9013
	lli	%r1, 1
	jr	%ra
bneq_else.9013:
	lli	%r1, 0
	jr	%ra
bneq_else.9012:
	lli	%r1, 0
	jr	%ra
bneq_else.9011:
	lli	%r1, 0
	jr	%ra
bneq_else.9010:
	lli	%r1, 0
	jr	%ra
try_exploit_neighbors.2863:
	lw	%r7, [%r27 + 2]
	lw	%r8, [%r27 + 1]
	add	%r9, %r4, %r1
	lw	%r9, [%r9 + 0]
	lli	%r10, 4
	bgt	%r6, %r10, bgt_else.9014
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
	jal	get_surface_id.2854
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r2, [%sp + 10]
	bgt	%r2, %r1, bgt_else.9015
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 8]
	lw	%r3, [%sp + 7]
	lw	%r4, [%sp + 6]
	lw	%r5, [%sp + 5]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	neighbors_are_available.2857
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9016
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r2, [%sp + 5]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9016:
	lw	%r1, [%sp + 3]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	p_calc_diffuse.2583
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r5, [%sp + 5]
	add	%r1, %r1, %r5
	lw	%r1, [%r1 + 0]
	lli	%r2, 0
	beq	%r1, %r2, beq_else.9017
	j	beq_cont.9018
beq_else.9017:
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
beq_cont.9018:
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
bgt_else.9015:
	jr	%ra
bgt_else.9014:
	jr	%ra
write_ppm_header.2870:
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
	jal	yj_print_char
write_rgb_element.2872:
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_int_of_float
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r2, 255
	bgt	%r2, %r1, bgt_else.9021
	lli	%r2, 0
	bgt	%r1, %r2, bgt_else.9023
	j	bgt_cont.9024
bgt_else.9023:
	lli	%r1, 0
bgt_cont.9024:
	j	bgt_cont.9022
bgt_else.9021:
	lli	%r1, 255
bgt_cont.9022:
	jal	yj_print_int
write_rgb.2874:
	lw	%r1, [%r27 + 1]
	lli	%r2, 0
	add	%r2, %r1, %r2
	lf	%f0, [%r2 + 0]
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	write_rgb_element.2872
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
	jal	write_rgb_element.2872
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
	jal	write_rgb_element.2872
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 10
	jal	yj_print_char
pretrace_diffuse_rays.2876:
	lw	%r3, [%r27 + 3]
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	lli	%r6, 4
	bgt	%r2, %r6, bgt_else.9025
	sw	%r27, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r4, [%sp + 2]
	sw	%r5, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	get_surface_id.2854
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.9026
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	p_calc_diffuse.2583
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 4]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lli	%r3, 0
	beq	%r1, %r3, beq_else.9027
	j	beq_cont.9028
beq_else.9027:
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	p_group_id.2589
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 3]
	sw	%r1, [%sp + 6]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	vecbzero.2497
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	p_nvectors.2594
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r2, [%sp + 5]
	sw	%r1, [%sp + 7]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	p_intersection_points.2579
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
	jal	p_received_ray_20percent.2587
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r2, [%sp + 4]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lw	%r3, [%sp + 3]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	veccpy.2499
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
beq_cont.9028:
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r2, %r2, %r1
	lw	%r1, [%sp + 5]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9026:
	jr	%ra
bgt_else.9025:
	jr	%ra
pretrace_pixels.2879:
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
	bgt	%r13, %r2, bgt_else.9031
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
	jal	vecunit_sgn.2507
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r1, [%sp + 8]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	vecbzero.2497
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r1, [%sp + 7]
	lw	%r2, [%sp + 6]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	veccpy.2499
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
	jal	p_rgb.2577
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r2, [%sp + 8]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	veccpy.2499
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
	jal	p_set_group_id.2591
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
	jal	add_mod5.2486
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
bgt_else.9031:
	jr	%ra
pretrace_line.2886:
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
	lw	%r26, [%r27 + 0]
	jr	%r26
scan_pixel.2890:
	lw	%r6, [%r27 + 6]
	lw	%r7, [%r27 + 5]
	lw	%r8, [%r27 + 4]
	lw	%r9, [%r27 + 3]
	lw	%r10, [%r27 + 2]
	lw	%r11, [%r27 + 1]
	lli	%r12, 0
	add	%r10, %r10, %r12
	lw	%r10, [%r10 + 0]
	bgt	%r10, %r1, bgt_else.9033
	jr	%ra
bgt_else.9033:
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
	jal	p_rgb.2577
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	veccpy.2499
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
	beq	%r1, %r2, beq_else.9035
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
	j	beq_cont.9036
beq_else.9035:
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
beq_cont.9036:
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
scan_line.2896:
	lw	%r6, [%r27 + 3]
	lw	%r7, [%r27 + 2]
	lw	%r8, [%r27 + 1]
	lli	%r9, 1
	add	%r9, %r8, %r9
	lw	%r9, [%r9 + 0]
	bgt	%r9, %r1, bgt_else.9037
	jr	%ra
bgt_else.9037:
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
	bgt	%r1, %r8, bgt_else.9039
	j	bgt_cont.9040
bgt_else.9039:
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
bgt_cont.9040:
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
	jal	add_mod5.2486
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
create_float5x3array.2902:
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_create_array
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
	jal	yj_create_array
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
	jal	yj_create_array
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
	jal	yj_create_array
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
	jal	yj_create_array
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	sw	%r1, [%r2 + 0]
	add	%r1, %r0, %r3
	jr	%ra
create_pixel.2904:
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_create_array
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	create_float5x3array.2902
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
	jal	create_float5x3array.2902
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	sw	%r1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	create_float5x3array.2902
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
	jal	create_float5x3array.2902
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
init_line_elements.2906:
	lli	%r3, 0
	bgt	%r3, %r2, bgt_else.9041
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	create_pixel.2904
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r2, [%sp + 0]
	lw	%r3, [%sp + 1]
	add	%r4, %r3, %r2
	sw	%r1, [%r4 + 0]
	lli	%r1, 1
	sub	%r2, %r2, %r1
	add	%r1, %r0, %r3
	jal	init_line_elements.2906
bgt_else.9041:
	jr	%ra
create_pixelline.2909:
	lw	%r1, [%r27 + 1]
	lli	%r2, 0
	add	%r2, %r1, %r2
	lw	%r2, [%r2 + 0]
	sw	%r1, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	create_pixel.2904
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
	jal	init_line_elements.2906
tan.2911:
	sf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_sin
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lf	%f1, [%sp + 0]
	sf	%f0, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_cos
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lf	%f1, [%sp + 1]
	divf	%f0, %f1, %f0
	jr	%ra
adjust_position.2913:
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
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_atan
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lf	%f1, [%sp + 0]
	mulf	%f0, %f0, %f1
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	tan.2911
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lf	%f1, [%sp + 1]
	mulf	%f0, %f0, %f1
	jr	%ra
calc_dirvec.2916:
	lw	%r4, [%r27 + 1]
	lli	%r5, 5
	bgt	%r5, %r1, bgt_else.9042
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r4, [%sp + 2]
	sf	%f0, [%sp + 3]
	sf	%f1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fsqr.2443
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 4]
	sf	%f0, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fsqr.2443
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
	jal	d_vec.2596
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f0, [%sp + 9]
	lf	%f1, [%sp + 8]
	lf	%f2, [%sp + 7]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	vecset.2489
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
	jal	d_vec.2596
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
	jal	vecset.2489
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
	jal	d_vec.2596
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
	jal	vecset.2489
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
	jal	d_vec.2596
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
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	yj_fneg
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lf	%f1, [%sp + 7]
	sf	%f0, [%sp + 15]
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
	jal	vecset.2489
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
	jal	d_vec.2596
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
	jal	vecset.2489
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
	jal	d_vec.2596
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
	jal	vecset.2489
bgt_else.9042:
	sf	%f2, [%sp + 19]
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r27, [%sp + 20]
	sf	%f3, [%sp + 21]
	sw	%r1, [%sp + 22]
	sw	%ra, [%sp + 23]
	addi	%sp, %sp, 24
	jal	adjust_position.2913
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
	jal	adjust_position.2913
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
calc_dirvecs.2924:
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.9043
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
	jal	add_mod5.2486
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	add	%r2, %r0, %r1
	lf	%f0, [%sp + 2]
	lw	%r1, [%sp + 6]
	lw	%r3, [%sp + 3]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9043:
	jr	%ra
calc_dirvec_rows.2929:
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.9045
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
	jal	add_mod5.2486
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
bgt_else.9045:
	jr	%ra
create_dirvec.2933:
	lw	%r1, [%r27 + 1]
	lli	%r2, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	sw	%r1, [%sp + 0]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_create_array
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
create_dirvec_elements.2935:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r2, bgt_else.9047
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
bgt_else.9047:
	jr	%ra
create_dirvecs.2938:
	lw	%r2, [%r27 + 3]
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.9049
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
bgt_else.9049:
	jr	%ra
init_dirvec_constants.2940:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r2, bgt_else.9051
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
bgt_else.9051:
	jr	%ra
init_vecset_constants.2943:
	lw	%r2, [%r27 + 2]
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r1, bgt_else.9053
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
bgt_else.9053:
	jr	%ra
init_dirvecs.2945:
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
add_reflection.2947:
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
	jal	d_vec.2596
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lf	%f0, [%sp + 7]
	lf	%f1, [%sp + 6]
	lf	%f2, [%sp + 5]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	vecset.2489
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
setup_rect_reflection.2954:
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
	jal	o_diffuse.2559
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lf	%f1, [%sp + 5]
	subf	%f0, %f1, %f0
	lli	%r1, 0
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	sf	%f0, [%sp + 6]
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
setup_surface_reflection.2957:
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
	jal	o_diffuse.2559
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lf	%f1, [%sp + 6]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 5]
	sf	%f0, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	o_param_abc.2551
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	veciprod.2510
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	llif	%f1, 2.000000
	lhif	%f1, 2.000000
	lw	%r1, [%sp + 5]
	sf	%f0, [%sp + 8]
	sf	%f1, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_param_a.2545
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
	jal	o_param_b.2547
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
	jal	o_param_c.2549
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
setup_reflections.2960:
	lw	%r2, [%r27 + 3]
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.9058
	add	%r4, %r4, %r1
	lw	%r4, [%r4 + 0]
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r3, [%sp + 2]
	sw	%r4, [%sp + 3]
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_reflectiontype.2539
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.9059
	lw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_diffuse.2559
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	fless.2445
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9060
	jr	%ra
bneq_else.9060:
	lw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_form.2537
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.9062
	lw	%r1, [%sp + 1]
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9062:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.9063
	lw	%r1, [%sp + 1]
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9063:
	jr	%ra
bneq_else.9059:
	jr	%ra
bgt_else.9058:
	jr	%ra
rt.2962:
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
	lli	%r17, 2
	div	%r17, %r1, %r17
	add	%r14, %r15, %r14
	sw	%r17, [%r14 + 0]
	lli	%r14, 1
	lli	%r17, 2
	div	%r2, %r2, %r17
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
	jal	d_vec.2596
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lw	%r2, [%sp + 5]
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	veccpy.2499
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
	movf2i	%r1, %f0
	sendw	%r1
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
	sqrt	%f0, %f0
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