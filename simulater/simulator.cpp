#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

using namespace std;

#define MEMSIZE 10000
#define INSTSIZE 10000
#define MSCOPE 10

class Simulator{
private:
  bool step_exe;
  int pc;
  int regs[32];
  string inst_mem[10000];
  int data_mem[10000];
  int inst_num;

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
  void print_regs(){
    for(int i=0;i<32;i++)
      cout << "r" << i << ": " << get_regcont(i) << endl;
  }
  void print_regs(int i){
    cout << "r" << i << " " << get_regcont(i) << endl;
  }
  void print_mem(int address){
    int start = (address - MSCOPE) < 0 ? 0 : address - MSCOPE;
    int end = (address+MSCOPE) > MEMSIZE ? MEMSIZE : address+MSCOPE;

    for(int i=start;i<end;i++){
      cout << start << ": " << data_mem[i] << endl;
    }
  }
  Simulator(char* program){
    int count=0;

    /* set pc */
    pc=0;
    step_exe = false;

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
    inst_num = count;
    fin.close();
    cout << "hoge\n";
  }

  bool get_step(){
    return step_exe;
  }
  void set_step(bool flag){
    step_exe = flag;
  }
  int get_regcont(int i){
    return regs[i];
  }

  int get_instnum(){
    return inst_num;
  }

  void doInst(int end){
    string inst;
    string opcode;

    while(pc!=end){
      inst = inst_mem[pc];
      opcode = inst.substr(0,6);
      
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
      //      if(print_flag)
      if(step_exe) break;
    }
  }
};

  int main(int argc, char* argv[]){
    if(argc < 2){
      cout << "enter input binary file\n";
      return 0;
    }

    Simulator sim(argv[1]);
    string option;

    while(1){
      cout << "simulator option: ";
      cin >> option;

      if(option=="run"){
	sim.doInst(sim.get_instnum());
      }
      else if(option == "step"){
	if(sim.get_step())
	  sim.set_step(false);
	else
	  sim.set_step(true);
      }
      else if(option == "break"){
	int b;
	cout << "break point :";
	cin >> b;
	//	sim.setbp(b);
      }
      else if(option == "r"){
	sim.print_regs();
      }
      else if(option == "m"){
	int n;
	cout << "enter address: ";
	cin >> n;
	sim.print_mem(n);
      }
      else if(option == "exit"){
	exit(0);
      }
      else{
	cout << "usage\n" 
	     << "run: run program to the next break point\n"
	     << "exit: exit\n"
	     << "step: change step mode\n"
	     << "r: print register\n"
	     << "m: print memory\n";
	  }
    }

    /*
    if(argc < 3){
      cout << sim.get_instnum() << endl;
      sim.doInst(sim.get_instnum());
      sim.print_regs();
  }
    */
    return 0;
  }
    
    


