#include <iostream>
#include <fstream>
#include <stdlib.h>

#include "parser3.h"

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
/*
QString parser::make_asm_3r(inst_info& info){
  return "r" + QString::number(info.op1) + ", r" + QString::number(info.op2) + ", r" + QString::number(info.op3);
  }
QString parser::make_asm_3fp(inst_info& info){
  return "f" + QString::number(info.op1) + ", f" + QString::number(info.op2) + ", f" + QString::number(info.op3);
  }
QString parser::make_asm_2r1i(inst_info &info){
  return "r" + QString::number(info.op1) + ", r" + QString::number(info.op2) + ", " + QString::number(info.op3);
}
QString parser::make_asm_mem(inst_info& info, bool isint){
   if(isint)
    return "r" + QString::number(info.op1) + ", [r" + QString::number(info.op2) + " + " + QString::number(info.op3) + "]";
   else
    return "f" + QString::number(info.op1) + ", [r" + QString::number(info.op2) + " + " + QString::number(info.op3) + "]";
  }
QString parser::make_asm_1r1i(inst_info& info){
  return "r" + QString::number(info.op1) + ", " + "hogegege"; //QString::number(info.op2) + "\n";
  }
 QString parser::make_asm_1i(inst_info& info){
  return QString::number(info.op1);
  }

*/
int parser::parse(inst_info* inst_mem, const char* program){
  //std::cout<< program << std::endl;
  ifstream fin(program);
  int index=0;
  if(!fin){
    cout << "cannot open " << program << endl;
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
      //      inst_mem[index].assm= "add\t" + make_asm_3r(inst_mem[index]);
    }
    else if(inst=="101001"){ // addi
      cout << "ADDI\n";
      inst_mem[index].opcode= ADDI;
      fill_2reg_1imm(inst_mem,index,str);
      //      inst_mem[index].assm = "addi\t" + make_asm_2r1i(inst_mem[index]);
   }
   else if(inst=="100010"){ //sub
     cout << "SUB\n";
     inst_mem[index].opcode= SUB;
     fill_3reg(inst_mem,index,str);
     //     inst_mem[index].assm= "sub\t" + make_asm_3r(inst_mem[index]);
    }
    else if(inst=="101010"){ // subi
      cout << "SUBI\n";
      inst_mem[index].opcode= SUBI;
      fill_2reg_1imm(inst_mem,index,str);
      //      inst_mem[index].assm = "subi\t" + make_asm_2r1i(inst_mem[index]);
    }
    else if(inst=="100011"){ //mul
      cout << "MUL\n";
      inst_mem[index].opcode= MUL;
      fill_3reg(inst_mem,index,str);
    }
    else if(inst=="010000"){
      cout << "SRA\n";
      inst_mem[index].opcode = SRA;
      fill_2reg_1imm(inst_mem, index,str);
    }
    else if(inst=="010010"){
      cout << "SLL\n";
      inst_mem[index].opcode = SLL;
      fill_2reg_1imm(inst_mem, index,str);
    }
    else if(inst=="100111"){ //mul
      cout << "XOR\n";
      inst_mem[index].opcode= XOR;
      fill_3reg(inst_mem,index,str);
    }
    else if(inst=="101111"){ // xori
      cout << "XORI\n";
      inst_mem[index].opcode= XORI;
      fill_2reg_1imm(inst_mem,index,str);
    }
    else if(inst=="110011"){ // lli
      cout << "LLI\n";
      inst_mem[index].opcode= LLI;
      inst_mem[index].op1=ext_op2(str);
      inst_mem[index].op2=u_strToInt(str.substr(16,32),16);
    }
    else if(inst=="110010"){ //lhi
      cout << "LHI\n";
      inst_mem[index].opcode=LHI;
      inst_mem[index].op1=ext_op2(str);      
      inst_mem[index].op2=u_strToInt(str.substr(16,32),16);
    }
    else if(inst=="111000"){ // addf
      cout << "ADDF\n";
      inst_mem[index].opcode= ADDF;
      fill_3reg(inst_mem,index,str);
      //      inst_mem[index].assm= "addf\t" + make_asm_3fp(inst_mem[index]);
    }
    else if(inst=="111001"){ // subf
      cout << "SUBF\n";
      inst_mem[index].opcode= SUBF;
      fill_3reg(inst_mem,index,str);
      //      inst_mem[index].assm= "subf\t" + make_asm_3fp(inst_mem[index]);
    }
    else if(inst=="111010"){ // mulf
      cout << "MULF\n";
      inst_mem[index].opcode= MULF;
      fill_3reg(inst_mem,index,str);
      //      inst_mem[index].assm= "mulf\t" + make_asm_3fp(inst_mem[index]);
    }
    else if(inst=="111011"){ // divf
      cout << "DIVF\n";
      inst_mem[index].opcode= DIVF;
      fill_3reg(inst_mem,index,str);
      //      inst_mem[index].assm= "divf\t" + make_asm_3fp(inst_mem[index]);
    }
    else if(inst=="000011"){ // movf
      cout << "MOVF\n";
      inst_mem[index].opcode= MOVF;
      fill_3reg(inst_mem,index,str);
      //      inst_mem[index].assm= "divf\t" + make_asm_3fp(inst_mem[index]);
    }
    else if(inst=="000101"){ // llif
      cout << "LLIF\n";
      inst_mem[index].opcode= LLIF;
      inst_mem[index].op1 = ext_op2(str);
      inst_mem[index].op2 = u_strToInt(str.substr(16,32) ,16);
      //      std::cout << inst_mem[index].op1 << endl;
      //      inst_mem[index].assm = "llif\t" + make_asm_1r1i(inst_mem[index]);
    }
    else if(inst=="000100"){ // lhif
      cout << "LHIF\n";
      inst_mem[index].opcode= LHIF;
      inst_mem[index].op1 = ext_op2(str);
      inst_mem[index].op2 = u_strToInt(str.substr(16,32) ,16);
      //      std::cout << inst_mem[index].op1 << endl;
      //      inst_mem[index].assm = "lhif\t" + make_asm_1r1i(inst_mem[index]);
    }
    else if(inst=="001100"){ // bgt
      cout << "BGT\n";
      inst_mem[index].opcode=BGT;
      fill_2reg_1imm(inst_mem,index,str);
      //      inst_mem[index].assm = "bgt\t" + make_asm_2r1i(inst_mem[index]);
    }
    else if(inst=="001001"){
      cout << "BEQ\n";
      inst_mem[index].opcode=BGT;
      fill_2reg_1imm(inst_mem,index,str);
    }
    else if(inst=="001010"){
      cout << "BNEQ\n";
      inst_mem[index].opcode=BNEQ;
      fill_2reg_1imm(inst_mem,index,str);
    }
    else if(inst=="001000"){ // bgtf
      cout << "BGTF\n";
      inst_mem[index].opcode=BGTF;
      fill_2reg_1imm(inst_mem,index,str);
      //      inst_mem[index].assm = "bgtf\t" + make_asm_2r1i(inst_mem[index]);
    }
    else if(inst=="010101"){ // jump
      cout << "JUMP\n";
      inst_mem[index].opcode=JUMP;
      fill_1imm(inst_mem,index,str);
      //      inst_mem[index].assm = "jump\t" + make_asm_1i(inst_mem[index]);
      //      cout << inst_mem[index].op1;
    }
    else if(inst=="010110"){ // jal
      cout << "JAL\n";
      inst_mem[index].opcode=JAL;
      fill_1imm(inst_mem,index,str);
      //      inst_mem[index].assm = "jal\t" + make_asm_1i(inst_mem[index]);
      //      cout << inst_mem[index].op1;
    }
    else if(inst=="010011"){ // jr
      cout << "JR\n";
      inst_mem[index].opcode=JR;
      fill_3reg(inst_mem,index,str);
      //      inst_mem[index].assm = "jr\tr" + QString::number(inst_mem[index].op1);
      //      cout << inst_mem[index].op1;
    }
    else if(inst=="111110"){ // fabs
      cout << "fabs\n";
      inst_mem[index].opcode=FABS;
      fill_3reg(inst_mem,index,str);
      //      inst_mem[index].assm = "fabs\tf" + QString::number(inst_mem[index].op1);
      //      cout << inst_mem[index].op1;
    }
    else if(inst=="000110"){ // xneg
      cout << "FNEG\n";
      inst_mem[index].opcode=FNEG;
      fill_3reg(inst_mem,index,str);
      //      inst_mem[index].assm = "fneg\tf" + QString::number(inst_mem[index].op1);
      //      cout << inst_mem[index].op1;
    }
    else if(inst=="010100"){
        cout << "JALR\n";
        inst_mem[index].opcode=JALR;
        fill_3reg(inst_mem,index,str);
	//        inst_mem[index].assm = "jalr\tr" + QString::number(inst_mem[index].op1);
    }
    else if(inst=="001110"){ // load
      cout << "LW\n";
      inst_mem[index].opcode=LW;
      fill_2reg_1imm(inst_mem,index,str);
      //      inst_mem[index].assm = "lw\t" + make_asm_mem(inst_mem[index], true);
    }
    else if(inst=="100100"){ // load float
      cout << "LF\n";
      inst_mem[index].opcode=LF;
      fill_2reg_1imm(inst_mem,index,str);
      //      inst_mem[index].assm = "lf\t" + make_asm_mem(inst_mem[index], false);
    }
    else if(inst=="001111"){ // store
      cout << "SW\n";
      inst_mem[index].opcode=SW;
      fill_2reg_1imm(inst_mem,index,str);
      //      inst_mem[index].assm = "sw\t" + make_asm_mem(inst_mem[index], true);
    }
    else if(inst=="101100"){ // store float
      cout << "SF\n";
      inst_mem[index].opcode=SF;
      fill_2reg_1imm(inst_mem,index,str);
      //      inst_mem[index].assm = "sf\t" + make_asm_mem(inst_mem[index], false);
}
    else if(inst=="010111"){
      cout << "MOVF2I\n";
      inst_mem[index].opcode=MVF2I;
      inst_mem[index].op1=ext_op1(str);
      inst_mem[index].op2=ext_op2(str);
      //      inst_mem[index].assm = "movf2i\tr" + QString::number(inst_mem[index].op1) + "f" + QString::number(inst_mem[index].op2);
    }
    else if(inst=="011111"){
      cout << "MOVI2F\n";
      inst_mem[index].opcode=MVI2F;
      inst_mem[index].op1=ext_op1(str);
      inst_mem[index].op2=ext_op2(str);
      //      inst_mem[index].assm = "movf2i\tr" + QString::number(inst_mem[index].op1) + "f" + QString::number(inst_mem[index].op2);
    }
    else if(inst=="110100"){
      cout << "SENDC\n";
      inst_mem[index].opcode=SENDC;
      inst_mem[index].op1=ext_op1(str);
    }
    else if(inst=="110001"){
      cout << "RECV\n";
      inst_mem[index].opcode=RECV;
      inst_mem[index].op1=ext_op2(str);
    }
    else if(inst=="000000"){
      cout << "NOP\n";
      inst_mem[index].opcode=NOP;
    }
    else if(inst=="XBREAK"){
        inst_mem[index].opcode=BREAK;
    }
    else if(inst=="111111"){ // halt
      cout << "HALT\n";
      inst_mem[index].opcode=HALT;
    }

    /* 擬似命令 */

    else if(inst=="111100"){//sqrt
      inst_mem[index].opcode=SQRT;
      fill_3reg(inst_mem,index,str);
    }
    else if(inst=="111101"){
      inst_mem[index].opcode=FLOOR;
      fill_3reg(inst_mem,index,str);
    }
    else if(inst=="011000"){
      inst_mem[index].opcode=ITOF;
      fill_3reg(inst_mem,index,str);
    }
    else if(inst=="011001"){
      inst_mem[index].opcode=FTOI;
      fill_3reg(inst_mem,index,str);
    }
    /* 疑似命令 終了*/
    else{
      cout << "unknown opcode" << inst << endl;
      return -2;
    }
    index++;
  }
  fin.close();
  return index;
}

