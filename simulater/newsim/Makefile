objs = parser3.o guitocui2.o guitocuimain2.o
CPPC = g++
CFLAGS = -Wall -O3 -std=c++0x
.SUFFIXES: .o .cpp
.cpp.o:
	$(CPPC) $(CFLAGS) -c $<

simulator: $(objs)
	$(CPPC) $(CFLAGS) -o $@ $(objs)

.PHONY: clean
clean:
	rm $(objs)