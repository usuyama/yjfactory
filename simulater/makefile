objs = parser.o simulator.o
CPPC = g++
CFLAGS = -Wall
.SUFFIXES: .o .cpp
.cpp.o:
	$(CPPC) $(CFLAGS) -c $<

simulator: $(objs)
	$(CPPC) $(CFLAGS) -o $@ $(objs)

.PHONY: clean
clean:
	rm $(objs)