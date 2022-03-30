#include "shift.h"
#include <wasm_simd128.h>

void shl_scalar(uint8_t* a, uint8_t* b, uint32_t shift, int count)
{
    int i = 0;
    shift = shift & 0x7;
    while(i < count)
    {
        b[i] = a[i]  << shift;
        i++;
    }
}


void shl_simd(uint8_t* a, uint8_t* b, uint32_t shift, int count)
{
    int i = 0;
    shift = shift & 0x7;
    for (; i <= count - 16; i += 16)
    {
        v128_t v0 = wasm_v128_load((void* )(a+i));
        //v128_t v1 = wasm_i8x16_shl(v0, shift);
        v128_t v1 = wasm_i8x16_shr(v0, shift);
        // v128_t v1 = wasm_u8x16_shr(v0, shift);
        /*
        v128_t v2 = wasm_u8x16_avgr(v0, v1);
        v128_t v3 = wasm_i8x16_add(v1, v2);
        v128_t v4 = wasm_i8x16_popcnt(v3);
        v128_t v5 = wasm_i8x16_popcnt(v4);
        wasm_v128_store((void*)(b+i), v5);
        */

        wasm_v128_store((void*)(b+i), v1);
    }
    while(i < count)
    {
        b[i] = a[i]  << shift;
        i++;
    }
}

