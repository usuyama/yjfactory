#include <iostream>
#include <fstream>
#include <stdlib.h>

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

int parser::u_strToInt(string s, int n){
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
int parser::ext_u16(string inst){
  //  cout << "ext_u16 called with "+inst<<endl;
  //  cout << "under16 :" << inst.substr(16,32) << endl;
    return strToInt(inst.substr(16,32), 16);
  }
int parser::ext_u26(string inst){
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
  // only used for "lli"
}
void parser::fill_1imm(inst_info* inst_mem, int index, string str){
  //  cout << endl << ext_u26(str) << " " << str << endl;
  inst_mem[index].op1=ext_u26(str);
  inst_mem[index].op2=-1;
  inst_mem[index].op3=-1;
}

void parser::parse(inst_info* inst_mem, const char* program){
  ifstream fin(program);
  int index=0;
  if(!fin){
    cout << "cannot open" << program << endl;
    exit(1);
  }

  string str;
  string inst;
  while(getline(fin,str)){
    inst = str.substr(0,6);
    if(inst=="111000"){ // add
      cout << "ADD";
      inst_mem[index].opcode= ADD;
      fill_3reg(inst_mem,index,str);
    }
    else if(inst=="110010"){ // lli
      cout << "LLI";
      inst_mem[index].opcode= LLI;	
      fill_1reg_1imm(inst_mem,index,str);
    }
    else if(inst=="010101"){ // jump
      cout << "JUMP";
      inst_mem[index].opcode=JUMP;
      fill_1imm(inst_mem,index,str);
      //      cout << inst_mem[index].op1;
    }
    else if(inst=="001110"){ // load
      cout << "LW";
      inst_mem[index].opcode=LW;
      fill_2reg_1imm(inst_mem,index,str);
    }
    else if(inst=="001111"){ // store
      cout << "STORE";
      inst_mem[index].opcode=SW;
      fill_2reg_1imm(inst_mem,index,str);
    }
    else if(inst=="110000"){ // halt
      inst_mem[index].opcode=HALT;
    }
    index++;
  }
  fin.close();
}


