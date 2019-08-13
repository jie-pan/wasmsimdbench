
#include <stdio.h>
#include "sum.h"

#define N  1000

static void initArray(float* a, int count) {
    for (int i = 0; i < count; i++ )
    {
        a[i] = 0.1;
    }
}


int main(int argc, char* argv[])
{
    alignas(16) float a[N];
   
    initArray(a, N);

    float num = 0.0f;
    for (int i = 0; i < 10000000; i++)
        num += sumfunc(a, N);

    printf("%s: sum = %f\n", argv[0], num);

    return 0;
}

