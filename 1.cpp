#define STREAM_ARRAY_SIZE 125
#define NTIMES    100000000

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdint.h>


#define STREAM_TYPE uint64_t
static STREAM_TYPE    a[STREAM_ARRAY_SIZE],
            c[STREAM_ARRAY_SIZE];
static uint64_t cycles[NTIMES];

int main()
{
   int k,j;
   FILE* stream_data = stdout;

   for (j=0; j<STREAM_ARRAY_SIZE; j++)
     {
    a[j] = j;
     }
   // Running experiment NTIMES
   for (k=0; k<NTIMES; k++)
     {
    for (j=0; j<STREAM_ARRAY_SIZE; j++)
      {
         c[j] = a[j];
         //a[j] += 1;
      }
     }
//   fprintf(stream_data, "%llf\n",a[0]);
}
