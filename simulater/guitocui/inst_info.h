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
  MUL,
  SRA,
  SLL,
  XOR,
  XORI,
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
  BNEQ,
  LLI,
  LHI,
  LHIF,
  LLIF,
  NOP,
  ADDF,
  SUBF,
  MULF,
  DIVF,
  MOVF,
  FABS,
  FNEG,
  MVF2I,
  MVI2F,
  SENDW,
  SENDC,
  RECV,
  RECVF,
  BREAK,
  HALT,

  SQRT,
  SIN,
  COS,
  ATAN,
  FLOOR,
  ITOF,
  FTOI,
  RDINT,
  RDFLT,
  PRFLT
};

#endif

