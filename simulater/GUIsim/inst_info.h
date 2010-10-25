#ifndef INCLUDED_INST_INFO
#define INCLUDED_INST_INFO

#include <QString>

union float_int{
  unsigned int myint;
  float myfloat;
};

class inst_info{
 public:
  int opcode;
  int op1;
  int op2;
  int op3;
  QString assm;
};

enum { 
  ADD,
  ADDI,
  SUB,
  SUBI,
  LW,
  SW,
  JUMP,
  JAL,
  JR,
  BGT,
  BEQ,
  LLI,
  LHIF,
  LLIF,
  NOP,
  LF,
  SF,
  ADDF,
  SUBF,
  MULF,
  DIVF,
  SQRT,
  MVF2I,
  SENDW,
  SENDC,
  RECVF,
  HALT
};

#endif

