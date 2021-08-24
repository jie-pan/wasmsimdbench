#include "conversion.h"

#if SIMDLENGTH  > 0

#ifndef __EMSCRIPTEN__

#include <xmmintrin.h>	// Need this for SSE compiler intrinsics
#include <pmmintrin.h>
#include <immintrin.h>

#endif

#endif

void RGBA_to_BGRA_portable(uint32_t* dst, const uint32_t* src, int count) {
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



#if SIMDLENGTH == 128

#ifdef __EMSCRIPTEN__

#include <wasm_simd128.h>

#if 1
void RGBA_to_BGRA(uint32_t* dst, const uint32_t* src, int count) {

    v128_t tmp = wasm_i8x16_splat(0);
    while (count >= 4) {
        v128_t rgba = wasm_v128_load((void* )src);
        v128_t bgra = wasm_v8x16_shuffle(rgba, tmp, 2,1,0,3, 6,5,4,7, 10,9,8,11, 14,13,12,15);
        //v128_t bgra = wasm_v8x16_shuffle(rgba, tmp, 2,1,17,3, 6,5,4,7, 10,9,8,11, 14,13,12,15);//TEST shuffle bug
        //v128_t bgra = wasm_v8x16_shuffle(rgba, tmp, 2,1,17,3, 6,5,4,7, 10,9,8,11, 14,13,12,0);//TEST shuffle bug
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

#else

void RGBA_to_BGRA(uint32_t* dst, const uint32_t* src, int count) {

    v128_t gamask = wasm_i32x4_splat(0x00FF00FF);
    v128_t  rmask = wasm_i32x4_splat(0xFF000000);
    v128_t  bmask = wasm_i32x4_splat(0x0000FF00);
    while (count >= 4) {
        v128_t rgba = wasm_v128_load((void* )src);
        v128_t ga = wasm_v128_and(rgba, gamask);
        v128_t r = wasm_v128_and(rgba, rmask);
        v128_t b = wasm_v128_and(rgba, bmask);
        v128_t bga = wasm_v128_or(ga, wasm_i32x4_shl(b, 16));
        v128_t bgra = wasm_v128_or(bga, wasm_u32x4_shr(r, 16));
        //v128_t bgra = wasm_v128_or(bga, wasm_i32x4_shr(r, 16));


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


void RGBA_to_BGRA_v2(uint32_t* dst, const uint32_t* src, void* mask, int count) {
/*
    v128_t gamask = wasm_v32x4_load_splat(mask);
    v128_t  rmask = gamask;
    v128_t  bmask = gamask;

    while (count >= 4) {
        v128_t rgba = wasm_v128_load((void* )src);
        v128_t ga = wasm_v128_and(rgba, gamask);
        v128_t r = wasm_v128_and(rgba, rmask);
        v128_t b = wasm_v128_and(rgba, bmask);
        v128_t bga = wasm_v128_or(ga, wasm_i32x4_shl(b, 16));
        v128_t bgra = wasm_v128_or(bga, wasm_u32x4_shr(r, 16));
        //v128_t bgra = wasm_v128_or(bga, wasm_i32x4_shr(r, 16));


        wasm_v128_store((void*)dst, bgra);

        src += 4;
        dst += 4;
        count -= 4;
    }
    */
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

#endif

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
#endif


