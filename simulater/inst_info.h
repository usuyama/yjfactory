#ifndef INCLUDED_INST_INFO
#define INCLUDED_INST_INFO

class inst_info{
 public:
  int opcode;
  int op1;
  int op2;
  int op3;
};

enum { ADD,
       LOAD,
       STORE,
       JUMP,
       BEQ,
       LLI,
       HALT};

#endif
