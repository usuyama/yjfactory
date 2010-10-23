#ifndef SIMULATOR_H
#define SIMULATOR_H

#include "inst_info.h"
#include <iostream>

#define INSTSIZE 10000
#define DATASIZE 10000

class simulator{
private:
    int pc;
    //int steps;
    bool runall;

    void print_mem(int address);
    void print_regs();
    void print_regs(int index);

public:
    int regs[32];
    inst_info inst_mem[INSTSIZE];
    int data_mem[DATASIZE];
    bool ready;

    simulator();
    void setPC(int address);
    int get_regcont(int index);
    bool get_runall();
    void set_runall(bool flag);
    //void set_steps();
    //void get_steps();
    void doInst(int steps);
};

#endif // SIMULATOR_H
