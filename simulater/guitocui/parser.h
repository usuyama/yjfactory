#ifndef INCLUDED_PARSER
#define INCLUDED_PARSER

#include <iostream>

#include "inst_info.h"

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
  //  QString make_asm_3r(inst_info& info);
  //  QString make_asm_2r1i(inst_info& info);
  //  QString make_asm_mem(inst_info& info, bool isint);
  //  QString make_asm_1r1i(inst_info& info);
  //  QString make_asm_1i(inst_info& info);
  //  QString make_asm_3fp(inst_info& info);

 public:
  int parse(inst_info* inst, const char* hoge);
};

#endif
