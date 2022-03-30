
CC=clang++-14
CFLAGS= -g -O2 -std=c++11 -fno-tree-vectorize 
SSECFLAGS= -g -O2 -msse4.2 -std=c++11
AVXCFLAGS= -g -O2 -mavx -std=c++11
EMCCCFLAGS= -g -O2  -fno-vectorize -msimd128 -std=c++11 -s ENVIRONMENT=node,shell -s WASM=1
LIBS=

#all: shift  shift_sse  shift_avx  shift_wasm shift_wasm_sse
all: shift_wasm_simd

shift: shift.cpp main.cpp
	$(CC) -o  $@ $^  $(CFLAGS) $(LIBS)

shift_sse: shift.cpp main.cpp
	$(CC) -DSIMDLENGTH=128 -o  $@ $^  $(SSECFLAGS) $(LIBS)

shift_avx: shift.cpp main.cpp
	$(CC) -DSIMDLENGTH=256 -o  $@ $^  $(AVXCFLAGS) $(LIBS)

#shift_asmjs: shift.cpp main.cpp
#	emcc -DSIMDLENGTH=128 -o  $@.js $^  $(SSECFLAGS) $(LIBS) -s WASM=0


shift_wasm: shift.cpp main.cpp
#EMCC_DEBUG=2 emcc -v -o  $@.js $^  $(CFLAGS) $(LIBS) -s WASM=1
	emcc  -o  $@.js $^  $(CFLAGS) $(LIBS) -s WASM=1
	mv shift_wasm.wasm  shift_wasm.js wasm/

shift_wasm_simd: shift.cpp main.cpp
#EMCC_DEBUG=2 emcc -v -DSIMDLENGTH=128 -o  $@.js $^  $(EMCCCFLAGS) $(LIBS) 
	emcc  -DSIMDLENGTH=128 -o  $@.js $^  $(EMCCCFLAGS) $(LIBS) 
#mv shift_wasm_simd.wasm  shift_wasm_simd.js wasm/

run:
	~/web/src/v8/v8/out.gn/x64.release/d8_org ./shift_wasm_simd.js 
	~/web/src/v8/v8/out.gn/x64.release/d8 ./shift_wasm_simd.js 

clean:
	-rm  shift
	-rm  shift_sse
	-rm  shift_avx
	-rm  *.js
	-rm *.map
	-rm *.wasm
	-rm *.wast
