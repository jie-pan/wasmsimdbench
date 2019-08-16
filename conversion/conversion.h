#ifndef CONVERSION_H
#define CONVERSION_H 

#include <stdint.h>

#if SIMDLENGTH  > 0


#endif

void RGBA_to_BGRA(uint32_t* dst, const uint32_t* src, int count);
void threshold(unsigned char* dst, unsigned char* src, int count, unsigned char thre);

void RGBA_to_BGRA_portable(uint32_t* dst, const uint32_t* src, int count);

#endif
