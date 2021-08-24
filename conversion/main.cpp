

#include <stdio.h>
#include <memory.h>
#include "conversion.h"

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

    //int iteration = 10000000;
    int iteration = 10000;
    int32_t mask[1] = {0x00FF00FF};
    for (int i = 0; i < iteration; i++)
    {

        //printf(" %d iteraton\n", i);

        RGBA_to_BGRA((uint32_t*)dst, (const uint32_t*)src, N/4);
        //RGBA_to_BGRA_v2((uint32_t*)dst, (const uint32_t*)src, mask, N/4);

        RGBA_to_BGRA_portable((uint32_t*)dst2, (const uint32_t*)src, N/4);
        verify(dst2, dst, N);

    }
    printf("src[0] = %d\n", src[0]);
    return 0;

}
