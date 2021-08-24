
#CC=gcc
CC=clang++-10

CFLAGS= -g2 -O2 -std=c++11
SSECFLAGS= -g -O2 -msse4.2 -std=c++11
AVXCFLAGS= -g -O2 -mavx -std=c++11

EMCCFLAGS= -g -O3 -msimd128 -s SIMD=1 -std=c++11
#EMCCFLAGS= -g -O3   -munimplemented-simd128 -std=c++11
#EMCCFLAGS= -g -O3  -std=c++11

LIBS=

all: threshold threshold_sse threshold_wasm threshold_wasm_sse
#threshold_wasm threshold_wasm_sse
#threshold_avx  threshold_wasm  threshold_wasm_sse
#threshold_wasm_sse threshold_asmjs

threshold: threshold.cpp main.cpp
	$(CC) -o  $@ $^  $(CFLAGS) $(LIBS)

threshold_sse: threshold.cpp main.cpp
	$(CC) -DSIMDLENGTH=128 -o  $@ $^  $(SSECFLAGS) $(LIBS)

threshold_avx: threshold.cpp main.cpp
	$(CC) -DSIMDLENGTH=256 -o  $@ $^  $(AVXCFLAGS) $(LIBS)

#threshold_asmjs: threshold.cpp main.cpp
#	emcc -DTEST_SSE -o  $@.js $^  $(SSECFLAGS) $(LIBS) -s WASM=0

threshold_wasm_sse: threshold.cpp main.cpp
	emcc  -DSIMDLENGTH=128  $(EMCCFLAGS) $(LIBS) -s WASM=1 -o  $@.js $^ 
#emcc -v -DSIMDLENGTH=128  $(EMCCFLAGS) $(LIBS) -s WASM=1 -o  $@.js $^ 

threshold_wasm: threshold.cpp main.cpp
#EMCC_DEBUG=2 emcc -v -o  $@.js $^  $(CFLAGS) $(LIBS) -s WASM=1
	emcc -o  $@.js $^  $(CFLAGS) $(LIBS) -s WASM=1

run:
	./run.sh
clean:
	rm  threshold
	rm  threshold_sse
	rm  *.js
	rm *.map
	rm *.wasm
	rm *.wast
