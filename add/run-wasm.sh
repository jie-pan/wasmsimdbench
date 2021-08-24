
#echo -e "---add"
#time add
#
#echo -e "\n---add_sse"
#time add_sse
#
#echo -e "\n---add_avx"
#time add_avx

#echo -e "\n---v8 latest---"
#echo -e "---add_wasm"
#time ~/web/src/v8/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./add_wasm.js

#echo -e "\n---add_wasm_sse"
#time ~/web/src/v8/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./add_wasm_sse.js


#echo -e "---add_wasm"
#time ~/web/src/v82/v8/out.gn/x64.release_org/d8 --experimental-wasm-simd ./add_wasm.js

#echo -e "\n---add_wasm_sse org"
#time ~/web/src/v82/v8/out.gn/x64.release_org/d8 --experimental-wasm-simd ./add_wasm_sse.js

V8ROOT=/home/panjie/web/src/v82/v8/out.gn
flags="--wasm-revec  --experimental-wasm-simd --wasm-num-compilation-tasks=0  --trace-turbo"
binary=x64.release
time ${V8ROOT}/${binary}/d8  ${flags}  ./add_wasm_sse.js
exit 


for binary in x64.release-vtune x64.release
do 
   for flags in "--experimental-wasm-simd"  "--experimental-wasm-simd --no-wasm-revec"
   do
    echo -e "\n ${flags} \n"
    time ${V8ROOT}/${binary}/d8  ${flags}  ./add_wasm_sse.js
   done

done
