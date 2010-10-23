#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "parser.h"
#include "inst_info.h"
#include "simulator.h"

#define MEMSIZE 10000
#define INSTSIZE 10000
#define MSCOPE 10

  int simulator::get_regcont(int index){
    return regs[index];
  }

  void simulator::print_regs(){
    for(int i=0;i<32;i++)
      std::cout << "r" << i << ": " << get_regcont(i) << std::endl;
  }
  void simulator::print_regs(int i){
    std::cout << "r" << i << " " << get_regcont(i) << std::endl;
  }
  void simulator::print_mem(int address){
    int start = (address - MSCOPE) < 0 ? 0 : address - MSCOPE;
    int end = (address+MSCOPE) > MEMSIZE ? MEMSIZE : address+MSCOPE;

    for(int i=start;i<end;i++){
     std::cout << i << ": " << data_mem[i] << std::endl;
    }
  }

  simulator::simulator(){
    pc=0;
    ready = false;
    runall = true;
  }

  bool simulator::get_runall(){
    return runall;
  }
  void simulator::set_runall(bool flag){
    runall = flag;
  }
  void simulator::setPC(int address){
    pc=address;
  }
  /*
  int simulator::get_steps(){
    return steps;
  }
  void set_steps(int num){
    steps = num;
  }
  */

//  int get_regcont(int i){
  //  return regs[i];
  //}

   void simulator::doInst(int steps){
    int opcode;
    int tmp;

    for(int count=0; runall || count<steps; count++){
      opcode = inst_mem[pc].opcode;
      switch (opcode){
      case ADD :
        std::cout << (inst_mem[pc].assm).toStdString() << std::endl;
        regs[inst_mem[pc].op1] = regs[inst_mem[pc].op2] + regs[inst_mem[pc].op3];
        pc++;
        break;
      case ADDI :
        std::cout << "addi\n";
        regs[inst_mem[pc].op1] = regs[inst_mem[pc].op2] + inst_mem[pc].op3;
        pc++;
        break;
      case SUBI :
        std::cout << "subi\n";
        regs[inst_mem[pc].op1] = regs[inst_mem[pc].op2] - inst_mem[pc].op3;
        pc++;
        break;
      case JR :
        std::cout << "jr\n";
        pc = regs[inst_mem[pc].op1];
        break;
      case JUMP :
        std::cout << "jump\n";
        pc = inst_mem[pc].op1;
        //	std::cout << inst_mem[pc].op1 << std::endl;
        break;
      case BEQ :
        std::cout << "beq\n";
        if(regs[inst_mem[pc].op1]==regs[inst_mem[pc].op2])
          pc += inst_mem[pc].op3;
        else
          pc++;
        break;
      case LW :
        tmp=regs[inst_mem[pc].op2]+inst_mem[pc].op3;
        std::cout << "lw\n";
        if ((tmp >= MEMSIZE) || tmp < 0){
          std::cout << "exceed memory" << tmp << std::endl;
          exit(1);
        }
        regs[inst_mem[pc].op1] = data_mem[tmp];
        pc++;
        break;
      case SW :
        std::cout << "sw\n";
        tmp=regs[inst_mem[pc].op2]+inst_mem[pc].op3;
        if ((tmp >= MEMSIZE) || tmp < 0){
          std::cout << "exceed memory" << tmp << std::endl;
          exit(1);
        }
        data_mem[tmp] = regs[inst_mem[pc].op1];
        std::cout << tmp << " " << regs[inst_mem[pc].op1] << std::endl;
        pc++;
        break;
      case LLI :
        std::cout << "lli\n";
        regs[inst_mem[pc].op1] = inst_mem[pc].op2;
        pc++;
        break;
      case BGT :
        std::cout << "bgt\n";
        if(regs[inst_mem[pc].op1] > regs[inst_mem[pc].op2])
          pc +=inst_mem[pc].op3;
        else
          pc++;
        break;
      case JAL :
        std::cout << "jal\n";
        regs[31] = pc+1;
        std::cout << inst_mem[pc].op1 << " <- jals dest\n";
        pc = inst_mem[pc].op1 ;
        std::cout << pc << "pc after\n";
        break;
      case NOP :
        std::cout << "nop\n";
        pc++;
        break;
      case HALT :
        std::cout << regs[1] << std::endl;
        return;
      default :
        std::cerr << "undefined instruction: opcode = " << opcode << std::endl;
        return;
      }
     }
    }
