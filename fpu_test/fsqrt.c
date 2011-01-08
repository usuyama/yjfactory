#include <string.h>
#include "fpu_sim.h"

static char A[32],R[32];

static char X1[32],X2[32],X3[32],Z1[32],Z2[32],Z3[32],D1[32],D2[32],D3[32],DD2[32];
static char X4[64],Z4[64],DD[64];
static char E1[8],E2[8];
static char Sign;

void sqrt_initialize(float in)
{
  char tmp1[8],tmp2[8];
  dtob(in,A);

  Sign = A[31];
  fill_with_zero(tmp1,6);
  tmp1[6] = '1'; tmp1[7] = '0';
  strncpy(tmp2+7,"0",1);
  strncpy(tmp2,A+24,7);
  binadd(E1,tmp1,tmp2,8);
  tmp1[0] = tmp1[1] = tmp1[2] = tmp1[3]
    = tmp1[4] = tmp1[5] = '1';
  tmp1[6] = tmp1[7] = '0';
  binadd(E2,tmp1,tmp2,8);
  if (A[23] == '1') {
    X1[31] = '1';
    strncpy(X1+8,A,23);
    fill_with_zero(tmp1,8);
    strncpy(X1,tmp1,8);
    strncpy(Z1,X1,32);
  } else {
    X1[31] = '0'; X1[30] = '1';
    strncpy(X1+7,A,23);
    fill_with_zero(X1,7);
    strncpy(Z1,X1,32);
  }
}

void sqrt_loop()
{
  strncpy(X3,X2,32);
  strncpy(Z3,Z2,32);
  strncpy(X2,X1,32);
  strncpy(Z2,Z1,32);
  strncpy(X1,X4+31,32);
  strncpy(Z1,Z4+31,32);
  strncpy(D3,D2,32);
  strncpy(D2,D1,32);
  strncpy(DD2,DD+31,32);
}

void sqrt_wait()
{
  char tmp1[32],tmp2[32];

  R[31] = Sign;
  fill_with_zero(tmp1,30);
  tmp1[30] = tmp1[31] = '1';
  tmp2[31] = '0';
  strncpy(tmp2,X1+1,31);
  binsub(D1,tmp1,tmp2,32);
  binmul(DD,D2,D2,32);
  binmul(X4,X3,DD2,32);
  binmul(Z4,Z3,D3,32);
  if (Z4[62] == '1') {
    strncpy(R+23,E1,8);
    strncpy(R,Z4+39,23);
  } else {
    strncpy(R+23,E2,8);
    strncpy(R,Z4+38,23);
  }
}

float fsqrt(float in)
{
  int i;
  
  sqrt_initialize(in);
  sqrt_wait();
  for (i = 0; i < 14; i++) {
    sqrt_loop();
    sqrt_wait();
  }
  return btod(R);
}

