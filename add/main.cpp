
#include <stdio.h>
#include "add.h"

#define N  1000
//#define N  999 

static void initArray(float* a, float* b, int count) {
    for (int i = 0; i < count; i++ )
    {
        a[i] = 0.1;
        b[i] = 0.1;
    }
}


int main(int argc, char* argv[])
{
    alignas(32) float a[N], b[N], c[N];
   
    initArray(a, b, N);

    float num = 0.0f;
    for (int i = 0; i < 10000000; i++)
    {
        num += addfunc(a, b, c, N);
        //num += addfunc(a, b, c, 1002);
    }


    printf("%s: ret = %f\n", argv[0], num);

    return 0;
}

