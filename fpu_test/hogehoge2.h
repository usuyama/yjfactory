#ifndef HOGEHOGE_H
#define HOGEHOGE_H

#include "inst_info2.h"
#include "parser3.h"

#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <fstream>

#define MEMSIZE 300000
#define INSTSIZE 20000
#define MSCOPE 10

class hogehoge
{

 public:
  ~hogehoge();

private:
  static int pc;
  bool runall;
  static std::ifstream ifs;

public:
  static inst_info iinfo;
  static float_int tmp_union;
  static int tmp;
  static FILE* outf;
  static FILE* dumpf;
  static int count2;
  static int count3;

  static int regs[32];
  static float fpr[32];
  static inst_info inst_mem[INSTSIZE];
  static float_int data_mem[MEMSIZE];

  static void ADDfunc();
  static void SUBfunc();
  static void ADDIfunc();
  static void SUBIfunc();
  static void MULfunc();
  static void SRAfunc();
  static void SLLfunc();
  static void XORfunc();
  static void XORIfunc();
  static void ADDFfunc();
  static void MULFfunc();
  static void SUBFfunc();
  static void DIVFfunc();
  static void MOVFfunc();
  static void LLIFfunc();
  static void LHIFfunc();
  static void JRfunc();
  static void JUMPfunc();
  static void BEQfunc();
  static void LWfunc();
  static void LFfunc();
  static void SWfunc();
  static void SFfunc();
  static void LLIfunc();
  static void LHIfunc();
  static void BGTfunc();
  static void BNEQfunc();
  static void BGTFfunc();
  static void FABSfunc();
  static void FNEGfunc();
  static void JALfunc();
  static void JALRfunc();
  static void MVF2Ifunc();
  static void MVI2Ffunc();
  static void SENDCfunc();
  static void NOPfunc();
  static void BREAKfunc();
  static void HALTfunc();
  static void RECVfunc();
  static void SQRTfunc();
  static void FLOORfunc();
  static void ITOFfunc();
  static void FTOIfunc();

  bool ready;
  int maxsp;

  hogehoge(const char*);
  void print_mem(int address);
  void print_regs();
  void print_regs(int index);
  void print_fpr();
  void print_maxsp();
  void setPC(int address);
  void getPC();
  int get_regcont(int index);
  bool get_runall();
  void set_runall(bool flag);
  void doInst(int steps);

};

#endif // HOGEHOGE_H
