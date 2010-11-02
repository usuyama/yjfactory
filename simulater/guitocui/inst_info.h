#ifndef INCLUDED_INST_INFO
#define INCLUDED_INST_INFO


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
  //  QString assm;
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
  BGTF,
  BEQ,
  LLI,
  LHIF,
  LLIF,
  NOP,
  ADDF,
  SUBF,
  MULF,
  DIVF,
  FABS,
  FNEG,
  SQRT,
  MVF2I,
  SENDW,
  SENDC,
  RECVF,
  BREAK,
  HALT
};

#endif

