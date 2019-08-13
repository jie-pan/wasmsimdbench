#include "threshold.h"

#if SIMDLENGTH  > 0

#ifndef __EMSCRIPTEN__

#include <xmmintrin.h>	// Need this for SSE compiler intrinsics
#include <pmmintrin.h>
#include <immintrin.h>

#endif

#endif


/*
void grayscale(unsigned char* src, int width,  unsigned char *dst){
    int len = imageSrc->length * 4, 

        for (int i = 0; i < width; i++){
            j = 4*i;
            dst[i] = (unsigned char)(src[j] * 0.299 + src[j + 1] * 0.587 + src[j + 2] * 0.114 + 0.5);
        }

}

void grayscale(unsigned char* src, int width,  unsigned char *dst){
    int len = imageSrc->length * 4, 

        for (int i = 0; i < width; i++){
            j = 4*i;
            dst[i] = (unsigned char)(src[j] * 0.299 + src[j + 1] * 0.587 + src[j + 2] * 0.114 + 0.5);
        }

}
*/

#if SIMDLENGTH == 128

#ifdef __EMSCRIPTEN__

#include <wasm_simd128.h>
void RGBA_to_BGRA(uint32_t* dst, const uint32_t* src, int count) {
    //const __m128i swapRB = _mm_setr_epi8(2,1,0,3, 6,5,4,7, 10,9,8,11, 14,13,12,15);
    /*v128_t swapRB = wasm_i8x16_const((int8_t)2,(int8_t)1,(int8_t)0,(int8_t)3,
                                     (int8_t)6,(int8_t)5,(int8_t)4,(int8_t)7, 
                                     (int8_t)10,(int8_t)9,(int8_t)8,(int8_t)11,
                                     (int8_t)14,(int8_t)13,(int8_t)12,(int8_t)15);
                                     */
    v128_t tmp = wasm_i8x16_splat(0);
    while (count >= 4) {
        //__m128i rgba = _mm_loadu_si128((const __m128i*) src);
        v128_t rgba = wasm_v128_load((void* )src);

        //__m128i bgra = _mm_shuffle_epi8(rgba, swapRB);//swizzle
        v128_t bgra = wasm_v8x16_shuffle(rgba, tmp, 2,1,0,3, 6,5,4,7, 10,9,8,11, 14,13,12,15);

        //_mm_storeu_si128((__m128i*) dst, bgra);
        wasm_v128_store((void*)dst, bgra);

        src += 4;
        dst += 4;
        count -= 4;
    }
    for (int i = 0; i < count; i++) {
        uint8_t a = (src[i] >> 24) & 0xFF,
                b = (src[i] >> 16) & 0xFF,
                g = (src[i] >>  8) & 0xFF,
                r = (src[i] >>  0) & 0xFF;
        dst[i] = (uint32_t)a << 24
               | (uint32_t)r << 16
               | (uint32_t)g <<  8
               | (uint32_t)b <<  0;
    }
}

#if 0
void threshold(unsigned char* dst, unsigned char* src, int count, unsigned char thre){
    
    //__m128i scale16 = _mm_set1_epi8(0x80);
    //__m128i zeros =  _mm_set1_epi8(0x0);
    //__m128i ones  =  _mm_set1_epi8(0xFF);
    v128_t scale16 = wasm_i8x16_splat(0x80);
    v128_t zeros = wasm_i8x16_splat(0x0);
    v128_t ones = wasm_i8x16_splat(0xFF);

    //__m128i thre16  = _mm_set1_epi8(thre);
    v128_t thre16 =  wasm_i8x16_splat(thre);

    //__m128i scaledthre =  _mm_sub_epi8(thre16, scale16);
    v128_t scaledthre = wasm_i8x16_sub(thre16, scale16);

    while(count >=16) {
        //__m128i pixel = _mm_loadu_si128((const __m128i*)src);
        v128_t pixel = wasm_v128_load((void* )src);

        //__m128i scaledpixel = _mm_sub_epi8(pixel, scale16);
        v128_t scaledpixel = wasm_i8x16_sub(pixel, scale16); 

        //__m128i mask = _mm_cmplt_epi8(scaledpixel, scaledthre);
        v128_t mask = wasm_i8x16_lt(scaledpixel, scaledthre);

        //__m128i bindst = _mm_blendv_epi8(ones, zeros, mask);
        v128_t bindst = wasm_v128_bitselect(zeros, ones, mask);

        //_mm_storeu_si128((__m128i*)dst, bindst);
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
#endif
void threshold(unsigned char* dst, unsigned char* src, int count, unsigned char thre){
    v128_t zeros = wasm_i8x16_splat(0x0);
    v128_t ones = wasm_i8x16_splat(0xFF);

    v128_t thre16 =  wasm_i8x16_splat(thre);

    while(count >=16) {
        v128_t pixel = wasm_v128_load((void* )src);

        v128_t mask =wasm_u8x16_lt(pixel, thre16);

        v128_t bindst = wasm_v128_bitselect(zeros, ones, mask);

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

#else //__EMSCRIPTEN__


void RGBA_to_BGRA(uint32_t* dst, const uint32_t* src, int count) {
    const __m128i swapRB = _mm_setr_epi8(2,1,0,3, 6,5,4,7, 10,9,8,11, 14,13,12,15);

    while (count >= 4) {
        __m128i rgba = _mm_loadu_si128((const __m128i*) src);
        __m128i bgra = _mm_shuffle_epi8(rgba, swapRB);
        _mm_storeu_si128((__m128i*) dst, bgra);

        src += 4;
        dst += 4;
        count -= 4;
    }
    for (int i = 0; i < count; i++) {
        uint8_t a = (src[i] >> 24) & 0xFF,
                b = (src[i] >> 16) & 0xFF,
                g = (src[i] >>  8) & 0xFF,
                r = (src[i] >>  0) & 0xFF;
        dst[i] = (uint32_t)a << 24
               | (uint32_t)r << 16
               | (uint32_t)g <<  8
               | (uint32_t)b <<  0;
    }
}
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

void RGBA_to_BGRA(uint32_t* dst, const uint32_t* src, int count) {
    for (int i = 0; i < count; i++) {
        uint8_t a = (src[i] >> 24) & 0xFF,
                b = (src[i] >> 16) & 0xFF,
                g = (src[i] >>  8) & 0xFF,
                r = (src[i] >>  0) & 0xFF;
        dst[i] = (uint32_t)a << 24
               | (uint32_t)r << 16
               | (uint32_t)g <<  8
               | (uint32_t)b <<  0;
    }
}

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


