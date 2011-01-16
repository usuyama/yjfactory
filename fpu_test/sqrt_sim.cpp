#include <iostream>
#include <stdio.h>
#include "fpu_sim.h"
using namespace std;

typedef union fu{
  float f;
  unsigned int u;
}fu;

/*unsigned int get_subbit(unsigned int in,int start, int end){
  if (start >31 || start <0 || end >30 || end < 0){
    cout << "gut_subbit_error";
    exit(1);
  }
  in<<=(31-start);
  in>>=(31-start+end);
  return in;
  }*/

unsigned int get_sublbit(unsigned long long in,int start, int end){
  if (start >63 || start <0 || end >63 || end < 0 || start-end > 32){
    cout << "gut_subbit_error";
    exit(1);
  }
  in<<=(63-start);
  in>>=(63-start+end);
  //  cout << in << endl;
  return (unsigned int)in;
}

float sqrt_sim(float f){
  fu A,R;
  unsigned int X1,X2,X3,Z1,Z2,Z3,D1,D2,D3,DD2;
  unsigned long long X4,Z4,DD;
  unsigned int E1,E2;
  bool Sign;
  int count=0;
  unsigned int Rsub;

  A.f=f;
  for(count=0;count<16;count++){
    if(count==0){
      Sign = (A.u>>31) ? true:false;
      E1=64+get_subbit(A.u,30,24);
      E2=63+get_subbit(A.u,30,24);

      if(get_subbit(A.u,23,23)){
	X1=(1<<31)+(get_subbit(A.u,22,0)<<8);
	Z1=(1<<31)+(get_subbit(A.u,22,0)<<8);
      }
      else{
	X1=(1<<30)+(get_subbit(A.u,22,0)<<7);
	Z1=(1<<30)+(get_subbit(A.u,22,0)<<7);
      }
    }
    else{
      Z3=Z2;
      X3=X2;
      X2=X1;
      Z2=Z1;
      X1 = (unsigned int)((X4<<1)>>32);
      Z1 = (unsigned int)((Z4<<1)>>32);
      D3=D2;
      D2=D1;
      DD2 =(unsigned int)((DD<<1)>>32);
    }
    if(get_sublbit(Z4,62,62))
      Rsub=(E1<<23)+get_sublbit(Z4,61,39);
    else 
      Rsub=(E2<<23)+get_sublbit(Z4,60,38);

    if(Sign) R.u=Rsub | 0x8000000;
    else R.u=Rsub;
    //    cout << "count=" << count << " R=" << R.f <<endl;

    D1=0xC0000000-(X1>>1);
    DD=(unsigned long long)D2 * (unsigned long long)D2;
    X4= (unsigned long long)X3 * (unsigned long long)DD2;
    Z4=(unsigned long long)Z3 * (unsigned long long)D3;
  }
  return R.f;
}

/*int main(){
  vector<float> v={4321.9,23423.8,3213.0,432423.4};

  for(int i=0;i<v.size();i++){
    cout<<sqrt_sim(v[i])<<endl;
  }

  return 0;
  }*/

