#ifndef FPU_SIM_H
#define FPU_SIM_H

typedef union floating_point_number
{
  float f;
  unsigned int i;
} fpn;

/* basic_bin_calc.c */
unsigned int dtob(float f);
float btod(unsigned int i);
unsigned int binadd(unsigned int a, unsigned int b);
unsigned int binsub(unsigned int a, unsigned int b);
unsigned long long binmul(unsigned int a, unsigned int b);

float fadd(float in1, float in2); /* fadd.c */
float fsub(float in1, float in2); /* fsub.c */
float fmul(float in1, float in2); /* fmul.c */
float fdiv(float in1, float in2); /* fdiv.c */
float fsqrt(float in);             /* fsqrt.c */

#endif
