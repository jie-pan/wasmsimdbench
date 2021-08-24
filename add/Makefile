
CC=gcc
CFLAGS= -g -O2 -std=c++11 -fno-tree-vectorize 
SSECFLAGS= -g -O2 -msse4.2 -std=c++11
AVXCFLAGS= -g -O2 -mavx -std=c++11
EMCCCFLAGS= -g -O2  -fno-vectorize -msimd128 -std=c++11
LIBS=

all: add  add_sse  add_avx  add_wasm add_wasm_sse
#add_asmjs

add: add.cpp main.cpp
	$(CC) -o  $@ $^  $(CFLAGS) $(LIBS)

add_sse: add.cpp main.cpp
	$(CC) -DSIMDLENGTH=128 -o  $@ $^  $(SSECFLAGS) $(LIBS)

add_avx: add.cpp main.cpp
	$(CC) -DSIMDLENGTH=256 -o  $@ $^  $(AVXCFLAGS) $(LIBS)

#add_asmjs: add.cpp main.cpp
#	emcc -DSIMDLENGTH=128 -o  $@.js $^  $(SSECFLAGS) $(LIBS) -s WASM=0


add_wasm: add.cpp main.cpp
#EMCC_DEBUG=2 emcc -v -o  $@.js $^  $(CFLAGS) $(LIBS) -s WASM=1
	emcc  -o  $@.js $^  $(CFLAGS) $(LIBS) -s WASM=1
	mv add_wasm.wasm  add_wasm.js wasm/

add_wasm_sse: add.cpp main.cpp
#EMCC_DEBUG=2 emcc -v -DSIMDLENGTH=128 -o  $@.js $^  $(EMCCCFLAGS) $(LIBS) -s WASM=1
	emcc  -DSIMDLENGTH=128 -o  $@.js $^  $(EMCCCFLAGS) $(LIBS) -s WASM=1
	mv add_wasm_sse.wasm  add_wasm_sse.js wasm/

clean:
	-rm  add
	-rm  add_sse
	-rm  add_avx
	-rm  *.js
	-rm *.map
	-rm *.wasm
	-rm *.wast
