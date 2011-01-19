#include <stdio.h>
#include "fpu_sim.h"

unsigned int dtob(float f)
{
  fpn tmp;
  tmp.f = f;
  return tmp.i;
}

float btod(unsigned int i)
{
  fpn tmp;
  tmp.i = i;
  return tmp.f;
}

void binprint(unsigned int a, FILE *stream)
{
  int i;
  for (i = 0; i < 32; i++) {
    if ((a >> 31) == 0)
      fputc('0',stream);
    else
      fputc('1',stream);
    a <<= 1;
  }
}

/* '1'の個数を返す */
int fulladder(unsigned int a, unsigned int b, unsigned int c)
{
  int count = 0;
  if (a != 0) count++;
  if (b != 0) count++;
  if (c != 0) count++;
  return count;
}

unsigned int binadd(unsigned int a, unsigned int b)
{
  int i, count;
  unsigned int tmp = 0, carry = 0;
  for (i = 0; i < 32; i++) {
    tmp >>= 1;
    count = fulladder(a&0x00000001,b&0x00000001,carry);
    if (count == 1 || count == 3)
      tmp |= 0x80000000;
    if (count >= 2)
      carry = 1;
    else
      carry = 0;
    a >>= 1;
    b >>= 1;
  }

  return tmp;
}

unsigned int binsub(unsigned int a, unsigned int b)
{
  int i;
  unsigned int tmp = 0;
  for (i = 0; i < 32; i++) {
    tmp >>= 1;
    if ((b & 0x00000001) == 0)
      tmp |= 0x80000000;
    b >>= 1;
  }
  tmp = binadd(tmp,0x00000001);
  tmp = binadd(a,tmp);

  return tmp;
}

unsigned long long lbinadd(unsigned long long a, unsigned long long b)
{
  int i, count;
  unsigned long long tmp = 0, carry = 0;
  for (i = 0; i < 64; i++) {
    tmp >>= 1;
    count = fulladder(a&1,b&1,carry);
    if (count == 1 || count == 3)
      tmp |= (unsigned long long)0x80000000 << 32;
    if (count >= 2)
      carry = 1;
    else
      carry = 0;
    a >>= 1;
    b >>= 1;
  }

  return tmp;
}

unsigned long long binmul(unsigned int a, unsigned int b)
{
  int i;
  unsigned long long tmp = (unsigned long long)a, acc = 0;

  for (i = 0; i < 32; i++) {
    if (b << 31 != 0)
      acc = lbinadd(acc,tmp);
    tmp <<= 1;
    b >>= 1;
  }

  return acc;
}

