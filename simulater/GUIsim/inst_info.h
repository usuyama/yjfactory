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
  LF,
  SF,
  JUMP,
  JAL,
  JALR,
  JR,
  BGT,
  BEQ,
  LLI,
  LHIF,
  LLIF,
  NOP,
  ADDF,
  SUBF,
  MULF,
  DIVF,
  SQRT,
  MVF2I,
  SENDW,
  SENDC,
  RECVF,
  BREAK,
  HALT
};

#endif

