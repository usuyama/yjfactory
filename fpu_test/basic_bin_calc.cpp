#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef union floating_point_number
{
  float f;
  unsigned int i;
} fpn;

/* ビット列sとtをnビットまで比較する */
int bincmp(char *s, char *t, int n)
{
  int i;
  for (i = n-1; i >= 0; i--) {
    if (s[i] == '1' && t[i] == '0') return 1;
    if (s[i] == '0' && t[i] == '1') return -1;
  }
  return 0;
}

void print_array(char *s, int n, FILE *stream)
{
  int i;
  n--;
  for (i = 0; i <= n; i++)
    fputc(s[n-i],stream);
}

/* sをn個0で埋める */
void fill_with_zero(char *s, int n)
{
  int i;
  for (i = 0; i < n; i++) s[i] = '0';
}

/* floatを2進数ビット列に変換する */
void dtob(float f, char *s)
{
  int j;
  fpn tmp;

  tmp.f = f;
  for (j = 0; j < 32; j++) {
    if ((tmp.i & 0x00000001) == 0x00000000)
      s[j] = '0';
    else
      s[j] = '1';
    tmp.i >>= 1;
  }
}

/* 2進数ビット列をfloatに変換して返す */
float btod(char *s)
{
  fpn tmp;
  int j;

  tmp.i = 0;
  for (j = 31; j >= 0; j--) {
    tmp.i <<= 1;
    if (s[j] == '1')
      tmp.i |= 0x00000001;
  }

  return tmp.f;
}

/* '1'の個数を返す */
int fulladder(char a, char b, char c)
{
  int count = 0;
  if (a == '1') count++;
  if (b == '1') count++;
  if (c == '1') count++;
  return count;
}

/* nビット同士の加算 d = s+t */
void binadd(char *d, char *s, char *t, int n)
{
  int i, count;
  char carry = 0;
  for (i = 0; i < n; i++) {
    count = fulladder(s[i],t[i],carry);
    if (count == 1 || count == 3)
      d[i] = '1';
    else
      d[i] = '0';
    if (count >= 2)
      carry = '1';
    else
      carry = '0';
  }
}

/* nビット同士の減算 d = s-t */
void binsub(char *d, char *s, char *t, int n)
{
  int i;
  char *tmp, *not_t, *minus_t;
  tmp = (char *)malloc(n * sizeof(char));
  not_t = (char *)malloc(n * sizeof(char));
  minus_t = (char *)malloc(n * sizeof(char));

  for (i = 0; i < n; i++) {
    tmp[i] = '0';
    if (t[i] == '1')
      not_t[i] = '0';
    else
      not_t[i] = '1';
  }
  tmp[0] = '1';
  binadd(minus_t, tmp, not_t, n);
  binadd(d, s, minus_t, n);

  free(tmp); free(not_t); free(minus_t);
}

/* nビット同士の乗算 d = s*t */
void binmul(char *d, char *s, char *t, int n)
{
  int i, np, double_n;
  char *tmp1,*tmp2;

  np = n + 1; double_n = 2*n;
  tmp1 = (char *)malloc(double_n * sizeof(char));
  tmp2 = (char *)malloc(np * sizeof(char));
  tmp2[n] = '0';
  strncpy(tmp2,t,n);
  fill_with_zero(d,double_n);
  for (i = 0; i < n; i++) {
    if (s[i] == '1') {
      binadd(tmp1+i,d+i,tmp2,np);
      strncpy(d+i,tmp1+i,np);
    }
  }
  free(tmp1); free(tmp2);
}

