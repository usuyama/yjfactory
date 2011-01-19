#include "fpu_sim.h"

float fmul(float in1, float in2)
{
  unsigned int A,B,P;
  unsigned int E1,E2;
  unsigned long long F;
  unsigned int tmp;
  A = dtob(in1);
  B = dtob(in2);

  tmp = binadd(0x7F800000 & A,0x7F800000 & B);
  E1 = binsub(tmp,0x3F800000);
  E2 = binsub(tmp,0x3F000000);

  F = binmul((0x007FFFFF & A) | 0x00800000,(0x007FFFFF & B) | 0x00800000);

  P = (A & 0x80000000) ^ (B & 0x80000000);
  if ((A << 1) == 0 || (B << 1) == 0)
    ;
  else if (((unsigned int)(F >> 32) << 16) >> 31 != 0) {
    P |= E2;
    P |= (unsigned int)(F >> 24) & 0x007FFFFF;
  } else {
    P |= E1;
    P |= (unsigned int)(F >> 23) & 0x007FFFFF;
  }

  return btod(P);
}
