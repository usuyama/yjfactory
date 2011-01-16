//#include <iostream>
//#include <vector>
//using namespace std;

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

/*int main(){
  vector<float> v={12.1, 2.1, 12344.1334, -132.31279, -1.0, 1.00, 1.55};

  for(int i=0;i<v.size();i++)
    cout<< ftoi_sim(v[i]) << endl;

  return 0;
  }*/
