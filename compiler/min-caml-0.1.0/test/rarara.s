	j	entry
entry:
	li	%i2, 4
	st	ra, [sp + 4]
	call	min_caml_print_int
	add	sp, 8, sp	# delay slot
	sub	sp, 8, sp
	ld	[sp + 4], ra
	halt
