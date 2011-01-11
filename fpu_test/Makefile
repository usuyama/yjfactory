fpu = fsqrt.o fdiv.o fadd.o fmul.o basic_bin_calc.o
default: $(fpu)
	g++ fpu_test.c -o fpu_test -lm $(fpu)

.c.o:
	g++ -c $<

clean:
	rm *.o fpu_test

