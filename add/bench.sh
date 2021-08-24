
rm org.txt
rm opt.txt
for i in 1 2 3 4 5 6 7 8 9 10 11
do 
    echo -e "\n"
    /home/panjie/web/src/v82/v8/out.gn/x64.release_org/d8   --experimental-wasm-simd   --turbo-stats-wasm add_wasm_sse.js >> org.txt
    /home/panjie/web/src/v82/v8/out.gn/x64.release/d8   --experimental-wasm-simd   --turbo-stats-wasm add_wasm_sse.js >> opt.txt
done

