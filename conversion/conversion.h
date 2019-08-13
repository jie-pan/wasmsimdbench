#ifndef THRESHOLD_H
#define THRESHOLD_H

#include <stdint.h>

#if SIMDLENGTH  > 0


#endif

void RGBA_to_BGRA(uint32_t* dst, const uint32_t* src, int count);
void threshold(unsigned char* dst, unsigned char* src, int count, unsigned char thre);

//void threshold_sse(unsigned char* src, unsigned char* dst, int count, unsigned char thre);

#endif
