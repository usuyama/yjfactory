objs = parser3.o guitocui2.o guitocuimain2.o
fpu = fadd.o fsub.o fdiv.o fmul.o fsqrt.o converter.o basic_bin_calc.o
CPPC = g++
CFLAGS = -Wall -O3 -std=c++0x
.SUFFIXES: .o .cpp
.cpp.o:
	$(CPPC) $(CFLAGS) -c $<

simulator: $(objs) $(fpu)
	$(CPPC) $(CFLAGS) -o $@ $(objs) $(fpu) 

.PHONY: clean
clean:
	rm $(objs) $(fpu)