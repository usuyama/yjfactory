#ifndef INCLUDED_PARSER
#define INCLUDED_PARSER

#include <iostream>
#include "inst_info2.h"

class parser{
 private:
  int strToInt(std::string s, int n);
  int u_strToInt(std::string s, int n);
  int ext_op1(std::string inst);
  int ext_op2(std::string inst);
  int ext_op3(std::string inst);
  int ext_u16(std::string inst);
  int ext_u26(std::string inst);
  void fill_3reg(inst_info* inst_mem, int index, std::string str);
  void fill_2reg_1imm(inst_info* inst_mem, int index, std::string str);
  void fill_1reg_1imm(inst_info* inst_mem, int index, std::string str);
  void fill_1imm(inst_info* inst_mem, int index, std::string str);

 public:
  int parse(inst_info* inst, const char* hoge);
};

#endif
