#include "fpu_sim.h"

float fsub(float in1, float in2)
{
  return fadd(in1,(in2*-1));
}
