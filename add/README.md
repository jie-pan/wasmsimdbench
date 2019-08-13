d8 --experimental-wasm-simd  xxx.js

1. wasm2wat    -f   ./sum_wasm.wasm  > sum_wasm_new.wat

2. modify wast file

3. wat2wasm    --enable-simd     ./sum_wasm_new.wat -o xxx
