#ifndef INCLUDED_PARSER
#define INCLUDED_PARSER

#include "inst_info.h"

class parser{
 private:
  int strToInt(string s, int n);
  int u_strToInt(string s, int n);
  int ext_op1(string inst);
  int ext_op2(string inst);
  int ext_op3(string inst);
  int ext_u16(string inst);
  int ext_u26(string inst);
  void fill_3reg(inst_info* inst_mem, int index, string str);
  void fill_2reg_1imm(inst_info* inst_mem, int index, string str);
  void fill_1reg_1imm(inst_info* inst_mem, int index, string str);
  void fill_1imm(inst_info* inst_mem, int index, string str);
 public:
  void parse(inst_info* inst, const char* hoge);
};

#endif
