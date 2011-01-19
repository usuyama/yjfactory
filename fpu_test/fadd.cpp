#include "fpu_sim.h"

float fadd(float in1, float in2)
{
  unsigned int A,B,S;
  unsigned int G,L,GF,LF,F;
  unsigned int DIFF_E,E,Sign;
  int i, p = 1;

  A = dtob(in1);
  B = dtob(in2);

  if ((A >> 31) == (B >> 31))
    Sign = 0;
  else
    Sign = 1;

  if (Sign == 1 && (B << 1) == (A << 1))
    return 0;
  if ((B << 1) > (A << 1)) {
    G = B; L = A;
  } else {
    G = A; L = B;
  }
  DIFF_E = binsub((G << 1) >> 24,(L << 1) >> 24);

  if (DIFF_E >> 1 == 0 && Sign == 1) {
    GF = (G << 8) | 0x80000000;
    LF = (L << 8) | 0x80000000;
    if (DIFF_E != 0) LF >>= 1;
    F = binsub(GF,LF);
    E = (G << 1) >> 24;
    while (F >> 31 == 0) {
      E = binsub(E,1);
      F <<= 1;
    }
    F <<= 1;
  } else {
    GF = ((G << 8) | 0x80000000) >> 1;
    LF = ((L << 8) | 0x80000000) >> 1;
    for (i = 0; i < 8; i++) {
      if (DIFF_E << 31 != 0)
        LF >>= p;
      DIFF_E >>= 1;
      p *= 2;
    }
    LF &= 0xFFFFFFC0;
    if (Sign == 0)
      F = binadd(GF,LF);
    else
      F = binsub(GF,LF);
    E = (G << 1) >> 24;
    if (F >> 31 != 0) {
      F <<= 1;
      E = binadd(E,1);
    } else if (F >> 30 != 0) {
      F <<= 2;
    } else {
      F <<= 3;
      E = binsub(E,1);
    }
  }
  if (L << 1 == 0)
    S = G;
  else {
    S = G & 0x80000000;
    S |= E << 23;
    S |= F >> 9;
  }

  return btod(S);
}
