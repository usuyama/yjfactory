#include <stdio.h>
#include <stdlib.h>
#include "fpu_sim.h"
#include <math.h>

//static const float epsilon = pow(2.0, -126); // <- 指定のepsilon
static const float epsilon = pow(2.0, -18);

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
  return max2(max3(a, b, c), d);
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

void fsqrt_assert(float i)
{
  float acc_error_rate = pow(2.0, -20.0);
  float true_value = sqrtf(i);
  float calc = fsqrt(i);
  if(fabs(calc - true_value) >= max2(true_value * acc_error_rate, epsilon))
    printf("error: calc = %f, true = %f, sqrt(%f), diff = %f\n", calc, true_value, i, fabs(calc - true_value));
}

void
fsqrt_test()
{
  printf("###fsqrt\n");
  float i;
  for(i=0.0;i<1.0;i+=0.001)
    fsqrt_assert(i);
  for(i=1.0;i<100000.0;i+=1.12345)
    fsqrt_assert(i);
}

void
assert2(float (*sim_func)(float, float), float (*lm_func)(float, float), float arg1, float arg2)
{
  float acc_error_rate = pow(2.0, -23.0);
  float calc = sim_func(arg1, arg2);
  float true_value = lm_func(arg1, arg2);
  float diff = fabs(calc - true_value);
  float acc_error = max4(fabs(arg1)*acc_error_rate,fabs(arg2)*acc_error_rate,fabs(diff)*acc_error_rate, epsilon);
  if(diff >= acc_error)
    printf("error: calc = %f, true = %f, arg1 = %f, arg2 = %f, diff = %f, acceptable_diff = %f\n", calc, true_value, arg1, arg2, diff, acc_error);
}


void
fpu_test2(float (*sim_func)(float, float), float (*lm_func)(float, float))
{
  float x,y;
  float max = 10000.0;
  float gap = 123.45678;
  for(x=-max;x<gap;x+=gap){
    for(y=-max;y<gap;y+=gap)
      assert2(sim_func, lm_func, x, y);
  }
  max = 0.1;
  gap = 0.001;
  printf("##small test\n");
  for(x=-max;x<gap;x+=gap){
    for(y=-max;y<gap;y+=gap)
      assert2(sim_func, lm_func, x, y);
  }
  printf("##zero test\n");
  max = 1000.0;
  gap = 12.34567;
  for(x=-max;x<gap;x+=gap){
    if(!isinf(lm_func(x, 0.0))){
      assert2(sim_func, lm_func, x, 0.0);
      assert2(sim_func, lm_func, x, -0.0);
    }
    assert2(sim_func, lm_func, 0.0, x);
    assert2(sim_func, lm_func, 0.0, x);
  }
  printf("##big test\n");
  max = 1000000000.0;
  gap = 12345678.912345;
  for(x=-max;x<gap;x+=gap){
    for(y=-max;y<gap;y+=gap)
      assert2(sim_func, lm_func, x, y);
  }
}


int
main(void)
{
  //  fsqrt_test();
  //  fpu_test2(fdiv, lm_div);
  //  fpu_test2(fmul, lm_mul);
  fpu_test2(fadd, lm_add);
  return 0;
}
