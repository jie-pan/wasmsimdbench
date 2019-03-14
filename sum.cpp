
#ifdef TEST_SSE
#include <xmmintrin.h>	// Need this for SSE compiler intrinsics
#include <pmmintrin.h>
#endif
float sumfunc(float* a, int count)
{

#ifdef TEST_SSE
    //assert(count%4==0);
	__m128 sum = _mm_set1_ps(0.0f);		// Set the xDelta to (4,4,4,4)
    __m128 current;

    for (int i = 0; i < count; i += 4)
    {
        current = _mm_load_ps(a+i);
        sum = _mm_add_ps (sum, current);
    }
    sum = _mm_hadd_ps(sum, sum);
    sum = _mm_hadd_ps(sum, sum);
    float ret =  _mm_cvtss_f32 (sum);
    return ret;

#else
    float sum = 0;
    for (int i = 0; i < count; i++)
    {
        sum += a[i];
    }
    return sum;
#endif

}



