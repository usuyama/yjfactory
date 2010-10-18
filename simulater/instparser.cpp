#include <iostream>

using namespace std;

class inst_parser{
private:
    int strToInt(string s, int n){ /* 符号有りで string -> int */
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

  int u_strToInt(string s, int n){
    int i,ret=0;
    for(i=0;i<n;i++){
      if(s[i]=='1')
	ret=ret*2+1;
      else
	ret*=2;
    }
    return ret;
  }

  int ext_op1(string inst){
    return u_strToInt(inst.substr(6,11), 5);
  }
  int ext_op2(string inst){
    return u_strToInt(inst.substr(11,16), 5);
  }
  int ext_op3(string inst){
    return u_strToInt(inst.substr(16,21), 5);
  }
  int ext_u16(string inst){
    return strToInt(inst.substr(16,32), 16);
  }
  int ext_u26(string inst){
    return u_strToInt(inst.substr(6,32),16);
  }

  void fill_3reg(inst_info* inst_mem, int index, string str){
    inst_mem[index].op1=ext_op1(str);
    inst_mem[index].op2=ext_op2(str);
    inst_mem[index].op3=ext_op3(str);
  }
  void fill_2reg_1imm(inst_info* inst_mem, int index, string str){
    inst_mem[index].op1=ext_op1(str);
    inst_mem[index].op2=ext_op2(str);
    inst_mem[index].op3=ext_u16(str);
  }
  void fill_1reg_1imm(inst_info* inst_mem, int index, string str){
    inst_mem[index].op1=ext_op1(str);
    inst_mem[index].op2=ext_u16(str);
    inst_mem[index].op3=-1;
    // only used for "lli"
  }
  void fill_1imm(inst_info* inst_mem, int index, string str){
    inst_mem[index].op1=ext_u26(str);
    inst_mem[index].op2=-1;
    inst_mem[index].op3=-1;
  }

public:
  void parse(inst_info* inst_mem, char* program){
    ifstream fin(program, ios::in);
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
	inst_mem[index].opcode= ADD;
	fill_3reg(inst_mem,index,str);
      }
      else if(inst=="110010"){ // lli
	inst_mem[index].opcode= LLI;	
	fill_1reg_1imm(inst_mem,index,str);
      }
      else if(inst=="010110"){ // jump
	inst_mem[index].opcode=JUMP;
	fill_1imm(inst_mem,index,str);
      }
      index++;
    }
  }

