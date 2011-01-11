#include <stdio.h>
#include <string.h>
#include "fpu_sim.h"

int conv_integer(char *s, int n)
{
  int i, tmp = 1, ret = 0;

  for (i = 0; i < n; i++) {
    if (s[i] == '1') ret += tmp;
    tmp *= 2;
  }
  return ret;
}

void tfb_priority_encoder(char *count, char *p)
{
  int top = 0,i,n;

  for (i = 0; i < 24; i++) {
    if (count[i] == '1') top = i;
  }

  top = 23 - top;
  n = 16;
  for (i = 4; i >= 0; i--) {
    if (top >= n) {
      p[i] = '1';
      top -= n;
    } else
      p[i] = '0';
    n /= 2;
  }
}

void tfb_lshifter(char *a, char *count, char *r)
{
  char shifted_1[25],shifted_2[25],shifted_3[25],shifted_4[25];

  if (count[4] == '1') {
    strncpy(shifted_4+16,a,9);
    fill_with_zero(shifted_4,16);
  } else
    strncpy(shifted_4,a,25);
  if (count[3] == '1') {
    strncpy(shifted_3+8,shifted_4,17);
    fill_with_zero(shifted_3,8);
  } else
    strncpy(shifted_3,shifted_4,25);
  if (count[2] == '1') {
    strncpy(shifted_2+4,shifted_3,21);
    fill_with_zero(shifted_2,4);
  } else
    strncpy(shifted_2,shifted_3,25);
  if (count[1] == '1') {
    strncpy(shifted_1+2,shifted_2,23);
    fill_with_zero(shifted_1,2);
  } else
    strncpy(shifted_1,shifted_2,25);
  if (count[0] == '1')
    strncpy(r,shifted_1,23);
  else
    strncpy(r,shifted_1+1,23);
}

float fadd(float in1, float in2)
{
  char A[32],B[32],S[32];
  char G[32],L[32],F_1[25],LF_1[25],F_2[26],LF_2[26],F_1_NORMALIZED[23],F_2_NORMALIZED[23];
  char DIFF_E[8],E_1_NORMALIZED[8],E_2_NORMALIZED[8],P[5],Sign;
  int Com,DIFFLAG;
  char tmp1[32],tmp2[32];
  int i,count;
  dtob(in1,A); dtob(in2,B);

  Com = bincmp(B,A,31);
  if (Com > 0) {
    strncpy(G,B,32);
    strncpy(L,A,32);
  } else {
    strncpy(G,A,32);
    strncpy(L,B,32);
  }
  if (A[31] == B[31]) Sign = '0';
  else Sign = '1';
  binsub(DIFF_E,G+23,L+23,8);
  fill_with_zero(tmp1,7);
  if (bincmp(DIFF_E+1,tmp1,7) == 0 && Sign == '1') DIFFLAG = 1;
  else DIFFLAG = 0;

  if (DIFF_E[0] == '0') {
    LF_1[24] = '1';
    strncpy(LF_1+1,L,23);
    LF_1[0] = '0';
  } else {
    LF_1[24] = '0'; LF_1[23] = '1';
    strncpy(LF_1,L,23);
  }
  tmp2[24] = '1';
  strncpy(tmp2+1,G,23);
  tmp2[0] = '0';
  binsub(F_1,tmp2,LF_1,25);
  binsub(tmp1,A,B,32);
  tmp2[31] = '1'; fill_with_zero(tmp2,31);
  tfb_priority_encoder(F_1+1,P);
  if (bincmp(tmp1,tmp2,31) == 0)
    fill_with_zero(E_1_NORMALIZED,8);
  else {
    fill_with_zero(tmp1+5,3); strncpy(tmp1,P,5);
    binsub(E_1_NORMALIZED,G+23,tmp1,8);
  }
  tfb_lshifter(F_1,P,F_1_NORMALIZED);

  LF_2[25] = '0'; LF_2[24] = '1';
  strncpy(LF_2+1,L,23);
  LF_2[0] = '0';
  count = conv_integer(DIFF_E,8);
  for (i = 0; i < 26; i++) {
    if (i+count < 26) LF_2[i] = LF_2[i+count];
    else LF_2[i] = '0';
  }
  tmp1[25] = '0'; tmp1[24] = '1';
  strncpy(tmp1+1,G,23);
  tmp1[0] = '0';
  if (Sign == '0') binadd(F_2,tmp1,LF_2,26);
  else binsub(F_2,tmp1,LF_2,26);
  tmp1[0] = '1'; fill_with_zero(tmp1+1,7);
  if (F_2[25] == '1') {
    strncpy(F_2_NORMALIZED,F_2+2,23);
    binadd(E_2_NORMALIZED,G+23,tmp1,8);
  } else if (F_2[24] == '1') {
    strncpy(F_2_NORMALIZED,F_2+1,23);
    strncpy(E_2_NORMALIZED,G+23,8);
  } else {
    strncpy(F_2_NORMALIZED,F_2,23);
    binsub(E_2_NORMALIZED,G+23,tmp1,8);
  }

  fill_with_zero(tmp1,31);
  S[31] = G[31];
  if (bincmp(L,tmp1,31) == 0)
    strncpy(S,G,31);
  else if (DIFFLAG == 1) {
    strncpy(S+23,E_1_NORMALIZED,8);
    strncpy(S,F_1_NORMALIZED,23);
  } else {
    strncpy(S+23,E_2_NORMALIZED,8);
    strncpy(S,F_2_NORMALIZED,23);
  }

  return btod(S);
}
