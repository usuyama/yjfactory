#include <stdio.h>
#include <stdlib.h>
#include "fpu_sim.h"
#include <math.h>

static const float epsilon = pow(2.0, -126); // <- floatspec指定のepsilon

float max2(float a, float b)
{
  if(a < b)
    return b;
  else
    return a;
}

float max3(float a, float b, float c)
{
  return max2(max2(a, b), c);
}

float max4(float a, float b, float c, float d)
{
  return max2(max2(a, b), max2(c, d));
}

float lm_div(float a, float b){
  return a / b;
}

float lm_mul(float a, float b){
  return a * b;
}

float lm_add(float a, float b){
  return a + b;
}

float lm_sub(float a, float b){
  return a - b;
}

void
print_bit(unsigned int n)
{
  int i;
  for(i=31;i>-1;i--)
    printf("%d", (1 & (n >> i)) > 0);
  printf("\n");
}

typedef union floating_point_number
{
  float f;
  unsigned int i;
} fpn;



void fsqrt_assert(float i)
{
  float acc_error_rate = pow(2.0, -20.0);
  float true_value = sqrtf(i);
  float calc = sqrt_sim(i);
  if(fabs(calc - true_value) >= max2(true_value * acc_error_rate, epsilon))
    printf("error: calc = %f, true = %f, sqrt(%f), diff = %f\n", calc, true_value, i, fabs(calc - true_value));
}

void fsqrt_diff_bit(float i)
{
  fpn calc;
  fpn true_value;
  calc.f = fabs(sqrt_sim(i));
  true_value.f = fabs(sqrtf(i));
  if(abs(calc.i - true_value.i) > 8){
    printf("#error: arg=%f\n", i);
    print_bit(calc.i);
    printf("%f\n", calc.f);
    print_bit(true_value.i);
    fsqrt_assert(i);
  }
}

void
fsqrt_test()
{
  printf("###fsqrt\n");
  float i;
  for(i=0.0;i<1.0;i+=0.001)
    fsqrt_diff_bit(i);
  for(i=1.0;i<100000.0;i+=0.12345)
    fsqrt_diff_bit(i);
}

void
assert2(float (*sim_func)(float, float), float (*lm_func)(float, float), float arg1, float arg2)
{
  float acc_error_rate = pow(2.0, -23.0);
  float calc = fabs(sim_func(arg1, arg2));
  float true_value = fabs(lm_func(arg1, arg2));
  float diff = fabs(calc - true_value);
  float acc_error = max4(fabs(arg1)*acc_error_rate,fabs(arg2)*acc_error_rate,fabs(diff)*acc_error_rate, epsilon);
  if(diff >= acc_error)
    printf("error: calc = %f, true = %f, arg1 = %f, arg2 = %f, diff = %f, acceptable_diff = %f\n", calc, true_value, arg1, arg2, diff, acc_error);
}

void
diff_bit(float (*sim_func)(float, float), float (*lm_func)(float, float), float arg1, float arg2, int accept_rate)
{
  fpn calc;
  fpn true_value;
  calc.f = fabs(sim_func(arg1, arg2));
  true_value.f = fabs(lm_func(arg1, arg2));
  if(abs(calc.i - true_value.i) > accept_rate){
    printf("#error: arg1=%f, arg2=%f\n", arg1, arg2);
    print_bit(calc.i);
    print_bit(true_value.i);
    assert2(sim_func, lm_func, arg1, arg2);
  }
}



void
fpu_test2(float (*sim_func)(float, float), float (*lm_func)(float, float), int accept_rate)
{
  float x,y;
  float max = 1000000.0;
  float gap = 123.45678;
  for(x=-max;x<gap;x+=gap){
    for(y=-max;y<gap;y+=gap)
      diff_bit(sim_func, lm_func, x, y, accept_rate);
  }
  max = 0.1;
  gap = 0.0001;
  printf("##small test\n");
  for(x=-max;x<gap;x+=gap){
    for(y=-max;y<gap;y+=gap)
      diff_bit(sim_func, lm_func, x, y, accept_rate);
  }
  printf("##zero test\n");
  max = 100000.0;
  gap = 12.34567;
  for(x=-max;x<gap;x+=gap){
    if(!isinf(lm_func(x, 0.0))){
      diff_bit(sim_func, lm_func, x, 0.0, accept_rate);
      diff_bit(sim_func, lm_func, x, -0.0, accept_rate);
    }
    diff_bit(sim_func, lm_func, 0.0, x, accept_rate);
    diff_bit(sim_func, lm_func, -0.0, x, accept_rate);
  }
  printf("##big test\n");
  max = 1000000000.0;
  gap = 1234567.8912345;
  for(x=-max;x<gap;x+=gap){
    for(y=-max;y<gap;y+=gap)
      diff_bit(sim_func, lm_func, x, y, accept_rate);
  }
}


int
main(void)
{
  fsqrt_test();
  //fpu_test2(fdiv, lm_div, 8);
  //  fpu_test2(fmul, lm_mul, 1);
  //  fpu_test2(fadd, lm_add, 1);
  //  fpu_test2(fadd, lm_add, 1);
  return 0;
}
