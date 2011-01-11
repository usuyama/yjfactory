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
  SUB,
  ADDI,
  SUBI,
  MUL,
  SRA,
  SLL,
  XOR,
  XORI,
  ADDF,
  MULF,
  SUBF,
  DIVF,
  MOVF,
  LLIF,
  LHIF,
  JR,
  JUMP,
  BEQ,
  LW,
  LF,
  SW,
  SF,
  LLI,
  LHI,
  BGT,
  BNEQ,
  BGTF,
  FABS,
  FNEG,
  JAL,
  JALR,
  MVF2I,
  MVI2F,
  SENDC,
  NOP,
  BREAK,
  HALT,
  RECV,
  SQRT,
  FLOOR,
  ITOF,
  FTOI,
};

#endif

