#include "fpu_sim.h"

static unsigned int A,B,R;

static unsigned int X1,X3,Y1,Y3,D2,D3,InvB;
static unsigned long long X4,Y4;
static unsigned int E1,E2;
static unsigned int Sign,Dini,IsZ,IsI;

void div_initialize(float in1, float in2)
{
  unsigned int tmp;
  A = dtob(in1);
  B = dtob(in2);

  Sign = (A ^ B) & 0x80000000;
  X1 = 0x80000000 | ((A << 9) >> 1);
  Y1 = 0x80000000 | ((B << 9) >> 1);
  if ((B << 9) >> 31 == 0)
    InvB = 0x30000000;
  else
    InvB = 0x28000000;
  tmp = binsub(0x7F800000 & A,0x7F800000 & B);
  E1 = binadd(tmp,0x3F800000);
  E2 = binadd(tmp,0x3F000000);

  if (X1 < Y1) {
    Y1 >>= 1;
    InvB <<= 1;
    E1 = binsub(E1,0x00800000);
    E2 = binsub(E2,0x00800000);
  }
  Dini = 1;
}

void div_loop()
{
  X3 = X1;
  Y3 = Y1;
  X1 = (unsigned int)(X4 >> 31);
  Y1 = (unsigned int)(Y4 >> 31);
  D3 = D2;
  Dini = 0;
}

void div_wait()
{
  if (Dini == 0)
    D2 = binsub(0,Y1);
  else
    D2 = InvB;
  X4 = binmul(X3,D3);
  Y4 = binmul(Y3,D3);
  R = Sign;
  if ((A << 1) == 0)
    ;
  else if ((B << 1) == 0)
    R |= 0x7F800000;
  else if (((unsigned int)(X4 >> 32) << 1) >> 31 != 0) {
    R |= E1;
    R |= (unsigned int)(X4 >> 39) & 0x007FFFFF;
  } else {
    R |= E2;
    R |= (unsigned int)(X4 >> 38) & 0x007FFFFF;
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

