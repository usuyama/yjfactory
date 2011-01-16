#include <iostream>
#include <vector>
#include "fpu_sim.h"
using namespace std;

typedef union fu{
  float f;
  unsigned int u;
}fu;

typedef union ui{
  int i;
  unsigned int u;
}ui;

int ftoi_sim(float f){
  unsigned int exp_mask=0x7F800000;
  unsigned int frac_mask=0x7FFFFF;
  fu number;
  number.f=f;
  unsigned int sign = number.u>>31;
  unsigned int exp=(number.u & exp_mask)>>23;
  unsigned int frac=number.u & frac_mask;
  unsigned int tmp;
  ui ignore_sign;


  if(exp==126) tmp = 1;
  else if(exp==127) tmp = 2 + (frac>>22);
  else if((exp>>7)==0) tmp=0;
  else if(exp <= 157 ){
    int offset = exp-126;
    tmp= (1<<offset)+(frac>>(23-offset));
  }
  else tmp=0xFFFFFFFF;
    
  if((tmp&1) == 0) ignore_sign.u=tmp>>1;
  else ignore_sign.u=(tmp>>1)+1;

  if (sign==0) return ignore_sign.i;
  else{
    ignore_sign.u=~ignore_sign.u+1;
    return ignore_sign.i;
  }
}

unsigned int get_subbit(unsigned int in,int start, int end){
  if (start >31 || start <0 || end >30 || end < 0){
    cout << "get_subbit_error";
    exit(1);
  }
  in<<=(31-start);
  in>>=(31-start+end);
  return in;
}
  
float itof_sim(int i){
  unsigned int tmp;
  fu ret;
  ui i_int;
  unsigned int o_fl;
  unsigned int sign;

  i_int.i=i;
  if((i_int.u>>31)==0){
    tmp = i_int.u;
    sign=0;
  }
  else{
    tmp = ~(i_int.u-1);
    sign=1;
  }


  unsigned int mask= 1;
  int max_bit=-1;
  for(int i=0;i<31;i++){
    if((mask&tmp)!=0) max_bit=i;
    mask<<=1;
  }
  //  cout << "max_bit="<< max_bit<<endl;
  if(max_bit<=30 && max_bit>=24){
    if( ( (tmp & (1<<(max_bit-24))) == 0) || get_subbit(tmp,max_bit-23,0)==1<<(max_bit-24))
      o_fl= ((127+max_bit)<<23) + get_subbit(tmp,max_bit-1,max_bit-23);
    else if(get_subbit(tmp,max_bit-1,max_bit-23)!=(1<<23)-1)
      o_fl=((127+max_bit)<<23) + get_subbit(tmp,max_bit-1,max_bit-23) + 1;
    else
      o_fl=((128+max_bit)<<23);// + (get_subbit(tmp,max_bit-1,0) << (23-max_bit));
  }
  else if (max_bit>0){
    //    cout << "fugaga" << endl;
    o_fl=((127+max_bit)<<23) + (get_subbit(tmp,max_bit-1,0) << (23-max_bit));
  }
  else if(max_bit==0)
    o_fl=127<<23;
  else
    o_fl=0;

  //  cout << "ofl " <<ret.f << endl;
  ret.u = (sign<<31) | o_fl;
  return ret.f;
}

float floor_sim(float f){
  bool sign;
  unsigned int exp_mask=0x7F800000;
  fu i_fl;
  i_fl.f=f;
  unsigned int exp=(i_fl.u & exp_mask)>>23;
  fu tmp1;
  fu tmp2;
  float ret;


  /* sign=true なら負 falseなら正*/
  if( (i_fl.u>>31)==0 )
    sign=false;
  else 
    sign=true;

  if(exp==127)
    tmp1.u=get_subbit(i_fl.u,31,23)<<23;
  else if( (exp>>7)==0 )
    tmp1.u=0;
  else if(exp>=128 && exp<=149)
    tmp1.u=get_subbit(i_fl.u,31,150-exp)<<(150-exp);
  else
    tmp1.u=i_fl.u;

  tmp2.u=0xBF800000;
  if(sign)
    ret=fadd(tmp1.f,tmp2.f);
  else
    ret=fadd(tmp1.f,0.0);

  return ret;
}

/*
int main(){
  vector<float> v={-8.432, -6.4324, 5111.1, 32.0, 22.13, 4312.0001,-11.0};

  for(int i=0;i<v.size();i++)
    cout<< floor_sim(v[i]) << endl;

  return 0;
  }*/
