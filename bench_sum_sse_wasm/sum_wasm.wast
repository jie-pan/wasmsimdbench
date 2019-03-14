(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func))
  (type (;5;) (func (result i32)))
  (type (;6;) (func (param i32 i32)))
  (type (;7;) (func (param i32) (result f32)))
  (type (;8;) (func (param f64 i32) (result f64)))
  (type (;9;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32)))
  (type (;11;) (func (param i64 i32 i32) (result i32)))
  (type (;12;) (func (param i64 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32)))
  (type (;14;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;15;) (func (param f64) (result i64)))
  (type (;16;) (func (param i32 i32 i32 i32) (result i32)))
  (import "env" "abort" (func $abort (type 2)))
  (import "env" "___setErrNo" (func $___setErrNo (type 2)))
  (import "env" "___syscall140" (func $___syscall140 (type 3)))
  (import "env" "___syscall146" (func $___syscall146 (type 3)))
  (import "env" "___syscall54" (func $___syscall54 (type 3)))
  (import "env" "___syscall6" (func $___syscall6 (type 3)))
  (import "env" "_abort" (func $_abort (type 4)))
  (import "env" "_emscripten_get_heap_size" (func $_emscripten_get_heap_size (type 5)))
  (import "env" "_emscripten_memcpy_big" (func $_emscripten_memcpy_big (type 0)))
  (import "env" "_emscripten_resize_heap" (func $_emscripten_resize_heap (type 1)))
  (import "env" "abortOnCannotGrowMemory" (func $abortOnCannotGrowMemory (type 1)))
  (import "env" "__table_base" (global (;0;) i32))
  (import "env" "DYNAMICTOP_PTR" (global (;1;) i32))
  (import "env" "memory" (memory (;0;) 256 256))
  (import "env" "table" (table (;0;) 6 6 anyfunc))
  (func $stackAlloc (type 1) (param i32) (result i32)
    (local i32)
    (local.set 1
      (global.get 3))
    (global.set 3
      (i32.add
        (local.get 0)
        (global.get 3)))
    (global.set 3
      (i32.and
        (i32.add
          (global.get 3)
          (i32.const 15))
        (i32.const -16)))
    (local.get 1))
  (func $stackSave (type 5) (result i32)
    (global.get 3))
  (func $stackRestore (type 2) (param i32)
    (global.set 3
      (local.get 0)))
  (func $establishStackSpace (type 6) (param i32 i32)
    (global.set 3
      (local.get 0))
    (global.set 4
      (local.get 1)))
  (func $__Z7sumfuncPfi (type 7) (param i32) (result f32)
      (local i32 v128 );;
    (local f32 f32 f32);;3-5; accu, tmp, zero
    (local.set 5
      (f32.const 0x0p+0 ));;zero
    (local.set 2
      (f32x4.splat (local.get 5)));;sum=0
    (local.set 3;;accu
      (f32.const 0x0p+0 (;=0;)))
    (loop  ;; label = @1
      (local.set 2
        (f32x4.add
          (local.get 2);;sum
          (v128.load align=16
            (i32.add
              (i32.shl
                (local.get 1);;i
                (i32.const 2))
              (local.get 0)))));;a
      (br_if 0 (;@1;)
        (i32.ne
          (local.tee 1
            (i32.add
              (local.get 1)
              (i32.const 4)))
          (i32.const 1000))))
    (local.set 4 (f32x4.extract_lane 0 (local.get 2))) 
    (local.set 3 (f32.add (local.get 3) (local.get 4)))
    (local.set 4 (f32x4.extract_lane 1 (local.get 2))) 
    (local.set 3 (f32.add (local.get 3) (local.get 4)))
    (local.set 4 (f32x4.extract_lane 2 (local.get 2))) 
    (local.set 3 (f32.add (local.get 3) (local.get 4)))
    (local.set 4 (f32x4.extract_lane 3 (local.get 2))) 
    (local.set 3 (f32.add (local.get 3) (local.get 4)))
    (local.get 3))
  (func $_main (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 f32 f32 f64)
    (local.set 2
      (global.get 3))
    (global.set 3
      (i32.add
        (global.get 3)
        (i32.const 4016)))
    (local.set 3
      (i32.add
        (local.get 2)
        (i32.const 4000)))
    (local.set 0
      (i32.const 0))
    (loop  ;; label = @1
      (local.set 4
        (i32.add
          (i32.shl
            (local.get 0)
            (i32.const 2))
          (local.get 2)))
      (f32.store
        (local.get 4)
        (f32.const 0x1.99999ap-4 (;=0.1;)))
      (local.set 0
        (i32.add
          (local.get 0)
          (i32.const 1)))
      (br_if 0 (;@1;)
        (i32.ne
          (local.get 0)
          (i32.const 1000))))
    (local.set 0
      (i32.const 0))
    (loop  ;; label = @2
      (local.set 6
        (call $__Z7sumfuncPfi
          (local.get 2)))
      (local.set 5
        (f32.add
          (local.get 5)
          (local.get 6)))
      (local.set 0
        (i32.add
          (local.get 0)
          (i32.const 1)))
      (br_if 0 (;@2;)
        (i32.ne
          (local.get 0)
          (i32.const 10000000))))
    (local.set 0
      (i32.load
        (local.get 1)))
    (local.set 7
      (f64.promote_f32
        (local.get 5)))
    (i32.store
      (local.get 3)
      (local.get 0))
    (local.set 0
      (i32.add
        (local.get 3)
        (i32.const 8)))
    (f64.store
      (local.get 0)
      (local.get 7))
    (drop
      (call $_printf
        (local.get 3)))
    (global.set 3
      (local.get 2))
    (i32.const 0))
  (func $_malloc (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local.set 14
      (global.get 3))
    (global.set 3
      (i32.add
        (global.get 3)
        (i32.const 16)))
    (local.set 3
      (if (result i32)  ;; label = @1
        (i32.lt_u
          (local.get 0)
          (i32.const 245))
        (then
          (if  ;; label = @2
            (i32.and
              (local.tee 3
                (i32.shr_u
                  (local.tee 7
                    (i32.load
                      (i32.const 2992)))
                  (local.tee 0
                    (i32.shr_u
                      (local.tee 2
                        (select
                          (i32.const 16)
                          (i32.and
                            (i32.add
                              (local.get 0)
                              (i32.const 11))
                            (i32.const -8))
                          (i32.lt_u
                            (local.get 0)
                            (i32.const 11))))
                      (i32.const 3)))))
              (i32.const 3))
            (then
              (local.set 0
                (i32.load
                  (local.tee 6
                    (i32.add
                      (local.tee 3
                        (i32.load
                          (local.tee 4
                            (i32.add
                              (local.tee 2
                                (i32.add
                                  (i32.shl
                                    (local.tee 1
                                      (i32.add
                                        (i32.xor
                                          (i32.and
                                            (local.get 3)
                                            (i32.const 1))
                                          (i32.const 1))
                                        (local.get 0)))
                                    (i32.const 3))
                                  (i32.const 3032)))
                              (i32.const 8)))))
                      (i32.const 8)))))
              (if  ;; label = @3
                (i32.eq
                  (local.get 0)
                  (local.get 2))
                (then
                  (i32.store
                    (i32.const 2992)
                    (i32.and
                      (i32.xor
                        (i32.shl
                          (i32.const 1)
                          (local.get 1))
                        (i32.const -1))
                      (local.get 7))))
                (else
                  (if  ;; label = @4
                    (i32.gt_u
                      (i32.load
                        (i32.const 3008))
                      (local.get 0))
                    (then
                      (call $_abort)))
                  (if  ;; label = @5
                    (i32.eq
                      (local.get 3)
                      (i32.load
                        (local.tee 5
                          (i32.add
                            (local.get 0)
                            (i32.const 12)))))
                    (then
                      (i32.store
                        (local.get 5)
                        (local.get 2))
                      (i32.store
                        (local.get 4)
                        (local.get 0)))
                    (else
                      (call $_abort)))))
              (i32.store offset=4
                (local.get 3)
                (i32.or
                  (local.tee 0
                    (i32.shl
                      (local.get 1)
                      (i32.const 3)))
                  (i32.const 3)))
              (i32.store
                (local.tee 0
                  (i32.add
                    (i32.add
                      (local.get 0)
                      (local.get 3))
                    (i32.const 4)))
                (i32.or
                  (i32.load
                    (local.get 0))
                  (i32.const 1)))
              (global.set 3
                (local.get 14))
              (return
                (local.get 6))))
          (if (result i32)  ;; label = @6
            (i32.gt_u
              (local.get 2)
              (local.tee 13
                (i32.load
                  (i32.const 3000))))
            (then
              (if  ;; label = @7
                (local.get 3)
                (then
                  (local.set 3
                    (i32.load
                      (local.tee 10
                        (i32.add
                          (local.tee 0
                            (i32.load
                              (local.tee 9
                                (i32.add
                                  (local.tee 5
                                    (i32.add
                                      (i32.shl
                                        (local.tee 1
                                          (i32.add
                                            (i32.or
                                              (i32.or
                                                (i32.or
                                                  (i32.or
                                                    (local.tee 3
                                                      (i32.and
                                                        (i32.shr_u
                                                          (local.tee 0
                                                            (i32.add
                                                              (i32.and
                                                                (local.tee 0
                                                                  (i32.and
                                                                    (i32.shl
                                                                      (local.get 3)
                                                                      (local.get 0))
                                                                    (i32.or
                                                                      (local.tee 0
                                                                        (i32.shl
                                                                          (i32.const 2)
                                                                          (local.get 0)))
                                                                      (i32.sub
                                                                        (i32.const 0)
                                                                        (local.get 0)))))
                                                                (i32.sub
                                                                  (i32.const 0)
                                                                  (local.get 0)))
                                                              (i32.const -1)))
                                                          (i32.const 12))
                                                        (i32.const 16)))
                                                    (local.tee 3
                                                      (i32.and
                                                        (i32.shr_u
                                                          (local.tee 0
                                                            (i32.shr_u
                                                              (local.get 0)
                                                              (local.get 3)))
                                                          (i32.const 5))
                                                        (i32.const 8))))
                                                  (local.tee 3
                                                    (i32.and
                                                      (i32.shr_u
                                                        (local.tee 0
                                                          (i32.shr_u
                                                            (local.get 0)
                                                            (local.get 3)))
                                                        (i32.const 2))
                                                      (i32.const 4))))
                                                (local.tee 3
                                                  (i32.and
                                                    (i32.shr_u
                                                      (local.tee 0
                                                        (i32.shr_u
                                                          (local.get 0)
                                                          (local.get 3)))
                                                      (i32.const 1))
                                                    (i32.const 2))))
                                              (local.tee 3
                                                (i32.and
                                                  (i32.shr_u
                                                    (local.tee 0
                                                      (i32.shr_u
                                                        (local.get 0)
                                                        (local.get 3)))
                                                    (i32.const 1))
                                                  (i32.const 1))))
                                            (i32.shr_u
                                              (local.get 0)
                                              (local.get 3))))
                                        (i32.const 3))
                                      (i32.const 3032)))
                                  (i32.const 8)))))
                          (i32.const 8)))))
                  (if  ;; label = @8
                    (i32.eq
                      (local.get 3)
                      (local.get 5))
                    (then
                      (i32.store
                        (i32.const 2992)
                        (local.tee 4
                          (i32.and
                            (i32.xor
                              (i32.shl
                                (i32.const 1)
                                (local.get 1))
                              (i32.const -1))
                            (local.get 7)))))
                    (else
                      (if  ;; label = @9
                        (i32.gt_u
                          (i32.load
                            (i32.const 3008))
                          (local.get 3))
                        (then
                          (call $_abort)))
                      (if  ;; label = @10
                        (i32.eq
                          (local.get 0)
                          (i32.load
                            (local.tee 11
                              (i32.add
                                (local.get 3)
                                (i32.const 12)))))
                        (then
                          (i32.store
                            (local.get 11)
                            (local.get 5))
                          (i32.store
                            (local.get 9)
                            (local.get 3))
                          (local.set 4
                            (local.get 7)))
                        (else
                          (call $_abort)))))
                  (i32.store offset=4
                    (local.get 0)
                    (i32.or
                      (local.get 2)
                      (i32.const 3)))
                  (i32.store offset=4
                    (local.tee 7
                      (i32.add
                        (local.get 0)
                        (local.get 2)))
                    (i32.or
                      (local.tee 5
                        (i32.sub
                          (local.tee 3
                            (i32.shl
                              (local.get 1)
                              (i32.const 3)))
                          (local.get 2)))
                      (i32.const 1)))
                  (i32.store
                    (i32.add
                      (local.get 0)
                      (local.get 3))
                    (local.get 5))
                  (if  ;; label = @11
                    (local.get 13)
                    (then
                      (local.set 2
                        (i32.load
                          (i32.const 3012)))
                      (local.set 0
                        (i32.add
                          (i32.shl
                            (local.tee 3
                              (i32.shr_u
                                (local.get 13)
                                (i32.const 3)))
                            (i32.const 3))
                          (i32.const 3032)))
                      (if  ;; label = @12
                        (i32.and
                          (local.tee 3
                            (i32.shl
                              (i32.const 1)
                              (local.get 3)))
                          (local.get 4))
                        (then
                          (if  ;; label = @13
                            (i32.gt_u
                              (i32.load
                                (i32.const 3008))
                              (local.tee 1
                                (i32.load
                                  (local.tee 3
                                    (i32.add
                                      (local.get 0)
                                      (i32.const 8))))))
                            (then
                              (call $_abort))
                            (else
                              (local.set 6
                                (local.get 1))
                              (local.set 12
                                (local.get 3)))))
                        (else
                          (i32.store
                            (i32.const 2992)
                            (i32.or
                              (local.get 3)
                              (local.get 4)))
                          (local.set 6
                            (local.get 0))
                          (local.set 12
                            (i32.add
                              (local.get 0)
                              (i32.const 8)))))
                      (i32.store
                        (local.get 12)
                        (local.get 2))
                      (i32.store offset=12
                        (local.get 6)
                        (local.get 2))
                      (i32.store offset=8
                        (local.get 2)
                        (local.get 6))
                      (i32.store offset=12
                        (local.get 2)
                        (local.get 0))))
                  (i32.store
                    (i32.const 3000)
                    (local.get 5))
                  (i32.store
                    (i32.const 3012)
                    (local.get 7))
                  (global.set 3
                    (local.get 14))
                  (return
                    (local.get 10))))
              (if (result i32)  ;; label = @14
                (local.tee 12
                  (i32.load
                    (i32.const 2996)))
                (then
                  (local.set 0
                    (local.tee 4
                      (i32.load
                        (i32.add
                          (i32.shl
                            (i32.add
                              (i32.or
                                (i32.or
                                  (i32.or
                                    (i32.or
                                      (local.tee 3
                                        (i32.and
                                          (i32.shr_u
                                            (local.tee 0
                                              (i32.add
                                                (i32.and
                                                  (local.get 12)
                                                  (i32.sub
                                                    (i32.const 0)
                                                    (local.get 12)))
                                                (i32.const -1)))
                                            (i32.const 12))
                                          (i32.const 16)))
                                      (local.tee 3
                                        (i32.and
                                          (i32.shr_u
                                            (local.tee 0
                                              (i32.shr_u
                                                (local.get 0)
                                                (local.get 3)))
                                            (i32.const 5))
                                          (i32.const 8))))
                                    (local.tee 3
                                      (i32.and
                                        (i32.shr_u
                                          (local.tee 0
                                            (i32.shr_u
                                              (local.get 0)
                                              (local.get 3)))
                                          (i32.const 2))
                                        (i32.const 4))))
                                  (local.tee 3
                                    (i32.and
                                      (i32.shr_u
                                        (local.tee 0
                                          (i32.shr_u
                                            (local.get 0)
                                            (local.get 3)))
                                        (i32.const 1))
                                      (i32.const 2))))
                                (local.tee 3
                                  (i32.and
                                    (i32.shr_u
                                      (local.tee 0
                                        (i32.shr_u
                                          (local.get 0)
                                          (local.get 3)))
                                      (i32.const 1))
                                    (i32.const 1))))
                              (i32.shr_u
                                (local.get 0)
                                (local.get 3)))
                            (i32.const 2))
                          (i32.const 3296)))))
                  (local.set 10
                    (i32.sub
                      (i32.and
                        (i32.load offset=4
                          (local.get 4))
                        (i32.const -8))
                      (local.get 2)))
                  (loop  ;; label = @15
                    (block  ;; label = @16
                      (if  ;; label = @17
                        (local.tee 3
                          (i32.load offset=16
                            (local.get 0)))
                        (then
                          (local.set 0
                            (local.get 3)))
                        (else
                          (br_if 1 (;@16;)
                            (i32.eqz
                              (local.tee 0
                                (i32.load offset=20
                                  (local.get 0)))))))
                      (local.set 4
                        (select
                          (local.get 0)
                          (local.get 4)
                          (local.tee 6
                            (i32.lt_u
                              (local.tee 3
                                (i32.sub
                                  (i32.and
                                    (i32.load offset=4
                                      (local.get 0))
                                    (i32.const -8))
                                  (local.get 2)))
                              (local.get 10)))))
                      (local.set 10
                        (select
                          (local.get 3)
                          (local.get 10)
                          (local.get 6)))
                      (br 1 (;@16;))))
                  (if  ;; label = @18
                    (i32.gt_u
                      (local.tee 15
                        (i32.load
                          (i32.const 3008)))
                      (local.get 4))
                    (then
                      (call $_abort)))
                  (if  ;; label = @19
                    (i32.le_u
                      (local.tee 8
                        (i32.add
                          (local.get 2)
                          (local.get 4)))
                      (local.get 4))
                    (then
                      (call $_abort)))
                  (local.set 11
                    (i32.load offset=24
                      (local.get 4)))
                  (if  ;; label = @20
                    (i32.eq
                      (local.get 4)
                      (local.tee 0
                        (i32.load offset=12
                          (local.get 4))))
                    (then
                      (block  ;; label = @21
                        (if  ;; label = @22
                          (i32.eqz
                            (local.tee 0
                              (i32.load
                                (local.tee 3
                                  (i32.add
                                    (local.get 4)
                                    (i32.const 20))))))
                          (then
                            (br_if 1 (;@21;)
                              (i32.eqz
                                (local.tee 0
                                  (i32.load
                                    (local.tee 3
                                      (i32.add
                                        (local.get 4)
                                        (i32.const 16)))))))))
                        (loop  ;; label = @23
                          (block  ;; label = @24
                            (if  ;; label = @25
                              (i32.eqz
                                (local.tee 9
                                  (i32.load
                                    (local.tee 6
                                      (i32.add
                                        (local.get 0)
                                        (i32.const 20))))))
                              (then
                                (br_if 1 (;@24;)
                                  (i32.eqz
                                    (local.tee 9
                                      (i32.load
                                        (local.tee 6
                                          (i32.add
                                            (local.get 0)
                                            (i32.const 16)))))))))
                            (local.set 3
                              (local.get 6))
                            (local.set 0
                              (local.get 9))
                            (br 1 (;@24;))))
                        (if  ;; label = @26
                          (i32.gt_u
                            (local.get 15)
                            (local.get 3))
                          (then
                            (call $_abort))
                          (else
                            (i32.store
                              (local.get 3)
                              (i32.const 0))
                            (local.set 1
                              (local.get 0))))))
                    (else
                      (if  ;; label = @27
                        (i32.gt_u
                          (local.get 15)
                          (local.tee 3
                            (i32.load offset=8
                              (local.get 4))))
                        (then
                          (call $_abort)))
                      (if  ;; label = @28
                        (i32.ne
                          (i32.load
                            (local.tee 6
                              (i32.add
                                (local.get 3)
                                (i32.const 12))))
                          (local.get 4))
                        (then
                          (call $_abort)))
                      (if  ;; label = @29
                        (i32.eq
                          (local.get 4)
                          (i32.load
                            (local.tee 9
                              (i32.add
                                (local.get 0)
                                (i32.const 8)))))
                        (then
                          (i32.store
                            (local.get 6)
                            (local.get 0))
                          (i32.store
                            (local.get 9)
                            (local.get 3))
                          (local.set 1
                            (local.get 0)))
                        (else
                          (call $_abort)))))
                  (if  ;; label = @30
                    (local.get 11)
                    (then
                      (block  ;; label = @31
                        (if  ;; label = @32
                          (i32.eq
                            (local.get 4)
                            (i32.load
                              (local.tee 3
                                (i32.add
                                  (i32.shl
                                    (local.tee 0
                                      (i32.load offset=28
                                        (local.get 4)))
                                    (i32.const 2))
                                  (i32.const 3296)))))
                          (then
                            (i32.store
                              (local.get 3)
                              (local.get 1))
                            (if  ;; label = @33
                              (i32.eqz
                                (local.get 1))
                              (then
                                (i32.store
                                  (i32.const 2996)
                                  (i32.and
                                    (local.get 12)
                                    (i32.xor
                                      (i32.shl
                                        (i32.const 1)
                                        (local.get 0))
                                      (i32.const -1))))
                                (br 2 (;@31;)))))
                          (else
                            (if  ;; label = @34
                              (i32.gt_u
                                (i32.load
                                  (i32.const 3008))
                                (local.get 11))
                              (then
                                (call $_abort))
                              (else
                                (i32.store
                                  (select
                                    (local.tee 0
                                      (i32.add
                                        (local.get 11)
                                        (i32.const 16)))
                                    (i32.add
                                      (local.get 11)
                                      (i32.const 20))
                                    (i32.eq
                                      (local.get 4)
                                      (i32.load
                                        (local.get 0))))
                                  (local.get 1))
                                (br_if 2 (;@32;)
                                  (i32.eqz
                                    (local.get 1)))))))
                        (if  ;; label = @35
                          (i32.gt_u
                            (local.tee 3
                              (i32.load
                                (i32.const 3008)))
                            (local.get 1))
                          (then
                            (call $_abort)))
                        (i32.store offset=24
                          (local.get 1)
                          (local.get 11))
                        (if  ;; label = @36
                          (local.tee 0
                            (i32.load offset=16
                              (local.get 4)))
                          (then
                            (if  ;; label = @37
                              (i32.gt_u
                                (local.get 3)
                                (local.get 0))
                              (then
                                (call $_abort))
                              (else
                                (i32.store offset=16
                                  (local.get 1)
                                  (local.get 0))
                                (i32.store offset=24
                                  (local.get 0)
                                  (local.get 1))))))
                        (if  ;; label = @38
                          (local.tee 0
                            (i32.load offset=20
                              (local.get 4)))
                          (then
                            (if  ;; label = @39
                              (i32.gt_u
                                (i32.load
                                  (i32.const 3008))
                                (local.get 0))
                              (then
                                (call $_abort))
                              (else
                                (i32.store offset=20
                                  (local.get 1)
                                  (local.get 0))
                                (i32.store offset=24
                                  (local.get 0)
                                  (local.get 1)))))))))
                  (if  ;; label = @40
                    (i32.lt_u
                      (local.get 10)
                      (i32.const 16))
                    (then
                      (i32.store offset=4
                        (local.get 4)
                        (i32.or
                          (local.tee 0
                            (i32.add
                              (local.get 2)
                              (local.get 10)))
                          (i32.const 3)))
                      (i32.store
                        (local.tee 0
                          (i32.add
                            (i32.add
                              (local.get 0)
                              (local.get 4))
                            (i32.const 4)))
                        (i32.or
                          (i32.load
                            (local.get 0))
                          (i32.const 1))))
                    (else
                      (i32.store offset=4
                        (local.get 4)
                        (i32.or
                          (local.get 2)
                          (i32.const 3)))
                      (i32.store offset=4
                        (local.get 8)
                        (i32.or
                          (local.get 10)
                          (i32.const 1)))
                      (i32.store
                        (i32.add
                          (local.get 8)
                          (local.get 10))
                        (local.get 10))
                      (if  ;; label = @41
                        (local.get 13)
                        (then
                          (local.set 2
                            (i32.load
                              (i32.const 3012)))
                          (local.set 0
                            (i32.add
                              (i32.shl
                                (local.tee 3
                                  (i32.shr_u
                                    (local.get 13)
                                    (i32.const 3)))
                                (i32.const 3))
                              (i32.const 3032)))
                          (if  ;; label = @42
                            (i32.and
                              (local.tee 3
                                (i32.shl
                                  (i32.const 1)
                                  (local.get 3)))
                              (local.get 7))
                            (then
                              (if  ;; label = @43
                                (i32.gt_u
                                  (i32.load
                                    (i32.const 3008))
                                  (local.tee 1
                                    (i32.load
                                      (local.tee 3
                                        (i32.add
                                          (local.get 0)
                                          (i32.const 8))))))
                                (then
                                  (call $_abort))
                                (else
                                  (local.set 5
                                    (local.get 1))
                                  (local.set 16
                                    (local.get 3)))))
                            (else
                              (i32.store
                                (i32.const 2992)
                                (i32.or
                                  (local.get 3)
                                  (local.get 7)))
                              (local.set 5
                                (local.get 0))
                              (local.set 16
                                (i32.add
                                  (local.get 0)
                                  (i32.const 8)))))
                          (i32.store
                            (local.get 16)
                            (local.get 2))
                          (i32.store offset=12
                            (local.get 5)
                            (local.get 2))
                          (i32.store offset=8
                            (local.get 2)
                            (local.get 5))
                          (i32.store offset=12
                            (local.get 2)
                            (local.get 0))))
                      (i32.store
                        (i32.const 3000)
                        (local.get 10))
                      (i32.store
                        (i32.const 3012)
                        (local.get 8))))
                  (global.set 3
                    (local.get 14))
                  (return
                    (i32.add
                      (local.get 4)
                      (i32.const 8))))
                (else
                  (local.get 2))))
            (else
              (local.get 2))))
        (else
          (if (result i32)  ;; label = @44
            (i32.gt_u
              (local.get 0)
              (i32.const -65))
            (then
              (i32.const -1))
            (else
              (block (result i32)  ;; label = @45
                (local.set 4
                  (i32.and
                    (local.tee 0
                      (i32.add
                        (local.get 0)
                        (i32.const 11)))
                    (i32.const -8)))
                (if (result i32)  ;; label = @46
                  (local.tee 6
                    (i32.load
                      (i32.const 2996)))
                  (then
                    (local.set 18
                      (if (result i32)  ;; label = @47
                        (local.tee 0
                          (i32.shr_u
                            (local.get 0)
                            (i32.const 8)))
                        (then
                          (if (result i32)  ;; label = @48
                            (i32.gt_u
                              (local.get 4)
                              (i32.const 16777215))
                            (then
                              (i32.const 31))
                            (else
                              (local.set 0
                                (i32.and
                                  (i32.shr_u
                                    (i32.add
                                      (local.tee 2
                                        (i32.shl
                                          (local.get 0)
                                          (local.tee 1
                                            (i32.and
                                              (i32.shr_u
                                                (i32.add
                                                  (local.get 0)
                                                  (i32.const 1048320))
                                                (i32.const 16))
                                              (i32.const 8)))))
                                      (i32.const 520192))
                                    (i32.const 16))
                                  (i32.const 4)))
                              (i32.or
                                (i32.shl
                                  (local.tee 0
                                    (i32.add
                                      (i32.sub
                                        (i32.const 14)
                                        (i32.or
                                          (i32.or
                                            (local.get 0)
                                            (local.get 1))
                                          (local.tee 1
                                            (i32.and
                                              (i32.shr_u
                                                (i32.add
                                                  (local.tee 0
                                                    (i32.shl
                                                      (local.get 2)
                                                      (local.get 0)))
                                                  (i32.const 245760))
                                                (i32.const 16))
                                              (i32.const 2)))))
                                      (i32.shr_u
                                        (i32.shl
                                          (local.get 0)
                                          (local.get 1))
                                        (i32.const 15))))
                                  (i32.const 1))
                                (i32.and
                                  (i32.shr_u
                                    (local.get 4)
                                    (i32.add
                                      (local.get 0)
                                      (i32.const 7)))
                                  (i32.const 1))))))
                        (else
                          (i32.const 0))))
                    (local.set 2
                      (i32.sub
                        (i32.const 0)
                        (local.get 4)))
                    (block  ;; label = @49
                      (block  ;; label = @50
                        (local.set 0
                          (if (result i32)  ;; label = @51
                            (local.tee 0
                              (i32.load
                                (i32.add
                                  (i32.shl
                                    (local.get 18)
                                    (i32.const 2))
                                  (i32.const 3296))))
                            (then
                              (local.set 1
                                (i32.const 0))
                              (local.set 12
                                (i32.shl
                                  (local.get 4)
                                  (select
                                    (i32.const 0)
                                    (i32.sub
                                      (i32.const 25)
                                      (i32.shr_u
                                        (local.get 18)
                                        (i32.const 1)))
                                    (i32.eq
                                      (local.get 18)
                                      (i32.const 31)))))
                              (loop (result i32)  ;; label = @52
                                (if  ;; label = @53
                                  (i32.lt_u
                                    (local.tee 16
                                      (i32.sub
                                        (i32.and
                                          (i32.load offset=4
                                            (local.get 0))
                                          (i32.const -8))
                                        (local.get 4)))
                                    (local.get 2))
                                  (then
                                    (local.set 1
                                      (if (result i32)  ;; label = @54
                                        (local.get 16)
                                        (then
                                          (local.set 2
                                            (local.get 16))
                                          (local.get 0))
                                        (else
                                          (local.set 2
                                            (i32.const 0))
                                          (local.set 1
                                            (local.get 0))
                                          (br 4 (;@50;)))))))
                                (local.set 5
                                  (select
                                    (local.get 5)
                                    (local.tee 5
                                      (i32.load offset=20
                                        (local.get 0)))
                                    (i32.or
                                      (i32.eqz
                                        (local.get 5))
                                      (i32.eq
                                        (local.get 5)
                                        (local.tee 0
                                          (i32.load
                                            (i32.add
                                              (i32.add
                                                (local.get 0)
                                                (i32.const 16))
                                              (i32.shl
                                                (i32.shr_u
                                                  (local.get 12)
                                                  (i32.const 31))
                                                (i32.const 2)))))))))
                                (local.set 12
                                  (i32.shl
                                    (local.get 12)
                                    (i32.const 1)))
                                (local.get 0)
                                (br_if 0 (;@54;))
                                (local.get 1)))
                            (else
                              (i32.const 0))))
                        (local.tee 1
                          (if (result i32)  ;; label = @55
                            (i32.or
                              (local.get 0)
                              (local.get 5))
                            (then
                              (local.get 5))
                            (else
                              (drop
                                (br_if 4 (;@51;)
                                  (local.get 4)
                                  (i32.eqz
                                    (local.tee 1
                                      (i32.and
                                        (local.get 6)
                                        (i32.or
                                          (local.tee 0
                                            (i32.shl
                                              (i32.const 2)
                                              (local.get 18)))
                                          (i32.sub
                                            (i32.const 0)
                                            (local.get 0))))))))
                              (local.set 0
                                (i32.const 0))
                              (i32.load
                                (i32.add
                                  (i32.shl
                                    (i32.add
                                      (i32.or
                                        (i32.or
                                          (i32.or
                                            (i32.or
                                              (local.tee 5
                                                (i32.and
                                                  (i32.shr_u
                                                    (local.tee 1
                                                      (i32.add
                                                        (i32.and
                                                          (local.get 1)
                                                          (i32.sub
                                                            (i32.const 0)
                                                            (local.get 1)))
                                                        (i32.const -1)))
                                                    (i32.const 12))
                                                  (i32.const 16)))
                                              (local.tee 5
                                                (i32.and
                                                  (i32.shr_u
                                                    (local.tee 1
                                                      (i32.shr_u
                                                        (local.get 1)
                                                        (local.get 5)))
                                                    (i32.const 5))
                                                  (i32.const 8))))
                                            (local.tee 5
                                              (i32.and
                                                (i32.shr_u
                                                  (local.tee 1
                                                    (i32.shr_u
                                                      (local.get 1)
                                                      (local.get 5)))
                                                  (i32.const 2))
                                                (i32.const 4))))
                                          (local.tee 5
                                            (i32.and
                                              (i32.shr_u
                                                (local.tee 1
                                                  (i32.shr_u
                                                    (local.get 1)
                                                    (local.get 5)))
                                                (i32.const 1))
                                              (i32.const 2))))
                                        (local.tee 5
                                          (i32.and
                                            (i32.shr_u
                                              (local.tee 1
                                                (i32.shr_u
                                                  (local.get 1)
                                                  (local.get 5)))
                                              (i32.const 1))
                                            (i32.const 1))))
                                      (i32.shr_u
                                        (local.get 1)
                                        (local.get 5)))
                                    (i32.const 2))
                                  (i32.const 3296))))))
                        (br_if 0 (;@55;))
                        (local.set 5
                          (local.get 0))
                        (br 1 (;@54;)))
                      (local.set 5
                        (local.get 0))
                      (local.set 0
                        (local.get 2))
                      (local.set 2
                        (loop (result i32)  ;; label = @56
                          (local.set 12
                            (i32.load offset=4
                              (local.get 1)))
                          (if  ;; label = @57
                            (i32.eqz
                              (local.tee 2
                                (i32.load offset=16
                                  (local.get 1))))
                            (then
                              (local.set 2
                                (i32.load offset=20
                                  (local.get 1)))))
                          (local.set 12
                            (i32.lt_u
                              (local.tee 16
                                (i32.sub
                                  (i32.and
                                    (local.get 12)
                                    (i32.const -8))
                                  (local.get 4)))
                              (local.get 0)))
                          (local.set 0
                            (select
                              (local.get 16)
                              (local.get 0)
                              (local.get 12)))
                          (local.set 5
                            (select
                              (local.get 1)
                              (local.get 5)
                              (local.get 12)))
                          (if (result i32)  ;; label = @58
                            (local.get 2)
                            (then
                              (local.set 1
                                (local.get 2))
                              (br 1 (;@57;)))
                            (else
                              (local.get 0))))))
                    (if (result i32)  ;; label = @59
                      (local.get 5)
                      (then
                        (if (result i32)  ;; label = @60
                          (i32.lt_u
                            (local.get 2)
                            (i32.sub
                              (i32.load
                                (i32.const 3000))
                              (local.get 4)))
                          (then
                            (if  ;; label = @61
                              (i32.gt_u
                                (local.tee 17
                                  (i32.load
                                    (i32.const 3008)))
                                (local.get 5))
                              (then
                                (call $_abort)))
                            (if  ;; label = @62
                              (i32.le_u
                                (local.tee 8
                                  (i32.add
                                    (local.get 4)
                                    (local.get 5)))
                                (local.get 5))
                              (then
                                (call $_abort)))
                            (local.set 15
                              (i32.load offset=24
                                (local.get 5)))
                            (if  ;; label = @63
                              (i32.eq
                                (local.get 5)
                                (local.tee 0
                                  (i32.load offset=12
                                    (local.get 5))))
                              (then
                                (block  ;; label = @64
                                  (if  ;; label = @65
                                    (i32.eqz
                                      (local.tee 0
                                        (i32.load
                                          (local.tee 1
                                            (i32.add
                                              (local.get 5)
                                              (i32.const 20))))))
                                    (then
                                      (br_if 1 (;@64;)
                                        (i32.eqz
                                          (local.tee 0
                                            (i32.load
                                              (local.tee 1
                                                (i32.add
                                                  (local.get 5)
                                                  (i32.const 16)))))))))
                                  (loop  ;; label = @66
                                    (block  ;; label = @67
                                      (if  ;; label = @68
                                        (i32.eqz
                                          (local.tee 11
                                            (i32.load
                                              (local.tee 9
                                                (i32.add
                                                  (local.get 0)
                                                  (i32.const 20))))))
                                        (then
                                          (br_if 1 (;@67;)
                                            (i32.eqz
                                              (local.tee 11
                                                (i32.load
                                                  (local.tee 9
                                                    (i32.add
                                                      (local.get 0)
                                                      (i32.const 16)))))))))
                                      (local.set 1
                                        (local.get 9))
                                      (local.set 0
                                        (local.get 11))
                                      (br 1 (;@67;))))
                                  (if  ;; label = @69
                                    (i32.gt_u
                                      (local.get 17)
                                      (local.get 1))
                                    (then
                                      (call $_abort))
                                    (else
                                      (i32.store
                                        (local.get 1)
                                        (i32.const 0))
                                      (local.set 7
                                        (local.get 0))))))
                              (else
                                (if  ;; label = @70
                                  (i32.gt_u
                                    (local.get 17)
                                    (local.tee 1
                                      (i32.load offset=8
                                        (local.get 5))))
                                  (then
                                    (call $_abort)))
                                (if  ;; label = @71
                                  (i32.ne
                                    (i32.load
                                      (local.tee 9
                                        (i32.add
                                          (local.get 1)
                                          (i32.const 12))))
                                    (local.get 5))
                                  (then
                                    (call $_abort)))
                                (if  ;; label = @72
                                  (i32.eq
                                    (local.get 5)
                                    (i32.load
                                      (local.tee 11
                                        (i32.add
                                          (local.get 0)
                                          (i32.const 8)))))
                                  (then
                                    (i32.store
                                      (local.get 9)
                                      (local.get 0))
                                    (i32.store
                                      (local.get 11)
                                      (local.get 1))
                                    (local.set 7
                                      (local.get 0)))
                                  (else
                                    (call $_abort)))))
                            (if  ;; label = @73
                              (local.get 15)
                              (then
                                (block  ;; label = @74
                                  (if  ;; label = @75
                                    (i32.eq
                                      (local.get 5)
                                      (i32.load
                                        (local.tee 1
                                          (i32.add
                                            (i32.shl
                                              (local.tee 0
                                                (i32.load offset=28
                                                  (local.get 5)))
                                              (i32.const 2))
                                            (i32.const 3296)))))
                                    (then
                                      (i32.store
                                        (local.get 1)
                                        (local.get 7))
                                      (if  ;; label = @76
                                        (i32.eqz
                                          (local.get 7))
                                        (then
                                          (i32.store
                                            (i32.const 2996)
                                            (local.tee 3
                                              (i32.and
                                                (local.get 6)
                                                (i32.xor
                                                  (i32.shl
                                                    (i32.const 1)
                                                    (local.get 0))
                                                  (i32.const -1)))))
                                          (br 2 (;@74;)))))
                                    (else
                                      (if  ;; label = @77
                                        (i32.gt_u
                                          (i32.load
                                            (i32.const 3008))
                                          (local.get 15))
                                        (then
                                          (call $_abort))
                                        (else
                                          (i32.store
                                            (select
                                              (local.tee 0
                                                (i32.add
                                                  (local.get 15)
                                                  (i32.const 16)))
                                              (i32.add
                                                (local.get 15)
                                                (i32.const 20))
                                              (i32.eq
                                                (local.get 5)
                                                (i32.load
                                                  (local.get 0))))
                                            (local.get 7))
                                          (if  ;; label = @78
                                            (i32.eqz
                                              (local.get 7))
                                            (then
                                              (local.set 3
                                                (local.get 6))
                                              (br 3 (;@75;))))))))
                                  (if  ;; label = @79
                                    (i32.gt_u
                                      (local.tee 1
                                        (i32.load
                                          (i32.const 3008)))
                                      (local.get 7))
                                    (then
                                      (call $_abort)))
                                  (i32.store offset=24
                                    (local.get 7)
                                    (local.get 15))
                                  (if  ;; label = @80
                                    (local.tee 0
                                      (i32.load offset=16
                                        (local.get 5)))
                                    (then
                                      (if  ;; label = @81
                                        (i32.gt_u
                                          (local.get 1)
                                          (local.get 0))
                                        (then
                                          (call $_abort))
                                        (else
                                          (i32.store offset=16
                                            (local.get 7)
                                            (local.get 0))
                                          (i32.store offset=24
                                            (local.get 0)
                                            (local.get 7))))))
                                  (if  ;; label = @82
                                    (local.tee 0
                                      (i32.load offset=20
                                        (local.get 5)))
                                    (then
                                      (if  ;; label = @83
                                        (i32.gt_u
                                          (i32.load
                                            (i32.const 3008))
                                          (local.get 0))
                                        (then
                                          (call $_abort))
                                        (else
                                          (i32.store offset=20
                                            (local.get 7)
                                            (local.get 0))
                                          (i32.store offset=24
                                            (local.get 0)
                                            (local.get 7))
                                          (local.set 3
                                            (local.get 6)))))
                                    (else
                                      (local.set 3
                                        (local.get 6))))))
                              (else
                                (local.set 3
                                  (local.get 6))))
                            (if  ;; label = @84
                              (i32.lt_u
                                (local.get 2)
                                (i32.const 16))
                              (then
                                (i32.store offset=4
                                  (local.get 5)
                                  (i32.or
                                    (local.tee 0
                                      (i32.add
                                        (local.get 2)
                                        (local.get 4)))
                                    (i32.const 3)))
                                (i32.store
                                  (local.tee 0
                                    (i32.add
                                      (i32.add
                                        (local.get 0)
                                        (local.get 5))
                                      (i32.const 4)))
                                  (i32.or
                                    (i32.load
                                      (local.get 0))
                                    (i32.const 1))))
                              (else
                                (block  ;; label = @85
                                  (i32.store offset=4
                                    (local.get 5)
                                    (i32.or
                                      (local.get 4)
                                      (i32.const 3)))
                                  (i32.store offset=4
                                    (local.get 8)
                                    (i32.or
                                      (local.get 2)
                                      (i32.const 1)))
                                  (i32.store
                                    (i32.add
                                      (local.get 2)
                                      (local.get 8))
                                    (local.get 2))
                                  (local.set 1
                                    (i32.shr_u
                                      (local.get 2)
                                      (i32.const 3)))
                                  (if  ;; label = @86
                                    (i32.lt_u
                                      (local.get 2)
                                      (i32.const 256))
                                    (then
                                      (local.set 0
                                        (i32.add
                                          (i32.shl
                                            (local.get 1)
                                            (i32.const 3))
                                          (i32.const 3032)))
                                      (if  ;; label = @87
                                        (i32.and
                                          (local.tee 3
                                            (i32.load
                                              (i32.const 2992)))
                                          (local.tee 1
                                            (i32.shl
                                              (i32.const 1)
                                              (local.get 1))))
                                        (then
                                          (if  ;; label = @88
                                            (i32.gt_u
                                              (i32.load
                                                (i32.const 3008))
                                              (local.tee 1
                                                (i32.load
                                                  (local.tee 3
                                                    (i32.add
                                                      (local.get 0)
                                                      (i32.const 8))))))
                                            (then
                                              (call $_abort))
                                            (else
                                              (local.set 13
                                                (local.get 1))
                                              (local.set 19
                                                (local.get 3)))))
                                        (else
                                          (i32.store
                                            (i32.const 2992)
                                            (i32.or
                                              (local.get 1)
                                              (local.get 3)))
                                          (local.set 13
                                            (local.get 0))
                                          (local.set 19
                                            (i32.add
                                              (local.get 0)
                                              (i32.const 8)))))
                                      (i32.store
                                        (local.get 19)
                                        (local.get 8))
                                      (i32.store offset=12
                                        (local.get 13)
                                        (local.get 8))
                                      (i32.store offset=8
                                        (local.get 8)
                                        (local.get 13))
                                      (i32.store offset=12
                                        (local.get 8)
                                        (local.get 0))
                                      (br 1 (;@87;))))
                                  (local.set 0
                                    (i32.add
                                      (i32.shl
                                        (local.tee 1
                                          (if (result i32)  ;; label = @89
                                            (local.tee 0
                                              (i32.shr_u
                                                (local.get 2)
                                                (i32.const 8)))
                                            (then
                                              (if (result i32)  ;; label = @90
                                                (i32.gt_u
                                                  (local.get 2)
                                                  (i32.const 16777215))
                                                (then
                                                  (i32.const 31))
                                                (else
                                                  (local.set 0
                                                    (i32.and
                                                      (i32.shr_u
                                                        (i32.add
                                                          (local.tee 4
                                                            (i32.shl
                                                              (local.get 0)
                                                              (local.tee 1
                                                                (i32.and
                                                                  (i32.shr_u
                                                                    (i32.add
                                                                      (local.get 0)
                                                                      (i32.const 1048320))
                                                                    (i32.const 16))
                                                                  (i32.const 8)))))
                                                          (i32.const 520192))
                                                        (i32.const 16))
                                                      (i32.const 4)))
                                                  (i32.or
                                                    (i32.shl
                                                      (local.tee 0
                                                        (i32.add
                                                          (i32.sub
                                                            (i32.const 14)
                                                            (i32.or
                                                              (i32.or
                                                                (local.get 0)
                                                                (local.get 1))
                                                              (local.tee 1
                                                                (i32.and
                                                                  (i32.shr_u
                                                                    (i32.add
                                                                      (local.tee 0
                                                                        (i32.shl
                                                                          (local.get 4)
                                                                          (local.get 0)))
                                                                      (i32.const 245760))
                                                                    (i32.const 16))
                                                                  (i32.const 2)))))
                                                          (i32.shr_u
                                                            (i32.shl
                                                              (local.get 0)
                                                              (local.get 1))
                                                            (i32.const 15))))
                                                      (i32.const 1))
                                                    (i32.and
                                                      (i32.shr_u
                                                        (local.get 2)
                                                        (i32.add
                                                          (local.get 0)
                                                          (i32.const 7)))
                                                      (i32.const 1))))))
                                            (else
                                              (i32.const 0))))
                                        (i32.const 2))
                                      (i32.const 3296)))
                                  (i32.store offset=28
                                    (local.get 8)
                                    (local.get 1))
                                  (i32.store offset=4
                                    (local.tee 4
                                      (i32.add
                                        (local.get 8)
                                        (i32.const 16)))
                                    (i32.const 0))
                                  (i32.store
                                    (local.get 4)
                                    (i32.const 0))
                                  (if  ;; label = @91
                                    (i32.eqz
                                      (i32.and
                                        (local.tee 4
                                          (i32.shl
                                            (i32.const 1)
                                            (local.get 1)))
                                        (local.get 3)))
                                    (then
                                      (i32.store
                                        (i32.const 2996)
                                        (i32.or
                                          (local.get 3)
                                          (local.get 4)))
                                      (i32.store
                                        (local.get 0)
                                        (local.get 8))
                                      (i32.store offset=24
                                        (local.get 8)
                                        (local.get 0))
                                      (i32.store offset=12
                                        (local.get 8)
                                        (local.get 8))
                                      (i32.store offset=8
                                        (local.get 8)
                                        (local.get 8))
                                      (br 1 (;@90;))))
                                  (if  ;; label = @92
                                    (i32.eq
                                      (local.get 2)
                                      (i32.and
                                        (i32.load offset=4
                                          (local.tee 0
                                            (i32.load
                                              (local.get 0))))
                                        (i32.const -8)))
                                    (then
                                      (local.set 10
                                        (local.get 0)))
                                    (else
                                      (block  ;; label = @93
                                        (local.set 1
                                          (i32.shl
                                            (local.get 2)
                                            (select
                                              (i32.const 0)
                                              (i32.sub
                                                (i32.const 25)
                                                (i32.shr_u
                                                  (local.get 1)
                                                  (i32.const 1)))
                                              (i32.eq
                                                (local.get 1)
                                                (i32.const 31)))))
                                        (loop  ;; label = @94
                                          (if  ;; label = @95
                                            (local.tee 3
                                              (i32.load
                                                (local.tee 4
                                                  (i32.add
                                                    (i32.add
                                                      (local.get 0)
                                                      (i32.const 16))
                                                    (i32.shl
                                                      (i32.shr_u
                                                        (local.get 1)
                                                        (i32.const 31))
                                                      (i32.const 2))))))
                                            (then
                                              (local.set 1
                                                (i32.shl
                                                  (local.get 1)
                                                  (i32.const 1)))
                                              (if  ;; label = @96
                                                (i32.eq
                                                  (local.get 2)
                                                  (i32.and
                                                    (i32.load offset=4
                                                      (local.get 3))
                                                    (i32.const -8)))
                                                (then
                                                  (local.set 10
                                                    (local.get 3))
                                                  (br 3 (;@93;)))
                                                (else
                                                  (local.set 0
                                                    (local.get 3))
                                                  (br 2 (;@94;))))
                                              (unreachable))))
                                        (if  ;; label = @97
                                          (i32.gt_u
                                            (i32.load
                                              (i32.const 3008))
                                            (local.get 4))
                                          (then
                                            (call $_abort))
                                          (else
                                            (i32.store
                                              (local.get 4)
                                              (local.get 8))
                                            (i32.store offset=24
                                              (local.get 8)
                                              (local.get 0))
                                            (i32.store offset=12
                                              (local.get 8)
                                              (local.get 8))
                                            (i32.store offset=8
                                              (local.get 8)
                                              (local.get 8))
                                            (br 3 (;@94;)))))))
                                  (if  ;; label = @98
                                    (i32.and
                                      (i32.le_u
                                        (local.tee 0
                                          (i32.load
                                            (i32.const 3008)))
                                        (local.get 10))
                                      (i32.le_u
                                        (local.get 0)
                                        (local.tee 0
                                          (i32.load
                                            (local.tee 3
                                              (i32.add
                                                (local.get 10)
                                                (i32.const 8)))))))
                                    (then
                                      (i32.store offset=12
                                        (local.get 0)
                                        (local.get 8))
                                      (i32.store
                                        (local.get 3)
                                        (local.get 8))
                                      (i32.store offset=8
                                        (local.get 8)
                                        (local.get 0))
                                      (i32.store offset=12
                                        (local.get 8)
                                        (local.get 10))
                                      (i32.store offset=24
                                        (local.get 8)
                                        (i32.const 0)))
                                    (else
                                      (call $_abort))))))
                            (global.set 3
                              (local.get 14))
                            (return
                              (i32.add
                                (local.get 5)
                                (i32.const 8))))
                          (else
                            (local.get 4))))
                      (else
                        (local.get 4))))
                  (else
                    (local.get 4)))))))))
    (block  ;; label = @99
      (if  ;; label = @100
        (i32.ge_u
          (local.tee 1
            (i32.load
              (i32.const 3000)))
          (local.get 3))
        (then
          (local.set 0
            (i32.load
              (i32.const 3012)))
          (if  ;; label = @101
            (i32.gt_u
              (local.tee 2
                (i32.sub
                  (local.get 1)
                  (local.get 3)))
              (i32.const 15))
            (then
              (i32.store
                (i32.const 3012)
                (local.tee 4
                  (i32.add
                    (local.get 0)
                    (local.get 3))))
              (i32.store
                (i32.const 3000)
                (local.get 2))
              (i32.store offset=4
                (local.get 4)
                (i32.or
                  (local.get 2)
                  (i32.const 1)))
              (i32.store
                (i32.add
                  (local.get 0)
                  (local.get 1))
                (local.get 2))
              (i32.store offset=4
                (local.get 0)
                (i32.or
                  (local.get 3)
                  (i32.const 3))))
            (else
              (i32.store
                (i32.const 3000)
                (i32.const 0))
              (i32.store
                (i32.const 3012)
                (i32.const 0))
              (i32.store offset=4
                (local.get 0)
                (i32.or
                  (local.get 1)
                  (i32.const 3)))
              (i32.store
                (local.tee 3
                  (i32.add
                    (i32.add
                      (local.get 0)
                      (local.get 1))
                    (i32.const 4)))
                (i32.or
                  (i32.load
                    (local.get 3))
                  (i32.const 1)))))
          (br 1 (;@100;))))
      (block  ;; label = @102
        (if  ;; label = @103
          (i32.gt_u
            (local.tee 1
              (i32.load
                (i32.const 3004)))
            (local.get 3))
          (then
            (i32.store
              (i32.const 3004)
              (local.tee 1
                (i32.sub
                  (local.get 1)
                  (local.get 3))))
            (br 1 (;@102;))))
        (if  ;; label = @104
          (i32.le_u
            (local.tee 4
              (i32.and
                (local.tee 5
                  (i32.add
                    (local.tee 6
                      (i32.add
                        (local.get 3)
                        (i32.const 47)))
                    (local.tee 0
                      (if (result i32)  ;; label = @105
                        (i32.load
                          (i32.const 3464))
                        (then
                          (i32.load
                            (i32.const 3472)))
                        (else
                          (i32.store
                            (i32.const 3472)
                            (i32.const 4096))
                          (i32.store
                            (i32.const 3468)
                            (i32.const 4096))
                          (i32.store
                            (i32.const 3476)
                            (i32.const -1))
                          (i32.store
                            (i32.const 3480)
                            (i32.const -1))
                          (i32.store
                            (i32.const 3484)
                            (i32.const 0))
                          (i32.store
                            (i32.const 3436)
                            (i32.const 0))
                          (i32.store
                            (i32.const 3464)
                            (i32.xor
                              (i32.and
                                (local.get 14)
                                (i32.const -16))
                              (i32.const 1431655768)))
                          (i32.const 4096))))))
                (local.tee 7
                  (i32.sub
                    (i32.const 0)
                    (local.get 0)))))
            (local.get 3))
          (then
            (global.set 3
              (local.get 14))
            (return
              (i32.const 0))))
        (if  ;; label = @106
          (local.tee 0
            (i32.load
              (i32.const 3432)))
          (then
            (if  ;; label = @107
              (i32.or
                (i32.le_u
                  (local.tee 10
                    (i32.add
                      (local.get 4)
                      (local.tee 2
                        (i32.load
                          (i32.const 3424)))))
                  (local.get 2))
                (i32.gt_u
                  (local.get 10)
                  (local.get 0)))
              (then
                (global.set 3
                  (local.get 14))
                (return
                  (i32.const 0))))))
        (local.set 10
          (i32.add
            (local.get 3)
            (i32.const 48)))
        (block  ;; label = @108
          (block  ;; label = @109
            (if  ;; label = @110
              (i32.and
                (i32.load
                  (i32.const 3436))
                (i32.const 4))
              (then
                (local.set 1
                  (i32.const 0)))
              (else
                (block  ;; label = @111
                  (block  ;; label = @112
                    (block  ;; label = @113
                      (br_if 0 (;@113;)
                        (i32.eqz
                          (local.tee 0
                            (i32.load
                              (i32.const 3016)))))
                      (local.set 2
                        (i32.const 3440))
                      (loop  ;; label = @114
                        (block  ;; label = @115
                          (if  ;; label = @116
                            (i32.le_u
                              (local.tee 13
                                (i32.load
                                  (local.get 2)))
                              (local.get 0))
                            (then
                              (br_if 1 (;@115;)
                                (i32.gt_u
                                  (i32.add
                                    (local.get 13)
                                    (i32.load offset=4
                                      (local.get 2)))
                                  (local.get 0)))))
                          (br_if 1 (;@115;)
                            (local.tee 2
                              (i32.load offset=8
                                (local.get 2))))
                          (br 2 (;@114;))))
                      (if  ;; label = @117
                        (i32.lt_u
                          (local.tee 1
                            (i32.and
                              (local.get 7)
                              (i32.sub
                                (local.get 5)
                                (local.get 1))))
                          (i32.const 2147483647))
                        (then
                          (local.set 5
                            (i32.add
                              (local.get 2)
                              (i32.const 4)))
                          (br_if 2 (;@115;)
                            (i32.ne
                              (local.tee 0
                                (call $_sbrk
                                  (local.get 1)))
                              (i32.add
                                (i32.load
                                  (local.get 2))
                                (i32.load
                                  (local.get 5)))))
                          (br_if 5 (;@112;)
                            (i32.ne
                              (local.get 0)
                              (i32.const -1))))
                        (else
                          (local.set 1
                            (i32.const 0))))
                      (br 2 (;@115;)))
                    (local.set 1
                      (if (result i32)  ;; label = @118
                        (i32.eq
                          (local.tee 0
                            (call $_sbrk
                              (i32.const 0)))
                          (i32.const -1))
                        (then
                          (i32.const 0))
                        (else
                          (local.set 2
                            (i32.add
                              (local.tee 5
                                (i32.load
                                  (i32.const 3424)))
                              (local.tee 1
                                (i32.add
                                  (local.get 4)
                                  (select
                                    (i32.sub
                                      (i32.and
                                        (i32.add
                                          (local.get 0)
                                          (local.tee 2
                                            (i32.add
                                              (local.tee 1
                                                (i32.load
                                                  (i32.const 3468)))
                                              (i32.const -1))))
                                        (i32.sub
                                          (i32.const 0)
                                          (local.get 1)))
                                      (local.get 0))
                                    (i32.const 0)
                                    (i32.and
                                      (local.get 0)
                                      (local.get 2)))))))
                          (if (result i32)  ;; label = @119
                            (i32.and
                              (i32.lt_u
                                (local.get 1)
                                (i32.const 2147483647))
                              (i32.gt_u
                                (local.get 1)
                                (local.get 3)))
                            (then
                              (if  ;; label = @120
                                (local.tee 7
                                  (i32.load
                                    (i32.const 3432)))
                                (then
                                  (if  ;; label = @121
                                    (i32.or
                                      (i32.le_u
                                        (local.get 2)
                                        (local.get 5))
                                      (i32.gt_u
                                        (local.get 2)
                                        (local.get 7)))
                                    (then
                                      (local.set 1
                                        (i32.const 0))
                                      (br 5 (;@116;))))))
                              (br_if 5 (;@116;)
                                (i32.eq
                                  (local.get 0)
                                  (local.tee 2
                                    (call $_sbrk
                                      (local.get 1)))))
                              (local.set 0
                                (local.get 2))
                              (br 2 (;@119;)))
                            (else
                              (i32.const 0))))))
                    (br 1 (;@120;)))
                  (if  ;; label = @122
                    (i32.eqz
                      (i32.and
                        (i32.and
                          (i32.ne
                            (local.get 0)
                            (i32.const -1))
                          (i32.lt_u
                            (local.get 1)
                            (i32.const 2147483647)))
                        (i32.gt_u
                          (local.get 10)
                          (local.get 1))))
                    (then
                      (if  ;; label = @123
                        (i32.eq
                          (local.get 0)
                          (i32.const -1))
                        (then
                          (local.set 1
                            (i32.const 0))
                          (br 2 (;@121;)))
                        (else
                          (br 4 (;@119;))))
                      (unreachable)))
                  (br_if 2 (;@121;)
                    (i32.ge_u
                      (local.tee 2
                        (i32.and
                          (i32.add
                            (local.tee 2
                              (i32.load
                                (i32.const 3472)))
                            (i32.sub
                              (local.get 6)
                              (local.get 1)))
                          (i32.sub
                            (i32.const 0)
                            (local.get 2))))
                      (i32.const 2147483647)))
                  (local.set 6
                    (i32.sub
                      (i32.const 0)
                      (local.get 1)))
                  (local.set 1
                    (if (result i32)  ;; label = @124
                      (i32.eq
                        (call $_sbrk
                          (local.get 2))
                        (i32.const -1))
                      (then
                        (drop
                          (call $_sbrk
                            (local.get 6)))
                        (i32.const 0))
                      (else
                        (local.set 1
                          (i32.add
                            (local.get 1)
                            (local.get 2)))
                        (br 3 (;@121;))))))
                (i32.store
                  (i32.const 3436)
                  (i32.or
                    (i32.load
                      (i32.const 3436))
                    (i32.const 4)))))
            (if  ;; label = @125
              (i32.lt_u
                (local.get 4)
                (i32.const 2147483647))
              (then
                (local.set 0
                  (call $_sbrk
                    (local.get 4)))
                (local.set 4
                  (i32.gt_u
                    (local.tee 6
                      (i32.sub
                        (local.tee 2
                          (call $_sbrk
                            (i32.const 0)))
                        (local.get 0)))
                    (i32.add
                      (local.get 3)
                      (i32.const 40))))
                (local.set 1
                  (select
                    (local.get 6)
                    (local.get 1)
                    (local.get 4)))
                (i32.eqz
                  (i32.or
                    (i32.or
                      (i32.xor
                        (local.get 4)
                        (i32.const 1))
                      (i32.eq
                        (local.get 0)
                        (i32.const -1)))
                    (i32.xor
                      (i32.and
                        (i32.and
                          (i32.ne
                            (local.get 0)
                            (i32.const -1))
                          (i32.ne
                            (local.get 2)
                            (i32.const -1)))
                        (i32.lt_u
                          (local.get 0)
                          (local.get 2)))
                      (i32.const 1))))
                (br_if 1 (;@124;))))
            (br 1 (;@124;)))
          (i32.store
            (i32.const 3424)
            (local.tee 2
              (i32.add
                (local.get 1)
                (i32.load
                  (i32.const 3424)))))
          (if  ;; label = @126
            (i32.gt_u
              (local.get 2)
              (i32.load
                (i32.const 3428)))
            (then
              (i32.store
                (i32.const 3428)
                (local.get 2))))
          (if  ;; label = @127
            (local.tee 6
              (i32.load
                (i32.const 3016)))
            (then
              (block  ;; label = @128
                (local.set 2
                  (i32.const 3440))
                (block  ;; label = @129
                  (block  ;; label = @130
                    (loop  ;; label = @131
                      (br_if 1 (;@130;)
                        (i32.eq
                          (local.get 0)
                          (i32.add
                            (local.tee 4
                              (i32.load
                                (local.get 2)))
                            (local.tee 5
                              (i32.load offset=4
                                (local.get 2))))))
                      (br_if 0 (;@131;)
                        (local.tee 2
                          (i32.load offset=8
                            (local.get 2)))))
                    (br 1 (;@130;)))
                  (local.set 7
                    (i32.add
                      (local.get 2)
                      (i32.const 4)))
                  (if  ;; label = @132
                    (i32.eqz
                      (i32.and
                        (i32.load offset=12
                          (local.get 2))
                        (i32.const 8)))
                    (then
                      (if  ;; label = @133
                        (i32.and
                          (i32.le_u
                            (local.get 4)
                            (local.get 6))
                          (i32.gt_u
                            (local.get 0)
                            (local.get 6)))
                        (then
                          (i32.store
                            (local.get 7)
                            (i32.add
                              (local.get 1)
                              (local.get 5)))
                          (local.set 0
                            (i32.add
                              (local.get 6)
                              (local.tee 2
                                (select
                                  (i32.and
                                    (i32.sub
                                      (i32.const 0)
                                      (local.tee 0
                                        (i32.add
                                          (local.get 6)
                                          (i32.const 8))))
                                    (i32.const 7))
                                  (i32.const 0)
                                  (i32.and
                                    (local.get 0)
                                    (i32.const 7))))))
                          (local.set 1
                            (i32.sub
                              (local.tee 4
                                (i32.add
                                  (local.get 1)
                                  (i32.load
                                    (i32.const 3004))))
                              (local.get 2)))
                          (i32.store
                            (i32.const 3016)
                            (local.get 0))
                          (i32.store
                            (i32.const 3004)
                            (local.get 1))
                          (i32.store offset=4
                            (local.get 0)
                            (i32.or
                              (local.get 1)
                              (i32.const 1)))
                          (i32.store offset=4
                            (i32.add
                              (local.get 4)
                              (local.get 6))
                            (i32.const 40))
                          (i32.store
                            (i32.const 3020)
                            (i32.load
                              (i32.const 3480)))
                          (br 3 (;@130;)))))))
                (if  ;; label = @134
                  (i32.lt_u
                    (local.get 0)
                    (local.tee 2
                      (i32.load
                        (i32.const 3008))))
                  (then
                    (i32.store
                      (i32.const 3008)
                      (local.get 0))
                    (local.set 2
                      (local.get 0))))
                (local.set 5
                  (i32.add
                    (local.get 0)
                    (local.get 1)))
                (local.set 4
                  (i32.const 3440))
                (block  ;; label = @135
                  (block  ;; label = @136
                    (loop  ;; label = @137
                      (br_if 1 (;@136;)
                        (i32.eq
                          (local.get 5)
                          (i32.load
                            (local.get 4))))
                      (br_if 0 (;@137;)
                        (local.tee 4
                          (i32.load offset=8
                            (local.get 4)))))
                    (br 1 (;@136;)))
                  (if  ;; label = @138
                    (i32.eqz
                      (i32.and
                        (i32.load offset=12
                          (local.get 4))
                        (i32.const 8)))
                    (then
                      (i32.store
                        (local.get 4)
                        (local.get 0))
                      (i32.store
                        (local.tee 4
                          (i32.add
                            (local.get 4)
                            (i32.const 4)))
                        (i32.add
                          (local.get 1)
                          (i32.load
                            (local.get 4))))
                      (local.set 7
                        (i32.add
                          (local.get 3)
                          (local.tee 8
                            (i32.add
                              (local.get 0)
                              (select
                                (i32.and
                                  (i32.sub
                                    (i32.const 0)
                                    (local.tee 0
                                      (i32.add
                                        (local.get 0)
                                        (i32.const 8))))
                                  (i32.const 7))
                                (i32.const 0)
                                (i32.and
                                  (local.get 0)
                                  (i32.const 7)))))))
                      (local.set 4
                        (i32.sub
                          (i32.sub
                            (local.tee 1
                              (i32.add
                                (local.get 5)
                                (select
                                  (i32.and
                                    (i32.sub
                                      (i32.const 0)
                                      (local.tee 0
                                        (i32.add
                                          (local.get 5)
                                          (i32.const 8))))
                                    (i32.const 7))
                                  (i32.const 0)
                                  (i32.and
                                    (local.get 0)
                                    (i32.const 7)))))
                            (local.get 8))
                          (local.get 3)))
                      (i32.store offset=4
                        (local.get 8)
                        (i32.or
                          (local.get 3)
                          (i32.const 3)))
                      (if  ;; label = @139
                        (i32.eq
                          (local.get 1)
                          (local.get 6))
                        (then
                          (i32.store
                            (i32.const 3004)
                            (local.tee 0
                              (i32.add
                                (local.get 4)
                                (i32.load
                                  (i32.const 3004)))))
                          (i32.store
                            (i32.const 3016)
                            (local.get 7))
                          (i32.store offset=4
                            (local.get 7)
                            (i32.or
                              (local.get 0)
                              (i32.const 1))))
                        (else
                          (block  ;; label = @140
                            (if  ;; label = @141
                              (i32.eq
                                (local.get 1)
                                (i32.load
                                  (i32.const 3012)))
                              (then
                                (i32.store
                                  (i32.const 3000)
                                  (local.tee 0
                                    (i32.add
                                      (local.get 4)
                                      (i32.load
                                        (i32.const 3000)))))
                                (i32.store
                                  (i32.const 3012)
                                  (local.get 7))
                                (i32.store offset=4
                                  (local.get 7)
                                  (i32.or
                                    (local.get 0)
                                    (i32.const 1)))
                                (i32.store
                                  (i32.add
                                    (local.get 0)
                                    (local.get 7))
                                  (local.get 0))
                                (br 1 (;@140;))))
                            (local.set 2
                              (if (result i32)  ;; label = @142
                                (i32.eq
                                  (i32.and
                                    (local.tee 0
                                      (i32.load offset=4
                                        (local.get 1)))
                                    (i32.const 3))
                                  (i32.const 1))
                                (then
                                  (local.set 13
                                    (i32.and
                                      (local.get 0)
                                      (i32.const -8)))
                                  (local.set 5
                                    (i32.shr_u
                                      (local.get 0)
                                      (i32.const 3)))
                                  (block  ;; label = @143
                                    (if  ;; label = @144
                                      (i32.lt_u
                                        (local.get 0)
                                        (i32.const 256))
                                      (then
                                        (local.set 3
                                          (i32.load offset=12
                                            (local.get 1)))
                                        (if  ;; label = @145
                                          (i32.ne
                                            (local.tee 6
                                              (i32.load offset=8
                                                (local.get 1)))
                                            (local.tee 0
                                              (i32.add
                                                (i32.shl
                                                  (local.get 5)
                                                  (i32.const 3))
                                                (i32.const 3032))))
                                          (then
                                            (block  ;; label = @146
                                              (if  ;; label = @147
                                                (i32.gt_u
                                                  (local.get 2)
                                                  (local.get 6))
                                                (then
                                                  (call $_abort)))
                                              (br_if 0 (;@147;)
                                                (i32.eq
                                                  (local.get 1)
                                                  (i32.load offset=12
                                                    (local.get 6))))
                                              (call $_abort))))
                                        (if  ;; label = @148
                                          (i32.eq
                                            (local.get 3)
                                            (local.get 6))
                                          (then
                                            (i32.store
                                              (i32.const 2992)
                                              (i32.and
                                                (i32.load
                                                  (i32.const 2992))
                                                (i32.xor
                                                  (i32.shl
                                                    (i32.const 1)
                                                    (local.get 5))
                                                  (i32.const -1))))
                                            (br 2 (;@146;))))
                                        (if  ;; label = @149
                                          (i32.eq
                                            (local.get 0)
                                            (local.get 3))
                                          (then
                                            (local.set 20
                                              (i32.add
                                                (local.get 3)
                                                (i32.const 8))))
                                          (else
                                            (block  ;; label = @150
                                              (if  ;; label = @151
                                                (i32.gt_u
                                                  (local.get 2)
                                                  (local.get 3))
                                                (then
                                                  (call $_abort)))
                                              (if  ;; label = @152
                                                (i32.eq
                                                  (local.get 1)
                                                  (i32.load
                                                    (local.tee 0
                                                      (i32.add
                                                        (local.get 3)
                                                        (i32.const 8)))))
                                                (then
                                                  (local.set 20
                                                    (local.get 0))
                                                  (br 1 (;@151;))))
                                              (call $_abort))))
                                        (i32.store offset=12
                                          (local.get 6)
                                          (local.get 3))
                                        (i32.store
                                          (local.get 20)
                                          (local.get 6)))
                                      (else
                                        (local.set 10
                                          (i32.load offset=24
                                            (local.get 1)))
                                        (if  ;; label = @153
                                          (i32.eq
                                            (local.get 1)
                                            (local.tee 0
                                              (i32.load offset=12
                                                (local.get 1))))
                                          (then
                                            (block  ;; label = @154
                                              (if  ;; label = @155
                                                (local.tee 0
                                                  (i32.load
                                                    (local.tee 6
                                                      (i32.add
                                                        (local.tee 3
                                                          (i32.add
                                                            (local.get 1)
                                                            (i32.const 16)))
                                                        (i32.const 4)))))
                                                (then
                                                  (local.set 3
                                                    (local.get 6)))
                                                (else
                                                  (br_if 1 (;@154;)
                                                    (i32.eqz
                                                      (local.tee 0
                                                        (i32.load
                                                          (local.get 3)))))))
                                              (loop  ;; label = @156
                                                (block  ;; label = @157
                                                  (if  ;; label = @158
                                                    (i32.eqz
                                                      (local.tee 5
                                                        (i32.load
                                                          (local.tee 6
                                                            (i32.add
                                                              (local.get 0)
                                                              (i32.const 20))))))
                                                    (then
                                                      (br_if 1 (;@157;)
                                                        (i32.eqz
                                                          (local.tee 5
                                                            (i32.load
                                                              (local.tee 6
                                                                (i32.add
                                                                  (local.get 0)
                                                                  (i32.const 16)))))))))
                                                  (local.set 3
                                                    (local.get 6))
                                                  (local.set 0
                                                    (local.get 5))
                                                  (br 1 (;@157;))))
                                              (if  ;; label = @159
                                                (i32.gt_u
                                                  (local.get 2)
                                                  (local.get 3))
                                                (then
                                                  (call $_abort))
                                                (else
                                                  (i32.store
                                                    (local.get 3)
                                                    (i32.const 0))
                                                  (local.set 9
                                                    (local.get 0))))))
                                          (else
                                            (if  ;; label = @160
                                              (i32.gt_u
                                                (local.get 2)
                                                (local.tee 3
                                                  (i32.load offset=8
                                                    (local.get 1))))
                                              (then
                                                (call $_abort)))
                                            (if  ;; label = @161
                                              (i32.ne
                                                (i32.load
                                                  (local.tee 2
                                                    (i32.add
                                                      (local.get 3)
                                                      (i32.const 12))))
                                                (local.get 1))
                                              (then
                                                (call $_abort)))
                                            (if  ;; label = @162
                                              (i32.eq
                                                (local.get 1)
                                                (i32.load
                                                  (local.tee 6
                                                    (i32.add
                                                      (local.get 0)
                                                      (i32.const 8)))))
                                              (then
                                                (i32.store
                                                  (local.get 2)
                                                  (local.get 0))
                                                (i32.store
                                                  (local.get 6)
                                                  (local.get 3))
                                                (local.set 9
                                                  (local.get 0)))
                                              (else
                                                (call $_abort)))))
                                        (br_if 1 (;@161;)
                                          (i32.eqz
                                            (local.get 10)))
                                        (if  ;; label = @163
                                          (i32.eq
                                            (local.get 1)
                                            (i32.load
                                              (local.tee 3
                                                (i32.add
                                                  (i32.shl
                                                    (local.tee 0
                                                      (i32.load offset=28
                                                        (local.get 1)))
                                                    (i32.const 2))
                                                  (i32.const 3296)))))
                                          (then
                                            (block  ;; label = @164
                                              (i32.store
                                                (local.get 3)
                                                (local.get 9))
                                              (br_if 0 (;@164;)
                                                (local.get 9))
                                              (i32.store
                                                (i32.const 2996)
                                                (i32.and
                                                  (i32.load
                                                    (i32.const 2996))
                                                  (i32.xor
                                                    (i32.shl
                                                      (i32.const 1)
                                                      (local.get 0))
                                                    (i32.const -1))))
                                              (br 3 (;@161;))))
                                          (else
                                            (if  ;; label = @165
                                              (i32.gt_u
                                                (i32.load
                                                  (i32.const 3008))
                                                (local.get 10))
                                              (then
                                                (call $_abort))
                                              (else
                                                (i32.store
                                                  (select
                                                    (local.tee 0
                                                      (i32.add
                                                        (local.get 10)
                                                        (i32.const 16)))
                                                    (i32.add
                                                      (local.get 10)
                                                      (i32.const 20))
                                                    (i32.eq
                                                      (local.get 1)
                                                      (i32.load
                                                        (local.get 0))))
                                                  (local.get 9))
                                                (br_if 3 (;@162;)
                                                  (i32.eqz
                                                    (local.get 9)))))))
                                        (if  ;; label = @166
                                          (i32.gt_u
                                            (local.tee 3
                                              (i32.load
                                                (i32.const 3008)))
                                            (local.get 9))
                                          (then
                                            (call $_abort)))
                                        (i32.store offset=24
                                          (local.get 9)
                                          (local.get 10))
                                        (if  ;; label = @167
                                          (local.tee 0
                                            (i32.load
                                              (local.tee 2
                                                (i32.add
                                                  (local.get 1)
                                                  (i32.const 16)))))
                                          (then
                                            (if  ;; label = @168
                                              (i32.gt_u
                                                (local.get 3)
                                                (local.get 0))
                                              (then
                                                (call $_abort))
                                              (else
                                                (i32.store offset=16
                                                  (local.get 9)
                                                  (local.get 0))
                                                (i32.store offset=24
                                                  (local.get 0)
                                                  (local.get 9))))))
                                        (br_if 1 (;@167;)
                                          (i32.eqz
                                            (local.tee 0
                                              (i32.load offset=4
                                                (local.get 2)))))
                                        (if  ;; label = @169
                                          (i32.gt_u
                                            (i32.load
                                              (i32.const 3008))
                                            (local.get 0))
                                          (then
                                            (call $_abort))
                                          (else
                                            (i32.store offset=20
                                              (local.get 9)
                                              (local.get 0))
                                            (i32.store offset=24
                                              (local.get 0)
                                              (local.get 9)))))))
                                  (local.set 1
                                    (i32.add
                                      (local.get 1)
                                      (local.get 13)))
                                  (i32.add
                                    (local.get 4)
                                    (local.get 13)))
                                (else
                                  (local.get 4))))
                            (i32.store
                              (local.tee 0
                                (i32.add
                                  (local.get 1)
                                  (i32.const 4)))
                              (i32.and
                                (i32.load
                                  (local.get 0))
                                (i32.const -2)))
                            (i32.store offset=4
                              (local.get 7)
                              (i32.or
                                (local.get 2)
                                (i32.const 1)))
                            (i32.store
                              (i32.add
                                (local.get 2)
                                (local.get 7))
                              (local.get 2))
                            (local.set 3
                              (i32.shr_u
                                (local.get 2)
                                (i32.const 3)))
                            (if  ;; label = @170
                              (i32.lt_u
                                (local.get 2)
                                (i32.const 256))
                              (then
                                (local.set 0
                                  (i32.add
                                    (i32.shl
                                      (local.get 3)
                                      (i32.const 3))
                                    (i32.const 3032)))
                                (if  ;; label = @171
                                  (i32.and
                                    (local.tee 1
                                      (i32.load
                                        (i32.const 2992)))
                                    (local.tee 3
                                      (i32.shl
                                        (i32.const 1)
                                        (local.get 3))))
                                  (then
                                    (block  ;; label = @172
                                      (if  ;; label = @173
                                        (i32.le_u
                                          (i32.load
                                            (i32.const 3008))
                                          (local.tee 1
                                            (i32.load
                                              (local.tee 3
                                                (i32.add
                                                  (local.get 0)
                                                  (i32.const 8))))))
                                        (then
                                          (local.set 15
                                            (local.get 1))
                                          (local.set 21
                                            (local.get 3))
                                          (br 1 (;@172;))))
                                      (call $_abort)))
                                  (else
                                    (i32.store
                                      (i32.const 2992)
                                      (i32.or
                                        (local.get 1)
                                        (local.get 3)))
                                    (local.set 15
                                      (local.get 0))
                                    (local.set 21
                                      (i32.add
                                        (local.get 0)
                                        (i32.const 8)))))
                                (i32.store
                                  (local.get 21)
                                  (local.get 7))
                                (i32.store offset=12
                                  (local.get 15)
                                  (local.get 7))
                                (i32.store offset=8
                                  (local.get 7)
                                  (local.get 15))
                                (i32.store offset=12
                                  (local.get 7)
                                  (local.get 0))
                                (br 1 (;@172;))))
                            (local.set 0
                              (i32.add
                                (i32.shl
                                  (local.tee 3
                                    (if (result i32)  ;; label = @174
                                      (local.tee 0
                                        (i32.shr_u
                                          (local.get 2)
                                          (i32.const 8)))
                                      (then
                                        (if (result i32)  ;; label = @175
                                          (i32.gt_u
                                            (local.get 2)
                                            (i32.const 16777215))
                                          (then
                                            (i32.const 31))
                                          (else
                                            (local.set 0
                                              (i32.and
                                                (i32.shr_u
                                                  (i32.add
                                                    (local.tee 1
                                                      (i32.shl
                                                        (local.get 0)
                                                        (local.tee 3
                                                          (i32.and
                                                            (i32.shr_u
                                                              (i32.add
                                                                (local.get 0)
                                                                (i32.const 1048320))
                                                              (i32.const 16))
                                                            (i32.const 8)))))
                                                    (i32.const 520192))
                                                  (i32.const 16))
                                                (i32.const 4)))
                                            (i32.or
                                              (i32.shl
                                                (local.tee 0
                                                  (i32.add
                                                    (i32.sub
                                                      (i32.const 14)
                                                      (i32.or
                                                        (i32.or
                                                          (local.get 0)
                                                          (local.get 3))
                                                        (local.tee 3
                                                          (i32.and
                                                            (i32.shr_u
                                                              (i32.add
                                                                (local.tee 0
                                                                  (i32.shl
                                                                    (local.get 1)
                                                                    (local.get 0)))
                                                                (i32.const 245760))
                                                              (i32.const 16))
                                                            (i32.const 2)))))
                                                    (i32.shr_u
                                                      (i32.shl
                                                        (local.get 0)
                                                        (local.get 3))
                                                      (i32.const 15))))
                                                (i32.const 1))
                                              (i32.and
                                                (i32.shr_u
                                                  (local.get 2)
                                                  (i32.add
                                                    (local.get 0)
                                                    (i32.const 7)))
                                                (i32.const 1))))))
                                      (else
                                        (i32.const 0))))
                                  (i32.const 2))
                                (i32.const 3296)))
                            (i32.store offset=28
                              (local.get 7)
                              (local.get 3))
                            (i32.store offset=4
                              (local.tee 1
                                (i32.add
                                  (local.get 7)
                                  (i32.const 16)))
                              (i32.const 0))
                            (i32.store
                              (local.get 1)
                              (i32.const 0))
                            (if  ;; label = @176
                              (i32.eqz
                                (i32.and
                                  (local.tee 1
                                    (i32.load
                                      (i32.const 2996)))
                                  (local.tee 4
                                    (i32.shl
                                      (i32.const 1)
                                      (local.get 3)))))
                              (then
                                (i32.store
                                  (i32.const 2996)
                                  (i32.or
                                    (local.get 1)
                                    (local.get 4)))
                                (i32.store
                                  (local.get 0)
                                  (local.get 7))
                                (i32.store offset=24
                                  (local.get 7)
                                  (local.get 0))
                                (i32.store offset=12
                                  (local.get 7)
                                  (local.get 7))
                                (i32.store offset=8
                                  (local.get 7)
                                  (local.get 7))
                                (br 1 (;@175;))))
                            (if  ;; label = @177
                              (i32.eq
                                (local.get 2)
                                (i32.and
                                  (i32.load offset=4
                                    (local.tee 0
                                      (i32.load
                                        (local.get 0))))
                                  (i32.const -8)))
                              (then
                                (local.set 11
                                  (local.get 0)))
                              (else
                                (block  ;; label = @178
                                  (local.set 1
                                    (i32.shl
                                      (local.get 2)
                                      (select
                                        (i32.const 0)
                                        (i32.sub
                                          (i32.const 25)
                                          (i32.shr_u
                                            (local.get 3)
                                            (i32.const 1)))
                                        (i32.eq
                                          (local.get 3)
                                          (i32.const 31)))))
                                  (loop  ;; label = @179
                                    (if  ;; label = @180
                                      (local.tee 3
                                        (i32.load
                                          (local.tee 4
                                            (i32.add
                                              (i32.add
                                                (local.get 0)
                                                (i32.const 16))
                                              (i32.shl
                                                (i32.shr_u
                                                  (local.get 1)
                                                  (i32.const 31))
                                                (i32.const 2))))))
                                      (then
                                        (local.set 1
                                          (i32.shl
                                            (local.get 1)
                                            (i32.const 1)))
                                        (if  ;; label = @181
                                          (i32.eq
                                            (local.get 2)
                                            (i32.and
                                              (i32.load offset=4
                                                (local.get 3))
                                              (i32.const -8)))
                                          (then
                                            (local.set 11
                                              (local.get 3))
                                            (br 3 (;@178;)))
                                          (else
                                            (local.set 0
                                              (local.get 3))
                                            (br 2 (;@179;))))
                                        (unreachable))))
                                  (if  ;; label = @182
                                    (i32.gt_u
                                      (i32.load
                                        (i32.const 3008))
                                      (local.get 4))
                                    (then
                                      (call $_abort))
                                    (else
                                      (i32.store
                                        (local.get 4)
                                        (local.get 7))
                                      (i32.store offset=24
                                        (local.get 7)
                                        (local.get 0))
                                      (i32.store offset=12
                                        (local.get 7)
                                        (local.get 7))
                                      (i32.store offset=8
                                        (local.get 7)
                                        (local.get 7))
                                      (br 3 (;@179;)))))))
                            (if  ;; label = @183
                              (i32.and
                                (i32.le_u
                                  (local.tee 0
                                    (i32.load
                                      (i32.const 3008)))
                                  (local.get 11))
                                (i32.le_u
                                  (local.get 0)
                                  (local.tee 0
                                    (i32.load
                                      (local.tee 3
                                        (i32.add
                                          (local.get 11)
                                          (i32.const 8)))))))
                              (then
                                (i32.store offset=12
                                  (local.get 0)
                                  (local.get 7))
                                (i32.store
                                  (local.get 3)
                                  (local.get 7))
                                (i32.store offset=8
                                  (local.get 7)
                                  (local.get 0))
                                (i32.store offset=12
                                  (local.get 7)
                                  (local.get 11))
                                (i32.store offset=24
                                  (local.get 7)
                                  (i32.const 0)))
                              (else
                                (call $_abort))))))
                      (global.set 3
                        (local.get 14))
                      (return
                        (i32.add
                          (local.get 8)
                          (i32.const 8))))))
                (local.set 2
                  (i32.const 3440))
                (loop  ;; label = @184
                  (block  ;; label = @185
                    (if  ;; label = @186
                      (i32.le_u
                        (local.tee 4
                          (i32.load
                            (local.get 2)))
                        (local.get 6))
                      (then
                        (br_if 1 (;@185;)
                          (i32.gt_u
                            (local.tee 5
                              (i32.add
                                (local.get 4)
                                (i32.load offset=4
                                  (local.get 2))))
                            (local.get 6)))))
                    (local.set 2
                      (i32.load offset=8
                        (local.get 2)))
                    (br 1 (;@185;))))
                (local.set 2
                  (i32.add
                    (local.tee 4
                      (i32.add
                        (local.get 5)
                        (i32.const -47)))
                    (i32.const 8)))
                (local.set 4
                  (i32.add
                    (local.tee 2
                      (select
                        (local.get 6)
                        (local.tee 2
                          (i32.add
                            (local.get 4)
                            (select
                              (i32.and
                                (i32.sub
                                  (i32.const 0)
                                  (local.get 2))
                                (i32.const 7))
                              (i32.const 0)
                              (i32.and
                                (local.get 2)
                                (i32.const 7)))))
                        (i32.lt_u
                          (local.get 2)
                          (local.tee 9
                            (i32.add
                              (local.get 6)
                              (i32.const 16))))))
                    (i32.const 8)))
                (i32.store
                  (i32.const 3016)
                  (local.tee 10
                    (i32.add
                      (local.get 0)
                      (local.tee 7
                        (select
                          (i32.and
                            (i32.sub
                              (i32.const 0)
                              (local.tee 7
                                (i32.add
                                  (local.get 0)
                                  (i32.const 8))))
                            (i32.const 7))
                          (i32.const 0)
                          (i32.and
                            (local.get 7)
                            (i32.const 7)))))))
                (i32.store
                  (i32.const 3004)
                  (local.tee 7
                    (i32.sub
                      (local.tee 11
                        (i32.add
                          (local.get 1)
                          (i32.const -40)))
                      (local.get 7))))
                (i32.store offset=4
                  (local.get 10)
                  (i32.or
                    (local.get 7)
                    (i32.const 1)))
                (i32.store offset=4
                  (i32.add
                    (local.get 0)
                    (local.get 11))
                  (i32.const 40))
                (i32.store
                  (i32.const 3020)
                  (i32.load
                    (i32.const 3480)))
                (i32.store
                  (local.tee 7
                    (i32.add
                      (local.get 2)
                      (i32.const 4)))
                  (i32.const 27))
                (i64.store align=4
                  (local.get 4)
                  (i64.load align=4
                    (i32.const 3440)))
                (i64.store offset=8 align=4
                  (local.get 4)
                  (i64.load align=4
                    (i32.const 3448)))
                (i32.store
                  (i32.const 3440)
                  (local.get 0))
                (i32.store
                  (i32.const 3444)
                  (local.get 1))
                (i32.store
                  (i32.const 3452)
                  (i32.const 0))
                (i32.store
                  (i32.const 3448)
                  (local.get 4))
                (local.set 0
                  (i32.add
                    (local.get 2)
                    (i32.const 24)))
                (loop  ;; label = @187
                  (i32.store
                    (local.tee 1
                      (i32.add
                        (local.get 0)
                        (i32.const 4)))
                    (i32.const 7))
                  (if  ;; label = @188
                    (i32.lt_u
                      (i32.add
                        (local.get 0)
                        (i32.const 8))
                      (local.get 5))
                    (then
                      (local.set 0
                        (local.get 1))
                      (br 1 (;@187;)))))
                (if  ;; label = @189
                  (i32.ne
                    (local.get 2)
                    (local.get 6))
                  (then
                    (i32.store
                      (local.get 7)
                      (i32.and
                        (i32.load
                          (local.get 7))
                        (i32.const -2)))
                    (i32.store offset=4
                      (local.get 6)
                      (i32.or
                        (local.tee 4
                          (i32.sub
                            (local.get 2)
                            (local.get 6)))
                        (i32.const 1)))
                    (i32.store
                      (local.get 2)
                      (local.get 4))
                    (local.set 1
                      (i32.shr_u
                        (local.get 4)
                        (i32.const 3)))
                    (if  ;; label = @190
                      (i32.lt_u
                        (local.get 4)
                        (i32.const 256))
                      (then
                        (local.set 0
                          (i32.add
                            (i32.shl
                              (local.get 1)
                              (i32.const 3))
                            (i32.const 3032)))
                        (if  ;; label = @191
                          (i32.and
                            (local.tee 2
                              (i32.load
                                (i32.const 2992)))
                            (local.tee 1
                              (i32.shl
                                (i32.const 1)
                                (local.get 1))))
                          (then
                            (if  ;; label = @192
                              (i32.gt_u
                                (i32.load
                                  (i32.const 3008))
                                (local.tee 2
                                  (i32.load
                                    (local.tee 1
                                      (i32.add
                                        (local.get 0)
                                        (i32.const 8))))))
                              (then
                                (call $_abort))
                              (else
                                (local.set 17
                                  (local.get 2))
                                (local.set 22
                                  (local.get 1)))))
                          (else
                            (i32.store
                              (i32.const 2992)
                              (i32.or
                                (local.get 1)
                                (local.get 2)))
                            (local.set 17
                              (local.get 0))
                            (local.set 22
                              (i32.add
                                (local.get 0)
                                (i32.const 8)))))
                        (i32.store
                          (local.get 22)
                          (local.get 6))
                        (i32.store offset=12
                          (local.get 17)
                          (local.get 6))
                        (i32.store offset=8
                          (local.get 6)
                          (local.get 17))
                        (i32.store offset=12
                          (local.get 6)
                          (local.get 0))
                        (br 2 (;@190;))))
                    (local.set 0
                      (i32.add
                        (i32.shl
                          (local.tee 1
                            (if (result i32)  ;; label = @193
                              (local.tee 0
                                (i32.shr_u
                                  (local.get 4)
                                  (i32.const 8)))
                              (then
                                (if (result i32)  ;; label = @194
                                  (i32.gt_u
                                    (local.get 4)
                                    (i32.const 16777215))
                                  (then
                                    (i32.const 31))
                                  (else
                                    (local.set 0
                                      (i32.and
                                        (i32.shr_u
                                          (i32.add
                                            (local.tee 2
                                              (i32.shl
                                                (local.get 0)
                                                (local.tee 1
                                                  (i32.and
                                                    (i32.shr_u
                                                      (i32.add
                                                        (local.get 0)
                                                        (i32.const 1048320))
                                                      (i32.const 16))
                                                    (i32.const 8)))))
                                            (i32.const 520192))
                                          (i32.const 16))
                                        (i32.const 4)))
                                    (i32.or
                                      (i32.shl
                                        (local.tee 0
                                          (i32.add
                                            (i32.sub
                                              (i32.const 14)
                                              (i32.or
                                                (local.tee 5
                                                  (i32.and
                                                    (i32.shr_u
                                                      (i32.add
                                                        (local.tee 2
                                                          (i32.shl
                                                            (local.get 2)
                                                            (local.get 0)))
                                                        (i32.const 245760))
                                                      (i32.const 16))
                                                    (i32.const 2)))
                                                (i32.or
                                                  (local.get 0)
                                                  (local.get 1))))
                                            (i32.shr_u
                                              (i32.shl
                                                (local.get 2)
                                                (local.get 5))
                                              (i32.const 15))))
                                        (i32.const 1))
                                      (i32.and
                                        (i32.shr_u
                                          (local.get 4)
                                          (i32.add
                                            (local.get 0)
                                            (i32.const 7)))
                                        (i32.const 1))))))
                              (else
                                (i32.const 0))))
                          (i32.const 2))
                        (i32.const 3296)))
                    (i32.store offset=28
                      (local.get 6)
                      (local.get 1))
                    (i32.store offset=20
                      (local.get 6)
                      (i32.const 0))
                    (i32.store
                      (local.get 9)
                      (i32.const 0))
                    (if  ;; label = @195
                      (i32.eqz
                        (i32.and
                          (local.tee 2
                            (i32.load
                              (i32.const 2996)))
                          (local.tee 5
                            (i32.shl
                              (i32.const 1)
                              (local.get 1)))))
                      (then
                        (i32.store
                          (i32.const 2996)
                          (i32.or
                            (local.get 2)
                            (local.get 5)))
                        (i32.store
                          (local.get 0)
                          (local.get 6))
                        (i32.store offset=24
                          (local.get 6)
                          (local.get 0))
                        (i32.store offset=12
                          (local.get 6)
                          (local.get 6))
                        (i32.store offset=8
                          (local.get 6)
                          (local.get 6))
                        (br 2 (;@193;))))
                    (if  ;; label = @196
                      (i32.eq
                        (i32.and
                          (i32.load offset=4
                            (local.tee 0
                              (i32.load
                                (local.get 0))))
                          (i32.const -8))
                        (local.get 4))
                      (then
                        (local.set 8
                          (local.get 0)))
                      (else
                        (block  ;; label = @197
                          (local.set 2
                            (i32.shl
                              (local.get 4)
                              (select
                                (i32.const 0)
                                (i32.sub
                                  (i32.const 25)
                                  (i32.shr_u
                                    (local.get 1)
                                    (i32.const 1)))
                                (i32.eq
                                  (local.get 1)
                                  (i32.const 31)))))
                          (loop  ;; label = @198
                            (if  ;; label = @199
                              (local.tee 1
                                (i32.load
                                  (local.tee 5
                                    (i32.add
                                      (i32.add
                                        (local.get 0)
                                        (i32.const 16))
                                      (i32.shl
                                        (i32.shr_u
                                          (local.get 2)
                                          (i32.const 31))
                                        (i32.const 2))))))
                              (then
                                (local.set 2
                                  (i32.shl
                                    (local.get 2)
                                    (i32.const 1)))
                                (if  ;; label = @200
                                  (i32.eq
                                    (i32.and
                                      (i32.load offset=4
                                        (local.get 1))
                                      (i32.const -8))
                                    (local.get 4))
                                  (then
                                    (local.set 8
                                      (local.get 1))
                                    (br 3 (;@197;)))
                                  (else
                                    (local.set 0
                                      (local.get 1))
                                    (br 2 (;@198;))))
                                (unreachable))))
                          (if  ;; label = @201
                            (i32.gt_u
                              (i32.load
                                (i32.const 3008))
                              (local.get 5))
                            (then
                              (call $_abort))
                            (else
                              (i32.store
                                (local.get 5)
                                (local.get 6))
                              (i32.store offset=24
                                (local.get 6)
                                (local.get 0))
                              (i32.store offset=12
                                (local.get 6)
                                (local.get 6))
                              (i32.store offset=8
                                (local.get 6)
                                (local.get 6))
                              (br 4 (;@197;)))))))
                    (if  ;; label = @202
                      (i32.and
                        (i32.le_u
                          (local.tee 0
                            (i32.load
                              (i32.const 3008)))
                          (local.get 8))
                        (i32.le_u
                          (local.get 0)
                          (local.tee 0
                            (i32.load
                              (local.tee 1
                                (i32.add
                                  (local.get 8)
                                  (i32.const 8)))))))
                      (then
                        (i32.store offset=12
                          (local.get 0)
                          (local.get 6))
                        (i32.store
                          (local.get 1)
                          (local.get 6))
                        (i32.store offset=8
                          (local.get 6)
                          (local.get 0))
                        (i32.store offset=12
                          (local.get 6)
                          (local.get 8))
                        (i32.store offset=24
                          (local.get 6)
                          (i32.const 0)))
                      (else
                        (call $_abort)))))))
            (else
              (if  ;; label = @203
                (i32.or
                  (i32.eqz
                    (local.tee 2
                      (i32.load
                        (i32.const 3008))))
                  (i32.lt_u
                    (local.get 0)
                    (local.get 2)))
                (then
                  (i32.store
                    (i32.const 3008)
                    (local.get 0))))
              (i32.store
                (i32.const 3440)
                (local.get 0))
              (i32.store
                (i32.const 3444)
                (local.get 1))
              (i32.store
                (i32.const 3452)
                (i32.const 0))
              (i32.store
                (i32.const 3028)
                (i32.load
                  (i32.const 3464)))
              (i32.store
                (i32.const 3024)
                (i32.const -1))
              (i32.store
                (i32.const 3044)
                (i32.const 3032))
              (i32.store
                (i32.const 3040)
                (i32.const 3032))
              (i32.store
                (i32.const 3052)
                (i32.const 3040))
              (i32.store
                (i32.const 3048)
                (i32.const 3040))
              (i32.store
                (i32.const 3060)
                (i32.const 3048))
              (i32.store
                (i32.const 3056)
                (i32.const 3048))
              (i32.store
                (i32.const 3068)
                (i32.const 3056))
              (i32.store
                (i32.const 3064)
                (i32.const 3056))
              (i32.store
                (i32.const 3076)
                (i32.const 3064))
              (i32.store
                (i32.const 3072)
                (i32.const 3064))
              (i32.store
                (i32.const 3084)
                (i32.const 3072))
              (i32.store
                (i32.const 3080)
                (i32.const 3072))
              (i32.store
                (i32.const 3092)
                (i32.const 3080))
              (i32.store
                (i32.const 3088)
                (i32.const 3080))
              (i32.store
                (i32.const 3100)
                (i32.const 3088))
              (i32.store
                (i32.const 3096)
                (i32.const 3088))
              (i32.store
                (i32.const 3108)
                (i32.const 3096))
              (i32.store
                (i32.const 3104)
                (i32.const 3096))
              (i32.store
                (i32.const 3116)
                (i32.const 3104))
              (i32.store
                (i32.const 3112)
                (i32.const 3104))
              (i32.store
                (i32.const 3124)
                (i32.const 3112))
              (i32.store
                (i32.const 3120)
                (i32.const 3112))
              (i32.store
                (i32.const 3132)
                (i32.const 3120))
              (i32.store
                (i32.const 3128)
                (i32.const 3120))
              (i32.store
                (i32.const 3140)
                (i32.const 3128))
              (i32.store
                (i32.const 3136)
                (i32.const 3128))
              (i32.store
                (i32.const 3148)
                (i32.const 3136))
              (i32.store
                (i32.const 3144)
                (i32.const 3136))
              (i32.store
                (i32.const 3156)
                (i32.const 3144))
              (i32.store
                (i32.const 3152)
                (i32.const 3144))
              (i32.store
                (i32.const 3164)
                (i32.const 3152))
              (i32.store
                (i32.const 3160)
                (i32.const 3152))
              (i32.store
                (i32.const 3172)
                (i32.const 3160))
              (i32.store
                (i32.const 3168)
                (i32.const 3160))
              (i32.store
                (i32.const 3180)
                (i32.const 3168))
              (i32.store
                (i32.const 3176)
                (i32.const 3168))
              (i32.store
                (i32.const 3188)
                (i32.const 3176))
              (i32.store
                (i32.const 3184)
                (i32.const 3176))
              (i32.store
                (i32.const 3196)
                (i32.const 3184))
              (i32.store
                (i32.const 3192)
                (i32.const 3184))
              (i32.store
                (i32.const 3204)
                (i32.const 3192))
              (i32.store
                (i32.const 3200)
                (i32.const 3192))
              (i32.store
                (i32.const 3212)
                (i32.const 3200))
              (i32.store
                (i32.const 3208)
                (i32.const 3200))
              (i32.store
                (i32.const 3220)
                (i32.const 3208))
              (i32.store
                (i32.const 3216)
                (i32.const 3208))
              (i32.store
                (i32.const 3228)
                (i32.const 3216))
              (i32.store
                (i32.const 3224)
                (i32.const 3216))
              (i32.store
                (i32.const 3236)
                (i32.const 3224))
              (i32.store
                (i32.const 3232)
                (i32.const 3224))
              (i32.store
                (i32.const 3244)
                (i32.const 3232))
              (i32.store
                (i32.const 3240)
                (i32.const 3232))
              (i32.store
                (i32.const 3252)
                (i32.const 3240))
              (i32.store
                (i32.const 3248)
                (i32.const 3240))
              (i32.store
                (i32.const 3260)
                (i32.const 3248))
              (i32.store
                (i32.const 3256)
                (i32.const 3248))
              (i32.store
                (i32.const 3268)
                (i32.const 3256))
              (i32.store
                (i32.const 3264)
                (i32.const 3256))
              (i32.store
                (i32.const 3276)
                (i32.const 3264))
              (i32.store
                (i32.const 3272)
                (i32.const 3264))
              (i32.store
                (i32.const 3284)
                (i32.const 3272))
              (i32.store
                (i32.const 3280)
                (i32.const 3272))
              (i32.store
                (i32.const 3292)
                (i32.const 3280))
              (i32.store
                (i32.const 3288)
                (i32.const 3280))
              (i32.store
                (i32.const 3016)
                (local.tee 4
                  (i32.add
                    (local.get 0)
                    (local.tee 2
                      (select
                        (i32.and
                          (i32.sub
                            (i32.const 0)
                            (local.tee 2
                              (i32.add
                                (local.get 0)
                                (i32.const 8))))
                          (i32.const 7))
                        (i32.const 0)
                        (i32.and
                          (local.get 2)
                          (i32.const 7)))))))
              (i32.store
                (i32.const 3004)
                (local.tee 2
                  (i32.sub
                    (local.tee 1
                      (i32.add
                        (local.get 1)
                        (i32.const -40)))
                    (local.get 2))))
              (i32.store offset=4
                (local.get 4)
                (i32.or
                  (local.get 2)
                  (i32.const 1)))
              (i32.store offset=4
                (i32.add
                  (local.get 0)
                  (local.get 1))
                (i32.const 40))
              (i32.store
                (i32.const 3020)
                (i32.load
                  (i32.const 3480)))))
          (if  ;; label = @204
            (i32.gt_u
              (local.tee 0
                (i32.load
                  (i32.const 3004)))
              (local.get 3))
            (then
              (i32.store
                (i32.const 3004)
                (local.tee 1
                  (i32.sub
                    (local.get 0)
                    (local.get 3))))
              (br 2 (;@202;)))))
        (i32.store
          (call $___errno_location)
          (i32.const 12))
        (global.set 3
          (local.get 14))
        (return
          (i32.const 0)))
      (i32.store
        (i32.const 3016)
        (local.tee 2
          (i32.add
            (local.get 3)
            (local.tee 0
              (i32.load
                (i32.const 3016))))))
      (i32.store offset=4
        (local.get 2)
        (i32.or
          (local.get 1)
          (i32.const 1)))
      (i32.store offset=4
        (local.get 0)
        (i32.or
          (local.get 3)
          (i32.const 3))))
    (global.set 3
      (local.get 14))
    (i32.add
      (local.get 0)
      (i32.const 8)))
  (func $_free (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (if  ;; label = @1
      (i32.eqz
        (local.get 0))
      (then
        (return)))
    (if  ;; label = @2
      (i32.lt_u
        (local.tee 4
          (i32.add
            (local.get 0)
            (i32.const -8)))
        (local.tee 12
          (i32.load
            (i32.const 3008))))
      (then
        (call $_abort)))
    (if  ;; label = @3
      (i32.eq
        (local.tee 11
          (i32.and
            (local.tee 0
              (i32.load
                (i32.add
                  (local.get 0)
                  (i32.const -4))))
            (i32.const 3)))
        (i32.const 1))
      (then
        (call $_abort)))
    (local.set 7
      (i32.add
        (local.get 4)
        (local.tee 2
          (i32.and
            (local.get 0)
            (i32.const -8)))))
    (if  ;; label = @4
      (i32.and
        (local.get 0)
        (i32.const 1))
      (then
        (local.set 1
          (local.get 2))
        (local.set 5
          (local.tee 3
            (local.get 4))))
      (else
        (block  ;; label = @5
          (local.set 9
            (i32.load
              (local.get 4)))
          (if  ;; label = @6
            (i32.eqz
              (local.get 11))
            (then
              (return)))
          (if  ;; label = @7
            (i32.lt_u
              (local.tee 0
                (i32.sub
                  (local.get 4)
                  (local.get 9)))
              (local.get 12))
            (then
              (call $_abort)))
          (local.set 4
            (i32.add
              (local.get 2)
              (local.get 9)))
          (if  ;; label = @8
            (i32.eq
              (local.get 0)
              (i32.load
                (i32.const 3012)))
            (then
              (if  ;; label = @9
                (i32.ne
                  (i32.and
                    (local.tee 1
                      (i32.load
                        (local.tee 3
                          (i32.add
                            (local.get 7)
                            (i32.const 4)))))
                    (i32.const 3))
                  (i32.const 3))
                (then
                  (local.set 1
                    (local.get 4))
                  (local.set 5
                    (local.tee 3
                      (local.get 0)))
                  (br 2 (;@7;))))
              (i32.store
                (i32.const 3000)
                (local.get 4))
              (i32.store
                (local.get 3)
                (i32.and
                  (local.get 1)
                  (i32.const -2)))
              (i32.store offset=4
                (local.get 0)
                (i32.or
                  (local.get 4)
                  (i32.const 1)))
              (i32.store
                (i32.add
                  (local.get 0)
                  (local.get 4))
                (local.get 4))
              (return)))
          (local.set 2
            (i32.shr_u
              (local.get 9)
              (i32.const 3)))
          (if  ;; label = @10
            (i32.lt_u
              (local.get 9)
              (i32.const 256))
            (then
              (local.set 1
                (i32.load offset=12
                  (local.get 0)))
              (if  ;; label = @11
                (i32.ne
                  (local.tee 5
                    (i32.load offset=8
                      (local.get 0)))
                  (local.tee 3
                    (i32.add
                      (i32.shl
                        (local.get 2)
                        (i32.const 3))
                      (i32.const 3032))))
                (then
                  (if  ;; label = @12
                    (i32.gt_u
                      (local.get 12)
                      (local.get 5))
                    (then
                      (call $_abort)))
                  (if  ;; label = @13
                    (i32.ne
                      (i32.load offset=12
                        (local.get 5))
                      (local.get 0))
                    (then
                      (call $_abort)))))
              (if  ;; label = @14
                (i32.eq
                  (local.get 1)
                  (local.get 5))
                (then
                  (i32.store
                    (i32.const 2992)
                    (i32.and
                      (i32.load
                        (i32.const 2992))
                      (i32.xor
                        (i32.shl
                          (i32.const 1)
                          (local.get 2))
                        (i32.const -1))))
                  (local.set 1
                    (local.get 4))
                  (local.set 5
                    (local.tee 3
                      (local.get 0)))
                  (br 2 (;@12;))))
              (if  ;; label = @15
                (i32.eq
                  (local.get 1)
                  (local.get 3))
                (then
                  (local.set 6
                    (i32.add
                      (local.get 1)
                      (i32.const 8))))
                (else
                  (if  ;; label = @16
                    (i32.gt_u
                      (local.get 12)
                      (local.get 1))
                    (then
                      (call $_abort)))
                  (if  ;; label = @17
                    (i32.eq
                      (local.get 0)
                      (i32.load
                        (local.tee 3
                          (i32.add
                            (local.get 1)
                            (i32.const 8)))))
                    (then
                      (local.set 6
                        (local.get 3)))
                    (else
                      (call $_abort)))))
              (i32.store offset=12
                (local.get 5)
                (local.get 1))
              (i32.store
                (local.get 6)
                (local.get 5))
              (local.set 1
                (local.get 4))
              (local.set 5
                (local.tee 3
                  (local.get 0)))
              (br 1 (;@16;))))
          (local.set 13
            (i32.load offset=24
              (local.get 0)))
          (if  ;; label = @18
            (i32.eq
              (local.get 0)
              (local.tee 2
                (i32.load offset=12
                  (local.get 0))))
            (then
              (block  ;; label = @19
                (if  ;; label = @20
                  (local.tee 2
                    (i32.load
                      (local.tee 9
                        (i32.add
                          (local.tee 6
                            (i32.add
                              (local.get 0)
                              (i32.const 16)))
                          (i32.const 4)))))
                  (then
                    (local.set 6
                      (local.get 9)))
                  (else
                    (br_if 1 (;@19;)
                      (i32.eqz
                        (local.tee 2
                          (i32.load
                            (local.get 6)))))))
                (loop  ;; label = @21
                  (block  ;; label = @22
                    (if  ;; label = @23
                      (i32.eqz
                        (local.tee 11
                          (i32.load
                            (local.tee 9
                              (i32.add
                                (local.get 2)
                                (i32.const 20))))))
                      (then
                        (br_if 1 (;@22;)
                          (i32.eqz
                            (local.tee 11
                              (i32.load
                                (local.tee 9
                                  (i32.add
                                    (local.get 2)
                                    (i32.const 16)))))))))
                    (local.set 6
                      (local.get 9))
                    (local.set 2
                      (local.get 11))
                    (br 1 (;@22;))))
                (if  ;; label = @24
                  (i32.gt_u
                    (local.get 12)
                    (local.get 6))
                  (then
                    (call $_abort))
                  (else
                    (i32.store
                      (local.get 6)
                      (i32.const 0))
                    (local.set 8
                      (local.get 2))))))
            (else
              (if  ;; label = @25
                (i32.gt_u
                  (local.get 12)
                  (local.tee 6
                    (i32.load offset=8
                      (local.get 0))))
                (then
                  (call $_abort)))
              (if  ;; label = @26
                (i32.ne
                  (i32.load
                    (local.tee 9
                      (i32.add
                        (local.get 6)
                        (i32.const 12))))
                  (local.get 0))
                (then
                  (call $_abort)))
              (if  ;; label = @27
                (i32.eq
                  (local.get 0)
                  (i32.load
                    (local.tee 11
                      (i32.add
                        (local.get 2)
                        (i32.const 8)))))
                (then
                  (i32.store
                    (local.get 9)
                    (local.get 2))
                  (i32.store
                    (local.get 11)
                    (local.get 6))
                  (local.set 8
                    (local.get 2)))
                (else
                  (call $_abort)))))
          (if  ;; label = @28
            (local.get 13)
            (then
              (if  ;; label = @29
                (i32.eq
                  (local.get 0)
                  (i32.load
                    (local.tee 6
                      (i32.add
                        (i32.shl
                          (local.tee 2
                            (i32.load offset=28
                              (local.get 0)))
                          (i32.const 2))
                        (i32.const 3296)))))
                (then
                  (i32.store
                    (local.get 6)
                    (local.get 8))
                  (if  ;; label = @30
                    (i32.eqz
                      (local.get 8))
                    (then
                      (i32.store
                        (i32.const 2996)
                        (i32.and
                          (i32.load
                            (i32.const 2996))
                          (i32.xor
                            (i32.shl
                              (i32.const 1)
                              (local.get 2))
                            (i32.const -1))))
                      (local.set 1
                        (local.get 4))
                      (local.set 5
                        (local.tee 3
                          (local.get 0)))
                      (br 3 (;@27;)))))
                (else
                  (if  ;; label = @31
                    (i32.gt_u
                      (i32.load
                        (i32.const 3008))
                      (local.get 13))
                    (then
                      (call $_abort))
                    (else
                      (i32.store
                        (select
                          (local.tee 2
                            (i32.add
                              (local.get 13)
                              (i32.const 16)))
                          (i32.add
                            (local.get 13)
                            (i32.const 20))
                          (i32.eq
                            (local.get 0)
                            (i32.load
                              (local.get 2))))
                        (local.get 8))
                      (if  ;; label = @32
                        (i32.eqz
                          (local.get 8))
                        (then
                          (local.set 1
                            (local.get 4))
                          (local.set 5
                            (local.tee 3
                              (local.get 0)))
                          (br 4 (;@28;))))))))
              (if  ;; label = @33
                (i32.gt_u
                  (local.tee 6
                    (i32.load
                      (i32.const 3008)))
                  (local.get 8))
                (then
                  (call $_abort)))
              (i32.store offset=24
                (local.get 8)
                (local.get 13))
              (if  ;; label = @34
                (local.tee 2
                  (i32.load
                    (local.tee 9
                      (i32.add
                        (local.get 0)
                        (i32.const 16)))))
                (then
                  (if  ;; label = @35
                    (i32.gt_u
                      (local.get 6)
                      (local.get 2))
                    (then
                      (call $_abort))
                    (else
                      (i32.store offset=16
                        (local.get 8)
                        (local.get 2))
                      (i32.store offset=24
                        (local.get 2)
                        (local.get 8))))))
              (if  ;; label = @36
                (local.tee 2
                  (i32.load offset=4
                    (local.get 9)))
                (then
                  (if  ;; label = @37
                    (i32.gt_u
                      (i32.load
                        (i32.const 3008))
                      (local.get 2))
                    (then
                      (call $_abort))
                    (else
                      (i32.store offset=20
                        (local.get 8)
                        (local.get 2))
                      (i32.store offset=24
                        (local.get 2)
                        (local.get 8))
                      (local.set 1
                        (local.get 4))
                      (local.set 5
                        (local.tee 3
                          (local.get 0))))))
                (else
                  (local.set 1
                    (local.get 4))
                  (local.set 5
                    (local.tee 3
                      (local.get 0))))))
            (else
              (local.set 1
                (local.get 4))
              (local.set 5
                (local.tee 3
                  (local.get 0))))))))
    (if  ;; label = @38
      (i32.ge_u
        (local.get 5)
        (local.get 7))
      (then
        (call $_abort)))
    (if  ;; label = @39
      (i32.eqz
        (i32.and
          (local.tee 0
            (i32.load
              (local.tee 4
                (i32.add
                  (local.get 7)
                  (i32.const 4)))))
          (i32.const 1)))
      (then
        (call $_abort)))
    (local.set 1
      (i32.shr_u
        (local.tee 5
          (if (result i32)  ;; label = @40
            (i32.and
              (local.get 0)
              (i32.const 2))
            (then
              (i32.store
                (local.get 4)
                (i32.and
                  (local.get 0)
                  (i32.const -2)))
              (i32.store offset=4
                (local.get 3)
                (i32.or
                  (local.get 1)
                  (i32.const 1)))
              (i32.store
                (i32.add
                  (local.get 1)
                  (local.get 5))
                (local.get 1))
              (local.get 1))
            (else
              (if  ;; label = @41
                (i32.eq
                  (local.get 7)
                  (i32.load
                    (i32.const 3016)))
                (then
                  (i32.store
                    (i32.const 3004)
                    (local.tee 0
                      (i32.add
                        (local.get 1)
                        (i32.load
                          (i32.const 3004)))))
                  (i32.store
                    (i32.const 3016)
                    (local.get 3))
                  (i32.store offset=4
                    (local.get 3)
                    (i32.or
                      (local.get 0)
                      (i32.const 1)))
                  (if  ;; label = @42
                    (i32.ne
                      (i32.load
                        (i32.const 3012))
                      (local.get 3))
                    (then
                      (return)))
                  (i32.store
                    (i32.const 3012)
                    (i32.const 0))
                  (i32.store
                    (i32.const 3000)
                    (i32.const 0))
                  (return)))
              (if  ;; label = @43
                (i32.eq
                  (local.get 7)
                  (i32.load
                    (i32.const 3012)))
                (then
                  (i32.store
                    (i32.const 3000)
                    (local.tee 0
                      (i32.add
                        (local.get 1)
                        (i32.load
                          (i32.const 3000)))))
                  (i32.store
                    (i32.const 3012)
                    (local.get 5))
                  (i32.store offset=4
                    (local.get 3)
                    (i32.or
                      (local.get 0)
                      (i32.const 1)))
                  (i32.store
                    (i32.add
                      (local.get 0)
                      (local.get 5))
                    (local.get 0))
                  (return)))
              (local.set 4
                (i32.add
                  (local.get 1)
                  (i32.and
                    (local.get 0)
                    (i32.const -8))))
              (local.set 6
                (i32.shr_u
                  (local.get 0)
                  (i32.const 3)))
              (block  ;; label = @44
                (if  ;; label = @45
                  (i32.lt_u
                    (local.get 0)
                    (i32.const 256))
                  (then
                    (local.set 1
                      (i32.load offset=12
                        (local.get 7)))
                    (if  ;; label = @46
                      (i32.ne
                        (local.tee 2
                          (i32.load offset=8
                            (local.get 7)))
                        (local.tee 0
                          (i32.add
                            (i32.shl
                              (local.get 6)
                              (i32.const 3))
                            (i32.const 3032))))
                      (then
                        (if  ;; label = @47
                          (i32.gt_u
                            (i32.load
                              (i32.const 3008))
                            (local.get 2))
                          (then
                            (call $_abort)))
                        (if  ;; label = @48
                          (i32.ne
                            (i32.load offset=12
                              (local.get 2))
                            (local.get 7))
                          (then
                            (call $_abort)))))
                    (if  ;; label = @49
                      (i32.eq
                        (local.get 1)
                        (local.get 2))
                      (then
                        (i32.store
                          (i32.const 2992)
                          (i32.and
                            (i32.load
                              (i32.const 2992))
                            (i32.xor
                              (i32.shl
                                (i32.const 1)
                                (local.get 6))
                              (i32.const -1))))
                        (br 2 (;@47;))))
                    (if  ;; label = @50
                      (i32.eq
                        (local.get 0)
                        (local.get 1))
                      (then
                        (local.set 16
                          (i32.add
                            (local.get 1)
                            (i32.const 8))))
                      (else
                        (if  ;; label = @51
                          (i32.gt_u
                            (i32.load
                              (i32.const 3008))
                            (local.get 1))
                          (then
                            (call $_abort)))
                        (if  ;; label = @52
                          (i32.eq
                            (local.get 7)
                            (i32.load
                              (local.tee 0
                                (i32.add
                                  (local.get 1)
                                  (i32.const 8)))))
                          (then
                            (local.set 16
                              (local.get 0)))
                          (else
                            (call $_abort)))))
                    (i32.store offset=12
                      (local.get 2)
                      (local.get 1))
                    (i32.store
                      (local.get 16)
                      (local.get 2)))
                  (else
                    (local.set 8
                      (i32.load offset=24
                        (local.get 7)))
                    (if  ;; label = @53
                      (i32.eq
                        (local.get 7)
                        (local.tee 0
                          (i32.load offset=12
                            (local.get 7))))
                      (then
                        (block  ;; label = @54
                          (if  ;; label = @55
                            (local.tee 0
                              (i32.load
                                (local.tee 2
                                  (i32.add
                                    (local.tee 1
                                      (i32.add
                                        (local.get 7)
                                        (i32.const 16)))
                                    (i32.const 4)))))
                            (then
                              (local.set 1
                                (local.get 2)))
                            (else
                              (br_if 1 (;@54;)
                                (i32.eqz
                                  (local.tee 0
                                    (i32.load
                                      (local.get 1)))))))
                          (loop  ;; label = @56
                            (block  ;; label = @57
                              (if  ;; label = @58
                                (i32.eqz
                                  (local.tee 6
                                    (i32.load
                                      (local.tee 2
                                        (i32.add
                                          (local.get 0)
                                          (i32.const 20))))))
                                (then
                                  (br_if 1 (;@57;)
                                    (i32.eqz
                                      (local.tee 6
                                        (i32.load
                                          (local.tee 2
                                            (i32.add
                                              (local.get 0)
                                              (i32.const 16)))))))))
                              (local.set 1
                                (local.get 2))
                              (local.set 0
                                (local.get 6))
                              (br 1 (;@57;))))
                          (if  ;; label = @59
                            (i32.gt_u
                              (i32.load
                                (i32.const 3008))
                              (local.get 1))
                            (then
                              (call $_abort))
                            (else
                              (i32.store
                                (local.get 1)
                                (i32.const 0))
                              (local.set 10
                                (local.get 0))))))
                      (else
                        (if  ;; label = @60
                          (i32.gt_u
                            (i32.load
                              (i32.const 3008))
                            (local.tee 1
                              (i32.load offset=8
                                (local.get 7))))
                          (then
                            (call $_abort)))
                        (if  ;; label = @61
                          (i32.ne
                            (i32.load
                              (local.tee 2
                                (i32.add
                                  (local.get 1)
                                  (i32.const 12))))
                            (local.get 7))
                          (then
                            (call $_abort)))
                        (if  ;; label = @62
                          (i32.eq
                            (local.get 7)
                            (i32.load
                              (local.tee 6
                                (i32.add
                                  (local.get 0)
                                  (i32.const 8)))))
                          (then
                            (i32.store
                              (local.get 2)
                              (local.get 0))
                            (i32.store
                              (local.get 6)
                              (local.get 1))
                            (local.set 10
                              (local.get 0)))
                          (else
                            (call $_abort)))))
                    (if  ;; label = @63
                      (local.get 8)
                      (then
                        (if  ;; label = @64
                          (i32.eq
                            (local.get 7)
                            (i32.load
                              (local.tee 1
                                (i32.add
                                  (i32.shl
                                    (local.tee 0
                                      (i32.load offset=28
                                        (local.get 7)))
                                    (i32.const 2))
                                  (i32.const 3296)))))
                          (then
                            (i32.store
                              (local.get 1)
                              (local.get 10))
                            (if  ;; label = @65
                              (i32.eqz
                                (local.get 10))
                              (then
                                (i32.store
                                  (i32.const 2996)
                                  (i32.and
                                    (i32.load
                                      (i32.const 2996))
                                    (i32.xor
                                      (i32.shl
                                        (i32.const 1)
                                        (local.get 0))
                                      (i32.const -1))))
                                (br 4 (;@61;)))))
                          (else
                            (if  ;; label = @66
                              (i32.gt_u
                                (i32.load
                                  (i32.const 3008))
                                (local.get 8))
                              (then
                                (call $_abort))
                              (else
                                (i32.store
                                  (select
                                    (local.tee 0
                                      (i32.add
                                        (local.get 8)
                                        (i32.const 16)))
                                    (i32.add
                                      (local.get 8)
                                      (i32.const 20))
                                    (i32.eq
                                      (local.get 7)
                                      (i32.load
                                        (local.get 0))))
                                  (local.get 10))
                                (br_if 4 (;@62;)
                                  (i32.eqz
                                    (local.get 10)))))))
                        (if  ;; label = @67
                          (i32.gt_u
                            (local.tee 1
                              (i32.load
                                (i32.const 3008)))
                            (local.get 10))
                          (then
                            (call $_abort)))
                        (i32.store offset=24
                          (local.get 10)
                          (local.get 8))
                        (if  ;; label = @68
                          (local.tee 0
                            (i32.load
                              (local.tee 2
                                (i32.add
                                  (local.get 7)
                                  (i32.const 16)))))
                          (then
                            (if  ;; label = @69
                              (i32.gt_u
                                (local.get 1)
                                (local.get 0))
                              (then
                                (call $_abort))
                              (else
                                (i32.store offset=16
                                  (local.get 10)
                                  (local.get 0))
                                (i32.store offset=24
                                  (local.get 0)
                                  (local.get 10))))))
                        (if  ;; label = @70
                          (local.tee 0
                            (i32.load offset=4
                              (local.get 2)))
                          (then
                            (if  ;; label = @71
                              (i32.gt_u
                                (i32.load
                                  (i32.const 3008))
                                (local.get 0))
                              (then
                                (call $_abort))
                              (else
                                (i32.store offset=20
                                  (local.get 10)
                                  (local.get 0))
                                (i32.store offset=24
                                  (local.get 0)
                                  (local.get 10)))))))))))
              (i32.store offset=4
                (local.get 3)
                (i32.or
                  (local.get 4)
                  (i32.const 1)))
              (i32.store
                (i32.add
                  (local.get 4)
                  (local.get 5))
                (local.get 4))
              (if (result i32)  ;; label = @72
                (i32.eq
                  (local.get 3)
                  (i32.load
                    (i32.const 3012)))
                (then
                  (i32.store
                    (i32.const 3000)
                    (local.get 4))
                  (return))
                (else
                  (local.get 4))))))
        (i32.const 3)))
    (if  ;; label = @73
      (i32.lt_u
        (local.get 5)
        (i32.const 256))
      (then
        (local.set 0
          (i32.add
            (i32.shl
              (local.get 1)
              (i32.const 3))
            (i32.const 3032)))
        (if  ;; label = @74
          (i32.and
            (local.tee 5
              (i32.load
                (i32.const 2992)))
            (local.tee 1
              (i32.shl
                (i32.const 1)
                (local.get 1))))
          (then
            (if  ;; label = @75
              (i32.gt_u
                (i32.load
                  (i32.const 3008))
                (local.tee 5
                  (i32.load
                    (local.tee 1
                      (i32.add
                        (local.get 0)
                        (i32.const 8))))))
              (then
                (call $_abort))
              (else
                (local.set 15
                  (local.get 5))
                (local.set 17
                  (local.get 1)))))
          (else
            (i32.store
              (i32.const 2992)
              (i32.or
                (local.get 1)
                (local.get 5)))
            (local.set 15
              (local.get 0))
            (local.set 17
              (i32.add
                (local.get 0)
                (i32.const 8)))))
        (i32.store
          (local.get 17)
          (local.get 3))
        (i32.store offset=12
          (local.get 15)
          (local.get 3))
        (i32.store offset=8
          (local.get 3)
          (local.get 15))
        (i32.store offset=12
          (local.get 3)
          (local.get 0))
        (return)))
    (local.set 0
      (i32.add
        (i32.shl
          (local.tee 1
            (if (result i32)  ;; label = @76
              (local.tee 0
                (i32.shr_u
                  (local.get 5)
                  (i32.const 8)))
              (then
                (if (result i32)  ;; label = @77
                  (i32.gt_u
                    (local.get 5)
                    (i32.const 16777215))
                  (then
                    (i32.const 31))
                  (else
                    (local.set 0
                      (i32.and
                        (i32.shr_u
                          (i32.add
                            (local.tee 4
                              (i32.shl
                                (local.get 0)
                                (local.tee 1
                                  (i32.and
                                    (i32.shr_u
                                      (i32.add
                                        (local.get 0)
                                        (i32.const 1048320))
                                      (i32.const 16))
                                    (i32.const 8)))))
                            (i32.const 520192))
                          (i32.const 16))
                        (i32.const 4)))
                    (i32.or
                      (i32.shl
                        (local.tee 0
                          (i32.add
                            (i32.sub
                              (i32.const 14)
                              (i32.or
                                (i32.or
                                  (local.get 0)
                                  (local.get 1))
                                (local.tee 1
                                  (i32.and
                                    (i32.shr_u
                                      (i32.add
                                        (local.tee 0
                                          (i32.shl
                                            (local.get 4)
                                            (local.get 0)))
                                        (i32.const 245760))
                                      (i32.const 16))
                                    (i32.const 2)))))
                            (i32.shr_u
                              (i32.shl
                                (local.get 0)
                                (local.get 1))
                              (i32.const 15))))
                        (i32.const 1))
                      (i32.and
                        (i32.shr_u
                          (local.get 5)
                          (i32.add
                            (local.get 0)
                            (i32.const 7)))
                        (i32.const 1))))))
              (else
                (i32.const 0))))
          (i32.const 2))
        (i32.const 3296)))
    (i32.store offset=28
      (local.get 3)
      (local.get 1))
    (i32.store offset=20
      (local.get 3)
      (i32.const 0))
    (i32.store offset=16
      (local.get 3)
      (i32.const 0))
    (if  ;; label = @78
      (i32.and
        (local.tee 4
          (i32.load
            (i32.const 2996)))
        (local.tee 2
          (i32.shl
            (i32.const 1)
            (local.get 1))))
      (then
        (block  ;; label = @79
          (if  ;; label = @80
            (i32.eq
              (local.get 5)
              (i32.and
                (i32.load offset=4
                  (local.tee 0
                    (i32.load
                      (local.get 0))))
                (i32.const -8)))
            (then
              (local.set 14
                (local.get 0)))
            (else
              (block  ;; label = @81
                (local.set 4
                  (i32.shl
                    (local.get 5)
                    (select
                      (i32.const 0)
                      (i32.sub
                        (i32.const 25)
                        (i32.shr_u
                          (local.get 1)
                          (i32.const 1)))
                      (i32.eq
                        (local.get 1)
                        (i32.const 31)))))
                (loop  ;; label = @82
                  (if  ;; label = @83
                    (local.tee 1
                      (i32.load
                        (local.tee 2
                          (i32.add
                            (i32.add
                              (local.get 0)
                              (i32.const 16))
                            (i32.shl
                              (i32.shr_u
                                (local.get 4)
                                (i32.const 31))
                              (i32.const 2))))))
                    (then
                      (local.set 4
                        (i32.shl
                          (local.get 4)
                          (i32.const 1)))
                      (if  ;; label = @84
                        (i32.eq
                          (local.get 5)
                          (i32.and
                            (i32.load offset=4
                              (local.get 1))
                            (i32.const -8)))
                        (then
                          (local.set 14
                            (local.get 1))
                          (br 3 (;@81;)))
                        (else
                          (local.set 0
                            (local.get 1))
                          (br 2 (;@82;))))
                      (unreachable))))
                (if  ;; label = @85
                  (i32.gt_u
                    (i32.load
                      (i32.const 3008))
                    (local.get 2))
                  (then
                    (call $_abort))
                  (else
                    (i32.store
                      (local.get 2)
                      (local.get 3))
                    (i32.store offset=24
                      (local.get 3)
                      (local.get 0))
                    (i32.store offset=12
                      (local.get 3)
                      (local.get 3))
                    (i32.store offset=8
                      (local.get 3)
                      (local.get 3))
                    (br 3 (;@82;)))))))
          (if  ;; label = @86
            (i32.and
              (i32.le_u
                (local.tee 0
                  (i32.load
                    (i32.const 3008)))
                (local.get 14))
              (i32.le_u
                (local.get 0)
                (local.tee 0
                  (i32.load
                    (local.tee 1
                      (i32.add
                        (local.get 14)
                        (i32.const 8)))))))
            (then
              (i32.store offset=12
                (local.get 0)
                (local.get 3))
              (i32.store
                (local.get 1)
                (local.get 3))
              (i32.store offset=8
                (local.get 3)
                (local.get 0))
              (i32.store offset=12
                (local.get 3)
                (local.get 14))
              (i32.store offset=24
                (local.get 3)
                (i32.const 0)))
            (else
              (call $_abort)))))
      (else
        (i32.store
          (i32.const 2996)
          (i32.or
            (local.get 2)
            (local.get 4)))
        (i32.store
          (local.get 0)
          (local.get 3))
        (i32.store offset=24
          (local.get 3)
          (local.get 0))
        (i32.store offset=12
          (local.get 3)
          (local.get 3))
        (i32.store offset=8
          (local.get 3)
          (local.get 3))))
    (i32.store
      (i32.const 3024)
      (local.tee 0
        (i32.add
          (i32.load
            (i32.const 3024))
          (i32.const -1))))
    (if  ;; label = @87
      (local.get 0)
      (then
        (return)))
    (local.set 0
      (i32.const 3448))
    (loop  ;; label = @88
      (local.set 0
        (i32.add
          (local.tee 3
            (i32.load
              (local.get 0)))
          (i32.const 8)))
      (br_if 0 (;@88;)
        (local.get 3)))
    (i32.store
      (i32.const 3024)
      (i32.const -1)))
  (func $___stdio_close (type 1) (param i32) (result i32)
    (local i32)
    (local.set 1
      (global.get 3))
    (global.set 3
      (i32.add
        (global.get 3)
        (i32.const 16)))
    (i32.store
      (local.get 1)
      (call $_dummy_307
        (i32.load offset=60
          (local.get 0))))
    (local.set 0
      (call $___syscall_ret
        (call $___syscall6
          (i32.const 6)
          (local.get 1))))
    (global.set 3
      (local.get 1))
    (local.get 0))
  (func $___stdio_seek (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    (local.set 3
      (global.get 3))
    (global.set 3
      (i32.add
        (global.get 3)
        (i32.const 32)))
    (i32.store
      (local.get 3)
      (i32.load offset=60
        (local.get 0)))
    (i32.store offset=4
      (local.get 3)
      (i32.const 0))
    (i32.store offset=8
      (local.get 3)
      (local.get 1))
    (i32.store offset=12
      (local.get 3)
      (local.tee 0
        (i32.add
          (local.get 3)
          (i32.const 20))))
    (i32.store offset=16
      (local.get 3)
      (local.get 2))
    (local.set 0
      (if (result i32)  ;; label = @1
        (i32.lt_s
          (call $___syscall_ret
            (call $___syscall140
              (i32.const 140)
              (local.get 3)))
          (i32.const 0))
        (then
          (i32.store
            (local.get 0)
            (i32.const -1))
          (i32.const -1))
        (else
          (i32.load
            (local.get 0)))))
    (global.set 3
      (local.get 3))
    (local.get 0))
  (func $___syscall_ret (type 1) (param i32) (result i32)
    (if  ;; label = @1
      (i32.gt_u
        (local.get 0)
        (i32.const -4096))
      (then
        (local.set 0
          (i32.sub
            (i32.const 0)
            (local.get 0)))
        (i32.store
          (call $___errno_location)
          (local.get 0))
        (local.set 0
          (i32.const -1))))
    (local.get 0))
  (func $___errno_location (type 5) (result i32)
    (i32.const 3488))
  (func $_dummy_307 (type 1) (param i32) (result i32)
    (local.get 0))
  (func $___stdout_write (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    (local.set 3
      (global.get 3))
    (global.set 3
      (i32.add
        (global.get 3)
        (i32.const 32)))
    (local.set 4
      (i32.add
        (local.get 3)
        (i32.const 16)))
    (i32.store offset=36
      (local.get 0)
      (i32.const 3))
    (if  ;; label = @1
      (i32.eqz
        (i32.and
          (i32.load
            (local.get 0))
          (i32.const 64)))
      (then
        (i32.store
          (local.get 3)
          (i32.load offset=60
            (local.get 0)))
        (i32.store offset=4
          (local.get 3)
          (i32.const 21523))
        (i32.store offset=8
          (local.get 3)
          (local.get 4))
        (if  ;; label = @2
          (call $___syscall54
            (i32.const 54)
            (local.get 3))
          (then
            (i32.store8 offset=75
              (local.get 0)
              (i32.const -1))))))
    (local.set 0
      (call $___stdio_write
        (local.get 0)
        (local.get 1)
        (local.get 2)))
    (global.set 3
      (local.get 3))
    (local.get 0))
  (func $___stdio_write (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local.set 7
      (global.get 3))
    (global.set 3
      (i32.add
        (global.get 3)
        (i32.const 48)))
    (local.set 5
      (i32.add
        (local.get 7)
        (i32.const 32)))
    (i32.store
      (local.tee 3
        (local.get 7))
      (local.tee 4
        (i32.load
          (local.tee 10
            (i32.add
              (local.get 0)
              (i32.const 28))))))
    (i32.store offset=4
      (local.get 3)
      (local.tee 4
        (i32.sub
          (i32.load
            (local.tee 11
              (i32.add
                (local.get 0)
                (i32.const 20))))
          (local.get 4))))
    (i32.store offset=8
      (local.get 3)
      (local.get 1))
    (i32.store offset=12
      (local.get 3)
      (local.get 2))
    (i32.store
      (local.tee 1
        (i32.add
          (local.get 3)
          (i32.const 16)))
      (i32.load
        (local.tee 12
          (i32.add
            (local.get 0)
            (i32.const 60)))))
    (i32.store offset=4
      (local.get 1)
      (local.get 3))
    (i32.store offset=8
      (local.get 1)
      (i32.const 2))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eq
            (local.tee 4
              (i32.add
                (local.get 2)
                (local.get 4)))
            (local.tee 6
              (call $___syscall_ret
                (call $___syscall146
                  (i32.const 146)
                  (local.get 1))))))
        (local.set 8
          (i32.const 2))
        (local.set 1
          (local.get 3))
        (local.set 3
          (local.get 6))
        (loop  ;; label = @3
          (if  ;; label = @4
            (i32.ge_s
              (local.get 3)
              (i32.const 0))
            (then
              (i32.store
                (local.tee 1
                  (select
                    (i32.add
                      (local.get 1)
                      (i32.const 8))
                    (local.get 1)
                    (local.tee 6
                      (i32.gt_u
                        (local.get 3)
                        (local.tee 9
                          (i32.load offset=4
                            (local.get 1)))))))
                (i32.add
                  (local.tee 9
                    (i32.sub
                      (local.get 3)
                      (select
                        (local.get 9)
                        (i32.const 0)
                        (local.get 6))))
                  (i32.load
                    (local.get 1))))
              (i32.store
                (local.tee 13
                  (i32.add
                    (local.get 1)
                    (i32.const 4)))
                (i32.sub
                  (i32.load
                    (local.get 13))
                  (local.get 9)))
              (i32.store
                (local.get 5)
                (i32.load
                  (local.get 12)))
              (i32.store offset=4
                (local.get 5)
                (local.get 1))
              (i32.store offset=8
                (local.get 5)
                (local.tee 8
                  (i32.add
                    (local.get 8)
                    (i32.shr_s
                      (i32.shl
                        (local.get 6)
                        (i32.const 31))
                      (i32.const 31)))))
              (br_if 2 (;@2;)
                (i32.eq
                  (local.tee 4
                    (i32.sub
                      (local.get 4)
                      (local.get 3)))
                  (local.tee 3
                    (call $___syscall_ret
                      (call $___syscall146
                        (i32.const 146)
                        (local.get 5))))))
              (br 1 (;@3;)))))
        (i32.store offset=16
          (local.get 0)
          (i32.const 0))
        (i32.store
          (local.get 10)
          (i32.const 0))
        (i32.store
          (local.get 11)
          (i32.const 0))
        (i32.store
          (local.get 0)
          (i32.or
            (i32.load
              (local.get 0))
            (i32.const 32)))
        (local.set 2
          (if (result i32)  ;; label = @5
            (i32.eq
              (local.get 8)
              (i32.const 2))
            (then
              (i32.const 0))
            (else
              (i32.sub
                (local.get 2)
                (i32.load offset=4
                  (local.get 1))))))
        (br 1 (;@4;)))
      (i32.store offset=16
        (local.get 0)
        (i32.add
          (local.tee 1
            (i32.load offset=44
              (local.get 0)))
          (i32.load offset=48
            (local.get 0))))
      (i32.store
        (local.get 10)
        (local.get 1))
      (i32.store
        (local.get 11)
        (local.get 1)))
    (global.set 3
      (local.get 7))
    (local.get 2))
  (func $_frexpl (type 8) (param f64 i32) (result f64)
    (call $_frexp
      (local.get 0)
      (local.get 1)))
  (func $_frexp (type 8) (param f64 i32) (result f64)
    (local i32 i64 i64)
    (block  ;; label = @1
      (block  ;; label = @2
        (if  ;; label = @3
          (local.tee 2
            (i32.and
              (i32.wrap_i64
                (local.tee 4
                  (i64.shr_u
                    (local.tee 3
                      (i64.reinterpret_f64
                        (local.get 0)))
                    (i64.const 52))))
              (i32.const 2047)))
          (then
            (if  ;; label = @4
              (i32.eq
                (local.get 2)
                (i32.const 2047))
              (then
                (br 3 (;@1;)))
              (else
                (br 2 (;@2;))))
            (unreachable)))
        (i32.store
          (local.get 1)
          (if (result i32)  ;; label = @5
            (f64.ne
              (local.get 0)
              (f64.const 0x0p+0 (;=0;)))
            (then
              (local.set 0
                (call $_frexp
                  (f64.mul
                    (local.get 0)
                    (f64.const 0x1p+64 (;=1.84467e+19;)))
                  (local.get 1)))
              (i32.add
                (i32.load
                  (local.get 1))
                (i32.const -64)))
            (else
              (i32.const 0))))
        (br 1 (;@4;)))
      (i32.store
        (local.get 1)
        (i32.add
          (i32.and
            (i32.wrap_i64
              (local.get 4))
            (i32.const 2047))
          (i32.const -1022)))
      (local.set 0
        (f64.reinterpret_i64
          (i64.or
            (i64.and
              (local.get 3)
              (i64.const -9218868437227405313))
            (i64.const 4602678819172646912)))))
    (local.get 0))
  (func $_isdigit (type 1) (param i32) (result i32)
    (i32.lt_u
      (i32.add
        (local.get 0)
        (i32.const -48))
      (i32.const 10)))
  (func $_vfprintf (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local.set 3
      (global.get 3))
    (global.set 3
      (i32.add
        (global.get 3)
        (i32.const 224)))
    (i64.store
      (local.tee 4
        (i32.add
          (local.get 3)
          (i32.const 160)))
      (i64.const 0))
    (i64.store offset=8
      (local.get 4)
      (i64.const 0))
    (i64.store offset=16
      (local.get 4)
      (i64.const 0))
    (i64.store offset=24
      (local.get 4)
      (i64.const 0))
    (i64.store offset=32
      (local.get 4)
      (i64.const 0))
    (i32.store
      (local.tee 5
        (i32.add
          (local.get 3)
          (i32.const 208)))
      (i32.load
        (local.get 2)))
    (local.set 0
      (if (result i32)  ;; label = @1
        (i32.lt_s
          (call $_printf_core
            (i32.const 0)
            (local.get 1)
            (local.get 5)
            (local.tee 2
              (i32.add
                (local.get 3)
                (i32.const 80)))
            (local.get 4))
          (i32.const 0))
        (then
          (i32.const -1))
        (else
          (local.set 11
            (if (result i32)  ;; label = @2
              (i32.gt_s
                (i32.load offset=76
                  (local.get 0))
                (i32.const -1))
              (then
                (call $___lockfile))
              (else
                (i32.const 0))))
          (local.set 6
            (i32.load
              (local.get 0)))
          (if  ;; label = @3
            (i32.lt_s
              (i32.load8_s offset=74
                (local.get 0))
              (i32.const 1))
            (then
              (i32.store
                (local.get 0)
                (i32.and
                  (local.get 6)
                  (i32.const -33)))))
          (if  ;; label = @4
            (i32.load
              (local.tee 7
                (i32.add
                  (local.get 0)
                  (i32.const 48))))
            (then
              (local.set 1
                (call $_printf_core
                  (local.get 0)
                  (local.get 1)
                  (local.get 5)
                  (local.get 2)
                  (local.get 4))))
            (else
              (local.set 9
                (i32.load
                  (local.tee 8
                    (i32.add
                      (local.get 0)
                      (i32.const 44)))))
              (i32.store
                (local.get 8)
                (local.get 3))
              (i32.store
                (local.tee 12
                  (i32.add
                    (local.get 0)
                    (i32.const 28)))
                (local.get 3))
              (i32.store
                (local.tee 10
                  (i32.add
                    (local.get 0)
                    (i32.const 20)))
                (local.get 3))
              (i32.store
                (local.get 7)
                (i32.const 80))
              (i32.store
                (local.tee 13
                  (i32.add
                    (local.get 0)
                    (i32.const 16)))
                (i32.add
                  (local.get 3)
                  (i32.const 80)))
              (local.set 1
                (call $_printf_core
                  (local.get 0)
                  (local.get 1)
                  (local.get 5)
                  (local.get 2)
                  (local.get 4)))
              (if  ;; label = @5
                (local.get 9)
                (then
                  (local.set 2
                    (i32.load offset=36
                      (local.get 0)))
                  (drop
                    (call_indirect (type 0)
                      (local.get 0)
                      (i32.const 0)
                      (i32.const 0)
                      (i32.add
                        (i32.and
                          (local.get 2)
                          (i32.const 3))
                        (i32.const 2))))
                  (local.set 1
                    (select
                      (local.get 1)
                      (i32.const -1)
                      (i32.load
                        (local.get 10))))
                  (i32.store
                    (local.get 8)
                    (local.get 9))
                  (i32.store
                    (local.get 7)
                    (i32.const 0))
                  (i32.store
                    (local.get 13)
                    (i32.const 0))
                  (i32.store
                    (local.get 12)
                    (i32.const 0))
                  (i32.store
                    (local.get 10)
                    (i32.const 0))))))
          (i32.store
            (local.get 0)
            (i32.or
              (local.tee 2
                (i32.load
                  (local.get 0)))
              (i32.and
                (local.get 6)
                (i32.const 32))))
          (if  ;; label = @6
            (local.get 11)
            (then
              (call $___unlockfile)))
          (select
            (i32.const -1)
            (local.get 1)
            (i32.and
              (local.get 2)
              (i32.const 32))))))
    (global.set 3
      (local.get 3))
    (local.get 0))
  (func $_printf_core (type 9) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    (local.set 17
      (global.get 3))
    (global.set 3
      (i32.sub
        (global.get 3)
        (i32.const -64)))
    (local.set 11
      (i32.add
        (local.get 17)
        (i32.const 40)))
    (local.set 22
      (i32.add
        (local.get 17)
        (i32.const 60)))
    (i32.store
      (local.tee 12
        (i32.add
          (local.get 17)
          (i32.const 56)))
      (local.get 1))
    (local.set 19
      (i32.ne
        (local.get 0)
        (i32.const 0)))
    (local.set 20
      (local.tee 21
        (i32.add
          (local.get 17)
          (i32.const 40))))
    (local.set 23
      (i32.add
        (local.get 17)
        (i32.const 39)))
    (local.set 25
      (i32.add
        (local.tee 24
          (i32.add
            (local.get 17)
            (i32.const 48)))
        (i32.const 4)))
    (local.set 1
      (i32.const 0))
    (block  ;; label = @1
      (block  ;; label = @2
        (loop  ;; label = @3
          (block  ;; label = @4
            (loop  ;; label = @5
              (if  ;; label = @6
                (i32.gt_s
                  (local.get 8)
                  (i32.const -1))
                (then
                  (local.set 8
                    (if (result i32)  ;; label = @7
                      (i32.gt_s
                        (local.get 1)
                        (i32.sub
                          (i32.const 2147483647)
                          (local.get 8)))
                      (then
                        (i32.store
                          (call $___errno_location)
                          (i32.const 75))
                        (i32.const -1))
                      (else
                        (i32.add
                          (local.get 1)
                          (local.get 8)))))))
              (br_if 3 (;@4;)
                (i32.eqz
                  (local.tee 9
                    (i32.load8_s
                      (local.tee 10
                        (i32.load
                          (local.get 12)))))))
              (local.set 1
                (local.get 10))
              (block  ;; label = @8
                (block  ;; label = @9
                  (loop  ;; label = @10
                    (block  ;; label = @11
                      (block  ;; label = @12
                        (br_table 1 (;@11;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 3 (;@9;) 0 (;@12;)
                          (i32.shr_s
                            (i32.shl
                              (local.get 9)
                              (i32.const 24))
                            (i32.const 24))))
                      (i32.store
                        (local.get 12)
                        (local.tee 1
                          (i32.add
                            (local.get 1)
                            (i32.const 1))))
                      (local.set 9
                        (i32.load8_s
                          (local.get 1)))
                      (br 1 (;@11;))))
                  (br 1 (;@11;)))
                (local.set 9
                  (local.get 1))
                (loop  ;; label = @13
                  (br_if 1 (;@12;)
                    (i32.ne
                      (i32.load8_s offset=1
                        (local.get 9))
                      (i32.const 37)))
                  (local.set 1
                    (i32.add
                      (local.get 1)
                      (i32.const 1)))
                  (i32.store
                    (local.get 12)
                    (local.tee 9
                      (i32.add
                        (local.get 9)
                        (i32.const 2))))
                  (br_if 0 (;@13;)
                    (i32.eq
                      (i32.load8_s
                        (local.get 9))
                      (i32.const 37)))))
              (local.set 1
                (i32.sub
                  (local.get 1)
                  (local.get 10)))
              (if  ;; label = @14
                (local.get 19)
                (then
                  (call $_out
                    (local.get 0)
                    (local.get 10)
                    (local.get 1))))
              (br_if 0 (;@14;)
                (local.get 1)))
            (local.set 9
              (i32.eqz
                (call $_isdigit
                  (i32.load8_s offset=1
                    (i32.load
                      (local.get 12))))))
            (i32.store
              (local.get 12)
              (local.tee 1
                (i32.add
                  (local.tee 1
                    (i32.load
                      (local.get 12)))
                  (if (result i32)  ;; label = @15
                    (local.get 9)
                    (then
                      (local.set 14
                        (i32.const -1))
                      (i32.const 1))
                    (else
                      (if (result i32)  ;; label = @16
                        (i32.eq
                          (i32.load8_s offset=2
                            (local.get 1))
                          (i32.const 36))
                        (then
                          (local.set 14
                            (i32.add
                              (i32.load8_s offset=1
                                (local.get 1))
                              (i32.const -48)))
                          (local.set 5
                            (i32.const 1))
                          (i32.const 3))
                        (else
                          (local.set 14
                            (i32.const -1))
                          (i32.const 1))))))))
            (if  ;; label = @17
              (i32.or
                (i32.gt_u
                  (local.tee 9
                    (i32.add
                      (local.tee 6
                        (i32.load8_s
                          (local.get 1)))
                      (i32.const -32)))
                  (i32.const 31))
                (i32.eqz
                  (i32.and
                    (i32.shl
                      (i32.const 1)
                      (local.get 9))
                    (i32.const 75913))))
              (then
                (local.set 9
                  (i32.const 0)))
              (else
                (local.set 6
                  (i32.const 0))
                (loop  ;; label = @18
                  (local.set 9
                    (i32.or
                      (local.get 6)
                      (i32.shl
                        (i32.const 1)
                        (local.get 9))))
                  (i32.store
                    (local.get 12)
                    (local.tee 1
                      (i32.add
                        (local.get 1)
                        (i32.const 1))))
                  (if  ;; label = @19
                    (i32.eqz
                      (i32.or
                        (i32.gt_u
                          (local.tee 7
                            (i32.add
                              (local.tee 6
                                (i32.load8_s
                                  (local.get 1)))
                              (i32.const -32)))
                          (i32.const 31))
                        (i32.eqz
                          (i32.and
                            (i32.shl
                              (i32.const 1)
                              (local.get 7))
                            (i32.const 75913)))))
                    (then
                      (local.set 6
                        (local.get 9))
                      (local.set 9
                        (local.get 7))
                      (br 1 (;@18;)))))))
            (if  ;; label = @20
              (i32.eq
                (i32.and
                  (local.get 6)
                  (i32.const 255))
                (i32.const 42))
              (then
                (i32.store
                  (local.get 12)
                  (local.tee 5
                    (block (result i32)  ;; label = @21
                      (block  ;; label = @22
                        (br_if 0 (;@22;)
                          (i32.eqz
                            (call $_isdigit
                              (i32.load8_s offset=1
                                (local.get 1)))))
                        (br_if 0 (;@22;)
                          (i32.ne
                            (i32.load8_s offset=2
                              (local.tee 7
                                (i32.load
                                  (local.get 12))))
                            (i32.const 36)))
                        (i32.store
                          (i32.add
                            (i32.shl
                              (i32.add
                                (i32.load8_s
                                  (local.tee 1
                                    (i32.add
                                      (local.get 7)
                                      (i32.const 1))))
                                (i32.const -48))
                              (i32.const 2))
                            (local.get 4))
                          (i32.const 10))
                        (local.set 1
                          (i32.wrap_i64
                            (i64.load
                              (i32.add
                                (i32.shl
                                  (i32.add
                                    (i32.load8_s
                                      (local.get 1))
                                    (i32.const -48))
                                  (i32.const 3))
                                (local.get 3)))))
                        (local.set 6
                          (i32.const 1))
                        (br 1 (;@21;)
                          (i32.add
                            (local.get 7)
                            (i32.const 3))))
                      (if  ;; label = @23
                        (local.get 5)
                        (then
                          (local.set 8
                            (i32.const -1))
                          (br 3 (;@20;))))
                      (if  ;; label = @24
                        (local.get 19)
                        (then
                          (local.set 1
                            (i32.load
                              (local.tee 5
                                (i32.and
                                  (i32.add
                                    (i32.load
                                      (local.get 2))
                                    (i32.const 3))
                                  (i32.const -4)))))
                          (i32.store
                            (local.get 2)
                            (i32.add
                              (local.get 5)
                              (i32.const 4))))
                        (else
                          (local.set 1
                            (i32.const 0))))
                      (local.set 6
                        (i32.const 0))
                      (i32.add
                        (i32.load
                          (local.get 12))
                        (i32.const 1)))))
                (local.set 15
                  (select
                    (i32.sub
                      (i32.const 0)
                      (local.get 1))
                    (local.get 1)
                    (local.tee 1
                      (i32.lt_s
                        (local.get 1)
                        (i32.const 0)))))
                (local.set 16
                  (select
                    (i32.or
                      (local.get 9)
                      (i32.const 8192))
                    (local.get 9)
                    (local.get 1)))
                (local.set 9
                  (local.get 6)))
              (else
                (if  ;; label = @25
                  (i32.lt_s
                    (local.tee 15
                      (call $_getint
                        (local.get 12)))
                    (i32.const 0))
                  (then
                    (local.set 8
                      (i32.const -1))
                    (br 2 (;@23;))))
                (local.set 16
                  (local.get 9))
                (local.set 9
                  (local.get 5))
                (local.set 5
                  (i32.load
                    (local.get 12)))))
            (if  ;; label = @26
              (i32.eq
                (i32.load8_s
                  (local.get 5))
                (i32.const 46))
              (then
                (block  ;; label = @27
                  (if  ;; label = @28
                    (i32.ne
                      (i32.load8_s
                        (local.tee 1
                          (i32.add
                            (local.get 5)
                            (i32.const 1))))
                      (i32.const 42))
                    (then
                      (i32.store
                        (local.get 12)
                        (local.get 1))
                      (local.set 1
                        (call $_getint
                          (local.get 12)))
                      (local.set 5
                        (i32.load
                          (local.get 12)))
                      (br 1 (;@27;))))
                  (if  ;; label = @29
                    (call $_isdigit
                      (i32.load8_s offset=2
                        (local.get 5)))
                    (then
                      (if  ;; label = @30
                        (i32.eq
                          (i32.load8_s offset=3
                            (local.tee 5
                              (i32.load
                                (local.get 12))))
                          (i32.const 36))
                        (then
                          (i32.store
                            (i32.add
                              (i32.shl
                                (i32.add
                                  (i32.load8_s
                                    (local.tee 1
                                      (i32.add
                                        (local.get 5)
                                        (i32.const 2))))
                                  (i32.const -48))
                                (i32.const 2))
                              (local.get 4))
                            (i32.const 10))
                          (local.set 1
                            (i32.wrap_i64
                              (i64.load
                                (i32.add
                                  (i32.shl
                                    (i32.add
                                      (i32.load8_s
                                        (local.get 1))
                                      (i32.const -48))
                                    (i32.const 3))
                                  (local.get 3)))))
                          (i32.store
                            (local.get 12)
                            (local.tee 5
                              (i32.add
                                (local.get 5)
                                (i32.const 4))))
                          (br 2 (;@28;))))))
                  (if  ;; label = @31
                    (local.get 9)
                    (then
                      (local.set 8
                        (i32.const -1))
                      (br 3 (;@28;))))
                  (if  ;; label = @32
                    (local.get 19)
                    (then
                      (local.set 1
                        (i32.load
                          (local.tee 5
                            (i32.and
                              (i32.add
                                (i32.load
                                  (local.get 2))
                                (i32.const 3))
                              (i32.const -4)))))
                      (i32.store
                        (local.get 2)
                        (i32.add
                          (local.get 5)
                          (i32.const 4))))
                    (else
                      (local.set 1
                        (i32.const 0))))
                  (i32.store
                    (local.get 12)
                    (local.tee 5
                      (i32.add
                        (i32.load
                          (local.get 12))
                        (i32.const 2))))))
              (else
                (local.set 1
                  (i32.const -1))))
            (local.set 13
              (i32.const 0))
            (loop  ;; label = @33
              (if  ;; label = @34
                (i32.gt_u
                  (i32.add
                    (i32.load8_s
                      (local.get 5))
                    (i32.const -65))
                  (i32.const 57))
                (then
                  (local.set 8
                    (i32.const -1))
                  (br 2 (;@32;))))
              (i32.store
                (local.get 12)
                (local.tee 6
                  (i32.add
                    (local.get 5)
                    (i32.const 1))))
              (if  ;; label = @35
                (i32.lt_u
                  (i32.add
                    (local.tee 5
                      (i32.and
                        (local.tee 7
                          (i32.load8_s offset=959
                            (i32.add
                              (i32.load8_s
                                (local.get 5))
                              (i32.mul
                                (local.get 13)
                                (i32.const 58)))))
                        (i32.const 255)))
                    (i32.const -1))
                  (i32.const 8))
                (then
                  (local.set 13
                    (local.get 5))
                  (local.set 5
                    (local.get 6))
                  (br 1 (;@34;)))))
            (if  ;; label = @36
              (i32.eqz
                (local.get 7))
              (then
                (local.set 8
                  (i32.const -1))
                (br 1 (;@35;))))
            (local.set 18
              (i32.gt_s
                (local.get 14)
                (i32.const -1)))
            (block  ;; label = @37
              (block  ;; label = @38
                (if  ;; label = @39
                  (i32.eq
                    (local.get 7)
                    (i32.const 19))
                  (then
                    (if  ;; label = @40
                      (local.get 18)
                      (then
                        (local.set 8
                          (i32.const -1))
                        (br 4 (;@36;)))))
                  (else
                    (block  ;; label = @41
                      (if  ;; label = @42
                        (local.get 18)
                        (then
                          (i32.store
                            (i32.add
                              (i32.shl
                                (local.get 14)
                                (i32.const 2))
                              (local.get 4))
                            (local.get 5))
                          (i64.store
                            (local.get 11)
                            (i64.load
                              (i32.add
                                (i32.shl
                                  (local.get 14)
                                  (i32.const 3))
                                (local.get 3))))
                          (br 1 (;@41;))))
                      (if  ;; label = @43
                        (i32.eqz
                          (local.get 19))
                        (then
                          (local.set 8
                            (i32.const 0))
                          (br 5 (;@38;))))
                      (call $_pop_arg
                        (local.get 11)
                        (local.get 5)
                        (local.get 2))
                      (local.set 6
                        (i32.load
                          (local.get 12)))
                      (br 2 (;@41;)))))
                (br_if 0 (;@43;)
                  (local.get 19))
                (local.set 1
                  (i32.const 0))
                (br 1 (;@42;)))
              (local.set 5
                (select
                  (local.tee 7
                    (i32.and
                      (local.get 16)
                      (i32.const -65537)))
                  (local.get 16)
                  (i32.and
                    (local.get 16)
                    (i32.const 8192))))
              (block  ;; label = @44
                (block  ;; label = @45
                  (block  ;; label = @46
                    (block  ;; label = @47
                      (block  ;; label = @48
                        (block  ;; label = @49
                          (block  ;; label = @50
                            (block  ;; label = @51
                              (block  ;; label = @52
                                (block  ;; label = @53
                                  (block  ;; label = @54
                                    (block  ;; label = @55
                                      (block  ;; label = @56
                                        (block  ;; label = @57
                                          (block  ;; label = @58
                                            (block  ;; label = @59
                                              (block  ;; label = @60
                                                (br_table 9 (;@51;) 10 (;@50;) 7 (;@53;) 10 (;@50;) 9 (;@51;) 9 (;@51;) 9 (;@51;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 8 (;@52;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 11 (;@49;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 9 (;@51;) 10 (;@50;) 5 (;@55;) 3 (;@57;) 9 (;@51;) 9 (;@51;) 9 (;@51;) 10 (;@50;) 3 (;@57;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 0 (;@60;) 2 (;@58;) 1 (;@59;) 10 (;@50;) 10 (;@50;) 6 (;@54;) 10 (;@50;) 4 (;@56;) 10 (;@50;) 10 (;@50;) 11 (;@49;) 10 (;@50;)
                                                  (i32.sub
                                                    (local.tee 6
                                                      (select
                                                        (i32.and
                                                          (local.tee 6
                                                            (i32.load8_s
                                                              (i32.add
                                                                (local.get 6)
                                                                (i32.const -1))))
                                                          (i32.const -33))
                                                        (local.get 6)
                                                        (i32.and
                                                          (i32.eq
                                                            (i32.and
                                                              (local.get 6)
                                                              (i32.const 15))
                                                            (i32.const 3))
                                                          (i32.ne
                                                            (local.get 13)
                                                            (i32.const 0)))))
                                                    (i32.const 65))))
                                              (block  ;; label = @61
                                                (block  ;; label = @62
                                                  (block  ;; label = @63
                                                    (block  ;; label = @64
                                                      (block  ;; label = @65
                                                        (block  ;; label = @66
                                                          (block  ;; label = @67
                                                            (block  ;; label = @68
                                                              (br_table 0 (;@68;) 1 (;@67;) 2 (;@66;) 3 (;@65;) 4 (;@64;) 7 (;@61;) 5 (;@63;) 6 (;@62;) 7 (;@61;)
                                                                (i32.shr_s
                                                                  (i32.shl
                                                                    (i32.and
                                                                      (local.get 13)
                                                                      (i32.const 255))
                                                                    (i32.const 24))
                                                                  (i32.const 24))))
                                                            (i32.store
                                                              (i32.load
                                                                (local.get 11))
                                                              (local.get 8))
                                                            (local.set 1
                                                              (i32.const 0))
                                                            (br 23 (;@45;)))
                                                          (i32.store
                                                            (i32.load
                                                              (local.get 11))
                                                            (local.get 8))
                                                          (local.set 1
                                                            (i32.const 0))
                                                          (br 22 (;@46;)))
                                                        (i64.store
                                                          (i32.load
                                                            (local.get 11))
                                                          (i64.extend_i32_s
                                                            (local.get 8)))
                                                        (local.set 1
                                                          (i32.const 0))
                                                        (br 21 (;@47;)))
                                                      (i32.store16
                                                        (i32.load
                                                          (local.get 11))
                                                        (local.get 8))
                                                      (local.set 1
                                                        (i32.const 0))
                                                      (br 20 (;@48;)))
                                                    (i32.store8
                                                      (i32.load
                                                        (local.get 11))
                                                      (local.get 8))
                                                    (local.set 1
                                                      (i32.const 0))
                                                    (br 19 (;@49;)))
                                                  (i32.store
                                                    (i32.load
                                                      (local.get 11))
                                                    (local.get 8))
                                                  (local.set 1
                                                    (i32.const 0))
                                                  (br 18 (;@50;)))
                                                (i64.store
                                                  (i32.load
                                                    (local.get 11))
                                                  (i64.extend_i32_s
                                                    (local.get 8)))
                                                (local.set 1
                                                  (i32.const 0))
                                                (br 17 (;@51;)))
                                              (local.set 1
                                                (i32.const 0))
                                              (br 16 (;@52;)))
                                            (local.set 6
                                              (i32.const 120))
                                            (local.set 1
                                              (select
                                                (local.get 1)
                                                (i32.const 8)
                                                (i32.gt_u
                                                  (local.get 1)
                                                  (i32.const 8))))
                                            (local.set 5
                                              (i32.or
                                                (local.get 5)
                                                (i32.const 8)))
                                            (br 9 (;@59;)))
                                          (local.set 6
                                            (i32.sub
                                              (local.get 20)
                                              (local.tee 13
                                                (call $_fmt_o
                                                  (local.tee 26
                                                    (i64.load
                                                      (local.get 11)))
                                                  (local.get 21)))))
                                          (local.set 10
                                            (i32.const 0))
                                          (local.set 7
                                            (i32.const 1890))
                                          (local.set 1
                                            (select
                                              (local.get 1)
                                              (i32.add
                                                (local.get 6)
                                                (i32.const 1))
                                              (i32.or
                                                (i32.eqz
                                                  (i32.and
                                                    (local.get 5)
                                                    (i32.const 8)))
                                                (i32.gt_s
                                                  (local.get 1)
                                                  (local.get 6)))))
                                          (br 11 (;@57;)))
                                        (if  ;; label = @69
                                          (i64.lt_s
                                            (local.tee 26
                                              (i64.load
                                                (local.get 11)))
                                            (i64.const 0))
                                          (then
                                            (i64.store
                                              (local.get 11)
                                              (local.tee 26
                                                (i64.sub
                                                  (i64.const 0)
                                                  (local.get 26))))
                                            (local.set 10
                                              (i32.const 1))
                                            (local.set 7
                                              (i32.const 1890)))
                                          (else
                                            (local.set 10
                                              (i32.ne
                                                (i32.and
                                                  (local.get 5)
                                                  (i32.const 2049))
                                                (i32.const 0)))
                                            (local.set 7
                                              (select
                                                (i32.const 1891)
                                                (select
                                                  (i32.const 1892)
                                                  (i32.const 1890)
                                                  (i32.and
                                                    (local.get 5)
                                                    (i32.const 1)))
                                                (i32.and
                                                  (local.get 5)
                                                  (i32.const 2048))))))
                                        (br 8 (;@61;)))
                                      (local.set 10
                                        (i32.const 0))
                                      (local.set 7
                                        (i32.const 1890))
                                      (local.set 26
                                        (i64.load
                                          (local.get 11)))
                                      (br 7 (;@62;)))
                                    (i64.store8
                                      (local.get 23)
                                      (i64.load
                                        (local.get 11)))
                                    (local.set 6
                                      (local.get 23))
                                    (local.set 10
                                      (i32.const 0))
                                    (local.set 16
                                      (i32.const 1890))
                                    (local.set 13
                                      (i32.const 1))
                                    (local.set 5
                                      (local.get 7))
                                    (local.set 1
                                      (local.get 20))
                                    (br 10 (;@59;)))
                                  (local.set 18
                                    (i32.eqz
                                      (local.tee 14
                                        (call $_memchr
                                          (local.tee 6
                                            (select
                                              (local.tee 5
                                                (i32.load
                                                  (local.get 11)))
                                              (i32.const 1900)
                                              (local.get 5)))
                                          (local.get 1)))))
                                  (local.set 10
                                    (i32.const 0))
                                  (local.set 16
                                    (i32.const 1890))
                                  (local.set 13
                                    (select
                                      (local.get 1)
                                      (i32.sub
                                        (local.get 14)
                                        (local.get 6))
                                      (local.get 18)))
                                  (local.set 5
                                    (local.get 7))
                                  (local.set 1
                                    (select
                                      (i32.add
                                        (local.get 1)
                                        (local.get 6))
                                      (local.get 14)
                                      (local.get 18)))
                                  (br 9 (;@60;)))
                                (i64.store32
                                  (local.get 24)
                                  (i64.load
                                    (local.get 11)))
                                (i32.store
                                  (local.get 25)
                                  (i32.const 0))
                                (i32.store
                                  (local.get 11)
                                  (local.get 24))
                                (local.set 10
                                  (i32.const -1))
                                (br 5 (;@64;)))
                              (if  ;; label = @70
                                (local.get 1)
                                (then
                                  (local.set 10
                                    (local.get 1))
                                  (br 5 (;@65;)))
                                (else
                                  (call $_pad
                                    (local.get 0)
                                    (i32.const 32)
                                    (local.get 15)
                                    (i32.const 0)
                                    (local.get 5))
                                  (local.set 1
                                    (i32.const 0))
                                  (br 7 (;@63;))))
                              (unreachable))
                            (local.set 1
                              (call $_fmt_fp
                                (local.get 0)
                                (f64.load
                                  (local.get 11))
                                (local.get 15)
                                (local.get 1)
                                (local.get 5)
                                (local.get 6)))
                            (br 7 (;@63;)))
                          (local.set 6
                            (local.get 10))
                          (local.set 10
                            (i32.const 0))
                          (local.set 16
                            (i32.const 1890))
                          (local.set 13
                            (local.get 1))
                          (local.set 1
                            (local.get 20))
                          (br 5 (;@65;)))
                        (local.set 13
                          (call $_fmt_x
                            (local.tee 26
                              (i64.load
                                (local.get 11)))
                            (local.get 21)
                            (i32.and
                              (local.get 6)
                              (i32.const 32))))
                        (local.set 10
                          (select
                            (i32.const 0)
                            (i32.const 2)
                            (local.tee 7
                              (i32.or
                                (i32.eqz
                                  (i32.and
                                    (local.get 5)
                                    (i32.const 8)))
                                (i64.eq
                                  (local.get 26)
                                  (i64.const 0))))))
                        (local.set 7
                          (select
                            (i32.const 1890)
                            (i32.add
                              (i32.shr_u
                                (local.get 6)
                                (i32.const 4))
                              (i32.const 1890))
                            (local.get 7)))
                        (br 2 (;@68;)))
                      (local.set 13
                        (call $_fmt_u
                          (local.get 26)
                          (local.get 21)))
                      (br 1 (;@69;)))
                    (local.set 6
                      (i32.load
                        (local.get 11)))
                    (local.set 1
                      (i32.const 0))
                    (block  ;; label = @71
                      (block  ;; label = @72
                        (loop  ;; label = @73
                          (if  ;; label = @74
                            (local.tee 7
                              (i32.load
                                (local.get 6)))
                            (then
                              (br_if 2 (;@72;)
                                (i32.or
                                  (local.tee 13
                                    (i32.lt_s
                                      (local.tee 7
                                        (call $_wctomb
                                          (local.get 22)
                                          (local.get 7)))
                                      (i32.const 0)))
                                  (i32.gt_u
                                    (local.get 7)
                                    (i32.sub
                                      (local.get 10)
                                      (local.get 1)))))
                              (local.set 6
                                (i32.add
                                  (local.get 6)
                                  (i32.const 4)))
                              (br_if 1 (;@73;)
                                (i32.gt_u
                                  (local.get 10)
                                  (local.tee 1
                                    (i32.add
                                      (local.get 1)
                                      (local.get 7))))))))
                        (br 1 (;@73;)))
                      (if  ;; label = @75
                        (local.get 13)
                        (then
                          (local.set 8
                            (i32.const -1))
                          (br 6 (;@69;)))))
                    (call $_pad
                      (local.get 0)
                      (i32.const 32)
                      (local.get 15)
                      (local.get 1)
                      (local.get 5))
                    (if  ;; label = @76
                      (local.get 1)
                      (then
                        (local.set 6
                          (i32.load
                            (local.get 11)))
                        (local.set 10
                          (i32.const 0))
                        (loop  ;; label = @77
                          (br_if 3 (;@74;)
                            (i32.eqz
                              (local.tee 7
                                (i32.load
                                  (local.get 6)))))
                          (br_if 3 (;@74;)
                            (i32.gt_s
                              (local.tee 10
                                (i32.add
                                  (local.get 10)
                                  (local.tee 7
                                    (call $_wctomb
                                      (local.get 22)
                                      (local.get 7)))))
                              (local.get 1)))
                          (local.set 6
                            (i32.add
                              (local.get 6)
                              (i32.const 4)))
                          (call $_out
                            (local.get 0)
                            (local.get 22)
                            (local.get 7))
                          (br_if 0 (;@77;)
                            (i32.lt_u
                              (local.get 10)
                              (local.get 1))))
                        (br 2 (;@75;)))
                      (else
                        (local.set 1
                          (i32.const 0))
                        (br 2 (;@75;))))
                    (unreachable))
                  (local.set 6
                    (select
                      (local.get 13)
                      (local.get 21)
                      (local.tee 18
                        (i32.or
                          (local.tee 14
                            (i64.ne
                              (local.get 26)
                              (i64.const 0)))
                          (i32.ne
                            (local.get 1)
                            (i32.const 0))))))
                  (local.set 16
                    (local.get 7))
                  (local.set 13
                    (select
                      (select
                        (local.get 1)
                        (local.tee 7
                          (i32.add
                            (i32.sub
                              (local.get 20)
                              (local.get 13))
                            (i32.and
                              (i32.xor
                                (local.get 14)
                                (i32.const 1))
                              (i32.const 1))))
                        (i32.gt_s
                          (local.get 1)
                          (local.get 7)))
                      (i32.const 0)
                      (local.get 18)))
                  (local.set 5
                    (select
                      (i32.and
                        (local.get 5)
                        (i32.const -65537))
                      (local.get 5)
                      (i32.gt_s
                        (local.get 1)
                        (i32.const -1))))
                  (local.set 1
                    (local.get 20))
                  (br 1 (;@76;)))
                (call $_pad
                  (local.get 0)
                  (i32.const 32)
                  (local.get 15)
                  (local.get 1)
                  (i32.xor
                    (local.get 5)
                    (i32.const 8192)))
                (local.set 1
                  (select
                    (local.get 15)
                    (local.get 1)
                    (i32.gt_s
                      (local.get 15)
                      (local.get 1))))
                (br 1 (;@76;)))
              (call $_pad
                (local.get 0)
                (i32.const 32)
                (local.tee 1
                  (select
                    (local.tee 7
                      (i32.add
                        (local.get 10)
                        (local.tee 13
                          (select
                            (local.tee 14
                              (i32.sub
                                (local.get 1)
                                (local.get 6)))
                            (local.get 13)
                            (i32.lt_s
                              (local.get 13)
                              (local.get 14))))))
                    (local.get 15)
                    (i32.lt_s
                      (local.get 15)
                      (local.get 7))))
                (local.get 7)
                (local.get 5))
              (call $_out
                (local.get 0)
                (local.get 16)
                (local.get 10))
              (call $_pad
                (local.get 0)
                (i32.const 48)
                (local.get 1)
                (local.get 7)
                (i32.xor
                  (local.get 5)
                  (i32.const 65536)))
              (call $_pad
                (local.get 0)
                (i32.const 48)
                (local.get 13)
                (local.get 14)
                (i32.const 0))
              (call $_out
                (local.get 0)
                (local.get 6)
                (local.get 14))
              (call $_pad
                (local.get 0)
                (i32.const 32)
                (local.get 1)
                (local.get 7)
                (i32.xor
                  (local.get 5)
                  (i32.const 8192))))
            (local.set 5
              (local.get 9))
            (br 1 (;@76;))))
        (br 1 (;@76;)))
      (if  ;; label = @78
        (i32.eqz
          (local.get 0))
        (then
          (local.set 8
            (if (result i32)  ;; label = @79
              (local.get 5)
              (then
                (local.set 0
                  (i32.const 1))
                (loop  ;; label = @80
                  (if  ;; label = @81
                    (local.tee 1
                      (i32.load
                        (i32.add
                          (i32.shl
                            (local.get 0)
                            (i32.const 2))
                          (local.get 4))))
                    (then
                      (call $_pop_arg
                        (i32.add
                          (i32.shl
                            (local.get 0)
                            (i32.const 3))
                          (local.get 3))
                        (local.get 1)
                        (local.get 2))
                      (br_if 1 (;@80;)
                        (i32.lt_u
                          (local.tee 0
                            (i32.add
                              (local.get 0)
                              (i32.const 1)))
                          (i32.const 10)))
                      (local.set 8
                        (i32.const 1))
                      (br 4 (;@77;)))))
                (loop (result i32)  ;; label = @82
                  (if  ;; label = @83
                    (i32.load
                      (i32.add
                        (i32.shl
                          (local.get 0)
                          (i32.const 2))
                        (local.get 4)))
                    (then
                      (local.set 8
                        (i32.const -1))
                      (br 4 (;@79;))))
                  (br_if 0 (;@83;)
                    (i32.lt_u
                      (local.tee 0
                        (i32.add
                          (local.get 0)
                          (i32.const 1)))
                      (i32.const 10)))
                  (i32.const 1)))
              (else
                (i32.const 0)))))))
    (global.set 3
      (local.get 17))
    (local.get 8))
  (func $___lockfile (type 5) (result i32)
    (i32.const 1))
  (func $___unlockfile (type 4)
    (nop))
  (func $_out (type 10) (param i32 i32 i32)
    (if  ;; label = @1
      (i32.eqz
        (i32.and
          (i32.load
            (local.get 0))
          (i32.const 32)))
      (then
        (drop
          (call $___fwritex
            (local.get 1)
            (local.get 2)
            (local.get 0))))))
  (func $_getint (type 1) (param i32) (result i32)
    (local i32 i32)
    (if  ;; label = @1
      (call $_isdigit
        (i32.load8_s
          (i32.load
            (local.get 0))))
      (then
        (loop  ;; label = @2
          (local.set 1
            (i32.add
              (i32.load8_s
                (local.tee 2
                  (i32.load
                    (local.get 0))))
              (i32.add
                (i32.mul
                  (local.get 1)
                  (i32.const 10))
                (i32.const -48))))
          (i32.store
            (local.get 0)
            (local.tee 2
              (i32.add
                (local.get 2)
                (i32.const 1))))
          (br_if 0 (;@2;)
            (call $_isdigit
              (i32.load8_s
                (local.get 2)))))))
    (local.get 1))
  (func $_pop_arg (type 10) (param i32 i32 i32)
    (local i32 i64 f64)
    (if  ;; label = @1
      (i32.le_u
        (local.get 1)
        (i32.const 20))
      (then
        (block  ;; label = @2
          (block  ;; label = @3
            (block  ;; label = @4
              (block  ;; label = @5
                (block  ;; label = @6
                  (block  ;; label = @7
                    (block  ;; label = @8
                      (block  ;; label = @9
                        (block  ;; label = @10
                          (block  ;; label = @11
                            (block  ;; label = @12
                              (br_table 0 (;@12;) 1 (;@11;) 2 (;@10;) 3 (;@9;) 4 (;@8;) 5 (;@7;) 6 (;@6;) 7 (;@5;) 8 (;@4;) 9 (;@3;) 10 (;@2;)
                                (i32.sub
                                  (local.get 1)
                                  (i32.const 9))))
                            (local.set 3
                              (i32.load
                                (local.tee 1
                                  (i32.and
                                    (i32.add
                                      (i32.load
                                        (local.get 2))
                                      (i32.const 3))
                                    (i32.const -4)))))
                            (i32.store
                              (local.get 2)
                              (i32.add
                                (local.get 1)
                                (i32.const 4)))
                            (i32.store
                              (local.get 0)
                              (local.get 3))
                            (br 9 (;@3;)))
                          (local.set 3
                            (i32.load
                              (local.tee 1
                                (i32.and
                                  (i32.add
                                    (i32.load
                                      (local.get 2))
                                    (i32.const 3))
                                  (i32.const -4)))))
                          (i32.store
                            (local.get 2)
                            (i32.add
                              (local.get 1)
                              (i32.const 4)))
                          (i64.store
                            (local.get 0)
                            (i64.extend_i32_s
                              (local.get 3)))
                          (br 8 (;@4;)))
                        (local.set 3
                          (i32.load
                            (local.tee 1
                              (i32.and
                                (i32.add
                                  (i32.load
                                    (local.get 2))
                                  (i32.const 3))
                                (i32.const -4)))))
                        (i32.store
                          (local.get 2)
                          (i32.add
                            (local.get 1)
                            (i32.const 4)))
                        (i64.store
                          (local.get 0)
                          (i64.extend_i32_u
                            (local.get 3)))
                        (br 7 (;@5;)))
                      (local.set 4
                        (i64.load
                          (local.tee 1
                            (i32.and
                              (i32.add
                                (i32.load
                                  (local.get 2))
                                (i32.const 7))
                              (i32.const -8)))))
                      (i32.store
                        (local.get 2)
                        (i32.add
                          (local.get 1)
                          (i32.const 8)))
                      (i64.store
                        (local.get 0)
                        (local.get 4))
                      (br 6 (;@6;)))
                    (local.set 3
                      (i32.load
                        (local.tee 1
                          (i32.and
                            (i32.add
                              (i32.load
                                (local.get 2))
                              (i32.const 3))
                            (i32.const -4)))))
                    (i32.store
                      (local.get 2)
                      (i32.add
                        (local.get 1)
                        (i32.const 4)))
                    (i64.store
                      (local.get 0)
                      (i64.extend_i32_s
                        (i32.shr_s
                          (i32.shl
                            (i32.and
                              (local.get 3)
                              (i32.const 65535))
                            (i32.const 16))
                          (i32.const 16))))
                    (br 5 (;@7;)))
                  (local.set 3
                    (i32.load
                      (local.tee 1
                        (i32.and
                          (i32.add
                            (i32.load
                              (local.get 2))
                            (i32.const 3))
                          (i32.const -4)))))
                  (i32.store
                    (local.get 2)
                    (i32.add
                      (local.get 1)
                      (i32.const 4)))
                  (i64.store
                    (local.get 0)
                    (i64.extend_i32_u
                      (i32.and
                        (local.get 3)
                        (i32.const 65535))))
                  (br 4 (;@8;)))
                (local.set 3
                  (i32.load
                    (local.tee 1
                      (i32.and
                        (i32.add
                          (i32.load
                            (local.get 2))
                          (i32.const 3))
                        (i32.const -4)))))
                (i32.store
                  (local.get 2)
                  (i32.add
                    (local.get 1)
                    (i32.const 4)))
                (i64.store
                  (local.get 0)
                  (i64.extend_i32_s
                    (i32.shr_s
                      (i32.shl
                        (i32.and
                          (local.get 3)
                          (i32.const 255))
                        (i32.const 24))
                      (i32.const 24))))
                (br 3 (;@9;)))
              (local.set 3
                (i32.load
                  (local.tee 1
                    (i32.and
                      (i32.add
                        (i32.load
                          (local.get 2))
                        (i32.const 3))
                      (i32.const -4)))))
              (i32.store
                (local.get 2)
                (i32.add
                  (local.get 1)
                  (i32.const 4)))
              (i64.store
                (local.get 0)
                (i64.extend_i32_u
                  (i32.and
                    (local.get 3)
                    (i32.const 255))))
              (br 2 (;@10;)))
            (local.set 5
              (f64.load
                (local.tee 1
                  (i32.and
                    (i32.add
                      (i32.load
                        (local.get 2))
                      (i32.const 7))
                    (i32.const -8)))))
            (i32.store
              (local.get 2)
              (i32.add
                (local.get 1)
                (i32.const 8)))
            (f64.store
              (local.get 0)
              (local.get 5))
            (br 1 (;@11;)))
          (local.set 5
            (f64.load
              (local.tee 1
                (i32.and
                  (i32.add
                    (i32.load
                      (local.get 2))
                    (i32.const 7))
                  (i32.const -8)))))
          (i32.store
            (local.get 2)
            (i32.add
              (local.get 1)
              (i32.const 8)))
          (f64.store
            (local.get 0)
            (local.get 5))))))
  (func $_fmt_x (type 11) (param i64 i32 i32) (result i32)
    (if  ;; label = @1
      (i64.ne
        (local.get 0)
        (i64.const 0))
      (then
        (loop  ;; label = @2
          (i32.store8
            (local.tee 1
              (i32.add
                (local.get 1)
                (i32.const -1)))
            (i32.or
              (local.get 2)
              (i32.load8_u
                (i32.add
                  (i32.and
                    (i32.wrap_i64
                      (local.get 0))
                    (i32.const 15))
                  (i32.const 1488)))))
          (br_if 0 (;@2;)
            (i64.ne
              (local.tee 0
                (i64.shr_u
                  (local.get 0)
                  (i64.const 4)))
              (i64.const 0))))))
    (local.get 1))
  (func $_fmt_o (type 12) (param i64 i32) (result i32)
    (if  ;; label = @1
      (i64.ne
        (local.get 0)
        (i64.const 0))
      (then
        (loop  ;; label = @2
          (i32.store8
            (local.tee 1
              (i32.add
                (local.get 1)
                (i32.const -1)))
            (i32.or
              (i32.and
                (i32.wrap_i64
                  (local.get 0))
                (i32.const 7))
              (i32.const 48)))
          (br_if 0 (;@2;)
            (i64.ne
              (local.tee 0
                (i64.shr_u
                  (local.get 0)
                  (i64.const 3)))
              (i64.const 0))))))
    (local.get 1))
  (func $_fmt_u (type 12) (param i64 i32) (result i32)
    (local i32 i32 i64)
    (local.set 2
      (i32.wrap_i64
        (local.get 0)))
    (if  ;; label = @1
      (i64.gt_u
        (local.get 0)
        (i64.const 4294967295))
      (then
        (loop  ;; label = @2
          (i32.store8
            (local.tee 1
              (i32.add
                (local.get 1)
                (i32.const -1)))
            (i32.or
              (i32.and
                (i32.wrap_i64
                  (i64.sub
                    (local.get 0)
                    (i64.mul
                      (local.tee 4
                        (i64.div_u
                          (local.get 0)
                          (i64.const 10)))
                      (i64.const 10))))
                (i32.const 255))
              (i32.const 48)))
          (if  ;; label = @3
            (i64.gt_u
              (local.get 0)
              (i64.const 42949672959))
            (then
              (local.set 0
                (local.get 4))
              (br 1 (;@2;)))))
        (local.set 2
          (i32.wrap_i64
            (local.get 4)))))
    (if  ;; label = @4
      (local.get 2)
      (then
        (loop  ;; label = @5
          (i32.store8
            (local.tee 1
              (i32.add
                (local.get 1)
                (i32.const -1)))
            (i32.or
              (i32.sub
                (local.get 2)
                (i32.mul
                  (local.tee 3
                    (i32.div_u
                      (local.get 2)
                      (i32.const 10)))
                  (i32.const 10)))
              (i32.const 48)))
          (if  ;; label = @6
            (i32.ge_u
              (local.get 2)
              (i32.const 10))
            (then
              (local.set 2
                (local.get 3))
              (br 1 (;@5;)))))))
    (local.get 1))
  (func $_memchr (type 3) (param i32 i32) (result i32)
    (local i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (if  ;; label = @4
            (i32.and
              (local.tee 2
                (i32.ne
                  (local.get 1)
                  (i32.const 0)))
              (i32.ne
                (i32.and
                  (local.get 0)
                  (i32.const 3))
                (i32.const 0)))
            (then
              (loop  ;; label = @5
                (br_if 2 (;@3;)
                  (i32.eqz
                    (i32.load8_u
                      (local.get 0))))
                (br_if 0 (;@5;)
                  (i32.and
                    (local.tee 2
                      (i32.ne
                        (local.tee 1
                          (i32.add
                            (local.get 1)
                            (i32.const -1)))
                        (i32.const 0)))
                    (i32.ne
                      (i32.and
                        (local.tee 0
                          (i32.add
                            (local.get 0)
                            (i32.const 1)))
                        (i32.const 3))
                      (i32.const 0)))))))
          (br_if 1 (;@4;)
            (i32.eqz
              (local.get 2))))
        (if  ;; label = @6
          (i32.eqz
            (i32.load8_u
              (local.get 0)))
          (then
            (if  ;; label = @7
              (local.get 1)
              (then
                (br 3 (;@4;)))
              (else
                (br 2 (;@5;))))
            (unreachable)))
        (block  ;; label = @8
          (block  ;; label = @9
            (br_if 0 (;@9;)
              (i32.le_u
                (local.get 1)
                (i32.const 3)))
            (loop  ;; label = @10
              (if  ;; label = @11
                (i32.eqz
                  (i32.and
                    (i32.add
                      (local.tee 2
                        (i32.load
                          (local.get 0)))
                      (i32.const -16843009))
                    (i32.xor
                      (i32.and
                        (local.get 2)
                        (i32.const -2139062144))
                      (i32.const -2139062144))))
                (then
                  (local.set 0
                    (i32.add
                      (local.get 0)
                      (i32.const 4)))
                  (br_if 1 (;@10;)
                    (i32.gt_u
                      (local.tee 1
                        (i32.add
                          (local.get 1)
                          (i32.const -4)))
                      (i32.const 3)))
                  (br 2 (;@9;)))))
            (br 1 (;@10;)))
          (br_if 1 (;@10;)
            (i32.eqz
              (local.get 1))))
        (loop  ;; label = @12
          (br_if 2 (;@10;)
            (i32.eqz
              (i32.load8_u
                (local.get 0))))
          (local.set 0
            (i32.add
              (local.get 0)
              (i32.const 1)))
          (br_if 0 (;@12;)
            (local.tee 1
              (i32.add
                (local.get 1)
                (i32.const -1))))))
      (local.set 0
        (i32.const 0)))
    (local.get 0))
  (func $_pad (type 13) (param i32 i32 i32 i32 i32)
    (local i32)
    (local.set 5
      (global.get 3))
    (global.set 3
      (i32.add
        (global.get 3)
        (i32.const 256)))
    (if  ;; label = @1
      (i32.and
        (i32.eqz
          (i32.and
            (local.get 4)
            (i32.const 73728)))
        (i32.gt_s
          (local.get 2)
          (local.get 3)))
      (then
        (drop
          (call $_memset
            (local.get 5)
            (i32.shr_s
              (i32.shl
                (local.get 1)
                (i32.const 24))
              (i32.const 24))
            (select
              (local.tee 1
                (i32.sub
                  (local.get 2)
                  (local.get 3)))
              (i32.const 256)
              (i32.lt_u
                (local.get 1)
                (i32.const 256)))))
        (if  ;; label = @2
          (i32.gt_u
            (local.get 1)
            (i32.const 255))
          (then
            (local.set 2
              (i32.sub
                (local.get 2)
                (local.get 3)))
            (loop  ;; label = @3
              (call $_out
                (local.get 0)
                (local.get 5)
                (i32.const 256))
              (br_if 0 (;@3;)
                (i32.gt_u
                  (local.tee 1
                    (i32.add
                      (local.get 1)
                      (i32.const -256)))
                  (i32.const 255))))
            (local.set 1
              (i32.and
                (local.get 2)
                (i32.const 255)))))
        (call $_out
          (local.get 0)
          (local.get 5)
          (local.get 1))))
    (global.set 3
      (local.get 5)))
  (func $_wctomb (type 3) (param i32 i32) (result i32)
    (if (result i32)  ;; label = @1
      (local.get 0)
      (then
        (call $_wcrtomb
          (local.get 0)
          (local.get 1)))
      (else
        (i32.const 0))))
  (func $_fmt_fp (type 14) (param i32 f64 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 f64)
    (local.set 20
      (global.get 3))
    (global.set 3
      (i32.add
        (global.get 3)
        (i32.const 560)))
    (local.set 7
      (i32.add
        (local.get 20)
        (i32.const 32)))
    (local.set 17
      (local.tee 13
        (local.get 20)))
    (i32.store
      (local.tee 11
        (i32.add
          (local.get 13)
          (i32.const 536)))
      (i32.const 0))
    (local.set 15
      (i32.add
        (local.tee 9
          (i32.add
            (local.get 13)
            (i32.const 540)))
        (i32.const 12)))
    (local.set 19
      (if (result i32)  ;; label = @1
        (i64.lt_s
          (local.tee 24
            (call $___DOUBLE_BITS_270
              (local.get 1)))
          (i64.const 0))
        (then
          (local.set 24
            (call $___DOUBLE_BITS_270
              (local.tee 1
                (f64.neg
                  (local.get 1)))))
          (local.set 18
            (i32.const 1907))
          (i32.const 1))
        (else
          (local.set 18
            (select
              (i32.const 1910)
              (select
                (i32.const 1913)
                (i32.const 1908)
                (i32.and
                  (local.get 4)
                  (i32.const 1)))
              (i32.and
                (local.get 4)
                (i32.const 2048))))
          (i32.ne
            (i32.and
              (local.get 4)
              (i32.const 2049))
            (i32.const 0)))))
    (local.set 0
      (if (result i32)  ;; label = @2
        (i64.eq
          (i64.and
            (local.get 24)
            (i64.const 9218868437227405312))
          (i64.const 9218868437227405312))
        (then
          (local.set 5
            (select
              (select
                (i32.const 1934)
                (i32.const 1938)
                (local.tee 3
                  (i32.ne
                    (i32.and
                      (local.get 5)
                      (i32.const 32))
                    (i32.const 0))))
              (select
                (i32.const 1926)
                (i32.const 1930)
                (local.get 3))
              (f64.ne
                (local.get 1)
                (local.get 1))))
          (call $_pad
            (local.get 0)
            (i32.const 32)
            (local.get 2)
            (local.tee 3
              (i32.add
                (local.get 19)
                (i32.const 3)))
            (i32.and
              (local.get 4)
              (i32.const -65537)))
          (call $_out
            (local.get 0)
            (local.get 18)
            (local.get 19))
          (call $_out
            (local.get 0)
            (local.get 5)
            (i32.const 3))
          (call $_pad
            (local.get 0)
            (i32.const 32)
            (local.get 2)
            (local.get 3)
            (i32.xor
              (local.get 4)
              (i32.const 8192)))
          (local.get 3))
        (else
          (block (result i32)  ;; label = @3
            (if  ;; label = @4
              (local.tee 6
                (f64.ne
                  (local.tee 1
                    (f64.mul
                      (call $_frexpl
                        (local.get 1)
                        (local.get 11))
                      (f64.const 0x1p+1 (;=2;))))
                  (f64.const 0x0p+0 (;=0;))))
              (then
                (i32.store
                  (local.get 11)
                  (i32.add
                    (i32.load
                      (local.get 11))
                    (i32.const -1)))))
            (if  ;; label = @5
              (i32.eq
                (local.tee 14
                  (i32.or
                    (local.get 5)
                    (i32.const 32)))
                (i32.const 97))
              (then
                (local.set 8
                  (select
                    (i32.add
                      (local.get 18)
                      (i32.const 9))
                    (local.get 18)
                    (local.tee 12
                      (i32.and
                        (local.get 5)
                        (i32.const 32)))))
                (if  ;; label = @6
                  (i32.eqz
                    (i32.or
                      (i32.eqz
                        (local.tee 7
                          (i32.sub
                            (i32.const 12)
                            (local.get 3))))
                      (i32.gt_u
                        (local.get 3)
                        (i32.const 11))))
                  (then
                    (local.set 27
                      (f64.const 0x1p+3 (;=8;)))
                    (loop  ;; label = @7
                      (local.set 27
                        (f64.mul
                          (local.get 27)
                          (f64.const 0x1p+4 (;=16;))))
                      (br_if 0 (;@7;)
                        (local.tee 7
                          (i32.add
                            (local.get 7)
                            (i32.const -1)))))
                    (local.set 1
                      (if (result f64)  ;; label = @8
                        (i32.eq
                          (i32.load8_s
                            (local.get 8))
                          (i32.const 45))
                        (then
                          (f64.neg
                            (f64.add
                              (local.get 27)
                              (f64.sub
                                (f64.neg
                                  (local.get 1))
                                (local.get 27)))))
                        (else
                          (f64.sub
                            (f64.add
                              (local.get 1)
                              (local.get 27))
                            (local.get 27)))))))
                (local.set 10
                  (i32.or
                    (local.get 19)
                    (i32.const 2)))
                (if  ;; label = @9
                  (i32.eq
                    (local.get 15)
                    (local.tee 7
                      (call $_fmt_u
                        (i64.extend_i32_s
                          (select
                            (i32.sub
                              (i32.const 0)
                              (local.tee 6
                                (i32.load
                                  (local.get 11))))
                            (local.get 6)
                            (i32.lt_s
                              (local.get 6)
                              (i32.const 0))))
                        (local.get 15))))
                  (then
                    (i32.store8
                      (local.tee 7
                        (i32.add
                          (local.get 9)
                          (i32.const 11)))
                      (i32.const 48))))
                (i32.store8
                  (i32.add
                    (local.get 7)
                    (i32.const -1))
                  (i32.add
                    (i32.and
                      (i32.shr_s
                        (local.get 6)
                        (i32.const 31))
                      (i32.const 2))
                    (i32.const 43)))
                (i32.store8
                  (local.tee 7
                    (i32.add
                      (local.get 7)
                      (i32.const -2)))
                  (i32.add
                    (local.get 5)
                    (i32.const 15)))
                (local.set 9
                  (i32.lt_s
                    (local.get 3)
                    (i32.const 1)))
                (local.set 11
                  (i32.eqz
                    (i32.and
                      (local.get 4)
                      (i32.const 8))))
                (local.set 5
                  (local.get 13))
                (loop  ;; label = @10
                  (i32.store8
                    (local.get 5)
                    (i32.or
                      (local.get 12)
                      (i32.load8_u
                        (i32.add
                          (local.tee 6
                            (i32.trunc_f64_s
                              (local.get 1)))
                          (i32.const 1488)))))
                  (local.set 1
                    (f64.mul
                      (f64.sub
                        (local.get 1)
                        (f64.convert_i32_s
                          (local.get 6)))
                      (f64.const 0x1p+4 (;=16;))))
                  (local.set 5
                    (if (result i32)  ;; label = @11
                      (i32.eq
                        (i32.sub
                          (local.tee 6
                            (i32.add
                              (local.get 5)
                              (i32.const 1)))
                          (local.get 17))
                        (i32.const 1))
                      (then
                        (if (result i32)  ;; label = @12
                          (i32.and
                            (local.get 11)
                            (i32.and
                              (local.get 9)
                              (f64.eq
                                (local.get 1)
                                (f64.const 0x0p+0 (;=0;)))))
                          (then
                            (local.get 6))
                          (else
                            (i32.store8
                              (local.get 6)
                              (i32.const 46))
                            (i32.add
                              (local.get 5)
                              (i32.const 2)))))
                      (else
                        (local.get 6))))
                  (f64.ne
                    (local.get 1)
                    (f64.const 0x0p+0 (;=0;)))
                  (br_if 0 (;@12;)))
                (local.set 3
                  (block (result i32)  ;; label = @13
                    (block  ;; label = @14
                      (br_if 0 (;@14;)
                        (i32.eqz
                          (local.get 3)))
                      (br_if 0 (;@14;)
                        (i32.ge_s
                          (i32.add
                            (local.get 5)
                            (i32.sub
                              (i32.const -2)
                              (local.get 17)))
                          (local.get 3)))
                      (local.set 9
                        (i32.sub
                          (i32.add
                            (local.get 15)
                            (i32.add
                              (local.get 3)
                              (i32.const 2)))
                          (local.get 7)))
                      (br 1 (;@13;)
                        (local.get 7)))
                    (local.set 9
                      (i32.add
                        (local.get 5)
                        (i32.sub
                          (i32.sub
                            (local.get 15)
                            (local.get 17))
                          (local.get 7))))
                    (local.get 7)))
                (call $_pad
                  (local.get 0)
                  (i32.const 32)
                  (local.get 2)
                  (local.tee 6
                    (i32.add
                      (local.get 9)
                      (local.get 10)))
                  (local.get 4))
                (call $_out
                  (local.get 0)
                  (local.get 8)
                  (local.get 10))
                (call $_pad
                  (local.get 0)
                  (i32.const 48)
                  (local.get 2)
                  (local.get 6)
                  (i32.xor
                    (local.get 4)
                    (i32.const 65536)))
                (call $_out
                  (local.get 0)
                  (local.get 13)
                  (local.tee 5
                    (i32.sub
                      (local.get 5)
                      (local.get 17))))
                (call $_pad
                  (local.get 0)
                  (i32.const 48)
                  (i32.sub
                    (local.get 9)
                    (i32.add
                      (local.get 5)
                      (local.tee 3
                        (i32.sub
                          (local.get 15)
                          (local.get 3)))))
                  (i32.const 0)
                  (i32.const 0))
                (call $_out
                  (local.get 0)
                  (local.get 7)
                  (local.get 3))
                (call $_pad
                  (local.get 0)
                  (i32.const 32)
                  (local.get 2)
                  (local.get 6)
                  (i32.xor
                    (local.get 4)
                    (i32.const 8192)))
                (br 1 (;@13;)
                  (local.get 6))))
            (if  ;; label = @15
              (local.get 6)
              (then
                (i32.store
                  (local.get 11)
                  (local.tee 8
                    (i32.add
                      (i32.load
                        (local.get 11))
                      (i32.const -28))))
                (local.set 1
                  (f64.mul
                    (local.get 1)
                    (f64.const 0x1p+28 (;=2.68435e+08;)))))
              (else
                (local.set 8
                  (i32.load
                    (local.get 11)))))
            (local.set 6
              (local.tee 9
                (select
                  (local.get 7)
                  (i32.add
                    (local.get 7)
                    (i32.const 288))
                  (i32.lt_s
                    (local.get 8)
                    (i32.const 0)))))
            (loop  ;; label = @16
              (i32.store
                (local.get 6)
                (local.tee 7
                  (i32.trunc_f64_u
                    (local.get 1))))
              (local.set 6
                (i32.add
                  (local.get 6)
                  (i32.const 4)))
              (br_if 0 (;@16;)
                (f64.ne
                  (local.tee 1
                    (f64.mul
                      (f64.sub
                        (local.get 1)
                        (f64.convert_i32_u
                          (local.get 7)))
                      (f64.const 0x1.dcd65p+29 (;=1e+09;))))
                  (f64.const 0x0p+0 (;=0;)))))
            (if  ;; label = @17
              (i32.gt_s
                (local.get 8)
                (i32.const 0))
              (then
                (local.set 7
                  (local.get 9))
                (loop  ;; label = @18
                  (local.set 12
                    (select
                      (local.get 8)
                      (i32.const 29)
                      (i32.lt_s
                        (local.get 8)
                        (i32.const 29))))
                  (if  ;; label = @19
                    (i32.ge_u
                      (local.tee 8
                        (i32.add
                          (local.get 6)
                          (i32.const -4)))
                      (local.get 7))
                    (then
                      (local.set 25
                        (i64.extend_i32_u
                          (local.get 12)))
                      (local.set 10
                        (i32.const 0))
                      (loop  ;; label = @20
                        (local.set 24
                          (i64.div_u
                            (local.tee 26
                              (i64.add
                                (i64.extend_i32_u
                                  (local.get 10))
                                (i64.shl
                                  (i64.extend_i32_u
                                    (i32.load
                                      (local.get 8)))
                                  (local.get 25))))
                            (i64.const 1000000000)))
                        (i64.store32
                          (local.get 8)
                          (i64.sub
                            (local.get 26)
                            (i64.mul
                              (local.get 24)
                              (i64.const 1000000000))))
                        (local.set 10
                          (i32.wrap_i64
                            (local.get 24)))
                        (br_if 0 (;@20;)
                          (i32.ge_u
                            (local.tee 8
                              (i32.add
                                (local.get 8)
                                (i32.const -4)))
                            (local.get 7))))
                      (if  ;; label = @21
                        (local.get 10)
                        (then
                          (i32.store
                            (local.tee 7
                              (i32.add
                                (local.get 7)
                                (i32.const -4)))
                            (local.get 10))))))
                  (if  ;; label = @22
                    (i32.gt_u
                      (local.get 6)
                      (local.get 7))
                    (then
                      (block  ;; label = @23
                        (local.set 6
                          (loop (result i32)  ;; label = @24
                            (br_if 1 (;@23;)
                              (i32.load
                                (local.tee 8
                                  (i32.add
                                    (local.get 6)
                                    (i32.const -4)))))
                            (if (result i32)  ;; label = @25
                              (i32.gt_u
                                (local.get 8)
                                (local.get 7))
                              (then
                                (local.set 6
                                  (local.get 8))
                                (br 1 (;@24;)))
                              (else
                                (local.get 8))))))))
                  (i32.store
                    (local.get 11)
                    (local.tee 8
                      (i32.sub
                        (i32.load
                          (local.get 11))
                        (local.get 12))))
                  (i32.gt_s
                    (local.get 8)
                    (i32.const 0))
                  (br_if 0 (;@25;))))
              (else
                (local.set 7
                  (local.get 9))))
            (local.set 12
              (select
                (i32.const 6)
                (local.get 3)
                (i32.lt_s
                  (local.get 3)
                  (i32.const 0))))
            (if  ;; label = @26
              (i32.lt_s
                (local.get 8)
                (i32.const 0))
              (then
                (local.set 16
                  (i32.add
                    (i32.div_s
                      (i32.add
                        (local.get 12)
                        (i32.const 25))
                      (i32.const 9))
                    (i32.const 1)))
                (local.set 21
                  (i32.eq
                    (local.get 14)
                    (i32.const 102)))
                (local.set 3
                  (local.get 6))
                (loop  ;; label = @27
                  (local.set 10
                    (select
                      (local.tee 6
                        (i32.sub
                          (i32.const 0)
                          (local.get 8)))
                      (i32.const 9)
                      (i32.lt_s
                        (local.get 6)
                        (i32.const 9))))
                  (local.set 8
                    (select
                      (i32.add
                        (local.tee 7
                          (select
                            (local.get 9)
                            (local.tee 3
                              (if (result i32)  ;; label = @28
                                (i32.lt_u
                                  (local.get 7)
                                  (local.get 3))
                                (then
                                  (local.set 22
                                    (i32.add
                                      (i32.shl
                                        (i32.const 1)
                                        (local.get 10))
                                      (i32.const -1)))
                                  (local.set 23
                                    (i32.shr_u
                                      (i32.const 1000000000)
                                      (local.get 10)))
                                  (local.set 8
                                    (i32.const 0))
                                  (local.set 6
                                    (local.get 7))
                                  (loop  ;; label = @29
                                    (i32.store
                                      (local.get 6)
                                      (i32.add
                                        (local.get 8)
                                        (i32.shr_u
                                          (local.tee 8
                                            (i32.load
                                              (local.get 6)))
                                          (local.get 10))))
                                    (local.set 8
                                      (i32.mul
                                        (local.get 23)
                                        (i32.and
                                          (local.get 8)
                                          (local.get 22))))
                                    (br_if 0 (;@29;)
                                      (i32.lt_u
                                        (local.tee 6
                                          (i32.add
                                            (local.get 6)
                                            (i32.const 4)))
                                        (local.get 3))))
                                  (local.set 7
                                    (select
                                      (local.get 7)
                                      (i32.add
                                        (local.get 7)
                                        (i32.const 4))
                                      (i32.load
                                        (local.get 7))))
                                  (if  ;; label = @30
                                    (local.get 8)
                                    (then
                                      (i32.store
                                        (local.get 3)
                                        (local.get 8))
                                      (local.set 6
                                        (i32.add
                                          (local.get 3)
                                          (i32.const 4))))
                                    (else
                                      (local.set 6
                                        (local.get 3))))
                                  (local.get 7))
                                (else
                                  (local.set 6
                                    (local.get 3))
                                  (select
                                    (local.get 7)
                                    (i32.add
                                      (local.get 7)
                                      (i32.const 4))
                                    (i32.load
                                      (local.get 7))))))
                            (local.get 21)))
                        (i32.shl
                          (local.get 16)
                          (i32.const 2)))
                      (local.get 6)
                      (i32.gt_s
                        (i32.shr_s
                          (i32.sub
                            (local.get 6)
                            (local.get 7))
                          (i32.const 2))
                        (local.get 16))))
                  (i32.store
                    (local.get 11)
                    (local.tee 6
                      (i32.add
                        (local.get 10)
                        (i32.load
                          (local.get 11)))))
                  (if  ;; label = @31
                    (i32.lt_s
                      (local.get 6)
                      (i32.const 0))
                    (then
                      (local.set 7
                        (local.get 3))
                      (local.set 3
                        (local.get 8))
                      (local.set 8
                        (local.get 6))
                      (br 1 (;@30;))))))
              (else
                (local.set 3
                  (local.get 7))
                (local.set 8
                  (local.get 6))))
            (local.set 11
              (local.get 9))
            (if  ;; label = @32
              (i32.lt_u
                (local.get 3)
                (local.get 8))
              (then
                (local.set 7
                  (i32.mul
                    (i32.shr_s
                      (i32.sub
                        (local.get 11)
                        (local.get 3))
                      (i32.const 2))
                    (i32.const 9)))
                (if  ;; label = @33
                  (i32.ge_u
                    (local.tee 9
                      (i32.load
                        (local.get 3)))
                    (i32.const 10))
                  (then
                    (local.set 6
                      (i32.const 10))
                    (loop  ;; label = @34
                      (local.set 7
                        (i32.add
                          (local.get 7)
                          (i32.const 1)))
                      (br_if 0 (;@34;)
                        (i32.ge_u
                          (local.get 9)
                          (local.tee 6
                            (i32.mul
                              (local.get 6)
                              (i32.const 10)))))))))
              (else
                (local.set 7
                  (i32.const 0))))
            (local.set 7
              (if (result i32)  ;; label = @35
                (i32.lt_s
                  (local.tee 6
                    (i32.add
                      (i32.sub
                        (local.get 12)
                        (select
                          (i32.const 0)
                          (local.get 7)
                          (i32.eq
                            (local.get 14)
                            (i32.const 102))))
                      (i32.shr_s
                        (i32.shl
                          (i32.and
                            (local.tee 21
                              (i32.eq
                                (local.get 14)
                                (i32.const 103)))
                            (local.tee 22
                              (i32.ne
                                (local.get 12)
                                (i32.const 0))))
                          (i32.const 31))
                        (i32.const 31))))
                  (i32.add
                    (i32.mul
                      (i32.shr_s
                        (i32.sub
                          (local.get 8)
                          (local.get 11))
                        (i32.const 2))
                      (i32.const 9))
                    (i32.const -9)))
                (then
                  (local.set 14
                    (i32.div_s
                      (local.tee 6
                        (i32.add
                          (local.get 6)
                          (i32.const 9216)))
                      (i32.const 9)))
                  (if  ;; label = @36
                    (i32.lt_s
                      (local.tee 6
                        (i32.sub
                          (local.get 6)
                          (i32.mul
                            (local.get 14)
                            (i32.const 9))))
                      (i32.const 8))
                    (then
                      (local.set 9
                        (i32.const 10))
                      (loop  ;; label = @37
                        (local.set 10
                          (i32.add
                            (local.get 6)
                            (i32.const 1)))
                        (local.set 9
                          (i32.mul
                            (local.get 9)
                            (i32.const 10)))
                        (if  ;; label = @38
                          (i32.lt_s
                            (local.get 6)
                            (i32.const 7))
                          (then
                            (local.set 6
                              (local.get 10))
                            (br 1 (;@37;))))))
                    (else
                      (local.set 9
                        (i32.const 10))))
                  (local.set 16
                    (i32.div_u
                      (local.tee 14
                        (i32.load
                          (local.tee 6
                            (i32.add
                              (i32.add
                                (i32.shl
                                  (local.get 14)
                                  (i32.const 2))
                                (local.get 11))
                              (i32.const -4092)))))
                      (local.get 9)))
                  (if  ;; label = @39
                    (i32.eqz
                      (i32.and
                        (local.tee 23
                          (i32.eq
                            (local.get 8)
                            (i32.add
                              (local.get 6)
                              (i32.const 4))))
                        (i32.eqz
                          (local.tee 10
                            (i32.sub
                              (local.get 14)
                              (i32.mul
                                (local.get 9)
                                (local.get 16)))))))
                    (then
                      (local.set 1
                        (select
                          (f64.const 0x1.0000000000001p+53 (;=9.0072e+15;))
                          (f64.const 0x1p+53 (;=9.0072e+15;))
                          (i32.and
                            (local.get 16)
                            (i32.const 1))))
                      (local.set 27
                        (select
                          (f64.const 0x1p-1 (;=0.5;))
                          (select
                            (f64.const 0x1p+0 (;=1;))
                            (f64.const 0x1.8p+0 (;=1.5;))
                            (i32.and
                              (local.get 23)
                              (i32.eq
                                (local.get 10)
                                (local.tee 16
                                  (i32.shr_u
                                    (local.get 9)
                                    (i32.const 1))))))
                          (i32.lt_u
                            (local.get 10)
                            (local.get 16))))
                      (if  ;; label = @40
                        (local.get 19)
                        (then
                          (local.set 27
                            (select
                              (f64.neg
                                (local.get 27))
                              (local.get 27)
                              (local.tee 16
                                (i32.eq
                                  (i32.load8_s
                                    (local.get 18))
                                  (i32.const 45)))))
                          (local.set 1
                            (select
                              (f64.neg
                                (local.get 1))
                              (local.get 1)
                              (local.get 16)))))
                      (i32.store
                        (local.get 6)
                        (local.tee 10
                          (i32.sub
                            (local.get 14)
                            (local.get 10))))
                      (if  ;; label = @41
                        (f64.ne
                          (f64.add
                            (local.get 1)
                            (local.get 27))
                          (local.get 1))
                        (then
                          (i32.store
                            (local.get 6)
                            (local.tee 7
                              (i32.add
                                (local.get 9)
                                (local.get 10))))
                          (if  ;; label = @42
                            (i32.gt_u
                              (local.get 7)
                              (i32.const 999999999))
                            (then
                              (loop  ;; label = @43
                                (i32.store
                                  (local.get 6)
                                  (i32.const 0))
                                (if  ;; label = @44
                                  (i32.lt_u
                                    (local.tee 6
                                      (i32.add
                                        (local.get 6)
                                        (i32.const -4)))
                                    (local.get 3))
                                  (then
                                    (i32.store
                                      (local.tee 3
                                        (i32.add
                                          (local.get 3)
                                          (i32.const -4)))
                                      (i32.const 0))))
                                (i32.store
                                  (local.get 6)
                                  (local.tee 7
                                    (i32.add
                                      (i32.load
                                        (local.get 6))
                                      (i32.const 1))))
                                (br_if 0 (;@44;)
                                  (i32.gt_u
                                    (local.get 7)
                                    (i32.const 999999999))))))
                          (local.set 7
                            (i32.mul
                              (i32.shr_s
                                (i32.sub
                                  (local.get 11)
                                  (local.get 3))
                                (i32.const 2))
                              (i32.const 9)))
                          (if  ;; label = @45
                            (i32.ge_u
                              (local.tee 10
                                (i32.load
                                  (local.get 3)))
                              (i32.const 10))
                            (then
                              (local.set 9
                                (i32.const 10))
                              (loop  ;; label = @46
                                (local.set 7
                                  (i32.add
                                    (local.get 7)
                                    (i32.const 1)))
                                (br_if 0 (;@46;)
                                  (i32.ge_u
                                    (local.get 10)
                                    (local.tee 9
                                      (i32.mul
                                        (local.get 9)
                                        (i32.const 10))))))))))))
                  (local.set 10
                    (local.get 7))
                  (local.set 6
                    (select
                      (local.tee 7
                        (i32.add
                          (local.get 6)
                          (i32.const 4)))
                      (local.get 8)
                      (i32.gt_u
                        (local.get 8)
                        (local.get 7))))
                  (local.get 3))
                (else
                  (local.set 10
                    (local.get 7))
                  (local.set 6
                    (local.get 8))
                  (local.get 3))))
            (local.set 14
              (if (result i32)  ;; label = @47
                (i32.gt_u
                  (local.get 6)
                  (local.get 7))
                (then
                  (block (result i32)  ;; label = @48
                    (local.set 3
                      (local.get 6))
                    (loop (result i32)  ;; label = @49
                      (if  ;; label = @50
                        (i32.load
                          (local.tee 6
                            (i32.add
                              (local.get 3)
                              (i32.const -4))))
                        (then
                          (local.set 6
                            (local.get 3))
                          (br 2 (;@48;)
                            (i32.const 1))))
                      (if (result i32)  ;; label = @51
                        (i32.gt_u
                          (local.get 6)
                          (local.get 7))
                        (then
                          (local.set 3
                            (local.get 6))
                          (br 1 (;@50;)))
                        (else
                          (i32.const 0))))))
                (else
                  (i32.const 0))))
            (local.set 3
              (if (result i32)  ;; label = @52
                (local.get 21)
                (then
                  (local.set 5
                    (if (result i32)  ;; label = @53
                      (i32.and
                        (i32.gt_s
                          (local.tee 3
                            (i32.add
                              (i32.and
                                (i32.xor
                                  (local.get 22)
                                  (i32.const 1))
                                (i32.const 1))
                              (local.get 12)))
                          (local.get 10))
                        (i32.gt_s
                          (local.get 10)
                          (i32.const -5)))
                      (then
                        (local.set 8
                          (i32.sub
                            (i32.add
                              (local.get 3)
                              (i32.const -1))
                            (local.get 10)))
                        (i32.add
                          (local.get 5)
                          (i32.const -1)))
                      (else
                        (local.set 8
                          (i32.add
                            (local.get 3)
                            (i32.const -1)))
                        (i32.add
                          (local.get 5)
                          (i32.const -2)))))
                  (if (result i32)  ;; label = @54
                    (i32.and
                      (local.get 4)
                      (i32.const 8))
                    (then
                      (local.get 8))
                    (else
                      (if  ;; label = @55
                        (local.get 14)
                        (then
                          (if  ;; label = @56
                            (local.tee 12
                              (i32.load
                                (i32.add
                                  (local.get 6)
                                  (i32.const -4))))
                            (then
                              (if  ;; label = @57
                                (i32.rem_u
                                  (local.get 12)
                                  (i32.const 10))
                                (then
                                  (local.set 3
                                    (i32.const 0)))
                                (else
                                  (local.set 3
                                    (i32.const 0))
                                  (local.set 9
                                    (i32.const 10))
                                  (loop  ;; label = @58
                                    (local.set 3
                                      (i32.add
                                        (local.get 3)
                                        (i32.const 1)))
                                    (br_if 0 (;@58;)
                                      (i32.eqz
                                        (i32.rem_u
                                          (local.get 12)
                                          (local.tee 9
                                            (i32.mul
                                              (local.get 9)
                                              (i32.const 10))))))))))
                            (else
                              (local.set 3
                                (i32.const 9)))))
                        (else
                          (local.set 3
                            (i32.const 9))))
                      (local.set 9
                        (i32.add
                          (i32.mul
                            (i32.shr_s
                              (i32.sub
                                (local.get 6)
                                (local.get 11))
                              (i32.const 2))
                            (i32.const 9))
                          (i32.const -9)))
                      (if (result i32)  ;; label = @59
                        (i32.eq
                          (i32.or
                            (local.get 5)
                            (i32.const 32))
                          (i32.const 102))
                        (then
                          (select
                            (local.get 8)
                            (local.tee 3
                              (select
                                (local.tee 3
                                  (i32.sub
                                    (local.get 9)
                                    (local.get 3)))
                                (i32.const 0)
                                (i32.gt_s
                                  (local.get 3)
                                  (i32.const 0))))
                            (i32.lt_s
                              (local.get 8)
                              (local.get 3))))
                        (else
                          (select
                            (local.get 8)
                            (local.tee 3
                              (select
                                (local.tee 3
                                  (i32.sub
                                    (i32.add
                                      (local.get 9)
                                      (local.get 10))
                                    (local.get 3)))
                                (i32.const 0)
                                (i32.gt_s
                                  (local.get 3)
                                  (i32.const 0))))
                            (i32.lt_s
                              (local.get 8)
                              (local.get 3))))))))
                (else
                  (local.get 12))))
            (local.set 9
              (i32.sub
                (i32.const 0)
                (local.get 10)))
            (local.set 5
              (if (result i32)  ;; label = @60
                (local.tee 12
                  (i32.eq
                    (i32.or
                      (local.get 5)
                      (i32.const 32))
                    (i32.const 102)))
                (then
                  (local.set 8
                    (i32.const 0))
                  (select
                    (local.get 10)
                    (i32.const 0)
                    (i32.gt_s
                      (local.get 10)
                      (i32.const 0))))
                (else
                  (if  ;; label = @61
                    (i32.lt_s
                      (i32.sub
                        (local.get 15)
                        (local.tee 9
                          (call $_fmt_u
                            (i64.extend_i32_s
                              (select
                                (local.get 9)
                                (local.get 10)
                                (i32.lt_s
                                  (local.get 10)
                                  (i32.const 0))))
                            (local.get 15))))
                      (i32.const 2))
                    (then
                      (loop  ;; label = @62
                        (i32.store8
                          (local.tee 9
                            (i32.add
                              (local.get 9)
                              (i32.const -1)))
                          (i32.const 48))
                        (br_if 0 (;@62;)
                          (i32.lt_s
                            (i32.sub
                              (local.get 15)
                              (local.get 9))
                            (i32.const 2))))))
                  (i32.store8
                    (i32.add
                      (local.get 9)
                      (i32.const -1))
                    (i32.add
                      (i32.and
                        (i32.shr_s
                          (local.get 10)
                          (i32.const 31))
                        (i32.const 2))
                      (i32.const 43)))
                  (i32.store8
                    (local.tee 8
                      (i32.add
                        (local.get 9)
                        (i32.const -2)))
                    (local.get 5))
                  (i32.sub
                    (local.get 15)
                    (local.get 8)))))
            (call $_pad
              (local.get 0)
              (i32.const 32)
              (local.get 2)
              (local.tee 10
                (i32.add
                  (i32.add
                    (i32.add
                      (local.get 3)
                      (i32.add
                        (local.get 19)
                        (i32.const 1)))
                    (select
                      (i32.const 1)
                      (i32.and
                        (i32.shr_u
                          (local.get 4)
                          (i32.const 3))
                        (i32.const 1))
                      (local.tee 16
                        (i32.ne
                          (local.get 3)
                          (i32.const 0)))))
                  (local.get 5)))
              (local.get 4))
            (call $_out
              (local.get 0)
              (local.get 18)
              (local.get 19))
            (call $_pad
              (local.get 0)
              (i32.const 48)
              (local.get 2)
              (local.get 10)
              (i32.xor
                (local.get 4)
                (i32.const 65536)))
            (if  ;; label = @63
              (local.get 12)
              (then
                (local.set 8
                  (local.tee 9
                    (i32.add
                      (local.get 13)
                      (i32.const 9))))
                (local.set 15
                  (i32.add
                    (local.get 13)
                    (i32.const 8)))
                (local.set 7
                  (local.tee 12
                    (select
                      (local.get 11)
                      (local.get 7)
                      (i32.gt_u
                        (local.get 7)
                        (local.get 11)))))
                (loop  ;; label = @64
                  (local.set 5
                    (call $_fmt_u
                      (i64.extend_i32_u
                        (i32.load
                          (local.get 7)))
                      (local.get 9)))
                  (if  ;; label = @65
                    (i32.eq
                      (local.get 7)
                      (local.get 12))
                    (then
                      (if  ;; label = @66
                        (i32.eq
                          (local.get 5)
                          (local.get 9))
                        (then
                          (i32.store8
                            (local.get 15)
                            (i32.const 48))
                          (local.set 5
                            (local.get 15)))))
                    (else
                      (if  ;; label = @67
                        (i32.gt_u
                          (local.get 5)
                          (local.get 13))
                        (then
                          (drop
                            (call $_memset
                              (local.get 13)
                              (i32.const 48)
                              (i32.sub
                                (local.get 5)
                                (local.get 17))))
                          (loop  ;; label = @68
                            (br_if 0 (;@68;)
                              (i32.gt_u
                                (local.tee 5
                                  (i32.add
                                    (local.get 5)
                                    (i32.const -1)))
                                (local.get 13))))))))
                  (call $_out
                    (local.get 0)
                    (local.get 5)
                    (i32.sub
                      (local.get 8)
                      (local.get 5)))
                  (if  ;; label = @69
                    (i32.le_u
                      (local.tee 5
                        (i32.add
                          (local.get 7)
                          (i32.const 4)))
                      (local.get 11))
                    (then
                      (local.set 7
                        (local.get 5))
                      (br 1 (;@68;)))))
                (if  ;; label = @70
                  (i32.eqz
                    (i32.and
                      (i32.eqz
                        (i32.and
                          (local.get 4)
                          (i32.const 8)))
                      (i32.xor
                        (local.get 16)
                        (i32.const 1))))
                  (then
                    (call $_out
                      (local.get 0)
                      (i32.const 1942)
                      (i32.const 1))))
                (if  ;; label = @71
                  (i32.and
                    (i32.lt_u
                      (local.get 5)
                      (local.get 6))
                    (i32.gt_s
                      (local.get 3)
                      (i32.const 0)))
                  (then
                    (local.set 3
                      (loop (result i32)  ;; label = @72
                        (if  ;; label = @73
                          (i32.gt_u
                            (local.tee 7
                              (call $_fmt_u
                                (i64.extend_i32_u
                                  (i32.load
                                    (local.get 5)))
                                (local.get 9)))
                            (local.get 13))
                          (then
                            (drop
                              (call $_memset
                                (local.get 13)
                                (i32.const 48)
                                (i32.sub
                                  (local.get 7)
                                  (local.get 17))))
                            (loop  ;; label = @74
                              (br_if 0 (;@74;)
                                (i32.gt_u
                                  (local.tee 7
                                    (i32.add
                                      (local.get 7)
                                      (i32.const -1)))
                                  (local.get 13))))))
                        (call $_out
                          (local.get 0)
                          (local.get 7)
                          (select
                            (local.get 3)
                            (i32.const 9)
                            (i32.lt_s
                              (local.get 3)
                              (i32.const 9))))
                        (local.set 7
                          (i32.add
                            (local.get 3)
                            (i32.const -9)))
                        (if (result i32)  ;; label = @75
                          (i32.and
                            (i32.lt_u
                              (local.tee 5
                                (i32.add
                                  (local.get 5)
                                  (i32.const 4)))
                              (local.get 6))
                            (i32.gt_s
                              (local.get 3)
                              (i32.const 9)))
                          (then
                            (local.set 3
                              (local.get 7))
                            (br 1 (;@74;)))
                          (else
                            (local.get 7)))))))
                (call $_pad
                  (local.get 0)
                  (i32.const 48)
                  (i32.add
                    (local.get 3)
                    (i32.const 9))
                  (i32.const 9)
                  (i32.const 0)))
              (else
                (if  ;; label = @76
                  (i32.and
                    (i32.lt_u
                      (local.get 7)
                      (local.tee 19
                        (select
                          (local.get 6)
                          (i32.add
                            (local.get 7)
                            (i32.const 4))
                          (local.get 14))))
                    (i32.gt_s
                      (local.get 3)
                      (i32.const -1)))
                  (then
                    (local.set 18
                      (i32.eqz
                        (i32.and
                          (local.get 4)
                          (i32.const 8))))
                    (local.set 14
                      (local.tee 11
                        (i32.add
                          (local.get 13)
                          (i32.const 9))))
                    (local.set 17
                      (i32.sub
                        (i32.const 0)
                        (local.get 17)))
                    (local.set 12
                      (i32.add
                        (local.get 13)
                        (i32.const 8)))
                    (local.set 5
                      (local.get 3))
                    (local.set 6
                      (local.get 7))
                    (local.set 3
                      (loop (result i32)  ;; label = @77
                        (if  ;; label = @78
                          (i32.eq
                            (local.get 11)
                            (local.tee 3
                              (call $_fmt_u
                                (i64.extend_i32_u
                                  (i32.load
                                    (local.get 6)))
                                (local.get 11))))
                          (then
                            (i32.store8
                              (local.get 12)
                              (i32.const 48))
                            (local.set 3
                              (local.get 12))))
                        (block  ;; label = @79
                          (if  ;; label = @80
                            (i32.eq
                              (local.get 6)
                              (local.get 7))
                            (then
                              (local.set 9
                                (i32.add
                                  (local.get 3)
                                  (i32.const 1)))
                              (call $_out
                                (local.get 0)
                                (local.get 3)
                                (i32.const 1))
                              (if  ;; label = @81
                                (i32.and
                                  (local.get 18)
                                  (i32.lt_s
                                    (local.get 5)
                                    (i32.const 1)))
                                (then
                                  (local.set 3
                                    (local.get 9))
                                  (br 2 (;@79;))))
                              (call $_out
                                (local.get 0)
                                (i32.const 1942)
                                (i32.const 1))
                              (local.set 3
                                (local.get 9)))
                            (else
                              (br_if 1 (;@80;)
                                (i32.le_u
                                  (local.get 3)
                                  (local.get 13)))
                              (drop
                                (call $_memset
                                  (local.get 13)
                                  (i32.const 48)
                                  (i32.add
                                    (local.get 3)
                                    (local.get 17))))
                              (loop  ;; label = @82
                                (br_if 0 (;@82;)
                                  (i32.gt_u
                                    (local.tee 3
                                      (i32.add
                                        (local.get 3)
                                        (i32.const -1)))
                                    (local.get 13)))))))
                        (call $_out
                          (local.get 0)
                          (local.get 3)
                          (select
                            (local.tee 3
                              (i32.sub
                                (local.get 14)
                                (local.get 3)))
                            (local.get 5)
                            (i32.gt_s
                              (local.get 5)
                              (local.get 3))))
                        (br_if 0 (;@82;)
                          (i32.and
                            (i32.lt_u
                              (local.tee 6
                                (i32.add
                                  (local.get 6)
                                  (i32.const 4)))
                              (local.get 19))
                            (i32.gt_s
                              (local.tee 5
                                (i32.sub
                                  (local.get 5)
                                  (local.get 3)))
                              (i32.const -1))))
                        (local.get 5)))))
                (call $_pad
                  (local.get 0)
                  (i32.const 48)
                  (i32.add
                    (local.get 3)
                    (i32.const 18))
                  (i32.const 18)
                  (i32.const 0))
                (call $_out
                  (local.get 0)
                  (local.get 8)
                  (i32.sub
                    (local.get 15)
                    (local.get 8)))))
            (call $_pad
              (local.get 0)
              (i32.const 32)
              (local.get 2)
              (local.get 10)
              (i32.xor
                (local.get 4)
                (i32.const 8192)))
            (local.get 10)))))
    (global.set 3
      (local.get 20))
    (select
      (local.get 2)
      (local.get 0)
      (i32.lt_s
        (local.get 0)
        (local.get 2))))
  (func $___DOUBLE_BITS_270 (type 15) (param f64) (result i64)
    (i64.reinterpret_f64
      (local.get 0)))
  (func $_wcrtomb (type 3) (param i32 i32) (result i32)
    (if (result i32)  ;; label = @1
      (local.get 0)
      (then
        (block (result i32)  ;; label = @2
          (if  ;; label = @3
            (i32.lt_u
              (local.get 1)
              (i32.const 128))
            (then
              (i32.store8
                (local.get 0)
                (local.get 1))
              (br 1 (;@2;)
                (i32.const 1))))
          (if  ;; label = @4
            (i32.eqz
              (i32.load
                (i32.load offset=188
                  (call $___pthread_self_414))))
            (then
              (if  ;; label = @5
                (i32.eq
                  (i32.and
                    (local.get 1)
                    (i32.const -128))
                  (i32.const 57216))
                (then
                  (i32.store8
                    (local.get 0)
                    (local.get 1))
                  (i32.const 1)
                  (br 2 (;@3;)))
                (else
                  (i32.store
                    (call $___errno_location)
                    (i32.const 84))
                  (i32.const -1)
                  (br 2 (;@3;))))
              (unreachable)))
          (if  ;; label = @6
            (i32.lt_u
              (local.get 1)
              (i32.const 2048))
            (then
              (i32.store8
                (local.get 0)
                (i32.or
                  (i32.shr_u
                    (local.get 1)
                    (i32.const 6))
                  (i32.const 192)))
              (i32.store8 offset=1
                (local.get 0)
                (i32.or
                  (i32.and
                    (local.get 1)
                    (i32.const 63))
                  (i32.const 128)))
              (i32.const 2)
              (br 1 (;@5;))))
          (if  ;; label = @7
            (i32.or
              (i32.eq
                (i32.and
                  (local.get 1)
                  (i32.const -8192))
                (i32.const 57344))
              (i32.lt_u
                (local.get 1)
                (i32.const 55296)))
            (then
              (i32.store8
                (local.get 0)
                (i32.or
                  (i32.shr_u
                    (local.get 1)
                    (i32.const 12))
                  (i32.const 224)))
              (i32.store8 offset=1
                (local.get 0)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (local.get 1)
                      (i32.const 6))
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=2
                (local.get 0)
                (i32.or
                  (i32.and
                    (local.get 1)
                    (i32.const 63))
                  (i32.const 128)))
              (i32.const 3)
              (br 1 (;@6;))))
          (if (result i32)  ;; label = @8
            (i32.lt_u
              (i32.add
                (local.get 1)
                (i32.const -65536))
              (i32.const 1048576))
            (then
              (i32.store8
                (local.get 0)
                (i32.or
                  (i32.shr_u
                    (local.get 1)
                    (i32.const 18))
                  (i32.const 240)))
              (i32.store8 offset=1
                (local.get 0)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (local.get 1)
                      (i32.const 12))
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=2
                (local.get 0)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (local.get 1)
                      (i32.const 6))
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=3
                (local.get 0)
                (i32.or
                  (i32.and
                    (local.get 1)
                    (i32.const 63))
                  (i32.const 128)))
              (i32.const 4))
            (else
              (i32.store
                (call $___errno_location)
                (i32.const 84))
              (i32.const -1)))))
      (else
        (i32.const 1))))
  (func $___pthread_self_414 (type 5) (result i32)
    (call $_pthread_self))
  (func $_pthread_self (type 5) (result i32)
    (i32.const 1632))
  (func $___fwritex (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (local.tee 3
            (i32.load
              (local.tee 4
                (i32.add
                  (local.get 2)
                  (i32.const 16))))))
        (local.set 2
          (if (result i32)  ;; label = @3
            (call $___towrite
              (local.get 2))
            (then
              (i32.const 0))
            (else
              (local.set 3
                (i32.load
                  (local.get 4)))
              (br 1 (;@2;)))))
        (br 1 (;@2;)))
      (if  ;; label = @4
        (i32.lt_u
          (i32.sub
            (local.get 3)
            (local.tee 4
              (i32.load
                (local.tee 5
                  (i32.add
                    (local.get 2)
                    (i32.const 20))))))
          (local.get 1))
        (then
          (local.set 3
            (i32.load offset=36
              (local.get 2)))
          (local.set 2
            (call_indirect (type 0)
              (local.get 2)
              (local.get 0)
              (local.get 1)
              (i32.add
                (i32.and
                  (local.get 3)
                  (i32.const 3))
                (i32.const 2))))
          (br 1 (;@3;))))
      (if  ;; label = @5
        (i32.or
          (i32.eqz
            (local.get 1))
          (i32.lt_s
            (i32.load8_s offset=75
              (local.get 2))
            (i32.const 0)))
        (then
          (local.set 3
            (i32.const 0)))
        (else
          (block  ;; label = @6
            (local.set 3
              (local.get 1))
            (loop  ;; label = @7
              (if  ;; label = @8
                (i32.ne
                  (i32.load8_s
                    (i32.add
                      (local.get 0)
                      (local.tee 6
                        (i32.add
                          (local.get 3)
                          (i32.const -1)))))
                  (i32.const 10))
                (then
                  (if  ;; label = @9
                    (local.get 6)
                    (then
                      (local.set 3
                        (local.get 6))
                      (br 2 (;@7;)))
                    (else
                      (local.set 3
                        (i32.const 0))
                      (br 3 (;@6;))))
                  (unreachable))))
            (local.set 4
              (i32.load offset=36
                (local.get 2)))
            (br_if 2 (;@7;)
              (i32.lt_u
                (local.tee 2
                  (call_indirect (type 0)
                    (local.get 2)
                    (local.get 0)
                    (local.get 3)
                    (i32.add
                      (i32.and
                        (local.get 4)
                        (i32.const 3))
                      (i32.const 2))))
                (local.get 3)))
            (local.set 0
              (i32.add
                (local.get 0)
                (local.get 3)))
            (local.set 1
              (i32.sub
                (local.get 1)
                (local.get 3)))
            (local.set 4
              (i32.load
                (local.get 5))))))
      (drop
        (call $_memcpy
          (local.get 4)
          (local.get 0)
          (local.get 1)))
      (i32.store
        (local.get 5)
        (i32.add
          (local.get 1)
          (i32.load
            (local.get 5))))
      (local.set 2
        (i32.add
          (local.get 1)
          (local.get 3))))
    (local.get 2))
  (func $___towrite (type 1) (param i32) (result i32)
    (local i32 i32)
    (local.set 1
      (i32.load8_s
        (local.tee 2
          (i32.add
            (local.get 0)
            (i32.const 74)))))
    (i32.store8
      (local.get 2)
      (i32.or
        (local.get 1)
        (i32.add
          (local.get 1)
          (i32.const 255))))
    (if (result i32)  ;; label = @1
      (i32.and
        (local.tee 1
          (i32.load
            (local.get 0)))
        (i32.const 8))
      (then
        (i32.store
          (local.get 0)
          (i32.or
            (local.get 1)
            (i32.const 32)))
        (i32.const -1))
      (else
        (i32.store offset=8
          (local.get 0)
          (i32.const 0))
        (i32.store offset=4
          (local.get 0)
          (i32.const 0))
        (i32.store offset=28
          (local.get 0)
          (local.tee 1
            (i32.load offset=44
              (local.get 0))))
        (i32.store offset=20
          (local.get 0)
          (local.get 1))
        (i32.store offset=16
          (local.get 0)
          (i32.add
            (local.get 1)
            (i32.load offset=48
              (local.get 0))))
        (i32.const 0))))
  (func $_printf (type 1) (param i32) (result i32)
    (local i32)
    (local.set 1
      (global.get 3))
    (global.set 3
      (i32.add
        (global.get 3)
        (i32.const 16)))
    (i32.store
      (local.get 1)
      (local.get 0))
    (local.set 0
      (call $_vfprintf
        (i32.load
          (i32.const 1504))
        (i32.const 1876)
        (local.get 1)))
    (global.set 3
      (local.get 1))
    (local.get 0))
  (func $_memcpy (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    (if  ;; label = @1
      (i32.ge_s
        (local.get 2)
        (i32.const 8192))
      (then
        (drop
          (call $_emscripten_memcpy_big
            (local.get 0)
            (local.get 1)
            (local.get 2)))
        (return
          (local.get 0))))
    (local.set 4
      (local.get 0))
    (local.set 3
      (i32.add
        (local.get 0)
        (local.get 2)))
    (if  ;; label = @2
      (i32.eq
        (i32.and
          (local.get 0)
          (i32.const 3))
        (i32.and
          (local.get 1)
          (i32.const 3)))
      (then
        (loop  ;; label = @3
          (if  ;; label = @4
            (i32.and
              (local.get 0)
              (i32.const 3))
            (then
              (if  ;; label = @5
                (i32.eqz
                  (local.get 2))
                (then
                  (return
                    (local.get 4))))
              (i32.store8
                (local.get 0)
                (i32.load8_s
                  (local.get 1)))
              (local.set 0
                (i32.add
                  (local.get 0)
                  (i32.const 1)))
              (local.set 1
                (i32.add
                  (local.get 1)
                  (i32.const 1)))
              (local.set 2
                (i32.sub
                  (local.get 2)
                  (i32.const 1)))
              (br 1 (;@4;)))))
        (local.set 5
          (i32.add
            (local.tee 2
              (i32.and
                (local.get 3)
                (i32.const -4)))
            (i32.const -64)))
        (loop  ;; label = @6
          (if  ;; label = @7
            (i32.le_s
              (local.get 0)
              (local.get 5))
            (then
              (i32.store
                (local.get 0)
                (i32.load
                  (local.get 1)))
              (i32.store offset=4
                (local.get 0)
                (i32.load offset=4
                  (local.get 1)))
              (i32.store offset=8
                (local.get 0)
                (i32.load offset=8
                  (local.get 1)))
              (i32.store offset=12
                (local.get 0)
                (i32.load offset=12
                  (local.get 1)))
              (i32.store offset=16
                (local.get 0)
                (i32.load offset=16
                  (local.get 1)))
              (i32.store offset=20
                (local.get 0)
                (i32.load offset=20
                  (local.get 1)))
              (i32.store offset=24
                (local.get 0)
                (i32.load offset=24
                  (local.get 1)))
              (i32.store offset=28
                (local.get 0)
                (i32.load offset=28
                  (local.get 1)))
              (i32.store offset=32
                (local.get 0)
                (i32.load offset=32
                  (local.get 1)))
              (i32.store offset=36
                (local.get 0)
                (i32.load offset=36
                  (local.get 1)))
              (i32.store offset=40
                (local.get 0)
                (i32.load offset=40
                  (local.get 1)))
              (i32.store offset=44
                (local.get 0)
                (i32.load offset=44
                  (local.get 1)))
              (i32.store offset=48
                (local.get 0)
                (i32.load offset=48
                  (local.get 1)))
              (i32.store offset=52
                (local.get 0)
                (i32.load offset=52
                  (local.get 1)))
              (i32.store offset=56
                (local.get 0)
                (i32.load offset=56
                  (local.get 1)))
              (i32.store offset=60
                (local.get 0)
                (i32.load offset=60
                  (local.get 1)))
              (local.set 0
                (i32.sub
                  (local.get 0)
                  (i32.const -64)))
              (local.set 1
                (i32.sub
                  (local.get 1)
                  (i32.const -64)))
              (br 1 (;@6;)))))
        (loop  ;; label = @8
          (if  ;; label = @9
            (i32.lt_s
              (local.get 0)
              (local.get 2))
            (then
              (i32.store
                (local.get 0)
                (i32.load
                  (local.get 1)))
              (local.set 0
                (i32.add
                  (local.get 0)
                  (i32.const 4)))
              (local.set 1
                (i32.add
                  (local.get 1)
                  (i32.const 4)))
              (br 1 (;@8;))))))
      (else
        (local.set 2
          (i32.sub
            (local.get 3)
            (i32.const 4)))
        (loop  ;; label = @10
          (if  ;; label = @11
            (i32.lt_s
              (local.get 0)
              (local.get 2))
            (then
              (i32.store8
                (local.get 0)
                (i32.load8_s
                  (local.get 1)))
              (i32.store8 offset=1
                (local.get 0)
                (i32.load8_s offset=1
                  (local.get 1)))
              (i32.store8 offset=2
                (local.get 0)
                (i32.load8_s offset=2
                  (local.get 1)))
              (i32.store8 offset=3
                (local.get 0)
                (i32.load8_s offset=3
                  (local.get 1)))
              (local.set 0
                (i32.add
                  (local.get 0)
                  (i32.const 4)))
              (local.set 1
                (i32.add
                  (local.get 1)
                  (i32.const 4)))
              (br 1 (;@10;)))))))
    (loop  ;; label = @12
      (if  ;; label = @13
        (i32.lt_s
          (local.get 0)
          (local.get 3))
        (then
          (i32.store8
            (local.get 0)
            (i32.load8_s
              (local.get 1)))
          (local.set 0
            (i32.add
              (local.get 0)
              (i32.const 1)))
          (local.set 1
            (i32.add
              (local.get 1)
              (i32.const 1)))
          (br 1 (;@12;)))))
    (local.get 4))
  (func $_memset (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    (local.set 4
      (i32.add
        (local.get 0)
        (local.get 2)))
    (local.set 1
      (i32.and
        (local.get 1)
        (i32.const 255)))
    (if  ;; label = @1
      (i32.ge_s
        (local.get 2)
        (i32.const 67))
      (then
        (loop  ;; label = @2
          (if  ;; label = @3
            (i32.and
              (local.get 0)
              (i32.const 3))
            (then
              (i32.store8
                (local.get 0)
                (local.get 1))
              (local.set 0
                (i32.add
                  (local.get 0)
                  (i32.const 1)))
              (br 1 (;@2;)))))
        (local.set 3
          (i32.or
            (i32.or
              (i32.or
                (i32.shl
                  (local.get 1)
                  (i32.const 8))
                (local.get 1))
              (i32.shl
                (local.get 1)
                (i32.const 16)))
            (i32.shl
              (local.get 1)
              (i32.const 24))))
        (local.set 6
          (i32.add
            (local.tee 5
              (i32.and
                (local.get 4)
                (i32.const -4)))
            (i32.const -64)))
        (loop  ;; label = @4
          (if  ;; label = @5
            (i32.le_s
              (local.get 0)
              (local.get 6))
            (then
              (i32.store
                (local.get 0)
                (local.get 3))
              (i32.store offset=4
                (local.get 0)
                (local.get 3))
              (i32.store offset=8
                (local.get 0)
                (local.get 3))
              (i32.store offset=12
                (local.get 0)
                (local.get 3))
              (i32.store offset=16
                (local.get 0)
                (local.get 3))
              (i32.store offset=20
                (local.get 0)
                (local.get 3))
              (i32.store offset=24
                (local.get 0)
                (local.get 3))
              (i32.store offset=28
                (local.get 0)
                (local.get 3))
              (i32.store offset=32
                (local.get 0)
                (local.get 3))
              (i32.store offset=36
                (local.get 0)
                (local.get 3))
              (i32.store offset=40
                (local.get 0)
                (local.get 3))
              (i32.store offset=44
                (local.get 0)
                (local.get 3))
              (i32.store offset=48
                (local.get 0)
                (local.get 3))
              (i32.store offset=52
                (local.get 0)
                (local.get 3))
              (i32.store offset=56
                (local.get 0)
                (local.get 3))
              (i32.store offset=60
                (local.get 0)
                (local.get 3))
              (local.set 0
                (i32.sub
                  (local.get 0)
                  (i32.const -64)))
              (br 1 (;@4;)))))
        (loop  ;; label = @6
          (if  ;; label = @7
            (i32.lt_s
              (local.get 0)
              (local.get 5))
            (then
              (i32.store
                (local.get 0)
                (local.get 3))
              (local.set 0
                (i32.add
                  (local.get 0)
                  (i32.const 4)))
              (br 1 (;@6;)))))))
    (loop  ;; label = @8
      (if  ;; label = @9
        (i32.lt_s
          (local.get 0)
          (local.get 4))
        (then
          (i32.store8
            (local.get 0)
            (local.get 1))
          (local.set 0
            (i32.add
              (local.get 0)
              (i32.const 1)))
          (br 1 (;@8;)))))
    (i32.sub
      (local.get 4)
      (local.get 2)))
  (func $_sbrk (type 1) (param i32) (result i32)
    (local i32 i32)
    (if  ;; label = @1
      (i32.or
        (i32.and
          (i32.lt_s
            (local.tee 1
              (i32.add
                (local.get 0)
                (local.tee 2
                  (i32.load
                    (global.get 2)))))
            (local.get 2))
          (i32.gt_s
            (local.get 0)
            (i32.const 0)))
        (i32.lt_s
          (local.get 1)
          (i32.const 0)))
      (then
        (drop
          (call $abortOnCannotGrowMemory
            (local.get 1)))
        (call $___setErrNo
          (i32.const 12))
        (return
          (i32.const -1))))
    (if  ;; label = @2
      (i32.le_s
        (local.get 1)
        (call $_emscripten_get_heap_size))
      (then
        (i32.store
          (global.get 2)
          (local.get 1)))
      (else
        (if  ;; label = @3
          (i32.eqz
            (call $_emscripten_resize_heap
              (local.get 1)))
          (then
            (call $___setErrNo
              (i32.const 12))
            (return
              (i32.const -1))))))
    (local.get 2))
  (func $dynCall_ii (type 3) (param i32 i32) (result i32)
    (call_indirect (type 1)
      (local.get 1)
      (i32.and
        (local.get 0)
        (i32.const 1))))
  (func $dynCall_iiii (type 16) (param i32 i32 i32 i32) (result i32)
    (call_indirect (type 0)
      (local.get 1)
      (local.get 2)
      (local.get 3)
      (i32.add
        (i32.and
          (local.get 0)
          (i32.const 3))
        (i32.const 2))))
  (func $b0 (type 1) (param i32) (result i32)
    (call $abort
      (i32.const 0))
    (i32.const 0))
  (func $b1 (type 0) (param i32 i32 i32) (result i32)
    (call $abort
      (i32.const 1))
    (i32.const 0))
  (global (;2;) (mut i32) (global.get 1))
  (global (;3;) (mut i32) (i32.const 4848))
  (global (;4;) (mut i32) (i32.const 5247728))
  (export "___errno_location" (func $___errno_location))
  (export "_free" (func $_free))
  (export "_main" (func $_main))
  (export "_malloc" (func $_malloc))
  (export "_memcpy" (func $_memcpy))
  (export "_memset" (func $_memset))
  (export "_sbrk" (func $_sbrk))
  (export "dynCall_ii" (func $dynCall_ii))
  (export "dynCall_iiii" (func $dynCall_iiii))
  (export "establishStackSpace" (func $establishStackSpace))
  (export "stackAlloc" (func $stackAlloc))
  (export "stackRestore" (func $stackRestore))
  (export "stackSave" (func $stackSave))
  (elem (;0;) (global.get 0) $b0 $___stdio_close $b1 $___stdout_write $___stdio_seek $___stdio_write)
  (data (;0;) (i32.const 1024) "\11\00\0a\00\11\11\11\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b")
  (data (;1;) (i32.const 1056) "\11\00\0f\0a\11\11\11\03\0a\07\00\01\13\09\0b\0b\00\00\09\06\0b\00\00\0b\00\06\11\00\00\00\11\11\11")
  (data (;2;) (i32.const 1105) "\0b")
  (data (;3;) (i32.const 1114) "\11\00\0a\0a\11\11\11\00\0a\00\00\02\00\09\0b\00\00\00\09\00\0b\00\00\0b")
  (data (;4;) (i32.const 1163) "\0c")
  (data (;5;) (i32.const 1175) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data (;6;) (i32.const 1221) "\0e")
  (data (;7;) (i32.const 1233) "\0d\00\00\00\04\0d\00\00\00\00\09\0e\00\00\00\00\00\0e\00\00\0e")
  (data (;8;) (i32.const 1279) "\10")
  (data (;9;) (i32.const 1291) "\0f\00\00\00\00\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\12\00\00\00\12\12\12")
  (data (;10;) (i32.const 1346) "\12\00\00\00\12\12\12\00\00\00\00\00\00\09")
  (data (;11;) (i32.const 1395) "\0b")
  (data (;12;) (i32.const 1407) "\0a\00\00\00\00\0a\00\00\00\00\09\0b\00\00\00\00\00\0b\00\00\0b")
  (data (;13;) (i32.const 1453) "\0c")
  (data (;14;) (i32.const 1465) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\000123456789ABCDEF\e4\05\00\00\05")
  (data (;15;) (i32.const 1520) "\01")
  (data (;16;) (i32.const 1544) "\01\00\00\00\02\00\00\00\a8\07\00\00\00\04")
  (data (;17;) (i32.const 1568) "\01")
  (data (;18;) (i32.const 1583) "\0a\ff\ff\ff\ff")
  (data (;19;) (i32.const 1820) "\cc\0d")
  (data (;20;) (i32.const 1876) "%s: sum = %f\0a\00-+   0X0x\00(null)\00-0X+0X 0X-0x+0x 0x\00inf\00INF\00nan\00NAN\00."))
