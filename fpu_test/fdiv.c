#include <string.h>
#include "fpu_sim.h"

static char A[32],B[32],R[32];

static char X1[32],X3[32],Y1[32],Y3[32],D2[32],D3[32],InvB[32];
static char X4[64],Y4[64];
static char E1[8],E2[8];
static char Sign,Dini;

void div_initialize(float in1, float in2)
{
  char tmp1[8],tmp2[8];
  dtob(in1,A); dtob(in2,B);

  if (A[31] == B[31]) Sign = '0';
  else Sign = '1';
  tmp1[7] = '0';
  tmp1[2] = tmp1[3] = tmp1[4] = tmp1[5] = tmp1[6] = '1';
  X1[31] = '1';
  strncpy(X1+8,A,23);
  fill_with_zero(X1,8);
  InvB[31] = '0';
  if (bincmp(B,A,23) > 0) {
    Y1[31] = '0'; Y1[30] = '1';
    strncpy(Y1+7,B,23);
    fill_with_zero(Y1,7);
    InvB[30] = '1';
    if (B[22] == '1') { InvB[29] = '0'; InvB[28] = '1'; }
    else { InvB[29] = '1'; InvB[28] = '0'; }
    InvB[27] = '0';
    binsub(tmp2,A+23,B+23,8);
    tmp1[0] = '0'; tmp1[1] = '1';
    binadd(E1,tmp1,tmp2,8);
    tmp1[0] = '1'; tmp1[1] = '0';
    binadd(E2,tmp1,tmp2,8);
  } else {
    Y1[31] = '1';
    strncpy(Y1+8,B,23);
    fill_with_zero(Y1,8);
    InvB[30] = '0'; InvB[29] = '1';
    if (B[22] == '1') { InvB[28] = '0'; InvB[27] = '1'; }
    else { InvB[28] = '1'; InvB[27] = '0'; }
    binsub(tmp2,A+23,B+23,8);
    tmp1[0] = '1'; tmp1[1] = '1';
    binadd(E1,tmp1,tmp2,8);
    tmp1[0] = '0';
    binadd(E2,tmp1,tmp2,8);
  }
  fill_with_zero(InvB,27);
  Dini = '1';
}

void div_loop()
{
  strncpy(X3,X1,32);
  strncpy(Y3,Y1,32);
  strncpy(X1,X4+31,32);
  strncpy(Y1,Y4+31,32);
  strncpy(D3,D2,32);
  Dini = '0';
}

void div_wait()
{
  int i;
  char tmp1[32],tmp2[32];

  if (Dini == '0') {
    for (i = 0; i < 32; i++) {
      if (Y1[i] == '1') tmp1[i] = '0';
      else tmp1[i] = '1';
      tmp2[i] = '0';
    }
    tmp2[0] = '1';
    binadd(D2,tmp1,tmp2,32);
  } else
    strncpy(D2,InvB,32);
  binmul(X4,X3,D3,32);
  binmul(Y4,Y3,D3,32);
  R[31] = Sign;
  fill_with_zero(tmp1,31);
  if (bincmp(B,tmp1,31) == 0) {
    R[23] = R[24] = R[25] = R[26] = R[27]
          = R[28] = R[29] = R[30] = '1';
    fill_with_zero(R,23);
  } else if (bincmp(A,tmp1,31) == 0)
    fill_with_zero(R,31);
  else if (X4[62] == '1') {
    strncpy(R+23,E1,8);
    strncpy(R,X4+39,23);
  } else {
    strncpy(R+23,E2,8);
    strncpy(R,X4+38,23);
  }
}

float fdiv(float in1, float in2)
{
  int i;

  div_initialize(in1, in2);
  div_wait();
  for (i = 0; i < 11; i++) {
    div_loop();
    div_wait();
  }
  return btod(R);
}

