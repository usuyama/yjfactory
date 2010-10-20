#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "parser.h"
#include "inst_info.h"

using namespace std;

#define MEMSIZE 10000
#define INSTSIZE 10000
#define MSCOPE 10

class simulator{
private:
  bool runall;
  int pc;
  int regs[32];
  inst_info inst_mem[INSTSIZE];
  int data_mem[MEMSIZE];
  int inst_num;

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
      cout << i << ": " << data_mem[i] << endl;
    }
  }

  simulator(char* program){
    parser parser;
    //    int count=0;

    pc=0;
    runall = true;

    // load instructions
    parser.parse(inst_mem,program);
  }

  bool get_runall(){
    return runall;
  }
  void set_runall(bool flag){
    runall = flag;
  }
  int get_regcont(int i){
    return regs[i];
  }

  int get_instnum(){
    return inst_num;
  }

  void doInst(int steps){
    int opcode;
    int tmp;

    for(int count=0; runall || count<steps; count++){
      opcode = inst_mem[pc].opcode;
      switch (opcode){
      case ADD :
	cout << "add\n";
	regs[inst_mem[pc].op1] = regs[inst_mem[pc].op2] + regs[inst_mem[pc].op3];
	pc++;
	break;
      case ADDI :
	cout << "addi\n";
	regs[inst_mem[pc].op1] = regs[inst_mem[pc].op2] + inst_mem[pc].op3;
	pc++;
	break;
      case SUBI :
	cout << "subi\n";
	regs[inst_mem[pc].op1] = regs[inst_mem[pc].op2] - inst_mem[pc].op3;
	pc++;
	break;
      case JR :
	cout << "jr\n";
	pc = regs[inst_mem[pc].op1];
	break;
      case JUMP :
	cout << "jump\n";
	pc = inst_mem[pc].op1;
	//	cout << inst_mem[pc].op1 << endl;
	break;
      case BEQ :
	cout << "beq\n";
	if(regs[inst_mem[pc].op1]==regs[inst_mem[pc].op2])
	  pc += inst_mem[pc].op3;
	else
	  pc++;
	break;
      case LW :
	tmp=regs[inst_mem[pc].op2]+inst_mem[pc].op3;
	cout << "lw\n";
	if ((tmp >= MEMSIZE) || tmp < 0){
	  cout << "exceed memory" << tmp << endl;
	  exit(1);
	}
	regs[inst_mem[pc].op1] = data_mem[tmp];
	pc++;
	break;
      case SW :
	cout << "sw\n";
	tmp=regs[inst_mem[pc].op2]+inst_mem[pc].op3;	
	if ((tmp >= MEMSIZE) || tmp < 0){
	  cout << "exceed memory" << tmp << endl;
	  exit(1);
	}
	data_mem[tmp] = regs[inst_mem[pc].op1];
	cout << tmp << " " << regs[inst_mem[pc].op1] << endl;
	pc++;
	break;
      case LLI :
	cout << "lli\n";
	regs[inst_mem[pc].op1] = inst_mem[pc].op2;
	pc++;
	break;
      case BGT :
	cout << "bgt\n";
	if(regs[inst_mem[pc].op1] > regs[inst_mem[pc].op2])
	  pc +=inst_mem[pc].op3;
	else 
	  pc++;
	break;
      case JAL :
	cout << "jal\n";
	regs[31] = pc+1;
	cout << inst_mem[pc].op1 << " <- jals dest\n";
	pc = inst_mem[pc].op1 ;
	cout << pc << "pc after\n";
	break;
      case NOP :
	cout << "nop\n";
	pc++;
	break;
      case HALT :
	cout << regs[1] << endl;
	exit(0);
      default :
	cerr << "undefined instruction: opcode = " << opcode << endl;
	exit(1);
      }
    }
  }
};

int main(int argc, char* argv[]){
  if(argc < 2){
    cout << "enter input binary file\n";
    return 0;
  }

  simulator sim(argv[1]);
  string option;

  while(1){
    cout << "simulator option: ";
    cin >> option;

    if(option=="e"){
      int c;
      if(!sim.get_runall()){
	cout << " do X step : ";
	cin >> c;
	sim.doInst(c);
      }
      else
	sim.doInst(0);
    }
    else if(option == "step"){
      if(sim.get_runall())
	sim.set_runall(false);
      else
	sim.set_runall(true);
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
    
    


