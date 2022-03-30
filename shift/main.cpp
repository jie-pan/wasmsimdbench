
#include <sys/time.h>
#include <stdio.h>
#include "shift.h"


#define N  5000

static void initArray(uint8_t* a, int count) {
    for (int i = 0; i < count; i++ )
    {
        a[i] = i+1;
    }
}

void verify(uint8_t *gold, uint8_t* opt, int count)
{
    for (int i = 0; i < count; i++)
    {
        if(gold[i] != opt[i])
        {
            printf("%d mismatch: %d, %d\n", i, gold[i], opt[i]);
        }
    }
}

int main(int argc, char* argv[])
{
    alignas(16) uint8_t a[N], b[N], c[N];

    struct timeval start;
    struct timeval end;

    initArray(a, N);

    gettimeofday(&start, NULL);
    for (int i = 0; i < 10000; i++)
    {
        //shl_scalar(a, b, i, N);
        shl_simd(a, c, i, N);
    }

    gettimeofday(&end, NULL);
    printf("time = \t%ld\n", (end.tv_sec - start.tv_sec)*1000000 + (end.tv_usec- start.tv_usec));

    //verify(b, c, N);

    return 0;
}

