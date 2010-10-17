#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
using namespace std;

#define MEMSIZE 10000;
#define INSTSIZE 10000;

class Simulator{
private:
  int pc;
  int regs[32];
  string inst_mem[100000];
  int data_mem[100000];

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

public:
  Simulator(char* program){
    int count=0;

    /* set pc */
    pc=0;

    ifstream fin(program, ios::in);
    if(!fin){
      cout << "cannot open\n";
      exit(1);
    }

    /* load instructions */
    string str;
    while(getline(fin,str)){
      inst_mem[count] = str;
      cout << str << endl;
      count++;
    }
    fin.close();
  }

  void doOneInst(){
    string inst = inst_mem[pc];
    string opcode = inst.substr(0,6);
      
    if(opcode=="111000"){ /* add */
      cout << "add\n";
      regs[ext_op3(inst)] = regs[ext_op1(inst)] + regs[ext_op2(inst)];
      pc++;
    }
    else if(opcode == "100000"){ /* load */
      cout << "load\n";
      regs[ext_op1(inst)] = data_mem[regs[ext_op2(inst)] + ext_u16(inst)];
      pc++;
    }
    else if(opcode == "100001"){ /* store */
      cout << "store\n";
      data_mem[regs[ext_op2(inst)]+ext_u16(inst)] = regs[ext_op1(inst)];
      pc++;
    }
    else if(opcode == "010110"){ /* jump */
      cout << "jump\n";
      pc = ext_u26(inst);
    }
    else if(opcode == "111111"){ /* beq  相対 */
      cout << "beq\n";
      if(regs[ext_op1(inst)]==regs[ext_op2(inst)])
	pc += ext_u16(inst);
    }
    else if(opcode == "110010"){ /* lli */
      cout << "lli\n";
      regs[ext_op1(inst)] = ext_u16(inst);
      pc++;
    }
    else if(opcode == "000000"){
      cout << "end\n";
      cout << regs[1] << endl;
      exit(0);
    }
    else{
      cerr << "undefined instruction: opcode = " << opcode << endl;
	//	print_status();
	//	exit(1);
      }
    }
};

  int main(int argc, char* argv[]){
    if(argc < 1){
      cout << "enter input binary file\n";
      return 0;
    }

    Simulator sim(argv[1]);
    while(1)
      sim.doOneInst();

    return 0;
  }
    
    


