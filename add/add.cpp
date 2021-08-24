#include "add.h"

#if SIMDLENGTH  > 0

#ifndef __EMSCRIPTEN__

#include <xmmintrin.h>	// Need this for SSE compiler intrinsics
#include <pmmintrin.h>
#include <immintrin.h>

#endif

#endif



#if SIMDLENGTH == 128

#ifdef __EMSCRIPTEN__

#include <wasm_simd128.h>


//count up
// org
/*
float addfunc(float* a, float* b, float* c, int count)
{
    //assert(count%4 == 0);
    for (int i = 0; i < count; i += 4)
    {
        v128_t v0 = wasm_v128_load((void* )(a+i));
        v128_t v1 = wasm_v128_load((void* )(b+i));

        v128_t v2 =wasm_f32x4_add(v0, v1);
        wasm_v128_store((void*)(c+i), v2);
    }
    return 1;
}
*/


//count up

float addfunc(float* a, float* b, float* c, int count)
{
    int i = 0;
    for (; i <= count - 4; i += 4)
    {
        v128_t v0 = wasm_v128_load((void* )(a+i));
        v128_t v1 = wasm_v128_load((void* )(b+i));

        v128_t v2 =wasm_f32x4_add(v0, v1);
        wasm_v128_store((void*)(c+i), v2);
    }
    while(i < count)
    {
        c[i] = a[i] + b[i];
        i++;
    }
    return 1;
}



//count down
/*
float addfunc(float* a, float* b, float* c, int count)
{
   
    while (count > 3)
    {
        v128_t v0 = wasm_v128_load((void* )a);
        v128_t v1 = wasm_v128_load((void* )b);

        v128_t v2 =wasm_f32x4_add(v0, v1);
        wasm_v128_store((void*)c, v2);

        a += 4;
        b += 4;
        c += 4;
        count -= 4;
    }

    while(count > 0)
    {
        *c = *a + *b;
        a += 1;
        b += 1;
        c += 1;
        count--;
    }
    return 1;
}
*/


/*
// div && mod
float addfunc(float* a, float* b, float* c, int count)
{
    
    int div8 = count &( ~3);
    int i = 0;
    
    while(i < div8)
    {
        v128_t v0 = wasm_v128_load((void* )(a+ i));
        v128_t v1 = wasm_v128_load((void* )(b+ i));

        v128_t v2 =wasm_f32x4_add(v0, v1);
        wasm_v128_store((void*)(c+i), v2);
        i += 4;
    }
    //TODO
    for (i = div8; i < count; i++)
    {
        c[i] = a[i] + b[i];
    }


    return 1;
}
*/


#else //__EMSCRIPTEN__


float addfunc(float* a, float* b, float* c, int count)
{
    //assert(count%4 == 0);
    __m128 v0, v1, v2;

    for (int i = 0; i < count; i += 4)
    {
        v0 = _mm_load_ps(a+i);
        v1 = _mm_load_ps(b+i);
        v2 = _mm_add_ps(v0, v1);
        _mm_store_ps(c+i, v2);
    }

    return 1;
}

#endif //__EMSCRIPTEN__

#elif SIMDLENGTH == 256



float addfunc(float* a, float* b, float* c, int count)
{
    //assert(count%8 == 0);
    __m256 v0, v1, v2;

    for (int i = 0; i < count; i += 8)
    {
        v0 = _mm256_load_ps(a+i);
        v1 = _mm256_load_ps(b+i);
        v2 = _mm256_add_ps(v0, v1);
        _mm256_store_ps(c+i, v2);
    }

    return 1;
}

#else //SIMDLENGTH 

float addfunc(float* a, float* b, float* c, int count)
{
    for (int i = 0; i < count; i++)
    {
        c[i] = a[i] + b[i];
    }

    return 1;
}
#endif





