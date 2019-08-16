#include "threshold.h"

#if SIMDLENGTH  > 0

#ifndef __EMSCRIPTEN__

#include <xmmintrin.h>	// Need this for SSE compiler intrinsics
#include <pmmintrin.h>
#include <immintrin.h>

#endif

#endif

void threshold_portable(unsigned char* dst, unsigned char* src, int count, unsigned char thre){
   while(count > 0)
    {
        if(*src < thre)
        {
            *dst = 0;
        }
        else
        {
            *dst = 255;
        }
        src++;
        dst++;
        count--;
    }
}


#if SIMDLENGTH == 128

#ifdef __EMSCRIPTEN__

#include <wasm_simd128.h>

#if 0
//use bitselect
void threshold(unsigned char* dst, unsigned char* src, int count, unsigned char thre){
    v128_t zeros = wasm_i8x16_splat(0x0);
    v128_t ones = wasm_i8x16_splat(0xFF);

    v128_t thre16 =  wasm_i8x16_splat(thre);

    while(count >=16) {
        v128_t pixel = wasm_v128_load((void* )src);
        v128_t mask = wasm_u8x16_ge(pixel, thre16);
        v128_t bindst = wasm_v128_bitselect(ones, zeros, mask);//should not use bitselect???,normal select
        wasm_v128_store((void*)dst, bindst);
        src += 16;
        dst += 16;
        count -= 16;
    }
    while(count > 0)
    {
        if(*src < thre)
        {
            *dst = 0;
        }
        else
        {
            *dst = 255;
        }
        src++;
        dst++;
        count--;
    }
}
#else

/*
//count down
void threshold(unsigned char* dst, unsigned char* src, int count, unsigned char thre){

    v128_t thre16 =  wasm_i8x16_splat(thre);

    while(count >=16) {
        v128_t pixel = wasm_v128_load((void* )src);

        v128_t mask = wasm_u8x16_ge(pixel, thre16);//FF00, not 0100

        //v128_t bindst = wasm_i8x16_mul(ones, mask);//error, FF*FF, not FF*1
        v128_t bindst =  mask;

        wasm_v128_store((void*)dst, bindst);
        src += 16;
        dst += 16;
        count -= 16;
    }
    while(count > 0)
    {
        if(*src < thre)
        {
            *dst = 0;
        }
        else
        {
            *dst = 255;
        }
        src++;
        dst++;
        count--;
    }
}
*/
//count up
void threshold(unsigned char* dst, unsigned char* src, int count, unsigned char thre) {

    v128_t thre16 =  wasm_i8x16_splat(thre);

    int i = 0;
    //[i,i+15] in range[0, count-1]
    //while(i + 16 <= count) {
    while(i  <= count - 16) {
        v128_t pixel = wasm_v128_load((void* )(src+i));
        v128_t mask = wasm_u8x16_ge(pixel, thre16);//FF00, not 0100
        v128_t bindst =  mask;
        wasm_v128_store((void*)(dst+i), bindst);
        i = i + 16;
    }
    while(i < count)
    {
        if(src[i] < thre)
        {
            dst[i] = 0;
        }
        else
        {
            dst[i] = 255;
        }
        i++;
    }
}

#endif

#else //__EMSCRIPTEN__



void threshold(unsigned char* dst, unsigned char* src, int count, unsigned char thre){

    __m128i scale16 = _mm_set1_epi8(0x80);
    __m128i zeros =  _mm_set1_epi8(0x0);
    __m128i ones  =  _mm_set1_epi8(0xFF);

    __m128i thre16  = _mm_set1_epi8(thre);
    __m128i scaledthre =  _mm_sub_epi8(thre16, scale16);

    while(count >=16) {
        __m128i pixel = _mm_loadu_si128((const __m128i*)src);
        __m128i scaledpixel = _mm_sub_epi8(pixel, scale16);
        __m128i mask = _mm_cmplt_epi8(scaledpixel, scaledthre);
        __m128i bindst = _mm_blendv_epi8(ones, zeros, mask);
        _mm_storeu_si128((__m128i*)dst, bindst);
        src += 16;
        dst += 16;
        count -= 16;
    }
    while(count > 0)
    {
        if(*src < thre)
        {
            *dst = 0;
        }
        else
        {
            *dst = 255;
        }
        src++;
        dst++;
        count--;
    }
}
#endif //__EMSCRIPTEN__


#elif SIMDLENGTH == 256


#else //SIMDLENGHT



/*
void threshold(unsigned char* src, unsigned char* dst, int count, unsigned char thre){
    for (int i = 0; i < count; i++){
        if(src[i] < thre)
        {
            dst[i] = 0;
        }
        else
        {
            dst[i] = 255;
        }
    }
}
*/

void threshold(unsigned char* dst, unsigned char* src, int count, unsigned char thre){
   while(count > 0)
    {
        if(*src < thre)
        {
            *dst = 0;
        }
        else
        {
            *dst = 255;
        }
        src++;
        dst++;
        count--;
    }
}

#endif


