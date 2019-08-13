

#include <stdio.h>
#include <memory.h>
#include "threshold.h"

static void initArray(unsigned char* a, int count) {
    for (int i = 0; i < count; i++ )
    {
        a[i] = i & 0xFF;
    }
}

#define N 4096

int main()
{
    alignas(16)  unsigned char src[N], dst[N], dst2[N];
    
    initArray(src, N);

    int iteration = 10000000;
    for (int i = 0; i < iteration; i++)
    {

        threshold(dst, src, N, i&0xFF);

        //RGBA_to_BGRA((uint32_t*)dst, (const uint32_t*)src, N/4);
        /*
        threshold_sse(dst2, src, N, i&0xFF);
        if(memcmp(dst, dst2, N) != 0)
        {
            printf("mismatch error\n");
        }
        */
    }
    printf("src[0] = %d\n", src[0]);
    return 0;

}
