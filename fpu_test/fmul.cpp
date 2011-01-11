#include <string.h>
#include "fpu_sim.h"

float fmul(float in1, float in2)
{
  char A[32],B[32],P[32];
  char E1[9],E2[9],F[48];
  char tmp1[31],tmp2[24],tmp3[9];
  dtob(in1,A); dtob(in2,B);

  tmp1[8] = '0'; strncpy(tmp1,A+23,8);
  tmp2[8] = '0'; strncpy(tmp2,B+23,8);
  binadd(tmp3,tmp1,tmp2,9);
  tmp1[0] = tmp1[1] = tmp1[2] = tmp1[3]
    = tmp1[4] = tmp1[5] = tmp1[6] = '1';
  tmp1[7] = tmp1[8] = '0';
  binsub(E1,tmp3,tmp1,9);
  tmp1[0] = '0';
  binsub(E2,tmp3,tmp1,9);

  tmp1[23] = '1'; strncpy(tmp1,A,23);
  tmp2[23] = '1'; strncpy(tmp2,B,23);
  binmul(F,tmp1,tmp2,24);

  if (A[31] == B[31]) P[31] = '0';
  else P[31] = '1';
  fill_with_zero(tmp1,31);
  if (bincmp(A,tmp1,31) == 0 || bincmp(B,tmp1,31) == 0)
    fill_with_zero(P,31);
  else if (F[47] == '1') {
    strncpy(P+23,E2,8);
    strncpy(P,F+24,23);
  } else {
    strncpy(P+23,E1,8);
    strncpy(P,F+23,23);
  }

  return btod(P);
}
