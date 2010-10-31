#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <QString>

#include "parser.h"

using namespace std;

int parser::strToInt(string s, int n){ /* 符号有りで string -> int */
  int i;
  int ret=0;
  for(i=1;i<n;i++){
    if(s[i]=='1')
      ret=ret*2+1;
    else
      ret*=2;
  }
  if(s[0]=='1')
    ret-= 1<<(n-1);
  return ret;
}

int parser::u_strToInt(string s, int n){ // 符号無しで string -> int
  int i,ret=0;
  //  cout << endl << s << endl;

  for(i=0;i<n;i++){
    if(s[i]=='1'){
      //      cout << 'x';
      ret=ret*2+1;
    }
    else{
      ret*=2;
      //      cout << 'o';
    }
  }
  //  cout << ret << "ret" << endl;
  return ret;
}

int parser::ext_op1(string inst){
    return u_strToInt(inst.substr(6,11), 5);
  }
int parser::ext_op2(string inst){
    return u_strToInt(inst.substr(11,16), 5);
  }
int parser::ext_op3(string inst){
    return u_strToInt(inst.substr(16,21), 5);
  }
int parser::ext_u16(string inst){  // 符号有り
  //  cout << "ext_u16 called with "+inst<<endl;
  //  cout << "under16 :" << inst.substr(16,32) << endl;
    return strToInt(inst.substr(16,32), 16);
  }
int parser::ext_u26(string inst){  // 26は符号無し
  return u_strToInt(inst.substr(6,32),26);
  }

void parser::fill_3reg(inst_info* inst_mem, int index, string str){
  inst_mem[index].op1=ext_op1(str);
  inst_mem[index].op2=ext_op2(str);
  inst_mem[index].op3=ext_op3(str);

}
void parser::fill_2reg_1imm(inst_info* inst_mem, int index, string str){
  inst_mem[index].op1=ext_op1(str);
  inst_mem[index].op2=ext_op2(str);
  inst_mem[index].op3=ext_u16(str);
}
void parser::fill_1reg_1imm(inst_info* inst_mem, int index, string str){
  inst_mem[index].op1=ext_op1(str);
  inst_mem[index].op2=ext_u16(str);
  inst_mem[index].op3=-1;
  // only used for "lli lhi llif lhif"
}
void parser::fill_1imm(inst_info* inst_mem, int index, string str){
  //  cout << endl << ext_u26(str) << " " << str << endl;
  inst_mem[index].op1=ext_u26(str);
  inst_mem[index].op2=-1;
  inst_mem[index].op3=-1;
}

QString parser::make_asm_3r(inst_info& info){
  return "r" + QString::number(info.op1) + ", r" + QString::number(info.op2) + ", r" + QString::number(info.op3) + "\n";
  }
QString parser::make_asm_3fp(inst_info& info){
  return "f" + QString::number(info.op1) + ", f" + QString::number(info.op2) + ", f" + QString::number(info.op3) + "\n";
  }
QString parser::make_asm_2r1i(inst_info &info){
  return "r" + QString::number(info.op1) + ", r" + QString::number(info.op2) + ", " + QString::number(info.op3) + "\n";
}
QString parser::make_asm_mem(inst_info& info, bool isint){
   if(isint)
    return "r" + QString::number(info.op1) + ", [r" + QString::number(info.op2) + " + " + QString::number(info.op3) + "]\n";
   else
    return "f" + QString::number(info.op1) + ", [r" + QString::number(info.op2) + " + " + QString::number(info.op3) + "]\n";
  }
QString parser::make_asm_1r1i(inst_info& info){
  return "r" + QString::number(info.op1) + ", " + "hogegege\n"; //QString::number(info.op2) + "\n";
  }
 QString parser::make_asm_1i(inst_info& info){
  return QString::number(info.op1) + "\n";
  }


int parser::parse(inst_info* inst_mem, const char* program){
  //std::cout<< program << std::endl;
  ifstream fin(program);
  int index=0;
  if(!fin){
    //cout << "cannot open " << program << endl;
    return -1;
  }

  string str;
  string inst;
  while(getline(fin,str)){
    inst = str.substr(0,6);
    if(inst=="100001"){ // add
      cout << "ADD\n";
      inst_mem[index].opcode= ADD;
      fill_3reg(inst_mem,index,str);
      inst_mem[index].assm= "add\t" + make_asm_3r(inst_mem[index]);
    }
    else if(inst=="101001"){ // addi
      cout << "ADDI\n";
      inst_mem[index].opcode= ADDI;
      fill_2reg_1imm(inst_mem,index,str);
      inst_mem[index].assm = "addi\t" + make_asm_2r1i(inst_mem[index]);
   }
   else if(inst=="100010"){ //sub
     cout << "SUB\n";
     inst_mem[index].opcode= SUB;
     fill_3reg(inst_mem,index,str);
     inst_mem[index].assm= "sub\t" + make_asm_3r(inst_mem[index]);
    }
    else if(inst=="101010"){ // subi
      cout << "SUBI\n";
      inst_mem[index].opcode= SUBI;
      fill_2reg_1imm(inst_mem,index,str);
      inst_mem[index].assm = "subi\t" + make_asm_2r1i(inst_mem[index]);
    }
    else if(inst=="110010"){ // lli
      cout << "LLI\n";
      inst_mem[index].opcode= LLI;
      fill_1reg_1imm(inst_mem,index,str);
      inst_mem[index].assm = "lli\t" + make_asm_1r1i(inst_mem[index]);
    }
    else if(inst=="XXADDF"){ // addf
      cout << "ADDF\n";
      inst_mem[index].opcode= ADDF;
      fill_3reg(inst_mem,index,str);
      inst_mem[index].assm= "addf\t" + make_asm_3fp(inst_mem[index]);
    }
    else if(inst=="XXSUBF"){ // subf
      cout << "SUBF\n";
      inst_mem[index].opcode= SUBF;
      fill_3reg(inst_mem,index,str);
      inst_mem[index].assm= "subf\t" + make_asm_3fp(inst_mem[index]);
    }
    else if(inst=="XXMULF"){ // mulf
      cout << "MULF\n";
      inst_mem[index].opcode= MULF;
      fill_3reg(inst_mem,index,str);
      inst_mem[index].assm= "mulf\t" + make_asm_3fp(inst_mem[index]);
    }
    else if(inst=="XXDIVF"){ // divf
      cout << "DIVF\n";
      inst_mem[index].opcode= DIVF;
      fill_3reg(inst_mem,index,str);
      inst_mem[index].assm= "divf\t" + make_asm_3fp(inst_mem[index]);
    }
    else if(inst=="XXLLIF"){ // llif
      cout << "LLIF\n";
      inst_mem[index].opcode= LLIF;
      inst_mem[index].op1 = ext_op1(str);
      inst_mem[index].op2 = u_strToInt(str.substr(16,32) ,16);
      //      std::cout << inst_mem[index].op1 << endl;
      inst_mem[index].assm = "llif\t" + make_asm_1r1i(inst_mem[index]);
    }
    else if(inst=="XXLHIF"){ // llih
      cout << "LHIF\n";
      inst_mem[index].opcode= LHIF;
      inst_mem[index].op1 = ext_op1(str);
      inst_mem[index].op2 = u_strToInt(str.substr(16,32) ,16);
      //      std::cout << inst_mem[index].op1 << endl;
      inst_mem[index].assm = "lhif\t" + make_asm_1r1i(inst_mem[index]);
    }
    else if(inst=="001100"){ // bgt
      cout << "BGT\n";
      inst_mem[index].opcode=BGT;
      fill_2reg_1imm(inst_mem,index,str);
      inst_mem[index].assm = "bgt\t" + make_asm_2r1i(inst_mem[index]);
    }
    else if(inst=="010101"){ // jump
      cout << "JUMP\n";
      inst_mem[index].opcode=JUMP;
      fill_1imm(inst_mem,index,str);
      inst_mem[index].assm = "jump\t" + make_asm_1i(inst_mem[index]);
      //      cout << inst_mem[index].op1;
    }
    else if(inst=="010110"){ // jal
      cout << "JAL\n";
      inst_mem[index].opcode=JAL;
      fill_1imm(inst_mem,index,str);
      inst_mem[index].assm = "jal\t" + make_asm_1i(inst_mem[index]);
      //      cout << inst_mem[index].op1;
    }
    else if(inst=="010011"){ // jr
      cout << "jr\n";
      inst_mem[index].opcode=JR;
      fill_3reg(inst_mem,index,str);
      inst_mem[index].assm = "jr\tr" + QString::number(inst_mem[index].op1);
      //      cout << inst_mem[index].op1;
    }
    else if(inst=="010100"){
        cout << "jalr\n";
        inst_mem[index].opcode=JALR;
        fill_3reg(inst_mem,index,str);
        inst_mem[index].assm = "jalr\tr" + QString::number(inst_mem[index].op1);
    }
    else if(inst=="001110"){ // load
      cout << "LW\n";
      inst_mem[index].opcode=LW;
      fill_2reg_1imm(inst_mem,index,str);
      inst_mem[index].assm = "lw\t" + make_asm_mem(inst_mem[index], true);
    }
    else if(inst=="XXXXLF"){ // load float
      cout << "LF\n";
      inst_mem[index].opcode=LF;
      fill_2reg_1imm(inst_mem,index,str);
      inst_mem[index].assm = "lf\t" + make_asm_mem(inst_mem[index], false);
    }
    else if(inst=="001111"){ // store
      cout << "SW\n";
      inst_mem[index].opcode=SW;
      fill_2reg_1imm(inst_mem,index,str);
      inst_mem[index].assm = "sw\t" + make_asm_mem(inst_mem[index], true);
    }
    else if(inst=="XXXXSF"){ // store float
      cout << "SF\n";
      inst_mem[index].opcode=SF;
      fill_2reg_1imm(inst_mem,index,str);
      inst_mem[index].assm = "sf\t" + make_asm_mem(inst_mem[index], false);
}
    else if(inst=="MOVF2I"){
      cout << "MOVF2I\n";
      inst_mem[index].opcode=MVF2I;
      inst_mem[index].op1=ext_op1(str);
      inst_mem[index].op2=ext_op2(str);
      inst_mem[index].assm = "movf2i\tr" + QString::number(inst_mem[index].op1) + "f" + QString::number(inst_mem[index].op2);
    }
    else if(inst=="XSENDW"){
      cout << "SENDW\n";
      inst_mem[index].opcode=SENDW;
      inst_mem[index].op1=ext_op1(str);
      inst_mem[index].assm = "sendw\tr" + QString::number(inst_mem[index].op1);
    }
    else if(inst=="XSENDC"){
      cout << "SENDC\n";
      inst_mem[index].opcode=SENDC;
      inst_mem[index].op1=ext_op1(str);
      inst_mem[index].assm = "sendc\tr" + QString::number(inst_mem[index].op1);
    }
    else if(inst=="000000"){
      cout << "NOP\n";
      inst_mem[index].opcode=NOP;
    }
    //    else if(inst=="")
    else if(inst=="110000"){ // halt
      cout << "HALT\n";
      inst_mem[index].opcode=HALT;
    }
    else{
      cout << "unknown opcode" << inst << endl;
      return -2;
    }
    index++;
  }
  fin.close();
  return index;
}

