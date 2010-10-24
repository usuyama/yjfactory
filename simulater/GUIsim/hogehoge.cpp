#include "hogehoge.h"
#include "ui_hogehoge.h"

#include "hogehoge.h"


hogehoge::hogehoge(QWidget *parent) :
    QFrame(parent),
    ui(new Ui::hogehoge)
{
    ui->setupUi(this);
}

hogehoge::~hogehoge()
{
    delete ui;
}

  int hogehoge::get_regcont(int index){
    return regs[index];
  }

  void hogehoge::print_regs(){
    for(int i=0;i<32;i++)
      std::cout << "r" << i << ": " << get_regcont(i) << std::endl;
  }
  void hogehoge::print_regs(int i){
    std::cout << "r" << i << " " << get_regcont(i) << std::endl;
  }
  void hogehoge::print_mem(int address){
    int start = (address - MSCOPE) < 0 ? 0 : address - MSCOPE;
    int end = (address+MSCOPE) > MEMSIZE ? MEMSIZE : address+MSCOPE;

    for(int i=start;i<end;i++){
    std::cout << i << ": " << data_mem[i] << std::endl;
    }
  }

  hogehoge::hogehoge(){
    pc=0;
    ready = false;
    runall = true;
  }

  bool hogehoge::get_runall(){
    return runall;
  }
  void hogehoge::set_runall(bool flag){
    runall = flag;
  }
  void hogehoge::setPC(int address){
    pc=address;
  }
  /*
  int hogehoge::get_steps(){
    return steps;
  }
  void set_steps(int num){
    steps = num;
  }
  */

//  int get_regcont(int i){
  //  return regs[i];
  //}

   void hogehoge::doInst(int steps){
    int opcode;
    int tmp;

    for(int count=0; runall || count<steps; count++){
      opcode = inst_mem[pc].opcode;
      switch (opcode){
      case ADD :
        ui->instruction->insertPlainText(inst_mem[pc].assm);
        regs[inst_mem[pc].op1] = regs[inst_mem[pc].op2] + regs[inst_mem[pc].op3];
        pc++;
        break;
      case ADDI :
        ui->instruction->insertPlainText( "addi");
        regs[inst_mem[pc].op1] = regs[inst_mem[pc].op2] + inst_mem[pc].op3;
        pc++;
        break;
      case SUBI :
        ui->instruction->insertPlainText( "subi");
        regs[inst_mem[pc].op1] = regs[inst_mem[pc].op2] - inst_mem[pc].op3;
        pc++;
        break;
      case JR :
        ui->instruction->insertPlainText( "jr");
        pc = regs[inst_mem[pc].op1];
        break;
      case JUMP :
        ui->instruction->insertPlainText( "jump");
        pc = inst_mem[pc].op1;
        //	ui->instruction->insertPlainText( inst_mem[pc].op1 << endl;
        break;
      case BEQ :
        ui->instruction->insertPlainText( "beq");
        if(regs[inst_mem[pc].op1]==regs[inst_mem[pc].op2])
          pc += inst_mem[pc].op3;
        else
          pc++;
        break;
      case LW :
        ui->instruction->insertPlainText(inst_mem[pc].assm);
        tmp=regs[inst_mem[pc].op2]+inst_mem[pc].op3;
        if ((tmp >= MEMSIZE) || tmp < 0){
          ui->instruction->insertPlainText( "exceed memory\n");
          exit(1);
        }
        regs[inst_mem[pc].op1] = data_mem[tmp];
        pc++;
        break;
      case SW :
        ui->instruction->insertPlainText(inst_mem[pc].assm);
        tmp=regs[inst_mem[pc].op2]+inst_mem[pc].op3;
        if ((tmp >= MEMSIZE) || tmp < 0){
          ui->instruction->insertPlainText( "exceed memory\n");
          exit(1);
        }
        data_mem[tmp] = regs[inst_mem[pc].op1];
        //ui->instruction->insertPlainText( tmp << " " << regs[inst_mem[pc].op1] << endl;
        pc++;
        break;
      case LLI :
        ui->instruction->insertPlainText(inst_mem[pc].assm);
        regs[inst_mem[pc].op1] = inst_mem[pc].op2;
        std::cout << regs[1] << std::endl;
        std::cout << regs[2] << std::endl;
        pc++;
        break;
      case BGT :
        ui->instruction->insertPlainText( "bgt");
        if(regs[inst_mem[pc].op1] > regs[inst_mem[pc].op2])
          pc +=inst_mem[pc].op3;
        else
          pc++;
        break;
      case JAL :
        ui->instruction->insertPlainText("jal");
        regs[31] = pc+1;
                                               //        ui->instruction->insertPlainText( inst_mem[pc].op1 << " <- jals dest");
        pc = inst_mem[pc].op1 ;
                                               //        ui->instruction->insertPlainText( pc << "pc after");
        break;
      case NOP :
        ui->instruction->insertPlainText("nop");
        pc++;
        break;
      case HALT :
                //			       ui->instruction->insertPlainText( regs[1] << endl;
        return;
      default :
        std::cerr << "undefined instruction: opcode = " << opcode << std::endl;
        return;
      }
     }
    }






