default: fsqrt.o fdiv.o fadd.o fmul.o basic_bin_calc.o
	gcc fpu_test.c -o fpu_test fsqrt.o fdiv.o fadd.o fmul.o basic_bin_calc.o -lm

.c.o:
	gcc -c $<

clean:
	rm *.o fpu_test

