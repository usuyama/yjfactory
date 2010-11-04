#ifndef HOGEHOGE_H
#define HOGEHOGE_H

#include "inst_info.h"

#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <fstream>

#include "parser.h"
#include "inst_info.h"

#define MEMSIZE 100000
#define INSTSIZE 10000
#define MSCOPE 10


class hogehoge
{

 public:
  ~hogehoge();

private:
  int pc;
    //int steps;
  bool runall;
  std::ifstream ifs;

public:
  int regs[32];
  float fpr[32];
  inst_info inst_mem[INSTSIZE];
  float_int data_mem[MEMSIZE];
  bool ready;
  FILE* outf;

  hogehoge(const char*);
  void print_mem(int address);
  void print_regs();
  void print_regs(int index);
  void print_fpr();
  void setPC(int address);
  void getPC();
  int get_regcont(int index);
  bool get_runall();
  void set_runall(bool flag);
  //void set_steps();
  //void get_steps();
  void doInst(int steps);
};

#endif // HOGEHOGE_H
