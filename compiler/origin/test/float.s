.section	".rodata"
.align	8
l.39:	! 48.300300
	.long	0x3eab623f
	.long	0x40482670
l.37:	! 4.500000
	.long	0x0
	.long	0x40120000
l.35:	! -12.300000
	.long	0x9999999a
	.long	0xc0289999
.section	".text"
.global	min_caml_start
min_caml_start:
	save	%sp, -112, %sp
	set	l.35, %i2
	ldd	[%i2 + 0], %f0
	st	%o7, [%i0 + 4]
	call	min_caml_abs_float
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	st	%o7, [%i0 + 4]
	call	min_caml_sqrt
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	st	%o7, [%i0 + 4]
	call	min_caml_cos
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	st	%o7, [%i0 + 4]
	call	min_caml_sin
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	set	l.37, %i2
	ldd	[%i2 + 0], %f2
	faddd	%f0, %f2, %f0
	set	l.39, %i2
	ldd	[%i2 + 0], %f2
	fsubd	%f0, %f2, %f0
	set	1000000, %i2
	std	%f0, [%i0 + 0]
	st	%o7, [%i0 + 12]
	call	min_caml_float_of_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	ldd	[%i0 + 0], %f2
	fmuld	%f2, %f0, %f0
	st	%o7, [%i0 + 12]
	call	min_caml_int_of_float
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	st	%o7, [%i0 + 12]
	call	min_caml_print_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	ret
	restore
