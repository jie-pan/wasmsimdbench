
echo "---conversion"
time conversion

echo -e "\n---conversion_sse"
time conversion_sse

echo -e "\n---conversion_wasm"
time ~/web/src/v82/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./conversion_wasm.js

echo -e "\n---conversion_wasm_sse"
time ~/web/src/v82/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./conversion_wasm_sse.js
