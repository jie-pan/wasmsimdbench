
#ifndef SHIFT_H
#define SHIFT_H

#include <inttypes.h>
void shl_simd(uint8_t* a, uint8_t* b, uint32_t shift, int count);
void shl_scalar(uint8_t* a, uint8_t* b, uint32_t shift, int count);

#endif
