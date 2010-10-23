#ifndef INCLUDED_INST_INFO
#define INCLUDED_INST_INFO

#include <QString>

class inst_info{
 public:
  int opcode;
  int op1;
  int op2;
  int op3;
  QString assm;
};

enum { ADD,
       ADDI,
       SUBI,
       LW,
       SW,
       JUMP,
       JAL,
       JR,
       BGT,
       BEQ,
       LLI,
       NOP,
       HALT};

#endif

