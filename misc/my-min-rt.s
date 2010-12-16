entry:
	nop
	lli	%r1, 170
	sendc	%r1
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
	lw	%r10, [%sp + 0]
	sw	%r10, [%r12 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r14, %r0, read_all_object.2706
	sw	%r14, [%r13 + 0]
	sw	%r12, [%r13 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r14, %r0, read_and_network.2712
	sw	%r14, [%r12 + 0]
	lw	%r14, [%sp + 7]
	sw	%r14, [%r12 + 1]
	add	%r15, %r0, %hp
	addi	%hp, %hp, 6
	addi	%r16, %r0, read_parameter.2714
	sw	%r16, [%r15 + 0]
	sw	%r2, [%r15 + 5]
	sw	%r7, [%r15 + 4]
	sw	%r12, [%r15 + 3]
	sw	%r13, [%r15 + 2]
	lw	%r2, [%sp + 9]
	sw	%r2, [%r15 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r12, %r0, solver_rect_surface.2716
	sw	%r12, [%r7 + 0]
	lw	%r12, [%sp + 10]
	sw	%r12, [%r7 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, solver_rect.2725
	sw	%r16, [%r13 + 0]
	sw	%r7, [%r13 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, solver_surface.2731
	sw	%r16, [%r7 + 0]
	sw	%r12, [%r7 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r17, %r0, solver_second.2750
	sw	%r17, [%r16 + 0]
	sw	%r12, [%r16 + 1]
	add	%r17, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r18, %r0, solver.2756
	sw	%r18, [%r17 + 0]
	sw	%r7, [%r17 + 4]
	sw	%r16, [%r17 + 3]
	sw	%r13, [%r17 + 2]
	sw	%r11, [%r17 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r13, %r0, solver_rect_fast.2760
	sw	%r13, [%r7 + 0]
	sw	%r12, [%r7 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, solver_surface_fast.2767
	sw	%r16, [%r13 + 0]
	sw	%r12, [%r13 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r18, %r0, solver_second_fast.2773
	sw	%r18, [%r16 + 0]
	sw	%r12, [%r16 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r19, %r0, solver_fast.2779
	sw	%r19, [%r18 + 0]
	sw	%r13, [%r18 + 4]
	sw	%r16, [%r18 + 3]
	sw	%r7, [%r18 + 2]
	sw	%r11, [%r18 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, solver_surface_fast2.2783
	sw	%r16, [%r13 + 0]
	sw	%r12, [%r13 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r19, %r0, solver_second_fast2.2790
	sw	%r19, [%r16 + 0]
	sw	%r12, [%r16 + 1]
	add	%r19, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r20, %r0, solver_fast2.2797
	sw	%r20, [%r19 + 0]
	sw	%r13, [%r19 + 4]
	sw	%r16, [%r19 + 3]
	sw	%r7, [%r19 + 2]
	sw	%r11, [%r19 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r13, %r0, iter_setup_dirvec_constants.2809
	sw	%r13, [%r7 + 0]
	sw	%r11, [%r7 + 1]
	add	%r13, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r16, %r0, setup_dirvec_constants.2812
	sw	%r16, [%r13 + 0]
	sw	%r10, [%r13 + 2]
	sw	%r7, [%r13 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, setup_startp_constants.2814
	sw	%r16, [%r7 + 0]
	sw	%r11, [%r7 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r20, %r0, setup_startp.2817
	sw	%r20, [%r16 + 0]
	lw	%r20, [%sp + 23]
	sw	%r20, [%r16 + 3]
	sw	%r7, [%r16 + 2]
	sw	%r10, [%r16 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r21, %r0, check_all_inside.2839
	sw	%r21, [%r7 + 0]
	sw	%r11, [%r7 + 1]
	add	%r21, %r0, %hp
	addi	%hp, %hp, 8
	addi	%r22, %r0, shadow_check_and_group.2845
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
	addi	%r25, %r0, shadow_check_one_or_group.2848
	sw	%r25, [%r24 + 0]
	sw	%r21, [%r24 + 2]
	sw	%r14, [%r24 + 1]
	add	%r21, %r0, %hp
	addi	%hp, %hp, 6
	addi	%r25, %r0, shadow_check_one_or_matrix.2851
	sw	%r25, [%r21 + 0]
	sw	%r18, [%r21 + 5]
	sw	%r12, [%r21 + 4]
	sw	%r24, [%r21 + 3]
	sw	%r22, [%r21 + 2]
	sw	%r23, [%r21 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 10
	addi	%r24, %r0, solve_each_element.2854
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
	addi	%r15, %r0, solve_one_or_network.2858
	sw	%r15, [%r22 + 0]
	sw	%r18, [%r22 + 2]
	sw	%r14, [%r22 + 1]
	add	%r15, %r0, %hp
	addi	%hp, %hp, 6
	addi	%r18, %r0, trace_or_matrix.2862
	sw	%r18, [%r15 + 0]
	sw	%r24, [%r15 + 5]
	sw	%r25, [%r15 + 4]
	sw	%r12, [%r15 + 3]
	sw	%r17, [%r15 + 2]
	sw	%r22, [%r15 + 1]
	add	%r17, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r18, %r0, judge_intersection.2866
	sw	%r18, [%r17 + 0]
	sw	%r15, [%r17 + 3]
	sw	%r24, [%r17 + 2]
	sw	%r2, [%r17 + 1]
	add	%r15, %r0, %hp
	addi	%hp, %hp, 10
	addi	%r18, %r0, solve_each_element_fast.2868
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
	addi	%r18, %r0, solve_one_or_network_fast.2872
	sw	%r18, [%r7 + 0]
	sw	%r15, [%r7 + 2]
	sw	%r14, [%r7 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 5
	addi	%r15, %r0, trace_or_matrix_fast.2876
	sw	%r15, [%r14 + 0]
	sw	%r24, [%r14 + 4]
	sw	%r19, [%r14 + 3]
	sw	%r12, [%r14 + 2]
	sw	%r7, [%r14 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r12, %r0, judge_intersection_fast.2880
	sw	%r12, [%r7 + 0]
	sw	%r14, [%r7 + 3]
	sw	%r24, [%r7 + 2]
	sw	%r2, [%r7 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r14, %r0, get_nvector_rect.2882
	sw	%r14, [%r12 + 0]
	lw	%r14, [%sp + 15]
	sw	%r14, [%r12 + 2]
	sw	%r26, [%r12 + 1]
	add	%r15, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r18, %r0, get_nvector_plane.2884
	sw	%r18, [%r15 + 0]
	sw	%r14, [%r15 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r19, %r0, get_nvector_second.2886
	sw	%r19, [%r18 + 0]
	sw	%r14, [%r18 + 2]
	sw	%r23, [%r18 + 1]
	add	%r19, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r20, %r0, get_nvector.2888
	sw	%r20, [%r19 + 0]
	sw	%r18, [%r19 + 3]
	sw	%r12, [%r19 + 2]
	sw	%r15, [%r19 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r15, %r0, utexture.2891
	sw	%r15, [%r12 + 0]
	lw	%r15, [%sp + 16]
	sw	%r15, [%r12 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r20, %r0, add_light.2894
	sw	%r20, [%r18 + 0]
	sw	%r15, [%r18 + 2]
	lw	%r20, [%sp + 18]
	sw	%r20, [%r18 + 1]
	add	%r22, %r0, %hp
	addi	%hp, %hp, 9
	sw	%r13, [%sp + 36]
	addi	%r13, %r0, trace_reflections.2898
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
	addi	%r10, %r0, trace_ray.2903
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
	addi	%r10, %r0, trace_diffuse_ray.2909
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
	addi	%r10, %r0, iter_trace_diffuse_rays.2912
	sw	%r10, [%r7 + 0]
	sw	%r9, [%r7 + 1]
	add	%r9, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r10, %r0, trace_diffuse_rays.2917
	sw	%r10, [%r9 + 0]
	sw	%r16, [%r9 + 2]
	sw	%r7, [%r9 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r10, %r0, trace_diffuse_ray_80percent.2921
	sw	%r10, [%r7 + 0]
	sw	%r9, [%r7 + 2]
	lw	%r10, [%sp + 29]
	sw	%r10, [%r7 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r14, %r0, calc_diffuse_using_1point.2925
	sw	%r14, [%r12 + 0]
	sw	%r7, [%r12 + 3]
	sw	%r20, [%r12 + 2]
	sw	%r2, [%r12 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r14, %r0, calc_diffuse_using_5points.2928
	sw	%r14, [%r7 + 0]
	sw	%r20, [%r7 + 2]
	sw	%r2, [%r7 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r15, %r0, do_without_neighbors.2934
	sw	%r15, [%r14 + 0]
	sw	%r12, [%r14 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r15, %r0, neighbors_exist.2937
	sw	%r15, [%r12 + 0]
	lw	%r15, [%sp + 19]
	sw	%r15, [%r12 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r17, %r0, try_exploit_neighbors.2950
	sw	%r17, [%r16 + 0]
	sw	%r14, [%r16 + 2]
	sw	%r7, [%r16 + 1]
	add	%r7, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r17, %r0, write_ppm_header.2957
	sw	%r17, [%r7 + 0]
	sw	%r15, [%r7 + 1]
	add	%r17, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r18, %r0, write_rgb.2961
	sw	%r18, [%r17 + 0]
	sw	%r20, [%r17 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r19, %r0, pretrace_diffuse_rays.2963
	sw	%r19, [%r18 + 0]
	sw	%r9, [%r18 + 3]
	sw	%r10, [%r18 + 2]
	sw	%r2, [%r18 + 1]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 10
	addi	%r9, %r0, pretrace_pixels.2966
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
	addi	%r13, %r0, pretrace_line.2973
	sw	%r13, [%r9 + 0]
	sw	%r4, [%r9 + 6]
	sw	%r5, [%r9 + 5]
	sw	%r3, [%r9 + 4]
	sw	%r2, [%r9 + 3]
	sw	%r15, [%r9 + 2]
	sw	%r6, [%r9 + 1]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 7
	addi	%r4, %r0, scan_pixel.2977
	sw	%r4, [%r2 + 0]
	sw	%r17, [%r2 + 6]
	sw	%r16, [%r2 + 5]
	sw	%r20, [%r2 + 4]
	sw	%r12, [%r2 + 3]
	sw	%r15, [%r2 + 2]
	sw	%r14, [%r2 + 1]
	add	%r4, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r5, %r0, scan_line.2983
	sw	%r5, [%r4 + 0]
	sw	%r2, [%r4 + 3]
	sw	%r9, [%r4 + 2]
	sw	%r15, [%r4 + 1]
	add	%r2, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r5, %r0, create_pixelline.2996
	sw	%r5, [%r2 + 0]
	sw	%r15, [%r2 + 1]
	add	%r5, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r12, %r0, calc_dirvec.3003
	sw	%r12, [%r5 + 0]
	sw	%r10, [%r5 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r13, %r0, calc_dirvecs.3011
	sw	%r13, [%r12 + 0]
	sw	%r5, [%r12 + 1]
	add	%r5, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r13, %r0, calc_dirvec_rows.3016
	sw	%r13, [%r5 + 0]
	sw	%r12, [%r5 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r13, %r0, create_dirvec.3020
	sw	%r13, [%r12 + 0]
	lw	%r13, [%sp + 0]
	sw	%r13, [%r12 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r16, %r0, create_dirvec_elements.3022
	sw	%r16, [%r14 + 0]
	sw	%r12, [%r14 + 1]
	add	%r16, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r17, %r0, create_dirvecs.3025
	sw	%r17, [%r16 + 0]
	sw	%r10, [%r16 + 3]
	sw	%r14, [%r16 + 2]
	sw	%r12, [%r16 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 2
	addi	%r17, %r0, init_dirvec_constants.3027
	sw	%r17, [%r14 + 0]
	lw	%r17, [%sp + 36]
	sw	%r17, [%r14 + 1]
	add	%r18, %r0, %hp
	addi	%hp, %hp, 3
	addi	%r19, %r0, init_vecset_constants.3030
	sw	%r19, [%r18 + 0]
	sw	%r14, [%r18 + 2]
	sw	%r10, [%r18 + 1]
	add	%r10, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r14, %r0, init_dirvecs.3032
	sw	%r14, [%r10 + 0]
	sw	%r18, [%r10 + 3]
	sw	%r16, [%r10 + 2]
	sw	%r5, [%r10 + 1]
	add	%r5, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r14, %r0, add_reflection.3034
	sw	%r14, [%r5 + 0]
	sw	%r17, [%r5 + 3]
	lw	%r14, [%sp + 34]
	sw	%r14, [%r5 + 2]
	sw	%r12, [%r5 + 1]
	add	%r12, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r14, %r0, setup_rect_reflection.3041
	sw	%r14, [%r12 + 0]
	sw	%r1, [%r12 + 3]
	sw	%r8, [%r12 + 2]
	sw	%r5, [%r12 + 1]
	add	%r14, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r16, %r0, setup_surface_reflection.3044
	sw	%r16, [%r14 + 0]
	sw	%r1, [%r14 + 3]
	sw	%r8, [%r14 + 2]
	sw	%r5, [%r14 + 1]
	add	%r1, %r0, %hp
	addi	%hp, %hp, 4
	addi	%r5, %r0, setup_reflections.3047
	sw	%r5, [%r1 + 0]
	sw	%r14, [%r1 + 3]
	sw	%r12, [%r1 + 2]
	sw	%r11, [%r1 + 1]
	add	%r27, %r0, %hp
	addi	%hp, %hp, 15
	addi	%r5, %r0, rt.3049
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
halt:
	halt
div10_sub.6209:
	lli	%r3, 10
	bgt	%r3, %r1, bgt_else.8923
	lli	%r3, 10
	sub	%r1, %r1, %r3
	lli	%r3, 1
	add	%r2, %r2, %r3
	j	div10_sub.6209
bgt_else.8923:
	add	%r1, %r0, %r2
	jr	%ra
div10.6193:
	lli	%r2, 0
	j	div10_sub.6209
print_int.2514:
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.8924
	lli	%r2, 10
	bgt	%r2, %r1, bgt_else.8925
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	div10.6193
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
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
	j	yj_print_char
bgt_else.8925:
	lli	%r2, 48
	add	%r1, %r1, %r2
	j	yj_print_char
bgt_else.8924:
	lli	%r2, 45
	sw	%r1, [%sp + 0]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_print_char
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r1, [%sp + 0]
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
	bgtf	%f0, %f3, bgtf_else.8926
	bgtf	%f0, %f2, bgtf_else.8927
	bgtf	%f0, %f1, bgtf_else.8928
	j	calc_sin.6160
bgtf_else.8928:
	subf	%f0, %f2, %f0
	j	sinf__.6162
bgtf_else.8927:
	subf	%f0, %f0, %f2
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	sinf__.6162
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	negf	%f0, %f0
	jr	%ra
bgtf_else.8926:
	subf	%f0, %f0, %f3
	j	sinf__.6162
sin.2516:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.8929
	j	sinf__.6162
bgtf_else.8929:
	negf	%f0, %f0
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	sinf__.6162
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
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
	bgtf	%f0, %f3, bgtf_else.8930
	bgtf	%f0, %f2, bgtf_else.8931
	bgtf	%f0, %f1, bgtf_else.8932
	j	calc_cos.6127
bgtf_else.8932:
	subf	%f0, %f2, %f0
	j	cosf__.6129
bgtf_else.8931:
	subf	%f0, %f0, %f2
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	cosf__.6129
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	negf	%f0, %f0
	jr	%ra
bgtf_else.8930:
	subf	%f0, %f0, %f3
	j	cosf__.6129
cos.2518:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.8933
	j	cosf__.6129
bgtf_else.8933:
	negf	%f0, %f0
	j	cosf__.6129
atan.2520:
	sf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	yj_fabs
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	llif	%f1, 0.150000
	lhif	%f1, 0.150000
	bgtf	%f0, %f1, bgtf_else.8934
	lf	%f0, [%sp + 0]
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
bgtf_else.8934:
	llif	%f0, -1.000000
	lhif	%f0, -1.000000
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	lf	%f2, [%sp + 0]
	mulf	%f3, %f2, %f2
	addf	%f1, %f1, %f3
	sf	%f0, [%sp + 1]
	movf	%f0, %f1
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	yj_sqrt
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lf	%f1, [%sp + 1]
	addf	%f0, %f1, %f0
	lf	%f1, [%sp + 0]
	divf	%f0, %f0, %f1
	llif	%f1, 2.000000
	lhif	%f1, 2.000000
	sf	%f1, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	atan.2520
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lf	%f1, [%sp + 2]
	mulf	%f0, %f1, %f0
	jr	%ra
fispos.2522:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f0, %f1, bgtf_else.8935
	lli	%r1, 0
	jr	%ra
bgtf_else.8935:
	lli	%r1, 1
	jr	%ra
fisneg.2524:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	bgtf	%f1, %f0, bgtf_else.8936
	lli	%r1, 0
	jr	%ra
bgtf_else.8936:
	lli	%r1, 1
	jr	%ra
fiszero.2526:
	llif	%f1, 0.000000
	lhif	%f1, 0.000000
	movf2i	%r1, %f0
	movf2i	%r2, %f1
	bneq	%r1, %r2, bneq_else.8937
	lli	%r1, 1
	jr	%ra
bneq_else.8937:
	lli	%r1, 0
	jr	%ra
fhalf.2528:
	llif	%f1, 0.500000
	lhif	%f1, 0.500000
	mulf	%f0, %f0, %f1
	jr	%ra
fsqr.2530:
	mulf	%f0, %f0, %f0
	jr	%ra
fless.2532:
	bgtf	%f1, %f0, bgtf_else.8938
	lli	%r1, 0
	jr	%ra
bgtf_else.8938:
	lli	%r1, 1
	jr	%ra
xor.2565:
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.8939
	add	%r1, %r0, %r2
	jr	%ra
bneq_else.8939:
	lli	%r1, 0
	bneq	%r2, %r1, bneq_else.8940
	lli	%r1, 1
	jr	%ra
bneq_else.8940:
	lli	%r1, 0
	jr	%ra
sgn.2568:
	sf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	fiszero.2526
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8941
	lf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	fispos.2522
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8942
	llif	%f0, -1.000000
	lhif	%f0, -1.000000
	jr	%ra
bneq_else.8942:
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	jr	%ra
bneq_else.8941:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	jr	%ra
fneg_cond.2570:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8943
	j	yj_fneg
bneq_else.8943:
	jr	%ra
add_mod5.2573:
	add	%r1, %r1, %r2
	lli	%r2, 5
	bgt	%r2, %r1, bgt_else.8944
	lli	%r2, 5
	sub	%r1, %r1, %r2
	jr	%ra
bgt_else.8944:
	jr	%ra
vecset.2576:
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
vecfill.2581:
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
vecbzero.2584:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	j	vecfill.2581
veccpy.2586:
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
vecunit_sgn.2594:
	lli	%r3, 0
	add	%r3, %r1, %r3
	lf	%f0, [%r3 + 0]
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	fsqr.2530
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
	jal	fsqr.2530
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
	jal	fsqr.2530
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
	jal	fiszero.2526
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8948
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	bneq	%r2, %r1, bneq_else.8950
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lf	%f1, [%sp + 4]
	divf	%f0, %f0, %f1
	j	bneq_cont.8951
bneq_else.8950:
	llif	%f0, -1.000000
	lhif	%f0, -1.000000
	lf	%f1, [%sp + 4]
	divf	%f0, %f0, %f1
bneq_cont.8951:
	j	bneq_cont.8949
bneq_else.8948:
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
bneq_cont.8949:
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
veciprod.2597:
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
veciprod2.2600:
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
vecaccum.2605:
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
vecadd.2609:
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
vecscale.2615:
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
vecaccumv.2618:
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
o_texturetype.2622:
	lw	%r1, [%r1 + 0]
	jr	%ra
o_form.2624:
	lw	%r1, [%r1 + 1]
	jr	%ra
o_reflectiontype.2626:
	lw	%r1, [%r1 + 2]
	jr	%ra
o_isinvert.2628:
	lw	%r1, [%r1 + 6]
	jr	%ra
o_isrot.2630:
	lw	%r1, [%r1 + 3]
	jr	%ra
o_param_a.2632:
	lw	%r1, [%r1 + 4]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_b.2634:
	lw	%r1, [%r1 + 4]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_c.2636:
	lw	%r1, [%r1 + 4]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_abc.2638:
	lw	%r1, [%r1 + 4]
	jr	%ra
o_param_x.2640:
	lw	%r1, [%r1 + 5]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_y.2642:
	lw	%r1, [%r1 + 5]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_z.2644:
	lw	%r1, [%r1 + 5]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_diffuse.2646:
	lw	%r1, [%r1 + 7]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_hilight.2648:
	lw	%r1, [%r1 + 7]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_color_red.2650:
	lw	%r1, [%r1 + 8]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_color_green.2652:
	lw	%r1, [%r1 + 8]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_color_blue.2654:
	lw	%r1, [%r1 + 8]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_r1.2656:
	lw	%r1, [%r1 + 9]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_r2.2658:
	lw	%r1, [%r1 + 9]
	lli	%r2, 1
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_r3.2660:
	lw	%r1, [%r1 + 9]
	lli	%r2, 2
	add	%r1, %r1, %r2
	lf	%f0, [%r1 + 0]
	jr	%ra
o_param_ctbl.2662:
	lw	%r1, [%r1 + 10]
	jr	%ra
p_rgb.2664:
	lw	%r1, [%r1 + 0]
	jr	%ra
p_intersection_points.2666:
	lw	%r1, [%r1 + 1]
	jr	%ra
p_surface_ids.2668:
	lw	%r1, [%r1 + 2]
	jr	%ra
p_calc_diffuse.2670:
	lw	%r1, [%r1 + 3]
	jr	%ra
p_energy.2672:
	lw	%r1, [%r1 + 4]
	jr	%ra
p_received_ray_20percent.2674:
	lw	%r1, [%r1 + 5]
	jr	%ra
p_group_id.2676:
	lw	%r1, [%r1 + 6]
	lli	%r2, 0
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	jr	%ra
p_set_group_id.2678:
	lw	%r1, [%r1 + 6]
	lli	%r3, 0
	add	%r1, %r1, %r3
	sw	%r2, [%r1 + 0]
	jr	%ra
p_nvectors.2681:
	lw	%r1, [%r1 + 7]
	jr	%ra
d_vec.2683:
	lw	%r1, [%r1 + 0]
	jr	%ra
d_const.2685:
	lw	%r1, [%r1 + 1]
	jr	%ra
r_surface_id.2687:
	lw	%r1, [%r1 + 0]
	jr	%ra
r_dvec.2689:
	lw	%r1, [%r1 + 1]
	jr	%ra
r_bright.2691:
	lf	%f0, [%r1 + 2]
	jr	%ra
rad.2693:
	llif	%f1, 0.017453
	lhif	%f1, 0.017453
	mulf	%f0, %f0, %f1
	jr	%ra
read_screen_settings.2695:
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
	jal	rad.2693
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
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
	sf	%f0, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	yj_read_float
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	rad.2693
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	sf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	cos.2518
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lf	%f1, [%sp + 11]
	sf	%f0, [%sp + 12]
	movf	%f0, %f1
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	sin.2516
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
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	rad.2693
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	sf	%f0, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	sin.2516
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
	jal	rad.2693
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lf	%f1, [%sp + 2]
	sf	%f0, [%sp + 4]
	movf	%f0, %f1
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	cos.2518
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 4]
	sf	%f0, [%sp + 5]
	movf	%f0, %f1
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	sin.2516
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
	jal	cos.2518
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
rotate_quadratic_matrix.2699:
	lli	%r3, 0
	add	%r3, %r2, %r3
	lf	%f0, [%r3 + 0]
	sw	%r1, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	cos.2518
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
	jal	sin.2516
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
	jal	cos.2518
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
	jal	sin.2516
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
	jal	cos.2518
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
	jal	fsqr.2530
	subi	%sp, %sp, 21
	lw	%ra, [%sp + 20]
	lf	%f1, [%sp + 19]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 11]
	sf	%f0, [%sp + 20]
	movf	%f0, %f2
	sw	%ra, [%sp + 21]
	addi	%sp, %sp, 22
	jal	fsqr.2530
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
	jal	fsqr.2530
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
	jal	fsqr.2530
	subi	%sp, %sp, 24
	lw	%ra, [%sp + 23]
	lf	%f1, [%sp + 19]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 9]
	sf	%f0, [%sp + 23]
	movf	%f0, %f2
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	fsqr.2530
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
	jal	fsqr.2530
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
	jal	fsqr.2530
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	lf	%f1, [%sp + 19]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 7]
	sf	%f0, [%sp + 26]
	movf	%f0, %f2
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	fsqr.2530
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
	jal	fsqr.2530
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
	bneq	%r1, %r2, bneq_else.8961
	lli	%r1, 0
	jr	%ra
bneq_else.8961:
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
	jal	fisneg.2524
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
	bneq	%r3, %r2, bneq_else.8962
	j	bneq_cont.8963
bneq_else.8962:
	lli	%r2, 0
	sw	%r2, [%sp + 23]
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	yj_read_float
	subi	%sp, %sp, 25
	lw	%ra, [%sp + 24]
	sw	%ra, [%sp + 24]
	addi	%sp, %sp, 25
	jal	rad.2693
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
	jal	rad.2693
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
	jal	rad.2693
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	lw	%r1, [%sp + 25]
	lw	%r2, [%sp + 22]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.8963:
	lli	%r1, 2
	lw	%r2, [%sp + 3]
	bneq	%r2, %r1, bneq_else.8964
	lli	%r1, 1
	j	bneq_cont.8965
bneq_else.8964:
	lw	%r1, [%sp + 14]
bneq_cont.8965:
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
	bneq	%r5, %r2, bneq_else.8966
	lli	%r2, 0
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	lli	%r2, 0
	sw	%r2, [%sp + 27]
	sf	%f0, [%sp + 28]
	sw	%ra, [%sp + 29]
	addi	%sp, %sp, 30
	jal	fiszero.2526
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8968
	lf	%f0, [%sp + 28]
	sw	%ra, [%sp + 29]
	addi	%sp, %sp, 30
	jal	sgn.2568
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	lf	%f1, [%sp + 28]
	sf	%f0, [%sp + 29]
	movf	%f0, %f1
	sw	%ra, [%sp + 30]
	addi	%sp, %sp, 31
	jal	fsqr.2530
	subi	%sp, %sp, 31
	lw	%ra, [%sp + 30]
	lf	%f1, [%sp + 29]
	divf	%f0, %f1, %f0
	j	bneq_cont.8969
bneq_else.8968:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.8969:
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
	jal	fiszero.2526
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8970
	lf	%f0, [%sp + 31]
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	sgn.2568
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lf	%f1, [%sp + 31]
	sf	%f0, [%sp + 32]
	movf	%f0, %f1
	sw	%ra, [%sp + 33]
	addi	%sp, %sp, 34
	jal	fsqr.2530
	subi	%sp, %sp, 34
	lw	%ra, [%sp + 33]
	lf	%f1, [%sp + 32]
	divf	%f0, %f1, %f0
	j	bneq_cont.8971
bneq_else.8970:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.8971:
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
	jal	fiszero.2526
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8972
	lf	%f0, [%sp + 34]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	sgn.2568
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lf	%f1, [%sp + 34]
	sf	%f0, [%sp + 35]
	movf	%f0, %f1
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	fsqr.2530
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	lf	%f1, [%sp + 35]
	divf	%f0, %f1, %f0
	j	bneq_cont.8973
bneq_else.8972:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.8973:
	lw	%r1, [%sp + 33]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.8967
bneq_else.8966:
	lli	%r2, 2
	bneq	%r5, %r2, bneq_else.8974
	lli	%r2, 0
	lw	%r5, [%sp + 14]
	bneq	%r5, %r2, bneq_else.8976
	lli	%r2, 1
	j	bneq_cont.8977
bneq_else.8976:
	lli	%r2, 0
bneq_cont.8977:
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	vecunit_sgn.2594
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	j	bneq_cont.8975
bneq_else.8974:
bneq_cont.8975:
bneq_cont.8967:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	bneq	%r2, %r1, bneq_else.8978
	j	bneq_cont.8979
bneq_else.8978:
	lw	%r1, [%sp + 7]
	lw	%r2, [%sp + 22]
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	rotate_quadratic_matrix.2699
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
bneq_cont.8979:
	lli	%r1, 1
	jr	%ra
read_object.2704:
	lw	%r2, [%r27 + 2]
	lw	%r3, [%r27 + 1]
	lli	%r4, 60
	bgt	%r4, %r1, bgt_else.8980
	jr	%ra
bgt_else.8980:
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
	bneq	%r1, %r2, bneq_else.8982
	lli	%r1, 0
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 1]
	sw	%r2, [%r1 + 0]
	jr	%ra
bneq_else.8982:
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
read_all_object.2706:
	lw	%r27, [%r27 + 1]
	lli	%r1, 0
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
	bneq	%r1, %r2, bneq_else.8984
	lli	%r1, 1
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lli	%r2, -1
	lhi	%r2, -1
	j	yj_create_array
bneq_else.8984:
	lli	%r2, 1
	lw	%r3, [%sp + 0]
	add	%r2, %r3, %r2
	sw	%r1, [%sp + 1]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	read_net_item.2708
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r2, [%sp + 0]
	add	%r2, %r1, %r2
	lw	%r3, [%sp + 1]
	sw	%r3, [%r2 + 0]
	jr	%ra
read_or_network.2710:
	lli	%r2, 0
	sw	%r1, [%sp + 0]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	read_net_item.2708
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	add	%r2, %r0, %r1
	lli	%r1, 0
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lli	%r3, -1
	lhi	%r3, -1
	bneq	%r1, %r3, bneq_else.8985
	lli	%r1, 1
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	j	yj_create_array
bneq_else.8985:
	lli	%r1, 1
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	sw	%r2, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	read_or_network.2710
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lw	%r2, [%sp + 0]
	add	%r2, %r1, %r2
	lw	%r3, [%sp + 1]
	sw	%r3, [%r2 + 0]
	jr	%ra
read_and_network.2712:
	lw	%r2, [%r27 + 1]
	lli	%r3, 0
	sw	%r27, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r2, [%sp + 2]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	read_net_item.2708
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 0
	add	%r2, %r1, %r2
	lw	%r2, [%r2 + 0]
	lli	%r3, -1
	lhi	%r3, -1
	bneq	%r2, %r3, bneq_else.8986
	jr	%ra
bneq_else.8986:
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 2]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	lli	%r1, 1
	add	%r1, %r2, %r1
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
read_parameter.2714:
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
	jal	read_or_network.2710
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 4]
	lw	%r3, [%sp + 0]
	add	%r2, %r3, %r2
	sw	%r1, [%r2 + 0]
	jr	%ra
solver_rect_surface.2716:
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
	jal	fiszero.2526
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8989
	lw	%r1, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_abc.2638
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r2, [%sp + 8]
	sw	%r1, [%sp + 9]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_isinvert.2628
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lw	%r2, [%sp + 6]
	lw	%r3, [%sp + 7]
	add	%r4, %r3, %r2
	lf	%f0, [%r4 + 0]
	sw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fisneg.2524
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	xor.2565
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r2, [%sp + 6]
	lw	%r3, [%sp + 9]
	add	%r4, %r3, %r2
	lf	%f0, [%r4 + 0]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fneg_cond.2570
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
	jal	fless.2532
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8990
	lli	%r1, 0
	jr	%ra
bneq_else.8990:
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
	jal	fless.2532
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8991
	lli	%r1, 0
	jr	%ra
bneq_else.8991:
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 11]
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
bneq_else.8989:
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
	bneq	%r1, %r2, bneq_else.8992
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
	bneq	%r1, %r2, bneq_else.8993
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
	bneq	%r1, %r2, bneq_else.8994
	lli	%r1, 0
	jr	%ra
bneq_else.8994:
	lli	%r1, 3
	jr	%ra
bneq_else.8993:
	lli	%r1, 2
	jr	%ra
bneq_else.8992:
	lli	%r1, 1
	jr	%ra
solver_surface.2731:
	lw	%r3, [%r27 + 1]
	sw	%r3, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_param_abc.2638
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 4]
	sw	%r2, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	veciprod.2597
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	fispos.2522
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8995
	lli	%r1, 0
	jr	%ra
bneq_else.8995:
	lli	%r1, 0
	lf	%f0, [%sp + 3]
	lf	%f1, [%sp + 2]
	lf	%f2, [%sp + 1]
	lw	%r2, [%sp + 5]
	sw	%r1, [%sp + 7]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	veciprod2.2600
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
quadratic.2737:
	sf	%f0, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	fsqr.2530
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r1, [%sp + 3]
	sf	%f0, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_param_a.2632
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 4]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 2]
	sf	%f0, [%sp + 5]
	movf	%f0, %f1
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fsqr.2530
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r1, [%sp + 3]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	o_param_b.2634
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
	jal	fsqr.2530
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 3]
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_c.2636
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
	jal	o_isrot.2630
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8996
	lf	%f0, [%sp + 9]
	jr	%ra
bneq_else.8996:
	lf	%f0, [%sp + 1]
	lf	%f1, [%sp + 2]
	mulf	%f2, %f1, %f0
	lw	%r1, [%sp + 3]
	sf	%f2, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_param_r1.2656
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
	jal	o_param_r2.2658
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
	jal	o_param_r3.2660
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lf	%f1, [%sp + 14]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 13]
	addf	%f0, %f1, %f0
	jr	%ra
bilinear.2742:
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
	jal	o_param_a.2632
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
	jal	o_param_b.2634
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
	jal	o_param_c.2636
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
	jal	o_isrot.2630
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8997
	lf	%f0, [%sp + 12]
	jr	%ra
bneq_else.8997:
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
	jal	o_param_r1.2656
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
	jal	o_param_r2.2658
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
	jal	o_param_r3.2660
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 17]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 16]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	fhalf.2528
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 12]
	addf	%f0, %f1, %f0
	jr	%ra
solver_second.2750:
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
	jal	quadratic.2737
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	fiszero.2526
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.8998
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
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_form.2624
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 3
	bneq	%r1, %r2, bneq_else.8999
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lf	%f1, [%sp + 8]
	subf	%f0, %f1, %f0
	j	bneq_cont.9000
bneq_else.8999:
	lf	%f0, [%sp + 8]
bneq_cont.9000:
	lf	%f1, [%sp + 7]
	sf	%f0, [%sp + 9]
	movf	%f0, %f1
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fsqr.2530
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 6]
	mulf	%f1, %f2, %f1
	subf	%f0, %f0, %f1
	sf	%f0, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fispos.2522
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9001
	lli	%r1, 0
	jr	%ra
bneq_else.9001:
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
	jal	o_isinvert.2628
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9002
	lf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	yj_fneg
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	j	bneq_cont.9003
bneq_else.9002:
	lf	%f0, [%sp + 11]
bneq_cont.9003:
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
bneq_else.8998:
	lli	%r1, 0
	jr	%ra
solver.2756:
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
	jal	o_param_x.2640
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
	jal	o_param_y.2642
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
	jal	o_param_z.2644
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lf	%f1, [%sp + 10]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_form.2624
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.9004
	lf	%f0, [%sp + 7]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 11]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 3]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9004:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.9005
	lf	%f0, [%sp + 7]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 11]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9005:
	lf	%f0, [%sp + 7]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 11]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
solver_rect_fast.2760:
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
	jal	o_param_b.2634
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	movf	%f1, %f0
	lf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	fless.2532
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9006
	lli	%r1, 0
	j	bneq_cont.9007
bneq_else.9006:
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
	jal	o_param_c.2636
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	movf	%f1, %f0
	lf	%f0, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fless.2532
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9008
	lli	%r1, 0
	j	bneq_cont.9009
bneq_else.9008:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fiszero.2526
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9010
	lli	%r1, 1
	j	bneq_cont.9011
bneq_else.9010:
	lli	%r1, 0
bneq_cont.9011:
bneq_cont.9009:
bneq_cont.9007:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9012
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
	jal	o_param_a.2632
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	movf	%f1, %f0
	lf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	fless.2532
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9013
	lli	%r1, 0
	j	bneq_cont.9014
bneq_else.9013:
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
	jal	o_param_c.2636
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	movf	%f1, %f0
	lf	%f0, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	fless.2532
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9015
	lli	%r1, 0
	j	bneq_cont.9016
bneq_else.9015:
	lli	%r1, 3
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	fiszero.2526
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9017
	lli	%r1, 1
	j	bneq_cont.9018
bneq_else.9017:
	lli	%r1, 0
bneq_cont.9018:
bneq_cont.9016:
bneq_cont.9014:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9019
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
	jal	o_param_a.2632
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	movf	%f1, %f0
	lf	%f0, [%sp + 14]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	fless.2532
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9020
	lli	%r1, 0
	j	bneq_cont.9021
bneq_else.9020:
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
	jal	o_param_b.2634
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	movf	%f1, %f0
	lf	%f0, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	fless.2532
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9022
	lli	%r1, 0
	j	bneq_cont.9023
bneq_else.9022:
	lli	%r1, 5
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	fiszero.2526
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9024
	lli	%r1, 1
	j	bneq_cont.9025
bneq_else.9024:
	lli	%r1, 0
bneq_cont.9025:
bneq_cont.9023:
bneq_cont.9021:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9026
	lli	%r1, 0
	jr	%ra
bneq_else.9026:
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 13]
	sf	%f0, [%r1 + 0]
	lli	%r1, 3
	jr	%ra
bneq_else.9019:
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 10]
	sf	%f0, [%r1 + 0]
	lli	%r1, 2
	jr	%ra
bneq_else.9012:
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	lf	%f0, [%sp + 5]
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	jr	%ra
solver_surface_fast.2767:
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
	jal	fisneg.2524
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9027
	lli	%r1, 0
	jr	%ra
bneq_else.9027:
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
solver_second_fast.2773:
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
	jal	fiszero.2526
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9028
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
	jal	quadratic.2737
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_form.2624
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 3
	bneq	%r1, %r2, bneq_else.9029
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lf	%f1, [%sp + 8]
	subf	%f0, %f1, %f0
	j	bneq_cont.9030
bneq_else.9029:
	lf	%f0, [%sp + 8]
bneq_cont.9030:
	lf	%f1, [%sp + 7]
	sf	%f0, [%sp + 9]
	movf	%f0, %f1
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fsqr.2530
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 1]
	mulf	%f1, %f2, %f1
	subf	%f0, %f0, %f1
	sf	%f0, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fispos.2522
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9031
	lli	%r1, 0
	jr	%ra
bneq_else.9031:
	lw	%r1, [%sp + 2]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_isinvert.2628
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9032
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
	j	bneq_cont.9033
bneq_else.9032:
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
bneq_cont.9033:
	lli	%r1, 1
	jr	%ra
bneq_else.9028:
	lli	%r1, 0
	jr	%ra
solver_fast.2779:
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
	jal	o_param_x.2640
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
	jal	o_param_y.2642
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
	jal	o_param_z.2644
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lf	%f1, [%sp + 11]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 4]
	sf	%f0, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	d_const.2685
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
	jal	o_form.2624
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.9034
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	d_vec.2683
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
bneq_else.9034:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.9035
	lf	%f0, [%sp + 8]
	lf	%f1, [%sp + 10]
	lf	%f2, [%sp + 12]
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 13]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9035:
	lf	%f0, [%sp + 8]
	lf	%f1, [%sp + 10]
	lf	%f2, [%sp + 12]
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 13]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
solver_surface_fast2.2783:
	lw	%r1, [%r27 + 1]
	lli	%r4, 0
	add	%r4, %r2, %r4
	lf	%f0, [%r4 + 0]
	sw	%r1, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r2, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	fisneg.2524
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9036
	lli	%r1, 0
	jr	%ra
bneq_else.9036:
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
solver_second_fast2.2790:
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
	jal	fiszero.2526
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9037
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
	jal	fsqr.2530
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 9]
	lf	%f2, [%sp + 2]
	mulf	%f1, %f2, %f1
	subf	%f0, %f0, %f1
	sf	%f0, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fispos.2522
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9038
	lli	%r1, 0
	jr	%ra
bneq_else.9038:
	lw	%r1, [%sp + 1]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_isinvert.2628
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9039
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
	j	bneq_cont.9040
bneq_else.9039:
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
bneq_cont.9040:
	lli	%r1, 1
	jr	%ra
bneq_else.9037:
	lli	%r1, 0
	jr	%ra
solver_fast2.2797:
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
	jal	o_param_ctbl.2662
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
	jal	d_const.2685
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
	jal	o_form.2624
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.9041
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	d_vec.2683
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
bneq_else.9041:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.9042
	lf	%f0, [%sp + 9]
	lf	%f1, [%sp + 8]
	lf	%f2, [%sp + 7]
	lw	%r1, [%sp + 3]
	lw	%r2, [%sp + 10]
	lw	%r3, [%sp + 6]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9042:
	lf	%f0, [%sp + 9]
	lf	%f1, [%sp + 8]
	lf	%f2, [%sp + 7]
	lw	%r1, [%sp + 3]
	lw	%r2, [%sp + 10]
	lw	%r3, [%sp + 6]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
setup_rect_table.2800:
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
	jal	fiszero.2526
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9043
	lli	%r1, 0
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 3]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_isinvert.2628
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	sw	%r1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fisneg.2524
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	xor.2565
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_param_a.2632
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fneg_cond.2570
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
	j	bneq_cont.9044
bneq_else.9043:
	lli	%r1, 1
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.9044:
	lli	%r1, 1
	lw	%r3, [%sp + 1]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fiszero.2526
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9045
	lli	%r1, 2
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 6]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	o_isinvert.2628
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 1
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	sw	%r1, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	fisneg.2524
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	xor.2565
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 8]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_b.2634
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r1, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	fneg_cond.2570
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
	j	bneq_cont.9046
bneq_else.9045:
	lli	%r1, 3
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.9046:
	lli	%r1, 2
	lw	%r3, [%sp + 1]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	fiszero.2526
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9047
	lli	%r1, 4
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 9]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_isinvert.2628
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 2
	lw	%r3, [%sp + 1]
	add	%r2, %r3, %r2
	lf	%f0, [%r2 + 0]
	sw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	fisneg.2524
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	xor.2565
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r2, [%sp + 0]
	sw	%r1, [%sp + 11]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_param_c.2636
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lw	%r1, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	fneg_cond.2570
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
	j	bneq_cont.9048
bneq_else.9047:
	lli	%r1, 5
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.9048:
	add	%r1, %r0, %r2
	jr	%ra
setup_surface_table.2803:
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
	jal	o_param_a.2632
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
	jal	o_param_b.2634
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
	jal	o_param_c.2636
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lf	%f1, [%sp + 7]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 6]
	addf	%f0, %f1, %f0
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	fispos.2522
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9049
	lli	%r1, 0
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.9050
bneq_else.9049:
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
	jal	o_param_a.2632
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
	jal	o_param_b.2634
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
	jal	o_param_c.2636
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
bneq_cont.9050:
	add	%r1, %r0, %r2
	jr	%ra
setup_second_table.2806:
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
	jal	quadratic.2737
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
	jal	o_param_a.2632
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
	jal	o_param_b.2634
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
	jal	o_param_c.2636
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
	jal	o_isrot.2630
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9051
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
	j	bneq_cont.9052
bneq_else.9051:
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
	jal	o_param_r2.2658
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
	jal	o_param_r3.2660
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lf	%f1, [%sp + 13]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 12]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	fhalf.2528
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
	jal	o_param_r1.2656
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
	jal	o_param_r3.2660
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 17]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 16]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	fhalf.2528
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
	jal	o_param_r1.2656
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
	jal	o_param_r2.2658
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lf	%f1, [%sp + 21]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 20]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	fhalf.2528
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lf	%f1, [%sp + 9]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 18]
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.9052:
	lf	%f0, [%sp + 3]
	sw	%ra, [%sp + 22]
	addi	%sp, %sp, 23
	jal	fiszero.2526
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9053
	lli	%r1, 4
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lf	%f1, [%sp + 3]
	divf	%f0, %f0, %f1
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.9054
bneq_else.9053:
bneq_cont.9054:
	lw	%r1, [%sp + 2]
	jr	%ra
iter_setup_dirvec_constants.2809:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r2, bgt_else.9055
	add	%r3, %r3, %r2
	lw	%r3, [%r3 + 0]
	sw	%r27, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r3, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	d_const.2685
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r2, [%sp + 3]
	sw	%r1, [%sp + 4]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	d_vec.2683
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 2]
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_form.2624
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.9056
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 2]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	setup_rect_table.2800
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 4]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.9057
bneq_else.9056:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.9058
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 2]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	setup_surface_table.2803
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 4]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	j	bneq_cont.9059
bneq_else.9058:
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 2]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	setup_second_table.2806
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 4]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
bneq_cont.9059:
bneq_cont.9057:
	lli	%r1, 1
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 3]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9055:
	jr	%ra
setup_dirvec_constants.2812:
	lw	%r2, [%r27 + 2]
	lw	%r27, [%r27 + 1]
	lli	%r3, 0
	add	%r2, %r2, %r3
	lw	%r2, [%r2 + 0]
	lli	%r3, 1
	sub	%r2, %r2, %r3
	lw	%r26, [%r27 + 0]
	jr	%r26
setup_startp_constants.2814:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r2, bgt_else.9061
	add	%r3, %r3, %r2
	lw	%r3, [%r3 + 0]
	sw	%r27, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%r3, [%sp + 3]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_param_ctbl.2662
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r2, [%sp + 3]
	sw	%r1, [%sp + 4]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_form.2624
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
	jal	o_param_x.2640
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
	jal	o_param_y.2642
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
	jal	o_param_z.2644
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
	bneq	%r3, %r1, bneq_else.9062
	lli	%r1, 3
	lw	%r3, [%sp + 3]
	sw	%r1, [%sp + 12]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	o_param_abc.2638
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
	jal	veciprod2.2600
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lw	%r1, [%sp + 12]
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	j	bneq_cont.9063
bneq_else.9062:
	lli	%r1, 2
	bgt	%r3, %r1, bgt_else.9064
	j	bgt_cont.9065
bgt_else.9064:
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
	jal	quadratic.2737
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r1, 3
	lli	%r2, 3
	lw	%r3, [%sp + 5]
	bneq	%r3, %r2, bneq_else.9066
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	subf	%f0, %f0, %f1
	j	bneq_cont.9067
bneq_else.9066:
bneq_cont.9067:
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bgt_cont.9065:
bneq_cont.9063:
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	sub	%r2, %r2, %r1
	lw	%r1, [%sp + 2]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9061:
	jr	%ra
setup_startp.2817:
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
	jal	veccpy.2586
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
is_rect_outside.2819:
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
	jal	o_param_a.2632
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	movf	%f1, %f0
	lf	%f0, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	fless.2532
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9069
	lli	%r1, 0
	j	bneq_cont.9070
bneq_else.9069:
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
	jal	o_param_b.2634
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	movf	%f1, %f0
	lf	%f0, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fless.2532
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9071
	lli	%r1, 0
	j	bneq_cont.9072
bneq_else.9071:
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
	jal	o_param_c.2636
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	movf	%f1, %f0
	lf	%f0, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fless.2532
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
bneq_cont.9072:
bneq_cont.9070:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9073
	lw	%r1, [%sp + 2]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_isinvert.2628
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9074
	lli	%r1, 1
	jr	%ra
bneq_else.9074:
	lli	%r1, 0
	jr	%ra
bneq_else.9073:
	lw	%r1, [%sp + 2]
	j	o_isinvert.2628
is_plane_outside.2824:
	sw	%r1, [%sp + 0]
	sf	%f2, [%sp + 1]
	sf	%f1, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_param_abc.2638
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lf	%f0, [%sp + 3]
	lf	%f1, [%sp + 2]
	lf	%f2, [%sp + 1]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	veciprod2.2600
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_isinvert.2628
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f0, [%sp + 4]
	sw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fisneg.2524
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	xor.2565
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9075
	lli	%r1, 1
	jr	%ra
bneq_else.9075:
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
	sf	%f0, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	o_form.2624
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 3
	bneq	%r1, %r2, bneq_else.9076
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lf	%f1, [%sp + 1]
	subf	%f0, %f1, %f0
	j	bneq_cont.9077
bneq_else.9076:
	lf	%f0, [%sp + 1]
bneq_cont.9077:
	lw	%r1, [%sp + 0]
	sf	%f0, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	o_isinvert.2628
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lf	%f0, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	fisneg.2524
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	xor.2565
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9078
	lli	%r1, 1
	jr	%ra
bneq_else.9078:
	lli	%r1, 0
	jr	%ra
is_outside.2834:
	sf	%f2, [%sp + 0]
	sf	%f1, [%sp + 1]
	sw	%r1, [%sp + 2]
	sf	%f0, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_param_x.2640
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lf	%f1, [%sp + 3]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_param_y.2642
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 1]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	o_param_z.2644
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lf	%f1, [%sp + 0]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	o_form.2624
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.9079
	lf	%f0, [%sp + 4]
	lf	%f1, [%sp + 5]
	lf	%f2, [%sp + 6]
	lw	%r1, [%sp + 2]
	j	is_rect_outside.2819
bneq_else.9079:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.9080
	lf	%f0, [%sp + 4]
	lf	%f1, [%sp + 5]
	lf	%f2, [%sp + 6]
	lw	%r1, [%sp + 2]
	j	is_plane_outside.2824
bneq_else.9080:
	lf	%f0, [%sp + 4]
	lf	%f1, [%sp + 5]
	lf	%f2, [%sp + 6]
	lw	%r1, [%sp + 2]
	j	is_second_outside.2829
check_all_inside.2839:
	lw	%r3, [%r27 + 1]
	add	%r4, %r2, %r1
	lw	%r4, [%r4 + 0]
	lli	%r5, -1
	lhi	%r5, -1
	bneq	%r4, %r5, bneq_else.9081
	lli	%r1, 1
	jr	%ra
bneq_else.9081:
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
	jal	is_outside.2834
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9082
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
bneq_else.9082:
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
	bneq	%r10, %r11, bneq_else.9083
	lli	%r1, 0
	jr	%ra
bneq_else.9083:
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
	bneq	%r1, %r2, bneq_else.9084
	lli	%r1, 0
	j	bneq_cont.9085
bneq_else.9084:
	llif	%f1, -0.200000
	lhif	%f1, -0.200000
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	fless.2532
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
bneq_cont.9085:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9086
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_isinvert.2628
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9087
	lli	%r1, 0
	jr	%ra
bneq_else.9087:
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9086:
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
	bneq	%r1, %r2, bneq_else.9088
	lli	%r1, 1
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9088:
	lli	%r1, 1
	jr	%ra
shadow_check_one_or_group.2848:
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	add	%r5, %r2, %r1
	lw	%r5, [%r5 + 0]
	lli	%r6, -1
	lhi	%r6, -1
	bneq	%r5, %r6, bneq_else.9089
	lli	%r1, 0
	jr	%ra
bneq_else.9089:
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
	bneq	%r1, %r2, bneq_else.9090
	lli	%r1, 1
	lw	%r2, [%sp + 2]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 0]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9090:
	lli	%r1, 1
	jr	%ra
shadow_check_one_or_matrix.2851:
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
	bneq	%r9, %r10, bneq_else.9091
	lli	%r1, 0
	jr	%ra
bneq_else.9091:
	lli	%r10, 99
	sw	%r8, [%sp + 0]
	sw	%r5, [%sp + 1]
	sw	%r2, [%sp + 2]
	sw	%r27, [%sp + 3]
	sw	%r1, [%sp + 4]
	bneq	%r9, %r10, bneq_else.9092
	lli	%r1, 1
	j	bneq_cont.9093
bneq_else.9092:
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
	bneq	%r1, %r2, bneq_else.9094
	lli	%r1, 0
	j	bneq_cont.9095
bneq_else.9094:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f0, [%r1 + 0]
	llif	%f1, -0.100000
	lhif	%f1, -0.100000
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fless.2532
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9096
	lli	%r1, 0
	j	bneq_cont.9097
bneq_else.9096:
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
	bneq	%r1, %r2, bneq_else.9098
	lli	%r1, 0
	j	bneq_cont.9099
bneq_else.9098:
	lli	%r1, 1
bneq_cont.9099:
bneq_cont.9097:
bneq_cont.9095:
bneq_cont.9093:
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9100
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 3]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9100:
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
	bneq	%r1, %r2, bneq_else.9101
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 2]
	lw	%r27, [%sp + 3]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9101:
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
	bneq	%r13, %r14, bneq_else.9102
	jr	%ra
bneq_else.9102:
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
	bneq	%r1, %r2, bneq_else.9104
	lw	%r1, [%sp + 11]
	lw	%r2, [%sp + 12]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	o_isinvert.2628
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9105
	jr	%ra
bneq_else.9105:
	lli	%r1, 1
	lw	%r2, [%sp + 10]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 8]
	lw	%r3, [%sp + 7]
	lw	%r27, [%sp + 9]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9104:
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
	jal	fless.2532
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9107
	j	bneq_cont.9108
bneq_else.9107:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lf	%f0, [%sp + 14]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	fless.2532
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9109
	j	bneq_cont.9110
bneq_else.9109:
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
	bneq	%r1, %r2, bneq_else.9111
	j	bneq_cont.9112
bneq_else.9111:
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
	jal	vecset.2576
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
bneq_cont.9112:
bneq_cont.9110:
bneq_cont.9108:
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
	bneq	%r6, %r7, bneq_else.9113
	jr	%ra
bneq_else.9113:
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
trace_or_matrix.2862:
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
	bneq	%r10, %r11, bneq_else.9115
	jr	%ra
bneq_else.9115:
	lli	%r11, 99
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r27, [%sp + 2]
	sw	%r1, [%sp + 3]
	bneq	%r10, %r11, bneq_else.9117
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
	j	bneq_cont.9118
bneq_else.9117:
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
	bneq	%r1, %r2, bneq_else.9119
	j	bneq_cont.9120
bneq_else.9119:
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
	jal	fless.2532
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9121
	j	bneq_cont.9122
bneq_else.9121:
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
bneq_cont.9122:
bneq_cont.9120:
bneq_cont.9118:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
judge_intersection.2866:
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
	jal	fless.2532
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9123
	lli	%r1, 0
	jr	%ra
bneq_else.9123:
	llif	%f1, 100000000.000000
	lhif	%f1, 100000000.000000
	lf	%f0, [%sp + 1]
	j	fless.2532
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
	jal	d_vec.2683
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lw	%r2, [%sp + 11]
	lw	%r3, [%sp + 12]
	add	%r4, %r3, %r2
	lw	%r4, [%r4 + 0]
	lli	%r5, -1
	lhi	%r5, -1
	bneq	%r4, %r5, bneq_else.9124
	jr	%ra
bneq_else.9124:
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
	bneq	%r1, %r2, bneq_else.9126
	lw	%r1, [%sp + 14]
	lw	%r2, [%sp + 8]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	o_isinvert.2628
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9127
	jr	%ra
bneq_else.9127:
	lli	%r1, 1
	lw	%r2, [%sp + 11]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 12]
	lw	%r3, [%sp + 9]
	lw	%r27, [%sp + 7]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9126:
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
	jal	fless.2532
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9129
	j	bneq_cont.9130
bneq_else.9129:
	lli	%r1, 0
	lw	%r2, [%sp + 5]
	add	%r1, %r2, %r1
	lf	%f1, [%r1 + 0]
	lf	%f0, [%sp + 16]
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	fless.2532
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9131
	j	bneq_cont.9132
bneq_else.9131:
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
	bneq	%r1, %r2, bneq_else.9133
	j	bneq_cont.9134
bneq_else.9133:
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
	jal	vecset.2576
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
bneq_cont.9134:
bneq_cont.9132:
bneq_cont.9130:
	lli	%r1, 1
	lw	%r2, [%sp + 11]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 12]
	lw	%r3, [%sp + 9]
	lw	%r27, [%sp + 7]
	lw	%r26, [%r27 + 0]
	jr	%r26
solve_one_or_network_fast.2872:
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	add	%r6, %r2, %r1
	lw	%r6, [%r6 + 0]
	lli	%r7, -1
	lhi	%r7, -1
	bneq	%r6, %r7, bneq_else.9135
	jr	%ra
bneq_else.9135:
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
trace_or_matrix_fast.2876:
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
	bneq	%r9, %r10, bneq_else.9137
	jr	%ra
bneq_else.9137:
	lli	%r10, 99
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r27, [%sp + 2]
	sw	%r1, [%sp + 3]
	bneq	%r9, %r10, bneq_else.9139
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
	j	bneq_cont.9140
bneq_else.9139:
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
	bneq	%r1, %r2, bneq_else.9141
	j	bneq_cont.9142
bneq_else.9141:
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
	jal	fless.2532
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9143
	j	bneq_cont.9144
bneq_else.9143:
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
bneq_cont.9144:
bneq_cont.9142:
bneq_cont.9140:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
judge_intersection_fast.2880:
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
	jal	fless.2532
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9145
	lli	%r1, 0
	jr	%ra
bneq_else.9145:
	llif	%f1, 100000000.000000
	lhif	%f1, 100000000.000000
	lf	%f0, [%sp + 1]
	j	fless.2532
get_nvector_rect.2882:
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
	jal	vecbzero.2584
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
	jal	sgn.2568
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
get_nvector_plane.2884:
	lw	%r2, [%r27 + 1]
	lli	%r3, 0
	sw	%r1, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r2, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	o_param_a.2632
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
	jal	o_param_b.2634
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
	jal	o_param_c.2636
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
get_nvector_second.2886:
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
	jal	o_param_x.2640
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
	jal	o_param_y.2642
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
	jal	o_param_z.2644
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lf	%f1, [%sp + 7]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 8]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	o_param_a.2632
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lf	%f1, [%sp + 4]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_param_b.2634
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f1, [%sp + 6]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	o_param_c.2636
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lf	%f1, [%sp + 8]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 11]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	o_isrot.2630
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9148
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
	j	bneq_cont.9149
bneq_else.9148:
	lli	%r1, 0
	lw	%r2, [%sp + 1]
	sw	%r1, [%sp + 12]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	o_param_r3.2660
	subi	%sp, %sp, 14
	lw	%ra, [%sp + 13]
	lf	%f1, [%sp + 6]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 13]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	o_param_r2.2658
	subi	%sp, %sp, 15
	lw	%ra, [%sp + 14]
	lf	%f1, [%sp + 8]
	mulf	%f0, %f1, %f0
	lf	%f2, [%sp + 13]
	addf	%f0, %f2, %f0
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	fhalf.2528
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
	jal	o_param_r3.2660
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lf	%f1, [%sp + 4]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	o_param_r1.2656
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f1, [%sp + 8]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 15]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	fhalf.2528
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
	jal	o_param_r2.2658
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lf	%f1, [%sp + 4]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	sf	%f0, [%sp + 17]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	o_param_r1.2656
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 6]
	mulf	%f0, %f1, %f0
	lf	%f1, [%sp + 17]
	addf	%f0, %f1, %f0
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	fhalf.2528
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	lf	%f1, [%sp + 11]
	addf	%f0, %f1, %f0
	lw	%r1, [%sp + 16]
	lw	%r2, [%sp + 0]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
bneq_cont.9149:
	lw	%r1, [%sp + 1]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	o_isinvert.2628
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 0]
	j	vecunit_sgn.2594
get_nvector.2888:
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
	jal	o_form.2624
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.9150
	lw	%r1, [%sp + 3]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9150:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.9151
	lw	%r1, [%sp + 1]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9151:
	lw	%r1, [%sp + 1]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
utexture.2891:
	lw	%r3, [%r27 + 1]
	sw	%r2, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%ra, [%sp + 3]
	addi	%sp, %sp, 4
	jal	o_texturetype.2622
	subi	%sp, %sp, 4
	lw	%ra, [%sp + 3]
	lli	%r2, 0
	lw	%r3, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%r2, [%sp + 4]
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	o_color_red.2650
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
	jal	o_color_green.2652
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
	jal	o_color_blue.2654
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r1, [%sp + 6]
	lw	%r2, [%sp + 1]
	add	%r1, %r2, %r1
	sf	%f0, [%r1 + 0]
	lli	%r1, 1
	lw	%r3, [%sp + 3]
	bneq	%r3, %r1, bneq_else.9152
	lli	%r1, 0
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	o_param_x.2640
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
	jal	fless.2532
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
	jal	o_param_z.2644
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
	jal	fless.2532
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	lli	%r2, 1
	lli	%r3, 0
	lw	%r4, [%sp + 9]
	bneq	%r4, %r3, bneq_else.9153
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.9155
	llif	%f0, 255.000000
	lhif	%f0, 255.000000
	j	bneq_cont.9156
bneq_else.9155:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.9156:
	j	bneq_cont.9154
bneq_else.9153:
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.9157
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	j	bneq_cont.9158
bneq_else.9157:
	llif	%f0, 255.000000
	lhif	%f0, 255.000000
bneq_cont.9158:
bneq_cont.9154:
	lw	%r1, [%sp + 1]
	add	%r1, %r1, %r2
	sf	%f0, [%r1 + 0]
	jr	%ra
bneq_else.9152:
	lli	%r1, 2
	bneq	%r3, %r1, bneq_else.9160
	lli	%r1, 1
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	llif	%f1, 0.250000
	lhif	%f1, 0.250000
	mulf	%f0, %f0, %f1
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	sin.2516
	subi	%sp, %sp, 13
	lw	%ra, [%sp + 12]
	sw	%ra, [%sp + 12]
	addi	%sp, %sp, 13
	jal	fsqr.2530
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
bneq_else.9160:
	lli	%r1, 3
	bneq	%r3, %r1, bneq_else.9162
	lli	%r1, 0
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 12]
	sw	%ra, [%sp + 13]
	addi	%sp, %sp, 14
	jal	o_param_x.2640
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
	jal	o_param_z.2644
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lf	%f1, [%sp + 14]
	subf	%f0, %f1, %f0
	lf	%f1, [%sp + 13]
	sf	%f0, [%sp + 15]
	movf	%f0, %f1
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	fsqr.2530
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f1, [%sp + 15]
	sf	%f0, [%sp + 16]
	movf	%f0, %f1
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	fsqr.2530
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
	jal	cos.2518
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	fsqr.2530
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
bneq_else.9162:
	lli	%r1, 4
	bneq	%r3, %r1, bneq_else.9164
	lli	%r1, 0
	lw	%r3, [%sp + 0]
	add	%r1, %r3, %r1
	lf	%f0, [%r1 + 0]
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 18]
	sw	%ra, [%sp + 19]
	addi	%sp, %sp, 20
	jal	o_param_x.2640
	subi	%sp, %sp, 20
	lw	%ra, [%sp + 19]
	lf	%f1, [%sp + 18]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 19]
	sw	%ra, [%sp + 20]
	addi	%sp, %sp, 21
	jal	o_param_a.2632
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
	jal	o_param_z.2644
	subi	%sp, %sp, 23
	lw	%ra, [%sp + 22]
	lf	%f1, [%sp + 21]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 22]
	sw	%ra, [%sp + 23]
	addi	%sp, %sp, 24
	jal	o_param_c.2636
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
	jal	fsqr.2530
	subi	%sp, %sp, 25
	lw	%ra, [%sp + 24]
	lf	%f1, [%sp + 23]
	sf	%f0, [%sp + 24]
	movf	%f0, %f1
	sw	%ra, [%sp + 25]
	addi	%sp, %sp, 26
	jal	fsqr.2530
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
	jal	fless.2532
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9165
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
	jal	atan.2520
	subi	%sp, %sp, 27
	lw	%ra, [%sp + 26]
	llif	%f1, 30.000000
	lhif	%f1, 30.000000
	mulf	%f0, %f0, %f1
	llif	%f1, 3.141593
	lhif	%f1, 3.141593
	divf	%f0, %f0, %f1
	j	bneq_cont.9166
bneq_else.9165:
	llif	%f0, 15.000000
	lhif	%f0, 15.000000
bneq_cont.9166:
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
	jal	o_param_y.2642
	subi	%sp, %sp, 30
	lw	%ra, [%sp + 29]
	lf	%f1, [%sp + 28]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 2]
	sf	%f0, [%sp + 29]
	sw	%ra, [%sp + 30]
	addi	%sp, %sp, 31
	jal	o_param_b.2634
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
	jal	fless.2532
	subi	%sp, %sp, 32
	lw	%ra, [%sp + 31]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9167
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
	jal	atan.2520
	subi	%sp, %sp, 32
	lw	%ra, [%sp + 31]
	llif	%f1, 30.000000
	lhif	%f1, 30.000000
	mulf	%f0, %f0, %f1
	llif	%f1, 3.141593
	lhif	%f1, 3.141593
	divf	%f0, %f0, %f1
	j	bneq_cont.9168
bneq_else.9167:
	llif	%f0, 15.000000
	lhif	%f0, 15.000000
bneq_cont.9168:
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
	jal	fsqr.2530
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
	jal	fsqr.2530
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lf	%f1, [%sp + 34]
	subf	%f0, %f1, %f0
	sf	%f0, [%sp + 35]
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	fisneg.2524
	subi	%sp, %sp, 37
	lw	%ra, [%sp + 36]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9169
	lf	%f0, [%sp + 35]
	j	bneq_cont.9170
bneq_else.9169:
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
bneq_cont.9170:
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
bneq_else.9164:
	jr	%ra
add_light.2894:
	lw	%r1, [%r27 + 2]
	lw	%r2, [%r27 + 1]
	sf	%f2, [%sp + 0]
	sf	%f1, [%sp + 1]
	sf	%f0, [%sp + 2]
	sw	%r1, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fispos.2522
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9173
	j	bneq_cont.9174
bneq_else.9173:
	lf	%f0, [%sp + 2]
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 3]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	vecaccum.2605
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
bneq_cont.9174:
	lf	%f0, [%sp + 1]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fispos.2522
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9175
	jr	%ra
bneq_else.9175:
	lf	%f0, [%sp + 1]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fsqr.2530
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fsqr.2530
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
trace_reflections.2898:
	lw	%r3, [%r27 + 8]
	lw	%r4, [%r27 + 7]
	lw	%r5, [%r27 + 6]
	lw	%r6, [%r27 + 5]
	lw	%r7, [%r27 + 4]
	lw	%r8, [%r27 + 3]
	lw	%r9, [%r27 + 2]
	lw	%r10, [%r27 + 1]
	lli	%r11, 0
	bgt	%r11, %r1, bgt_else.9178
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
	jal	r_dvec.2689
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
	bneq	%r1, %r2, bneq_else.9179
	j	bneq_cont.9180
bneq_else.9179:
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
	jal	r_surface_id.2687
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r2, [%sp + 14]
	bneq	%r2, %r1, bneq_else.9181
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
	bneq	%r1, %r2, bneq_else.9183
	lw	%r1, [%sp + 13]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	d_vec.2683
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 6]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	veciprod.2597
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r1, [%sp + 9]
	sf	%f0, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	r_bright.2691
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
	jal	d_vec.2683
	subi	%sp, %sp, 19
	lw	%ra, [%sp + 18]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 18]
	addi	%sp, %sp, 19
	jal	veciprod.2597
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
	j	bneq_cont.9184
bneq_else.9183:
bneq_cont.9184:
	j	bneq_cont.9182
bneq_else.9181:
bneq_cont.9182:
bneq_cont.9180:
	lli	%r1, 1
	lw	%r2, [%sp + 1]
	sub	%r1, %r2, %r1
	lf	%f0, [%sp + 5]
	lf	%f1, [%sp + 2]
	lw	%r2, [%sp + 4]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9178:
	jr	%ra
trace_ray.2903:
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
	bgt	%r1, %r24, bgt_else.9186
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
	jal	p_surface_ids.2668
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
	bneq	%r1, %r2, bneq_else.9187
	lli	%r1, -1
	lhi	%r1, -1
	lw	%r2, [%sp + 23]
	lw	%r3, [%sp + 26]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	lli	%r1, 0
	bneq	%r2, %r1, bneq_else.9188
	jr	%ra
bneq_else.9188:
	lw	%r1, [%sp + 24]
	lw	%r2, [%sp + 22]
	sw	%ra, [%sp + 27]
	addi	%sp, %sp, 28
	jal	veciprod.2597
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
	jal	fispos.2522
	subi	%sp, %sp, 29
	lw	%ra, [%sp + 28]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9190
	jr	%ra
bneq_else.9190:
	lf	%f0, [%sp + 27]
	sw	%ra, [%sp + 28]
	addi	%sp, %sp, 29
	jal	fsqr.2530
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
bneq_else.9187:
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
	jal	o_reflectiontype.2626
	subi	%sp, %sp, 31
	lw	%ra, [%sp + 30]
	lw	%r2, [%sp + 29]
	sw	%r1, [%sp + 30]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 31]
	addi	%sp, %sp, 32
	jal	o_diffuse.2646
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
	jal	veccpy.2586
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
	jal	p_intersection_points.2666
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lw	%r2, [%sp + 23]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lw	%r3, [%sp + 14]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	veccpy.2586
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lw	%r1, [%sp + 11]
	sw	%ra, [%sp + 32]
	addi	%sp, %sp, 33
	jal	p_calc_diffuse.2670
	subi	%sp, %sp, 33
	lw	%ra, [%sp + 32]
	lw	%r2, [%sp + 29]
	sw	%r1, [%sp + 32]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 33]
	addi	%sp, %sp, 34
	jal	o_diffuse.2646
	subi	%sp, %sp, 34
	lw	%ra, [%sp + 33]
	llif	%f1, 0.500000
	lhif	%f1, 0.500000
	sw	%ra, [%sp + 33]
	addi	%sp, %sp, 34
	jal	fless.2532
	subi	%sp, %sp, 34
	lw	%ra, [%sp + 33]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9193
	lli	%r1, 1
	lw	%r2, [%sp + 23]
	lw	%r3, [%sp + 32]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
	lw	%r1, [%sp + 11]
	sw	%ra, [%sp + 33]
	addi	%sp, %sp, 34
	jal	p_energy.2672
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
	jal	veccpy.2586
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
	jal	vecscale.2615
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	lw	%r1, [%sp + 11]
	sw	%ra, [%sp + 34]
	addi	%sp, %sp, 35
	jal	p_nvectors.2681
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	lw	%r2, [%sp + 23]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lw	%r3, [%sp + 9]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 34]
	addi	%sp, %sp, 35
	jal	veccpy.2586
	subi	%sp, %sp, 35
	lw	%ra, [%sp + 34]
	j	bneq_cont.9194
bneq_else.9193:
	lli	%r1, 0
	lw	%r2, [%sp + 23]
	lw	%r3, [%sp + 32]
	add	%r3, %r3, %r2
	sw	%r1, [%r3 + 0]
bneq_cont.9194:
	llif	%f0, -2.000000
	lhif	%f0, -2.000000
	lw	%r1, [%sp + 24]
	lw	%r2, [%sp + 9]
	sf	%f0, [%sp + 34]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	veciprod.2597
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lf	%f1, [%sp + 34]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 24]
	lw	%r2, [%sp + 9]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	vecaccum.2605
	subi	%sp, %sp, 36
	lw	%ra, [%sp + 35]
	lw	%r1, [%sp + 29]
	sw	%ra, [%sp + 35]
	addi	%sp, %sp, 36
	jal	o_hilight.2648
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
	bneq	%r1, %r2, bneq_else.9195
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 22]
	sw	%ra, [%sp + 36]
	addi	%sp, %sp, 37
	jal	veciprod.2597
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
	jal	veciprod.2597
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
	j	bneq_cont.9196
bneq_else.9195:
bneq_cont.9196:
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
	jal	fless.2532
	subi	%sp, %sp, 38
	lw	%ra, [%sp + 37]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9197
	jr	%ra
bneq_else.9197:
	lli	%r1, 4
	lw	%r2, [%sp + 23]
	bgt	%r1, %r2, bgt_else.9199
	j	bgt_cont.9200
bgt_else.9199:
	lli	%r1, 1
	add	%r1, %r2, %r1
	lli	%r3, -1
	lhi	%r3, -1
	lw	%r4, [%sp + 26]
	add	%r1, %r4, %r1
	sw	%r3, [%r1 + 0]
bgt_cont.9200:
	lli	%r1, 2
	lw	%r3, [%sp + 30]
	bneq	%r3, %r1, bneq_else.9201
	llif	%f0, 1.000000
	lhif	%f0, 1.000000
	lw	%r1, [%sp + 29]
	sf	%f0, [%sp + 37]
	sw	%ra, [%sp + 38]
	addi	%sp, %sp, 39
	jal	o_diffuse.2646
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
bneq_else.9201:
	jr	%ra
bgt_else.9186:
	jr	%ra
trace_diffuse_ray.2909:
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
	bneq	%r1, %r2, bneq_else.9204
	jr	%ra
bneq_else.9204:
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
	jal	d_vec.2683
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
	bneq	%r1, %r2, bneq_else.9206
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 3]
	sw	%ra, [%sp + 14]
	addi	%sp, %sp, 15
	jal	veciprod.2597
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
	jal	fispos.2522
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9207
	llif	%f0, 0.000000
	lhif	%f0, 0.000000
	j	bneq_cont.9208
bneq_else.9207:
	lf	%f0, [%sp + 14]
bneq_cont.9208:
	lf	%f1, [%sp + 2]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 13]
	sf	%f0, [%sp + 15]
	sw	%ra, [%sp + 16]
	addi	%sp, %sp, 17
	jal	o_diffuse.2646
	subi	%sp, %sp, 17
	lw	%ra, [%sp + 16]
	lf	%f1, [%sp + 15]
	mulf	%f0, %f1, %f0
	lw	%r1, [%sp + 1]
	lw	%r2, [%sp + 0]
	j	vecaccum.2605
bneq_else.9206:
	jr	%ra
iter_trace_diffuse_rays.2912:
	lw	%r5, [%r27 + 1]
	lli	%r6, 0
	bgt	%r6, %r4, bgt_else.9210
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
	jal	d_vec.2683
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	veciprod.2597
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	sf	%f0, [%sp + 6]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	fisneg.2524
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9211
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
	j	bneq_cont.9212
bneq_else.9211:
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
bneq_cont.9212:
	lli	%r1, 2
	lw	%r2, [%sp + 3]
	sub	%r4, %r2, %r1
	lw	%r1, [%sp + 4]
	lw	%r2, [%sp + 5]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 1]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9210:
	jr	%ra
trace_diffuse_rays.2917:
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
trace_diffuse_ray_80percent.2921:
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	lli	%r6, 0
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r4, [%sp + 2]
	sw	%r5, [%sp + 3]
	sw	%r1, [%sp + 4]
	bneq	%r1, %r6, bneq_else.9214
	j	bneq_cont.9215
bneq_else.9214:
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
bneq_cont.9215:
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	bneq	%r2, %r1, bneq_else.9216
	j	bneq_cont.9217
bneq_else.9216:
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
bneq_cont.9217:
	lli	%r1, 2
	lw	%r2, [%sp + 4]
	bneq	%r2, %r1, bneq_else.9218
	j	bneq_cont.9219
bneq_else.9218:
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
bneq_cont.9219:
	lli	%r1, 3
	lw	%r2, [%sp + 4]
	bneq	%r2, %r1, bneq_else.9220
	j	bneq_cont.9221
bneq_else.9220:
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
bneq_cont.9221:
	lli	%r1, 4
	lw	%r2, [%sp + 4]
	bneq	%r2, %r1, bneq_else.9222
	jr	%ra
bneq_else.9222:
	lli	%r1, 4
	lw	%r2, [%sp + 3]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r2, [%sp + 1]
	lw	%r3, [%sp + 0]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
calc_diffuse_using_1point.2925:
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
	jal	p_received_ray_20percent.2674
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lw	%r2, [%sp + 4]
	sw	%r1, [%sp + 5]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	p_nvectors.2681
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 4]
	sw	%r1, [%sp + 6]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	p_intersection_points.2666
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r2, [%sp + 4]
	sw	%r1, [%sp + 7]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	p_energy.2672
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
	jal	veccpy.2586
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	p_group_id.2676
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
	j	vecaccumv.2618
calc_diffuse_using_5points.2928:
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
	jal	p_received_ray_20percent.2674
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
	jal	p_received_ray_20percent.2674
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
	jal	p_received_ray_20percent.2674
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
	jal	p_received_ray_20percent.2674
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
	jal	p_received_ray_20percent.2674
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
	jal	veccpy.2586
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
	jal	vecadd.2609
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
	jal	vecadd.2609
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
	jal	vecadd.2609
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
	jal	vecadd.2609
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r1, [%sp + 5]
	lw	%r2, [%sp + 4]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	p_energy.2672
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r2, [%sp + 2]
	add	%r1, %r1, %r2
	lw	%r2, [%r1 + 0]
	lw	%r1, [%sp + 0]
	lw	%r3, [%sp + 1]
	j	vecaccumv.2618
do_without_neighbors.2934:
	lw	%r3, [%r27 + 1]
	lli	%r4, 4
	bgt	%r2, %r4, bgt_else.9224
	sw	%r27, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r1, [%sp + 2]
	sw	%r2, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	p_surface_ids.2668
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	lw	%r3, [%sp + 3]
	add	%r1, %r1, %r3
	lw	%r1, [%r1 + 0]
	bgt	%r2, %r1, bgt_else.9225
	lw	%r1, [%sp + 2]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	p_calc_diffuse.2670
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lw	%r2, [%sp + 3]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.9226
	j	bneq_cont.9227
bneq_else.9226:
	lw	%r1, [%sp + 2]
	lw	%r27, [%sp + 1]
	sw	%ra, [%sp + 4]
	lw	%r26, [%r27 + 0]
	addi	%sp, %sp, 5
	jalr	%r26
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
bneq_cont.9227:
	lli	%r1, 1
	lw	%r2, [%sp + 3]
	add	%r2, %r2, %r1
	lw	%r1, [%sp + 2]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9225:
	jr	%ra
bgt_else.9224:
	jr	%ra
neighbors_exist.2937:
	lw	%r3, [%r27 + 1]
	lli	%r4, 1
	add	%r4, %r3, %r4
	lw	%r4, [%r4 + 0]
	lli	%r5, 1
	add	%r5, %r2, %r5
	bgt	%r4, %r5, bgt_else.9230
	lli	%r1, 0
	jr	%ra
bgt_else.9230:
	lli	%r4, 0
	bgt	%r2, %r4, bgt_else.9231
	lli	%r1, 0
	jr	%ra
bgt_else.9231:
	lli	%r2, 0
	add	%r2, %r3, %r2
	lw	%r2, [%r2 + 0]
	lli	%r3, 1
	add	%r3, %r1, %r3
	bgt	%r2, %r3, bgt_else.9232
	lli	%r1, 0
	jr	%ra
bgt_else.9232:
	lli	%r2, 0
	bgt	%r1, %r2, bgt_else.9233
	lli	%r1, 0
	jr	%ra
bgt_else.9233:
	lli	%r1, 1
	jr	%ra
get_surface_id.2941:
	sw	%r2, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	p_surface_ids.2668
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lw	%r2, [%sp + 0]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	jr	%ra
neighbors_are_available.2944:
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
	jal	get_surface_id.2941
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
	jal	get_surface_id.2941
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 5]
	bneq	%r1, %r2, bneq_else.9234
	lw	%r1, [%sp + 3]
	lw	%r3, [%sp + 1]
	add	%r3, %r3, %r1
	lw	%r3, [%r3 + 0]
	lw	%r4, [%sp + 2]
	add	%r2, %r0, %r4
	add	%r1, %r0, %r3
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	get_surface_id.2941
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 5]
	bneq	%r1, %r2, bneq_else.9235
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
	jal	get_surface_id.2941
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 5]
	bneq	%r1, %r2, bneq_else.9236
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
	jal	get_surface_id.2941
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 5]
	bneq	%r1, %r2, bneq_else.9237
	lli	%r1, 1
	jr	%ra
bneq_else.9237:
	lli	%r1, 0
	jr	%ra
bneq_else.9236:
	lli	%r1, 0
	jr	%ra
bneq_else.9235:
	lli	%r1, 0
	jr	%ra
bneq_else.9234:
	lli	%r1, 0
	jr	%ra
try_exploit_neighbors.2950:
	lw	%r7, [%r27 + 2]
	lw	%r8, [%r27 + 1]
	add	%r9, %r4, %r1
	lw	%r9, [%r9 + 0]
	lli	%r10, 4
	bgt	%r6, %r10, bgt_else.9238
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
	jal	get_surface_id.2941
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r2, [%sp + 10]
	bgt	%r2, %r1, bgt_else.9239
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 8]
	lw	%r3, [%sp + 7]
	lw	%r4, [%sp + 6]
	lw	%r5, [%sp + 5]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	neighbors_are_available.2944
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9240
	lw	%r1, [%sp + 9]
	lw	%r2, [%sp + 7]
	add	%r1, %r2, %r1
	lw	%r1, [%r1 + 0]
	lw	%r2, [%sp + 5]
	lw	%r27, [%sp + 4]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9240:
	lw	%r1, [%sp + 3]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	p_calc_diffuse.2670
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	lw	%r5, [%sp + 5]
	add	%r1, %r1, %r5
	lw	%r1, [%r1 + 0]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9241
	j	bneq_cont.9242
bneq_else.9241:
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
bneq_cont.9242:
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
bgt_else.9239:
	jr	%ra
bgt_else.9238:
	jr	%ra
write_ppm_header.2957:
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
	jal	print_int.2514
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
	jal	print_int.2514
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
	jal	print_int.2514
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 10
	j	yj_print_char
write_rgb_element.2959:
	sw	%ra, [%sp + 0]
	addi	%sp, %sp, 1
	jal	yj_int_of_float
	subi	%sp, %sp, 1
	lw	%ra, [%sp + 0]
	lli	%r2, 255
	bgt	%r1, %r2, bgt_else.9245
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.9247
	j	bgt_cont.9248
bgt_else.9247:
	lli	%r1, 0
bgt_cont.9248:
	j	bgt_cont.9246
bgt_else.9245:
	lli	%r1, 255
bgt_cont.9246:
	j	print_int.2514
write_rgb.2961:
	lw	%r1, [%r27 + 1]
	lli	%r2, 0
	add	%r2, %r1, %r2
	lf	%f0, [%r2 + 0]
	sw	%r1, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	write_rgb_element.2959
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
	jal	write_rgb_element.2959
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
	jal	write_rgb_element.2959
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lli	%r1, 10
	j	yj_print_char
pretrace_diffuse_rays.2963:
	lw	%r3, [%r27 + 3]
	lw	%r4, [%r27 + 2]
	lw	%r5, [%r27 + 1]
	lli	%r6, 4
	bgt	%r2, %r6, bgt_else.9249
	sw	%r27, [%sp + 0]
	sw	%r3, [%sp + 1]
	sw	%r4, [%sp + 2]
	sw	%r5, [%sp + 3]
	sw	%r2, [%sp + 4]
	sw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	get_surface_id.2941
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lli	%r2, 0
	bgt	%r2, %r1, bgt_else.9250
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	p_calc_diffuse.2670
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 4]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lli	%r3, 0
	bneq	%r1, %r3, bneq_else.9251
	j	bneq_cont.9252
bneq_else.9251:
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	p_group_id.2676
	subi	%sp, %sp, 7
	lw	%ra, [%sp + 6]
	lw	%r2, [%sp + 3]
	sw	%r1, [%sp + 6]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	vecbzero.2584
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r1, [%sp + 5]
	sw	%ra, [%sp + 7]
	addi	%sp, %sp, 8
	jal	p_nvectors.2681
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lw	%r2, [%sp + 5]
	sw	%r1, [%sp + 7]
	add	%r1, %r0, %r2
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	p_intersection_points.2666
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
	jal	p_received_ray_20percent.2674
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	lw	%r2, [%sp + 4]
	add	%r1, %r1, %r2
	lw	%r1, [%r1 + 0]
	lw	%r3, [%sp + 3]
	add	%r2, %r0, %r3
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	veccpy.2586
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
bneq_cont.9252:
	lli	%r1, 1
	lw	%r2, [%sp + 4]
	add	%r2, %r2, %r1
	lw	%r1, [%sp + 5]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9250:
	jr	%ra
bgt_else.9249:
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
	bgt	%r13, %r2, bgt_else.9255
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
	jal	vecunit_sgn.2594
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r1, [%sp + 8]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	vecbzero.2584
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r1, [%sp + 7]
	lw	%r2, [%sp + 6]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	veccpy.2586
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
	jal	p_rgb.2664
	subi	%sp, %sp, 16
	lw	%ra, [%sp + 15]
	lw	%r2, [%sp + 8]
	sw	%ra, [%sp + 15]
	addi	%sp, %sp, 16
	jal	veccpy.2586
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
	jal	p_set_group_id.2678
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
	jal	add_mod5.2573
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
bgt_else.9255:
	jr	%ra
pretrace_line.2973:
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
scan_pixel.2977:
	lw	%r6, [%r27 + 6]
	lw	%r7, [%r27 + 5]
	lw	%r8, [%r27 + 4]
	lw	%r9, [%r27 + 3]
	lw	%r10, [%r27 + 2]
	lw	%r11, [%r27 + 1]
	lli	%r12, 0
	add	%r10, %r10, %r12
	lw	%r10, [%r10 + 0]
	bgt	%r10, %r1, bgt_else.9257
	jr	%ra
bgt_else.9257:
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
	jal	p_rgb.2664
	subi	%sp, %sp, 12
	lw	%ra, [%sp + 11]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 10]
	sw	%ra, [%sp + 11]
	addi	%sp, %sp, 12
	jal	veccpy.2586
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
	bneq	%r1, %r2, bneq_else.9259
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
	j	bneq_cont.9260
bneq_else.9259:
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
bneq_cont.9260:
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
scan_line.2983:
	lw	%r6, [%r27 + 3]
	lw	%r7, [%r27 + 2]
	lw	%r8, [%r27 + 1]
	lli	%r9, 1
	add	%r9, %r8, %r9
	lw	%r9, [%r9 + 0]
	bgt	%r9, %r1, bgt_else.9261
	jr	%ra
bgt_else.9261:
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
	bgt	%r8, %r1, bgt_else.9263
	j	bgt_cont.9264
bgt_else.9263:
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
bgt_cont.9264:
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
	jal	add_mod5.2573
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
create_float5x3array.2989:
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
create_pixel.2991:
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
	jal	create_float5x3array.2989
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
	bgt	%r3, %r2, bgt_else.9265
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
	sub	%r2, %r2, %r1
	add	%r1, %r0, %r3
	j	init_line_elements.2993
bgt_else.9265:
	jr	%ra
create_pixelline.2996:
	lw	%r1, [%r27 + 1]
	lli	%r2, 0
	add	%r2, %r1, %r2
	lw	%r2, [%r2 + 0]
	sw	%r1, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	create_pixel.2991
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
	j	init_line_elements.2993
tan.2998:
	sf	%f0, [%sp + 0]
	sw	%ra, [%sp + 1]
	addi	%sp, %sp, 2
	jal	sin.2516
	subi	%sp, %sp, 2
	lw	%ra, [%sp + 1]
	lf	%f1, [%sp + 0]
	sf	%f0, [%sp + 1]
	movf	%f0, %f1
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	cos.2518
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lf	%f1, [%sp + 1]
	divf	%f0, %f1, %f0
	jr	%ra
adjust_position.3000:
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
	jal	atan.2520
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lf	%f1, [%sp + 0]
	mulf	%f0, %f0, %f1
	sw	%ra, [%sp + 2]
	addi	%sp, %sp, 3
	jal	tan.2998
	subi	%sp, %sp, 3
	lw	%ra, [%sp + 2]
	lf	%f1, [%sp + 1]
	mulf	%f0, %f0, %f1
	jr	%ra
calc_dirvec.3003:
	lw	%r4, [%r27 + 1]
	lli	%r5, 5
	bgt	%r5, %r1, bgt_else.9266
	sw	%r3, [%sp + 0]
	sw	%r2, [%sp + 1]
	sw	%r4, [%sp + 2]
	sf	%f0, [%sp + 3]
	sf	%f1, [%sp + 4]
	sw	%ra, [%sp + 5]
	addi	%sp, %sp, 6
	jal	fsqr.2530
	subi	%sp, %sp, 6
	lw	%ra, [%sp + 5]
	lf	%f1, [%sp + 4]
	sf	%f0, [%sp + 5]
	movf	%f0, %f1
	sw	%ra, [%sp + 6]
	addi	%sp, %sp, 7
	jal	fsqr.2530
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
	jal	d_vec.2683
	subi	%sp, %sp, 11
	lw	%ra, [%sp + 10]
	lf	%f0, [%sp + 9]
	lf	%f1, [%sp + 8]
	lf	%f2, [%sp + 7]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	vecset.2576
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
	jal	d_vec.2683
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
	jal	vecset.2576
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
	jal	d_vec.2683
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
	jal	vecset.2576
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
	jal	d_vec.2683
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
	jal	vecset.2576
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
	jal	d_vec.2683
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
	jal	vecset.2576
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
	jal	d_vec.2683
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
	j	vecset.2576
bgt_else.9266:
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
	jal	adjust_position.3000
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
	jal	adjust_position.3000
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
calc_dirvecs.3011:
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.9267
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
	jal	add_mod5.2573
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	add	%r2, %r0, %r1
	lf	%f0, [%sp + 2]
	lw	%r1, [%sp + 6]
	lw	%r3, [%sp + 3]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bgt_else.9267:
	jr	%ra
calc_dirvec_rows.3016:
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.9269
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
	jal	add_mod5.2573
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
bgt_else.9269:
	jr	%ra
create_dirvec.3020:
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
create_dirvec_elements.3022:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r2, bgt_else.9271
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
bgt_else.9271:
	jr	%ra
create_dirvecs.3025:
	lw	%r2, [%r27 + 3]
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.9273
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
bgt_else.9273:
	jr	%ra
init_dirvec_constants.3027:
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r2, bgt_else.9275
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
bgt_else.9275:
	jr	%ra
init_vecset_constants.3030:
	lw	%r2, [%r27 + 2]
	lw	%r3, [%r27 + 1]
	lli	%r4, 0
	bgt	%r4, %r1, bgt_else.9277
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
bgt_else.9277:
	jr	%ra
init_dirvecs.3032:
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
add_reflection.3034:
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
	jal	d_vec.2683
	subi	%sp, %sp, 10
	lw	%ra, [%sp + 9]
	lf	%f0, [%sp + 7]
	lf	%f1, [%sp + 6]
	lf	%f2, [%sp + 5]
	sw	%ra, [%sp + 9]
	addi	%sp, %sp, 10
	jal	vecset.2576
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
setup_rect_reflection.3041:
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
	jal	o_diffuse.2646
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
setup_surface_reflection.3044:
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
	jal	o_diffuse.2646
	subi	%sp, %sp, 8
	lw	%ra, [%sp + 7]
	lf	%f1, [%sp + 6]
	subf	%f0, %f1, %f0
	lw	%r1, [%sp + 5]
	sf	%f0, [%sp + 7]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	o_param_abc.2638
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	add	%r2, %r0, %r1
	lw	%r1, [%sp + 4]
	sw	%ra, [%sp + 8]
	addi	%sp, %sp, 9
	jal	veciprod.2597
	subi	%sp, %sp, 9
	lw	%ra, [%sp + 8]
	llif	%f1, 2.000000
	lhif	%f1, 2.000000
	lw	%r1, [%sp + 5]
	sf	%f0, [%sp + 8]
	sf	%f1, [%sp + 9]
	sw	%ra, [%sp + 10]
	addi	%sp, %sp, 11
	jal	o_param_a.2632
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
	jal	o_param_b.2634
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
	jal	o_param_c.2636
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
setup_reflections.3047:
	lw	%r2, [%r27 + 3]
	lw	%r3, [%r27 + 2]
	lw	%r4, [%r27 + 1]
	lli	%r5, 0
	bgt	%r5, %r1, bgt_else.9282
	add	%r4, %r4, %r1
	lw	%r4, [%r4 + 0]
	sw	%r2, [%sp + 0]
	sw	%r1, [%sp + 1]
	sw	%r3, [%sp + 2]
	sw	%r4, [%sp + 3]
	add	%r1, %r0, %r4
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_reflectiontype.2626
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.9283
	lw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_diffuse.2646
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	llif	%f1, 1.000000
	lhif	%f1, 1.000000
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	fless.2532
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 0
	bneq	%r1, %r2, bneq_else.9284
	jr	%ra
bneq_else.9284:
	lw	%r1, [%sp + 3]
	sw	%ra, [%sp + 4]
	addi	%sp, %sp, 5
	jal	o_form.2624
	subi	%sp, %sp, 5
	lw	%ra, [%sp + 4]
	lli	%r2, 1
	bneq	%r1, %r2, bneq_else.9286
	lw	%r1, [%sp + 1]
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 2]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9286:
	lli	%r2, 2
	bneq	%r1, %r2, bneq_else.9287
	lw	%r1, [%sp + 1]
	lw	%r2, [%sp + 3]
	lw	%r27, [%sp + 0]
	lw	%r26, [%r27 + 0]
	jr	%r26
bneq_else.9287:
	jr	%ra
bneq_else.9283:
	jr	%ra
bgt_else.9282:
	jr	%ra
rt.3049:
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
	jal	d_vec.2683
	subi	%sp, %sp, 18
	lw	%ra, [%sp + 17]
	lw	%r2, [%sp + 5]
	sw	%ra, [%sp + 17]
	addi	%sp, %sp, 18
	jal	veccpy.2586
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
yj_fabs:
	absf	%f0, %f0
	jr	%ra
yj_fneg:
	negf	%f0, %f0
	jr	%ra