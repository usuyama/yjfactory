#include "hogehoge.h"
#include <math.h>


hogehoge::hogehoge(const char* input_sld)
{
  pc=0;
  ready = false;
  runall = true;
  maxsp=0;

  ifs.open(input_sld);
  if(ifs.fail()){
    std::cout << "cannnot open sld file" << std::endl;
    exit(1);
  }

  outf = fopen("outlog", "w");
  if(!outf){
    std::cout << "cannot open logfile" << std::endl;
    exit(1);
  }
}

hogehoge::~hogehoge()
{
    fclose(outf);
}

int hogehoge::get_regcont(int index){
  return regs[index];
}

void hogehoge::print_regs(){
  for(int i=0;i<32;i++)
    std::cout << "r" << i << ": " << get_regcont(i) << std::endl;
}
void hogehoge::print_maxsp(){
  std::cout << "maxsp" << maxsp << std::endl;
}

void hogehoge::print_regs(int i){
  std::cout << "r" << i << " " << get_regcont(i) << std::endl;
}
void hogehoge::print_fpr(){
  for(int i=0;i<32;i++)
    std::cout << "f" << i << ": " << fpr[i] << std::endl;
}

void hogehoge::print_mem(int address){
  int start = (address - MSCOPE) < 0 ? 0 : address - MSCOPE;
  int end = (address+MSCOPE) > MEMSIZE ? MEMSIZE : address+MSCOPE;

  for(int i=start;i<end;i++){
    std::cout << i << ": " << data_mem[i].myfloat << std::endl;
  }
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
void hogehoge::getPC(){
  std::cout << "pc = "<< pc << std::endl;
}

void hogehoge::doInst(int steps){
  std::ofstream os("outputfile");
  int opcode;
  int tmp,count2=0;
  float_int tmp_union;

  for(int count=0; runall || count<steps; count++){
    //    std::cout << "exec" << std::endl;
    inst_info iinfo = inst_mem[pc];
    opcode = iinfo.opcode;

    switch (opcode){
    case ADD :
      //	//        ui->instruction->appendPlainText(iinfo.assm);
      regs[iinfo.op1] = regs[iinfo.op2] + regs[iinfo.op3];
      pc++;
      break;
    case SUB :
      //        ui->instruction->appendPlainText(iinfo.assm);
      regs[iinfo.op1] = regs[iinfo.op2] - regs[iinfo.op3];
      pc++;
      break;
    case ADDI :
      //        ui->instruction->appendPlainText(iinfo.assm);
      regs[iinfo.op1] = regs[iinfo.op2] + iinfo.op3;
      pc++;
      break;
    case SUBI :
      //        ui->instruction->appendPlainText(iinfo.assm);
      regs[iinfo.op1] = regs[iinfo.op2] - iinfo.op3;
      pc++;
      break;
    case MUL :
      regs[iinfo.op1] = regs[iinfo.op2] * regs[iinfo.op3];
      pc++; break;
    case SRA :
      regs[iinfo.op1] = regs[iinfo.op2] >> iinfo.op3;
      pc++; break;
    case ADDF :
      //        ui->instruction->appendPlainText(iinfo.assm);
      fpr[iinfo.op1] = fpr[iinfo.op2] + fpr[iinfo.op3];
      pc++;
      break;
    case MULF :
      //        ui->instruction->appendPlainText(iinfo.assm);
      fpr[iinfo.op1] = fpr[iinfo.op2] * fpr[iinfo.op3];
      pc++;
      break;
    case SUBF :
      //        ui->instruction->appendPlainText(iinfo.assm);
      fpr[iinfo.op1] = fpr[iinfo.op2] - fpr[iinfo.op3];
      pc++;
      break;
    case DIVF :
      //        ui->instruction->appendPlainText(iinfo.assm);
      fpr[iinfo.op1] = fpr[iinfo.op2] / fpr[iinfo.op3];
      pc++;
      break;
    case MOVF :
      fpr[iinfo.op1] = fpr[iinfo.op2];
      pc++; break;
    case LLIF :
      //        ui->instruction->appendPlainText(iinfo.assm);
      //        std::cout << "llif\n";
      tmp_union.myint = iinfo.op2;
      fpr[iinfo.op1] = tmp_union.myfloat;
      pc++;
      //std::cout << "llif done\n";
      break;
    case LHIF :
      //        ui->instruction->appendPlainText(iinfo.assm);
      tmp_union.myfloat = fpr[iinfo.op1];
      tmp_union.myint = tmp_union.myint + (((unsigned int)iinfo.op2) << 16);
      fpr[iinfo.op1] = tmp_union.myfloat;
      //        std::cout << fpr[iinfo.op1] << std::endl;
      pc++;
      break;
    case JR :
      //        ui->instruction->appendPlainText(iinfo.assm);
      pc = regs[iinfo.op1];
      break;
    case JUMP :
      //        ui->instruction->appendPlainText(iinfo.assm);
      pc = iinfo.op1;
      //        //	ui->instruction->appendPlainText( iinfo.op1 << endl;
      break;
    case BEQ :
      //        ui->instruction->appendPlainText(iinfo.assm);
      if(regs[iinfo.op1]==regs[iinfo.op2])
	pc += iinfo.op3;
      else
	pc++;
      break;
    case LW :
      //        ui->instruction->appendPlainText(iinfo.assm);
      tmp=regs[iinfo.op2]+iinfo.op3;
      if ((tmp >= MEMSIZE) || tmp < 0){
	//          ui->instruction->appendPlainText( "exceed memory\n");
	exit(1);
      }
      regs[iinfo.op1] = data_mem[tmp].myint;
      pc++;
      break;
    case LF :
      //            ui->instruction->appendPlainText(iinfo.assm);
      tmp=regs[iinfo.op2]+iinfo.op3;
      if ((tmp >= MEMSIZE) || tmp < 0){
	//            ui->instruction->appendPlainText( "exceed memory\n");
	exit(1);
      }
      fpr[iinfo.op1] = data_mem[tmp].myfloat;
      pc++;
      break;
    case SW :
      //            ui->instruction->appendPlainText(iinfo.assm);
      tmp=regs[iinfo.op2]+iinfo.op3;
      if ((tmp >= MEMSIZE) || tmp < 0){
	//              ui->instruction->appendPlainText( "exceed memory\n");
	exit(1);
      }
      data_mem[tmp].myint = regs[iinfo.op1];
      //            //ui->instruction->appendPlainText( tmp << " " << regs[iinfo.op1] << endl;
      pc++;
      break;
    case SF :
      //            ui->instruction->appendPlainText(iinfo.assm);
      //            ui->instruction->appendPlainText(QString::number(fpr[iinfo.op1]));
      tmp=regs[iinfo.op2]+iinfo.op3;
      if ((tmp >= MEMSIZE) || tmp < 0){
	//              ui->instruction->appendPlainText( "exceed memory\n");
	exit(1);
      }
      //      std :: cout << fpr[iinfo.op1] << "hogehoge" << std :: endl;
      data_mem[tmp].myfloat = fpr[iinfo.op1];
      //      std :: cout << fpr[iinfo.op1] << "hogehoge" << std :: endl;
      //    //ui->instruction->appendPlainText( tmp << " " << regs[iinfo.op1] << endl;
	pc++;
	break;

    case LLI :
      //        ui->instruction->appendPlainText(iinfo.assm);
      regs[iinfo.op1] = iinfo.op2;
      //        std::cout << regs[1] << std::endl;
      //        std::cout << regs[2] << std::endl;
      pc++;
      break;
    case LHI :
      regs[iinfo.op1] |= iinfo.op2 << 16;
      //      std::cout << "hogehoge" << (iinfo.op2 << 16) << std::endl;
      pc++;
      break;
    case BGT :
      //        ui->instruction->appendPlainText(iinfo.assm);
      if(regs[iinfo.op1] > regs[iinfo.op2])
	pc +=iinfo.op3;
      else
	pc++;
      break;
    case BNEQ :
      if(regs[iinfo.op1] != regs[iinfo.op2])
	pc +=iinfo.op3;
      else
	pc++;
      break;
    case BGTF :
      //        ui->instruction->appendPlainText(iinfo.assm);
      if(fpr[iinfo.op1] > fpr[iinfo.op2])
	pc +=iinfo.op3;
      else
	pc++;
      break;
    case FABS :
      //        ui->instruction->appendPlainText(iinfo.assm);
      tmp_union.myfloat = fpr[iinfo.op1];
      tmp_union.myint &= 0x7FFFFFFF;
      fpr[iinfo.op1] = tmp_union.myfloat;
      pc++;
      break;
    case FNEG :
      //        ui->instruction->appendPlainText(iinfo.assm);
      tmp_union.myfloat = fpr[iinfo.op1];
      tmp_union.myint ^= 0x80000000;
      fpr[iinfo.op1] = tmp_union.myfloat;
      pc++;
      break;
    case JAL :
      //        ui->instruction->appendPlainText(iinfo.assm);
      regs[31] = pc+1;
      //                                               //        ui->instruction->appendPlainText( iinfo.op1 << " <- jals dest");
        pc = iinfo.op1 ;
	//                                               //        ui->instruction->appendPlainText( pc << "pc after");
        break;
    case JALR :
      //        ui->instruction->appendPlainText(iinfo.assm);
      regs[31] = pc+1;
      pc = regs[iinfo.op1];
      break;
    case MVF2I :
      //        ui->instruction->appendPlainText(iinfo.assm);
      tmp_union.myfloat = fpr[iinfo.op2];
      regs[iinfo.op1] = tmp_union.myint;
      pc++;
      break;
    case SENDW :
      //       // ui->instruction->appendPlainText("sendw called");
      //        ui->instruction->appendPlainText(iinfo.assm);
      fprintf(outf, "%d\n", regs[iinfo.op1]);
      fflush(outf);
      //std::cout << regs[iinfo.op1] << std::endl;
      pc++;
      break;
    case SENDC :
      //os << (char)regs[iinfo.op1];
      //std::cout << (char)regs[iinfo.op1] << std::endl;
      fprintf(outf, "%c\n", (char)regs[iinfo.op1]);
      fflush(outf);
      //        ui->instruction->appendPlainText("sendc called");
      pc++;
      break;
    case NOP :
      //        ui->instruction->appendPlainText("nop");
      pc++;
      break;
    case BREAK :
      pc++;
      return;
    case HALT :
      //        ui->instruction->appendPlainText("\nprogram end\n");
      std::cout << "end program" << std::endl;
      return;

/* 擬似命令s */
    case SQRT :
      fpr[0] = sqrt(fpr[0]);
      pc++;
      break;
    case SIN :
      fpr[0] = sin(fpr[0]);
      pc++; break;
    case COS :
      fpr[0] = cos(fpr[0]);
      pc++; break;
    case ATAN :
      fpr[0] = atan(fpr[0]);
      pc++; break;
    case FLOOR :
      fpr[0] = floor(fpr[0]);
      pc++; break;
    case ITOF :
      fpr[0]=(float)regs[1];
      pc++; break;
    case FTOI :
      regs[1]=(int)fpr[0];
      pc++; break;
    case RDINT :
      ifs >> regs[1];
      pc++; break;
    case RDFLT :
      ifs >> fpr[0];
      pc++; break;
    case PRFLT:
      fprintf(outf, "%f\n", fpr[0]);
      fflush(outf);
      pc++; break;
/* 擬似命令s */

    default :
      std::cerr << "undefined instruction: opcode = " << opcode << std::endl;
      return;
    }

    if(regs[30]>maxsp){
      maxsp = regs[30];
    }
    count2++;
    if(count2 > 10000000){
      count2=0;
      std::cout << " * " << pc << std::endl;
    }
  }
  os.close();
}
