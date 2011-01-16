#include "hogehoge2.h"
#include <math.h>
#include <string>
int hogehoge::pc;
std::ifstream hogehoge::ifs;
int hogehoge::regs[32];
float hogehoge::fpr[32];
inst_info hogehoge::inst_mem[INSTSIZE];
float_int hogehoge::data_mem[MEMSIZE];
inst_info hogehoge::iinfo;
float_int hogehoge::tmp_union;
int hogehoge::tmp;
FILE* hogehoge::outf;
FILE* hogehoge::dumpf;
int hogehoge::count2;
int hogehoge::count3;

#include "fpu_sim.h" // for fpu

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

  outf = fopen("outlog.ppm", "w");
  dumpf = fopen("dumpfile", "w");

  if(!outf){
    std::cout << "cannot open logfile" << std::endl;
    exit(1);
  }
}

hogehoge::~hogehoge()
{
    fclose(outf);
    fclose(dumpf);
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
    std::cout << i << ": " << data_mem[i].myint <<" "<< data_mem[i].myfloat << std::endl;
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

typedef union bothsig_int{
  int i;
  unsigned int u;
}bothsig_int;

bothsig_int recv_buf;
int recv_count=0;
unsigned int mask = (unsigned int)0xff<<24;

int bef=-100;
//int bgtfcount=0;
bool diff;


void (*instTable[])(void){
  hogehoge::ADDfunc,
  hogehoge::SUBfunc,
  hogehoge::ADDIfunc,
  hogehoge::SUBIfunc,
  hogehoge::MULfunc,
  hogehoge::SRAfunc,
  hogehoge::SLLfunc,
  hogehoge::XORfunc,
  hogehoge::XORIfunc,
  hogehoge::ADDFfunc,
  hogehoge::MULFfunc,
  hogehoge::SUBFfunc,
  hogehoge::DIVFfunc,
  hogehoge::MOVFfunc,
  hogehoge::LLIFfunc,
  hogehoge::LHIFfunc,
  hogehoge::JRfunc,
  hogehoge::JUMPfunc,
  hogehoge::BEQfunc,
  hogehoge::LWfunc,
  hogehoge::LFfunc,
  hogehoge::SWfunc,
  hogehoge::SFfunc,
  hogehoge::LLIfunc,
  hogehoge::LHIfunc,
  hogehoge::BGTfunc,
  hogehoge::BNEQfunc,
  hogehoge::BGTFfunc,
  hogehoge::FABSfunc,
  hogehoge::FNEGfunc,
  hogehoge::JALfunc,
  hogehoge::JALRfunc,
  hogehoge::MVF2Ifunc,
  hogehoge::MVI2Ffunc,
  hogehoge::SENDCfunc,
  hogehoge::NOPfunc,
  hogehoge::BREAKfunc,
  hogehoge::HALTfunc,
  hogehoge::RECVfunc,
  hogehoge::SQRTfunc,
  hogehoge::FLOORfunc,
  hogehoge::ITOFfunc,
  hogehoge::FTOIfunc
    };

void hogehoge::doInst(int steps){

  int opcode;
  count2=0;
  count3=0;

/* MAIN ROUTINE START*/
  for(int count=0; runall || count<steps; count++){


    /*********  fpr[0]にオペランドが入っているとき                         **************/
    /********** atanのオペランドをダンプしたい場合こういう風に書けば多分ok **************/
    /********** dumpfileというファイルに、書き込まれる。                   **************/
    /********** 書き込まれなかったら、flushでもしてくれ                   **************/

/*
      if(pc==XXX || pc==XXX || pc==XXX){    XXXは、atanに飛ぶアドレス。
         fprintf(dumpf,"%f\n", fpr[0]);
      }
*/

  /*各命令のオペランド&結果について知りたかったら、命令のところにfprintfをはさむ*/

    iinfo = inst_mem[pc];
    opcode = iinfo.opcode;

    instTable[iinfo.opcode]();
    count2++;
    if(count2 > 100000000){
      count3++;
      count2=0;
      std::cout << " * " << pc << std::endl;
    }
  }
/* MAIN ROUTINE END*/
}

/* INSTRUCTIONS */
void hogehoge::ADDfunc(){
  regs[iinfo.op3] = regs[iinfo.op2] + regs[iinfo.op1];
  pc++;
}
 void hogehoge::SUBfunc(){
  regs[iinfo.op3] = regs[iinfo.op1] - regs[iinfo.op2];
  pc++;
}
 void hogehoge::ADDIfunc(){
  regs[iinfo.op2] = regs[iinfo.op1] + iinfo.op3;
  pc++;
}
 void hogehoge::SUBIfunc(){
  regs[iinfo.op2] = regs[iinfo.op1] - iinfo.op3;
  pc++;
}
 void hogehoge::MULfunc(){
  regs[iinfo.op3] = regs[iinfo.op2] * regs[iinfo.op1];
  pc++; }
 void hogehoge::SRAfunc(){
  regs[iinfo.op2] = regs[iinfo.op1] >> iinfo.op3;
  pc++; }
 void hogehoge::SLLfunc(){
  bothsig_int tmpsll;
  tmpsll.u= (unsigned int)(regs[iinfo.op1]) << iinfo.op3;
  regs[iinfo.op2] = tmpsll.i;
  pc++;}
 void hogehoge::XORfunc(){
  regs[iinfo.op3] = regs[iinfo.op2]^regs[iinfo.op1];
  pc++; }
 void hogehoge::XORIfunc(){
  regs[iinfo.op2] = regs[iinfo.op3]^iinfo.op3;
  pc++; }
 void hogehoge::ADDFfunc(){
   fpr[iinfo.op3] = fadd(fpr[iinfo.op2], fpr[iinfo.op1]);
   pc++;
}
 void hogehoge::MULFfunc(){
   fpr[iinfo.op3] = fmul(fpr[iinfo.op2], fpr[iinfo.op1]);
   pc++;
}
 void hogehoge::SUBFfunc(){
   fpr[iinfo.op3] = fsub(fpr[iinfo.op1], fpr[iinfo.op2]);
   pc++;
}
void hogehoge::DIVFfunc(){
  //  fprintf(dumpf,"%f %f\n",fpr[iinfo.op1],fpr[iinfo.op2]);
  fpr[iinfo.op3] = fdiv(fpr[iinfo.op1], fpr[iinfo.op2]);
  pc++;
}
 void hogehoge::MOVFfunc(){
  fpr[iinfo.op2] = fpr[iinfo.op1];
  pc++; }
 void hogehoge::LLIFfunc(){
  tmp_union.myint = iinfo.op2;
  fpr[iinfo.op1] = tmp_union.myfloat;
  pc++;
}
 void hogehoge::LHIFfunc(){
  tmp_union.myfloat = fpr[iinfo.op1];
  tmp_union.myint = tmp_union.myint + (((unsigned int)iinfo.op2) << 16);
  fpr[iinfo.op1] = tmp_union.myfloat;
  pc++;
}
 void hogehoge::JRfunc(){
  pc = regs[iinfo.op1];
}
 void hogehoge::JUMPfunc(){
  pc = iinfo.op1;
}
 void hogehoge::BEQfunc(){
  if(regs[iinfo.op1]==regs[iinfo.op2])
    pc += iinfo.op3;
  else
    pc++;
}
 void hogehoge::LWfunc(){
  tmp=regs[iinfo.op1]+iinfo.op3;
  //if ((tmp >= MEMSIZE) || tmp < 0){
  //    exit(1);
  //  }
  regs[iinfo.op2] = data_mem[tmp].myint;
  pc++;
}
 void hogehoge::LFfunc(){
  tmp=regs[iinfo.op1]+iinfo.op3;
  //  if ((tmp >= MEMSIZE) || tmp < 0){
  //    exit(1);
  //  }
  fpr[iinfo.op2] = data_mem[tmp].myfloat;
  pc++;
}
 void hogehoge::SWfunc(){
  tmp=regs[iinfo.op2]+iinfo.op3;
  //  if ((tmp >= MEMSIZE) || tmp < 0){
  //    exit(1);
  //  }
  data_mem[tmp].myint = regs[iinfo.op1];
  pc++;
}
 void hogehoge::SFfunc(){
  tmp=regs[iinfo.op2]+iinfo.op3;
  //  if ((tmp >= MEMSIZE) || tmp < 0){
  //    exit(1);
  //  }
  data_mem[tmp].myfloat = fpr[iinfo.op1];
  pc++;
}

 void hogehoge::LLIfunc(){
  regs[iinfo.op1] = iinfo.op2;
  pc++;
}
 void hogehoge::LHIfunc(){
  regs[iinfo.op1] |= iinfo.op2 << 16;
  pc++;
}
 void hogehoge::BGTfunc(){
  if(regs[iinfo.op1] > regs[iinfo.op2])
    pc +=iinfo.op3;
  else
    pc++;
}
 void hogehoge::BNEQfunc(){
  if(regs[iinfo.op1] != regs[iinfo.op2])
    pc +=iinfo.op3;
  else
    pc++;
}
 void hogehoge::BGTFfunc(){
  if(fpr[iinfo.op1] > fpr[iinfo.op2])
    pc +=iinfo.op3;
  else
    pc++;
}
 void hogehoge::FABSfunc(){
  tmp_union.myfloat = fpr[iinfo.op1];
  tmp_union.myint &= 0x7FFFFFFF;
  fpr[iinfo.op1] = tmp_union.myfloat;
  pc++;
}
 void hogehoge::FNEGfunc(){
  tmp_union.myfloat = fpr[iinfo.op1];
  tmp_union.myint ^= 0x80000000;
  fpr[iinfo.op1] = tmp_union.myfloat;
  pc++;
}
 void hogehoge::JALfunc(){
  regs[31] = pc+1;
  pc = iinfo.op1 ;
}
 void hogehoge::JALRfunc(){
  regs[31] = pc+1;
  pc = regs[iinfo.op1];
}
 void hogehoge::MVF2Ifunc(){
  tmp_union.myfloat = fpr[iinfo.op1];
  regs[iinfo.op2] = tmp_union.myint;
  pc++;
}
 void hogehoge::MVI2Ffunc(){
  tmp_union.myint = regs[iinfo.op1];
  fpr[iinfo.op2] = tmp_union.myfloat;
  pc++;
}
void hogehoge::SENDCfunc(){
  fprintf(outf, "%c", (char)regs[iinfo.op1]);
  fflush(outf);
  pc++;
}
 void hogehoge::NOPfunc(){
  pc++;
}
 void hogehoge::BREAKfunc(){
  pc++;
  return;
}
 void hogehoge::HALTfunc(){
  std::cout << "number of instructions "<< count3 << "*100000000 + "<<count2 << std::endl;
  std::cout << "end program" << std::endl;
  exit(1);
}
 void hogehoge::RECVfunc(){
  if(recv_count==0){
    std::string str;
    ifs >> str;
    recv_count=4;
    if(inst_mem[pc+10].opcode!=MVI2F)
      recv_buf.i=atoi(str.c_str());
    else{
      tmp_union.myfloat=atof(str.c_str());
      recv_buf.i=tmp_union.myint;
    }
  }
  regs[iinfo.op1] = (recv_buf.u & mask)>>24;
  recv_buf.u<<=8;
  recv_count--;
  pc++;}

 void hogehoge::SQRTfunc(){
  fpr[iinfo.op2] = sqrt(fpr[iinfo.op1]);
  pc++;
}

void hogehoge::FLOORfunc(){
  fpr[iinfo.op2] = floor_sim(fpr[iinfo.op1]);
  pc++; }
 void hogehoge::ITOFfunc(){
   //  fpr[iinfo.op2] = (float)regs[iinfo.op1];
   fpr[iinfo.op2] = itof_sim(regs[iinfo.op1]);   
  pc++; }
 void hogehoge::FTOIfunc(){
   //  regs[iinfo.op2] = (int)fpr[iinfo.op1];
   regs[iinfo.op2] = ftoi_sim(fpr[iinfo.op1]);   
  pc++; }

