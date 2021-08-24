

#include <stdio.h>
#include <memory.h>
#include "threshold.h"

static void initArray(unsigned char* a, int count) {
    for (int i = 0; i < count; i++ )
    {
        a[i] = i & 0xFF;
    }
}

void verify(unsigned char *gold, unsigned char* opt, int count)
{
#if 0
    if(memcmp(gold, opt, count) != 0)
    {
        printf("mismatch error\n");
    }

#else

    for (int i = 0; i < count; i++)
    {
        if(gold[i] != opt[i])
        {
            printf("%d mismatch: %d, %d\n", i, gold[i], opt[i]);
        }

    }
#endif

}

#define N 4096

int main()
{
    alignas(16)  unsigned char src[N], dst[N], dst2[N];

    initArray(src, N);

    int iteration = 10000000;
    //int iteration =   10;
    for (int i = 0; i < iteration; i++)
    {

        //printf(" %d iteraton\n", i);
        threshold(dst, src, N, i&0xFF);

        //threshold_portable(dst2, src, N, i&0xFF);
        //verify(dst2, dst, N);

    }
    printf("src[0] = %d\n", src[0]);
    return 0;

}
