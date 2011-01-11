#ifndef FPU_SIM_H
#define FPU_SIM_H

/* basic_calc.c */
int bincmp(char *s, char *t, int n);
void fill_with_zero(char *s, int n);
void dtob(float f, char *s);
float btod(char *s);
void binadd(char *d, char *s, char *t, int n);
void binsub(char *d, char *s, char *t, int n);
void binmul(char *d, char *s, char *t, int n);

float fadd(float in1, float in2); /* fadd.c */
float fmul(float in1, float in2); /* fmul.c */
float fdiv(float in1, float in2); /* fdiv.c  */
float fsub(float in1, float in2); /* fsub.c  */
float fsqrt(float in);             /* fsqrt.c */

#endif
