(module
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$iidiiii (func (param i32 f64 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$jiji (func (param i32 i64 i32) (result i64)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "memory" (memory $memory 256 256))
 (data (i32.const 1024) "\11\00\n\00\11\11\11\00\00\00\00\05\00\00\00\00\00\00\t\00\00\00\00\0b")
 (data (i32.const 1056) "\11\00\0f\n\11\11\11\03\n\07\00\01\13\t\0b\0b\00\00\t\06\0b\00\00\0b\00\06\11\00\00\00\11\11\11")
 (data (i32.const 1105) "\0b")
 (data (i32.const 1114) "\11\00\n\n\11\11\11\00\n\00\00\02\00\t\0b\00\00\00\t\00\0b\00\00\0b")
 (data (i32.const 1163) "\0c")
 (data (i32.const 1175) "\0c\00\00\00\00\0c\00\00\00\00\t\0c\00\00\00\00\00\0c\00\00\0c")
 (data (i32.const 1221) "\0e")
 (data (i32.const 1233) "\0d\00\00\00\04\0d\00\00\00\00\t\0e\00\00\00\00\00\0e\00\00\0e")
 (data (i32.const 1279) "\10")
 (data (i32.const 1291) "\0f\00\00\00\00\0f\00\00\00\00\t\10\00\00\00\00\00\10\00\00\10\00\00\12\00\00\00\12\12\12")
 (data (i32.const 1346) "\12\00\00\00\12\12\12\00\00\00\00\00\00\t")
 (data (i32.const 1395) "\0b")
 (data (i32.const 1407) "\n\00\00\00\00\n\00\00\00\00\t\0b\00\00\00\00\00\0b\00\00\0b")
 (data (i32.const 1453) "\0c")
 (data (i32.const 1465) "\0c\00\00\00\00\0c\00\00\00\00\t\0c\00\00\00\00\00\0c\00\00\0c\00\000123456789ABCDEF\05")
 (data (i32.const 1516) "\01")
 (data (i32.const 1540) "\01\00\00\00\01\00\00\00\b8\07\00\00\00\04")
 (data (i32.const 1564) "\01")
 (data (i32.const 1579) "\n\ff\ff\ff\ff")
 (data (i32.const 1648) "\e0\05")
 (data (i32.const 1840) "\e8\0b")
 (data (i32.const 1896) "%s: sum = %f\n\00-+   0X0x\00(null)\00-0X+0X 0X-0x+0x 0x\00inf\00INF\00nan\00NAN\00.")
 (import "env" "table" (table $table 12 12 funcref))
 (elem (global.get $__table_base) $b0 $___stdio_close $b1 $_fmt_fp $b2 $___stdout_write $___stdio_write $b2 $b3 $___stdio_seek $b4 $_pop_arg_long_double)
 (import "env" "__table_base" (global $__table_base i32))
 (import "env" "DYNAMICTOP_PTR" (global $DYNAMICTOP_PTR$asm2wasm$import i32))
 (import "env" "abort" (func $abort (param i32)))
 (import "env" "___setErrNo" (func $___setErrNo (param i32)))
 (import "env" "___syscall140" (func $___syscall140 (param i32 i32) (result i32)))
 (import "env" "___syscall146" (func $___syscall146 (param i32 i32) (result i32)))
 (import "env" "___syscall54" (func $___syscall54 (param i32 i32) (result i32)))
 (import "env" "___syscall6" (func $___syscall6 (param i32 i32) (result i32)))
 (import "env" "_abort" (func $_abort))
 (import "env" "_emscripten_get_heap_size" (func $_emscripten_get_heap_size (result i32)))
 (import "env" "_emscripten_memcpy_big" (func $_emscripten_memcpy_big (param i32 i32 i32) (result i32)))
 (import "env" "_emscripten_resize_heap" (func $_emscripten_resize_heap (param i32) (result i32)))
 (import "env" "abortOnCannotGrowMemory" (func $abortOnCannotGrowMemory (param i32) (result i32)))
 (import "env" "setTempRet0" (func $setTempRet0 (param i32)))
 (global $STACKTOP (mut i32) (i32.const 4816))
 (global $STACK_MAX (mut i32) (i32.const 5247696))
 (export "___errno_location" (func $___errno_location))
 (export "_free" (func $_free))
 (export "_main" (func $_main))
 (export "_malloc" (func $_malloc))
 (export "_memcpy" (func $_memcpy))
 (export "_memset" (func $_memset))
 (export "_sbrk" (func $_sbrk))
 (export "dynCall_ii" (func $dynCall_ii))
 (export "dynCall_iidiiii" (func $dynCall_iidiiii))
 (export "dynCall_iiii" (func $dynCall_iiii))
 (export "dynCall_jiji" (func $legalstub$dynCall_jiji))
 (export "dynCall_vii" (func $dynCall_vii))
 (export "establishStackSpace" (func $establishStackSpace))
 (export "stackAlloc" (func $stackAlloc))
 (export "stackRestore" (func $stackRestore))
 (export "stackSave" (func $stackSave))
 (func $stackAlloc (; 12 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (local.get $0)
    (global.get $STACKTOP)
   )
  )
  (global.set $STACKTOP
   (i32.and
    (i32.add
     (global.get $STACKTOP)
     (i32.const 15)
    )
    (i32.const -16)
   )
  )
  (local.get $1)
 )
 (func $stackSave (; 13 ;) (; has Stack IR ;) (result i32)
  (global.get $STACKTOP)
 )
 (func $stackRestore (; 14 ;) (; has Stack IR ;) (param $0 i32)
  (global.set $STACKTOP
   (local.get $0)
  )
 )
 (func $establishStackSpace (; 15 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (global.set $STACKTOP
   (local.get $0)
  )
  (global.set $STACK_MAX
   (local.get $1)
  )
 )
 (func $__Z7sumfuncPfS_S_i (; 16 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (local $3 i32)
  (loop $while-in
   ;;@ sum.cpp:25:0
   (f32.store
    (i32.add
     (i32.shl
      (local.get $3)
      (i32.const 2)
     )
     (local.get $2)
    )
    (f32.add
     (f32.load
      (i32.add
       (i32.shl
        (local.get $3)
        (i32.const 2)
       )
       (local.get $0)
      )
     )
     (f32.load
      (i32.add
       (i32.shl
        (local.get $3)
        (i32.const 2)
       )
       (local.get $1)
      )
     )
    )
   )
   ;;@ sum.cpp:23:0
   (br_if $while-in
    (i32.ne
     (local.tee $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (i32.const 1000)
    )
   )
  )
  ;;@ sum.cpp:27:0
  (f32.const 1)
 )
 (func $_main (; 17 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 f64)
  (local.set $2
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 12016)
   )
  )
  (local.set $3
   (i32.add
    (local.get $2)
    (i32.const 12000)
   )
  )
  (local.set $6
   (i32.add
    (local.get $2)
    (i32.const 8000)
   )
  )
  (local.set $7
   (i32.add
    (local.get $2)
    (i32.const 4000)
   )
  )
  (local.set $8
   (local.get $2)
  )
  (local.set $0
   (i32.const 0)
  )
  (loop $while-in
   ;;@ main.cpp:10:0
   (local.set $4
    (i32.add
     (i32.shl
      (local.get $0)
      (i32.const 2)
     )
     (local.get $6)
    )
   )
   (f32.store
    (local.get $4)
    (f32.const 0.10000000149011612)
   )
   ;;@ main.cpp:11:0
   (local.set $4
    (i32.add
     (i32.shl
      (local.get $0)
      (i32.const 2)
     )
     (local.get $7)
    )
   )
   (f32.store
    (local.get $4)
    (f32.const 0.10000000149011612)
   )
   ;;@ main.cpp:8:0
   (local.set $0
    (i32.add
     (local.get $0)
     (i32.const 1)
    )
   )
   (br_if $while-in
    (i32.ne
     (local.get $0)
     (i32.const 1000)
    )
   )
  )
  (local.set $0
   (i32.const 0)
  )
  (loop $while-in1
   ;;@ main.cpp:24:0
   (local.set $9
    (call $__Z7sumfuncPfS_S_i
     (local.get $6)
     (local.get $7)
     (local.get $8)
    )
   )
   (local.set $5
    (f32.add
     (local.get $5)
     (local.get $9)
    )
   )
   ;;@ main.cpp:23:0
   (local.set $0
    (i32.add
     (local.get $0)
     (i32.const 1)
    )
   )
   (br_if $while-in1
    (i32.ne
     (local.get $0)
     (i32.const 10000000)
    )
   )
  )
  ;;@ main.cpp:26:0
  (local.set $0
   (i32.load
    (local.get $1)
   )
  )
  (local.set $10
   (f64.promote_f32
    (local.get $5)
   )
  )
  (i32.store
   (local.get $3)
   (local.get $0)
  )
  (local.set $0
   (i32.add
    (local.get $3)
    (i32.const 8)
   )
  )
  (f64.store
   (local.get $0)
   (local.get $10)
  )
  (call $_printf
   (local.get $3)
  )
  (global.set $STACKTOP
   (local.get $2)
  )
  ;;@ main.cpp:28:0
  (i32.const 0)
 )
 (func $___stdio_close (; 18 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 16)
   )
  )
  (i32.store
   (local.get $1)
   (i32.load offset=60
    (local.get $0)
   )
  )
  (local.set $0
   (call $___syscall_ret
    (call $___syscall6
     (i32.const 6)
     (local.get $1)
    )
   )
  )
  (global.set $STACKTOP
   (local.get $1)
  )
  (local.get $0)
 )
 (func $___stdout_write (; 19 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $4
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 32)
   )
  )
  (local.set $5
   (i32.add
    (local.tee $3
     (local.get $4)
    )
    (i32.const 16)
   )
  )
  (i32.store
   (i32.add
    (local.get $0)
    (i32.const 36)
   )
   (i32.const 2)
  )
  (if
   (i32.eqz
    (i32.and
     (i32.load
      (local.get $0)
     )
     (i32.const 64)
    )
   )
   (block
    (i32.store
     (local.get $3)
     (i32.load
      (i32.add
       (local.get $0)
       (i32.const 60)
      )
     )
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 4)
     )
     (i32.const 21523)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 8)
     )
     (local.get $5)
    )
    (if
     (call $___syscall54
      (i32.const 54)
      (local.get $3)
     )
     (i32.store8
      (i32.add
       (local.get $0)
       (i32.const 75)
      )
      (i32.const -1)
     )
    )
   )
  )
  (local.set $0
   (call $___stdio_write
    (local.get $0)
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $STACKTOP
   (local.get $4)
  )
  (local.get $0)
 )
 (func $___stdio_seek (; 20 ;) (; has Stack IR ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local.set $4
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 32)
   )
  )
  (i32.store
   (local.tee $3
    (i32.add
     (local.get $4)
     (i32.const 8)
    )
   )
   (i32.load
    (i32.add
     (local.get $0)
     (i32.const 60)
    )
   )
  )
  (i64.store32
   (i32.add
    (local.get $3)
    (i32.const 4)
   )
   (i64.shr_u
    (local.get $1)
    (i64.const 32)
   )
  )
  (i64.store32
   (i32.add
    (local.get $3)
    (i32.const 8)
   )
   (local.get $1)
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 12)
   )
   (local.tee $0
    (local.get $4)
   )
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 16)
   )
   (local.get $2)
  )
  (local.set $1
   (if (result i64)
    (i32.lt_s
     (call $___syscall_ret
      (call $___syscall140
       (i32.const 140)
       (local.get $3)
      )
     )
     (i32.const 0)
    )
    (block (result i64)
     (i64.store
      (local.get $0)
      (i64.const -1)
     )
     (i64.const -1)
    )
    (i64.load
     (local.get $0)
    )
   )
  )
  (global.set $STACKTOP
   (local.get $4)
  )
  (local.get $1)
 )
 (func $___syscall_ret (; 21 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (if (result i32)
   (i32.gt_u
    (local.get $0)
    (i32.const -4096)
   )
   (block (result i32)
    (i32.store
     (i32.const 3072)
     (i32.sub
      (i32.const 0)
      (local.get $0)
     )
    )
    (i32.const -1)
   )
   (local.get $0)
  )
 )
 (func $___errno_location (; 22 ;) (; has Stack IR ;) (result i32)
  (i32.const 3072)
 )
 (func $___stdio_write (; 23 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local.set $6
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 48)
   )
  )
  (local.set $5
   (i32.add
    (local.get $6)
    (i32.const 32)
   )
  )
  (i32.store
   (local.tee $3
    (local.get $6)
   )
   (local.tee $4
    (i32.load
     (local.tee $9
      (i32.add
       (local.get $0)
       (i32.const 28)
      )
     )
    )
   )
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 4)
   )
   (local.tee $4
    (i32.sub
     (i32.load
      (local.tee $10
       (i32.add
        (local.get $0)
        (i32.const 20)
       )
      )
     )
     (local.get $4)
    )
   )
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 8)
   )
   (local.get $1)
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 12)
   )
   (local.get $2)
  )
  (i32.store
   (local.tee $1
    (i32.add
     (local.get $3)
     (i32.const 16)
    )
   )
   (i32.load
    (local.tee $12
     (i32.add
      (local.get $0)
      (i32.const 60)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (local.get $1)
    (i32.const 4)
   )
   (local.get $3)
  )
  (i32.store
   (i32.add
    (local.get $1)
    (i32.const 8)
   )
   (i32.const 2)
  )
  (block $__rjto$0
   (block $__rjti$0
    (br_if $__rjti$0
     (i32.eq
      (local.tee $4
       (i32.add
        (local.get $2)
        (local.get $4)
       )
      )
      (local.tee $1
       (call $___syscall_ret
        (call $___syscall146
         (i32.const 146)
         (local.get $1)
        )
       )
      )
     )
    )
    (local.set $7
     (i32.const 2)
    )
    (loop $while-in
     (if
      (i32.ge_s
       (local.get $1)
       (i32.const 0)
      )
      (block
       (local.set $4
        (i32.sub
         (local.get $4)
         (local.get $1)
        )
       )
       (i32.store
        (local.tee $3
         (select
          (i32.add
           (local.get $3)
           (i32.const 8)
          )
          (local.get $3)
          (local.tee $11
           (i32.gt_u
            (local.get $1)
            (local.tee $8
             (i32.load
              (i32.add
               (local.get $3)
               (i32.const 4)
              )
             )
            )
           )
          )
         )
        )
        (i32.add
         (local.tee $1
          (i32.sub
           (local.get $1)
           (select
            (local.get $8)
            (i32.const 0)
            (local.get $11)
           )
          )
         )
         (i32.load
          (local.get $3)
         )
        )
       )
       (i32.store
        (local.tee $8
         (i32.add
          (local.get $3)
          (i32.const 4)
         )
        )
        (i32.sub
         (i32.load
          (local.get $8)
         )
         (local.get $1)
        )
       )
       (i32.store
        (local.get $5)
        (i32.load
         (local.get $12)
        )
       )
       (i32.store
        (i32.add
         (local.get $5)
         (i32.const 4)
        )
        (local.get $3)
       )
       (i32.store
        (i32.add
         (local.get $5)
         (i32.const 8)
        )
        (local.tee $7
         (i32.add
          (i32.shr_s
           (i32.shl
            (local.get $11)
            (i32.const 31)
           )
           (i32.const 31)
          )
          (local.get $7)
         )
        )
       )
       (br_if $__rjti$0
        (i32.eq
         (local.tee $1
          (call $___syscall_ret
           (call $___syscall146
            (i32.const 146)
            (local.get $5)
           )
          )
         )
         (local.get $4)
        )
       )
       (br $while-in)
      )
     )
    )
    (i32.store
     (i32.add
      (local.get $0)
      (i32.const 16)
     )
     (i32.const 0)
    )
    (i32.store
     (local.get $9)
     (i32.const 0)
    )
    (i32.store
     (local.get $10)
     (i32.const 0)
    )
    (i32.store
     (local.get $0)
     (i32.or
      (i32.load
       (local.get $0)
      )
      (i32.const 32)
     )
    )
    (local.set $2
     (if (result i32)
      (i32.eq
       (local.get $7)
       (i32.const 2)
      )
      (i32.const 0)
      (i32.sub
       (local.get $2)
       (i32.load
        (i32.add
         (local.get $3)
         (i32.const 4)
        )
       )
      )
     )
    )
    (br $__rjto$0)
   )
   (i32.store
    (i32.add
     (local.get $0)
     (i32.const 16)
    )
    (i32.add
     (local.tee $1
      (i32.load
       (i32.add
        (local.get $0)
        (i32.const 44)
       )
      )
     )
     (i32.load
      (i32.add
       (local.get $0)
       (i32.const 48)
      )
     )
    )
   )
   (i32.store
    (local.get $9)
    (local.get $1)
   )
   (i32.store
    (local.get $10)
    (local.get $1)
   )
  )
  (global.set $STACKTOP
   (local.get $6)
  )
  (local.get $2)
 )
 (func $_frexp (; 24 ;) (; has Stack IR ;) (param $0 f64) (param $1 i32) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (block $switch
   (block $switch-default
    (if
     (local.tee $4
      (i32.and
       (i32.wrap_i64
        (local.tee $3
         (i64.shr_u
          (local.tee $2
           (i64.reinterpret_f64
            (local.get $0)
           )
          )
          (i64.const 52)
         )
        )
       )
       (i32.const 2047)
      )
     )
     (if
      (i32.eq
       (local.get $4)
       (i32.const 2047)
      )
      (br $switch)
      (br $switch-default)
     )
    )
    (i32.store
     (local.get $1)
     (if (result i32)
      (f64.ne
       (local.get $0)
       (f64.const 0)
      )
      (block (result i32)
       (local.set $0
        (call $_frexp
         (f64.mul
          (local.get $0)
          (f64.const 18446744073709551615)
         )
         (local.get $1)
        )
       )
       (i32.add
        (i32.load
         (local.get $1)
        )
        (i32.const -64)
       )
      )
      (i32.const 0)
     )
    )
    (br $switch)
   )
   (i32.store
    (local.get $1)
    (i32.add
     (i32.and
      (i32.wrap_i64
       (local.get $3)
      )
      (i32.const 2047)
     )
     (i32.const -1022)
    )
   )
   (local.set $0
    (f64.reinterpret_i64
     (i64.or
      (i64.and
       (local.get $2)
       (i64.const -9218868437227405313)
      )
      (i64.const 4602678819172646912)
     )
    )
   )
  )
  (local.get $0)
 )
 (func $_memchr (; 25 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block $__rjto$3
   (block $__rjti$3
    (block $__rjti$2
     (if
      (i32.and
       (local.tee $2
        (i32.ne
         (local.get $1)
         (i32.const 0)
        )
       )
       (i32.ne
        (i32.and
         (local.get $0)
         (i32.const 3)
        )
        (i32.const 0)
       )
      )
      (loop $while-in
       (br_if $__rjti$2
        (i32.eqz
         (i32.load8_u
          (local.get $0)
         )
        )
       )
       (br_if $while-in
        (i32.and
         (local.tee $2
          (i32.ne
           (local.tee $1
            (i32.add
             (local.get $1)
             (i32.const -1)
            )
           )
           (i32.const 0)
          )
         )
         (i32.ne
          (i32.and
           (local.tee $0
            (i32.add
             (local.get $0)
             (i32.const 1)
            )
           )
           (i32.const 3)
          )
          (i32.const 0)
         )
        )
       )
      )
     )
     (br_if $__rjti$3
      (i32.eqz
       (local.get $2)
      )
     )
    )
    (if
     (i32.eqz
      (i32.load8_u
       (local.get $0)
      )
     )
     (block
      (br_if $__rjti$3
       (i32.eqz
        (local.get $1)
       )
      )
      (br $__rjto$3)
     )
    )
    (block $__rjto$0
     (block $__rjti$0
      (br_if $__rjti$0
       (i32.le_u
        (local.get $1)
        (i32.const 3)
       )
      )
      (loop $while-in3
       (if
        (i32.eqz
         (i32.and
          (i32.xor
           (i32.and
            (local.tee $2
             (i32.load
              (local.get $0)
             )
            )
            (i32.const -2139062144)
           )
           (i32.const -2139062144)
          )
          (i32.add
           (local.get $2)
           (i32.const -16843009)
          )
         )
        )
        (block
         (local.set $0
          (i32.add
           (local.get $0)
           (i32.const 4)
          )
         )
         (br_if $while-in3
          (i32.gt_u
           (local.tee $1
            (i32.add
             (local.get $1)
             (i32.const -4)
            )
           )
           (i32.const 3)
          )
         )
         (br $__rjti$0)
        )
       )
      )
      (br $__rjto$0)
     )
     (br_if $__rjti$3
      (i32.eqz
       (local.get $1)
      )
     )
    )
    (loop $while-in5
     (br_if $__rjto$3
      (i32.eqz
       (i32.load8_u
        (local.get $0)
       )
      )
     )
     (br_if $__rjti$3
      (i32.eqz
       (local.tee $1
        (i32.add
         (local.get $1)
         (i32.const -1)
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (br $while-in5)
    )
   )
   (local.set $0
    (i32.const 0)
   )
  )
  (local.get $0)
 )
 (func $_fmt_fp (; 26 ;) (; has Stack IR ;) (param $0 i32) (param $1 f64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i64)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i64)
  (local $27 i64)
  (local $28 i32)
  (local.set $23
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 560)
   )
  )
  (local.set $6
   (i32.add
    (local.get $23)
    (i32.const 32)
   )
  )
  (local.set $18
   (local.tee $12
    (local.get $23)
   )
  )
  (i32.store
   (local.tee $9
    (i32.add
     (local.get $12)
     (i32.const 536)
    )
   )
   (i32.const 0)
  )
  (local.set $17
   (i32.add
    (local.tee $8
     (i32.add
      (local.get $12)
      (i32.const 540)
     )
    )
    (i32.const 12)
   )
  )
  (local.set $21
   (if (result i32)
    (i64.lt_s
     (local.tee $22
      (i64.reinterpret_f64
       (local.get $1)
      )
     )
     (i64.const 0)
    )
    (block (result i32)
     (local.set $22
      (i64.reinterpret_f64
       (local.tee $1
        (f64.neg
         (local.get $1)
        )
       )
      )
     )
     (local.set $20
      (i32.const 1927)
     )
     (i32.const 1)
    )
    (block (result i32)
     (local.set $20
      (select
       (i32.const 1930)
       (select
        (i32.const 1933)
        (i32.const 1928)
        (i32.and
         (local.get $4)
         (i32.const 1)
        )
       )
       (i32.and
        (local.get $4)
        (i32.const 2048)
       )
      )
     )
     (i32.ne
      (i32.and
       (local.get $4)
       (i32.const 2049)
      )
      (i32.const 0)
     )
    )
   )
  )
  (local.set $0
   (if (result i32)
    (i64.eq
     (i64.and
      (local.get $22)
      (i64.const 9218868437227405312)
     )
     (i64.const 9218868437227405312)
    )
    (block (result i32)
     (local.set $5
      (select
       (select
        (i32.const 1954)
        (i32.const 1958)
        (local.tee $3
         (i32.ne
          (i32.and
           (local.get $5)
           (i32.const 32)
          )
          (i32.const 0)
         )
        )
       )
       (select
        (i32.const 1946)
        (i32.const 1950)
        (local.get $3)
       )
       (f64.ne
        (local.get $1)
        (local.get $1)
       )
      )
     )
     (call $_pad_524
      (local.get $0)
      (i32.const 32)
      (local.get $2)
      (local.tee $3
       (i32.add
        (local.get $21)
        (i32.const 3)
       )
      )
      (i32.and
       (local.get $4)
       (i32.const -65537)
      )
     )
     (call $_out
      (local.get $0)
      (local.get $20)
      (local.get $21)
     )
     (call $_out
      (local.get $0)
      (local.get $5)
      (i32.const 3)
     )
     (call $_pad_524
      (local.get $0)
      (i32.const 32)
      (local.get $2)
      (local.get $3)
      (i32.xor
       (local.get $4)
       (i32.const 8192)
      )
     )
     (local.get $3)
    )
    (block $do-once (result i32)
     (if
      (local.tee $7
       (f64.ne
        (local.tee $1
         (f64.mul
          (call $_frexp
           (local.get $1)
           (local.get $9)
          )
          (f64.const 2)
         )
        )
        (f64.const 0)
       )
      )
      (i32.store
       (local.get $9)
       (i32.add
        (i32.load
         (local.get $9)
        )
        (i32.const -1)
       )
      )
     )
     (if
      (i32.eq
       (local.tee $15
        (i32.or
         (local.get $5)
         (i32.const 32)
        )
       )
       (i32.const 97)
      )
      (block
       (local.set $13
        (select
         (i32.add
          (local.get $20)
          (i32.const 9)
         )
         (local.get $20)
         (local.tee $11
          (i32.and
           (local.get $5)
           (i32.const 32)
          )
         )
        )
       )
       (if
        (i32.eqz
         (i32.or
          (i32.eqz
           (local.tee $7
            (i32.sub
             (i32.const 12)
             (local.get $3)
            )
           )
          )
          (i32.gt_u
           (local.get $3)
           (i32.const 11)
          )
         )
        )
        (block
         (local.set $16
          (f64.const 8)
         )
         (loop $while-in
          (local.set $16
           (f64.mul
            (local.get $16)
            (f64.const 16)
           )
          )
          (br_if $while-in
           (local.tee $7
            (i32.add
             (local.get $7)
             (i32.const -1)
            )
           )
          )
         )
         (local.set $1
          (if (result f64)
           (i32.eq
            (i32.load8_s
             (local.get $13)
            )
            (i32.const 45)
           )
           (f64.neg
            (f64.add
             (local.get $16)
             (f64.sub
              (f64.neg
               (local.get $1)
              )
              (local.get $16)
             )
            )
           )
           (f64.sub
            (f64.add
             (local.get $1)
             (local.get $16)
            )
            (local.get $16)
           )
          )
         )
        )
       )
       (local.set $10
        (i32.or
         (local.get $21)
         (i32.const 2)
        )
       )
       (if
        (i32.eq
         (local.get $17)
         (local.tee $7
          (call $_fmt_u
           (i64.extend_i32_s
            (select
             (i32.sub
              (i32.const 0)
              (local.tee $6
               (i32.load
                (local.get $9)
               )
              )
             )
             (local.get $6)
             (i32.lt_s
              (local.get $6)
              (i32.const 0)
             )
            )
           )
           (local.get $17)
          )
         )
        )
        (i32.store8
         (local.tee $7
          (i32.add
           (local.get $8)
           (i32.const 11)
          )
         )
         (i32.const 48)
        )
       )
       (i32.store8
        (i32.add
         (local.get $7)
         (i32.const -1)
        )
        (i32.add
         (i32.and
          (i32.shr_s
           (local.get $6)
           (i32.const 31)
          )
          (i32.const 2)
         )
         (i32.const 43)
        )
       )
       (i32.store8
        (local.tee $7
         (i32.add
          (local.get $7)
          (i32.const -2)
         )
        )
        (i32.add
         (local.get $5)
         (i32.const 15)
        )
       )
       (local.set $8
        (i32.lt_s
         (local.get $3)
         (i32.const 1)
        )
       )
       (local.set $9
        (i32.eqz
         (i32.and
          (local.get $4)
          (i32.const 8)
         )
        )
       )
       (local.set $5
        (local.get $12)
       )
       (loop $while-in3
        (i32.store8
         (local.get $5)
         (i32.or
          (local.get $11)
          (i32.load8_u
           (i32.add
            (local.tee $6
             (i32.trunc_f64_s
              (local.get $1)
             )
            )
            (i32.const 1488)
           )
          )
         )
        )
        (local.set $1
         (f64.mul
          (f64.sub
           (local.get $1)
           (f64.convert_i32_s
            (local.get $6)
           )
          )
          (f64.const 16)
         )
        )
        (local.set $5
         (if (result i32)
          (i32.eq
           (i32.sub
            (local.tee $6
             (i32.add
              (local.get $5)
              (i32.const 1)
             )
            )
            (local.get $18)
           )
           (i32.const 1)
          )
          (if (result i32)
           (i32.and
            (i32.and
             (local.get $8)
             (f64.eq
              (local.get $1)
              (f64.const 0)
             )
            )
            (local.get $9)
           )
           (local.get $6)
           (block (result i32)
            (i32.store8
             (local.get $6)
             (i32.const 46)
            )
            (i32.add
             (local.get $5)
             (i32.const 2)
            )
           )
          )
          (local.get $6)
         )
        )
        (br_if $while-in3
         (f64.ne
          (local.get $1)
          (f64.const 0)
         )
        )
       )
       (local.set $3
        (block $__rjto$0 (result i32)
         (block $__rjti$0
          (br_if $__rjti$0
           (i32.eqz
            (local.get $3)
           )
          )
          (br_if $__rjti$0
           (i32.ge_s
            (i32.add
             (local.get $5)
             (i32.sub
              (i32.const -2)
              (local.get $18)
             )
            )
            (local.get $3)
           )
          )
          (local.set $8
           (i32.sub
            (i32.add
             (local.get $17)
             (i32.add
              (local.get $3)
              (i32.const 2)
             )
            )
            (local.get $7)
           )
          )
          (br $__rjto$0
           (local.get $7)
          )
         )
         (local.set $8
          (i32.add
           (local.get $5)
           (i32.sub
            (i32.sub
             (local.get $17)
             (local.get $18)
            )
            (local.get $7)
           )
          )
         )
         (local.get $7)
        )
       )
       (call $_pad_524
        (local.get $0)
        (i32.const 32)
        (local.get $2)
        (local.tee $6
         (i32.add
          (local.get $8)
          (local.get $10)
         )
        )
        (local.get $4)
       )
       (call $_out
        (local.get $0)
        (local.get $13)
        (local.get $10)
       )
       (call $_pad_524
        (local.get $0)
        (i32.const 48)
        (local.get $2)
        (local.get $6)
        (i32.xor
         (local.get $4)
         (i32.const 65536)
        )
       )
       (call $_out
        (local.get $0)
        (local.get $12)
        (local.tee $5
         (i32.sub
          (local.get $5)
          (local.get $18)
         )
        )
       )
       (call $_pad_524
        (local.get $0)
        (i32.const 48)
        (i32.sub
         (local.get $8)
         (i32.add
          (local.get $5)
          (local.tee $3
           (i32.sub
            (local.get $17)
            (local.get $3)
           )
          )
         )
        )
        (i32.const 0)
        (i32.const 0)
       )
       (call $_out
        (local.get $0)
        (local.get $7)
        (local.get $3)
       )
       (call $_pad_524
        (local.get $0)
        (i32.const 32)
        (local.get $2)
        (local.get $6)
        (i32.xor
         (local.get $4)
         (i32.const 8192)
        )
       )
       (br $do-once
        (local.get $6)
       )
      )
     )
     (if
      (local.get $7)
      (block
       (i32.store
        (local.get $9)
        (local.tee $7
         (i32.add
          (i32.load
           (local.get $9)
          )
          (i32.const -28)
         )
        )
       )
       (local.set $1
        (f64.mul
         (local.get $1)
         (f64.const 268435456)
        )
       )
      )
      (local.set $7
       (i32.load
        (local.get $9)
       )
      )
     )
     (local.set $6
      (local.tee $13
       (select
        (local.get $6)
        (i32.add
         (local.get $6)
         (i32.const 288)
        )
        (i32.lt_s
         (local.get $7)
         (i32.const 0)
        )
       )
      )
     )
     (loop $while-in5
      (i32.store
       (local.get $6)
       (local.tee $8
        (i32.trunc_f64_u
         (local.get $1)
        )
       )
      )
      (local.set $6
       (i32.add
        (local.get $6)
        (i32.const 4)
       )
      )
      (br_if $while-in5
       (f64.ne
        (local.tee $1
         (f64.mul
          (f64.sub
           (local.get $1)
           (f64.convert_i32_u
            (local.get $8)
           )
          )
          (f64.const 1e9)
         )
        )
        (f64.const 0)
       )
      )
     )
     (if
      (i32.gt_s
       (local.get $7)
       (i32.const 0)
      )
      (block
       (local.set $8
        (local.get $7)
       )
       (local.set $7
        (local.get $13)
       )
       (loop $while-in7
        (local.set $11
         (select
          (local.get $8)
          (i32.const 29)
          (i32.lt_s
           (local.get $8)
           (i32.const 29)
          )
         )
        )
        (if
         (i32.ge_u
          (local.tee $8
           (i32.add
            (local.get $6)
            (i32.const -4)
           )
          )
          (local.get $7)
         )
         (block
          (local.set $26
           (i64.extend_i32_u
            (local.get $11)
           )
          )
          (local.set $10
           (i32.const 0)
          )
          (loop $while-in9
           (local.set $22
            (i64.div_u
             (local.tee $27
              (i64.add
               (i64.extend_i32_u
                (local.get $10)
               )
               (i64.shl
                (i64.extend_i32_u
                 (i32.load
                  (local.get $8)
                 )
                )
                (local.get $26)
               )
              )
             )
             (i64.const 1000000000)
            )
           )
           (i64.store32
            (local.get $8)
            (i64.sub
             (local.get $27)
             (i64.mul
              (local.get $22)
              (i64.const 1000000000)
             )
            )
           )
           (local.set $10
            (i32.wrap_i64
             (local.get $22)
            )
           )
           (br_if $while-in9
            (i32.ge_u
             (local.tee $8
              (i32.add
               (local.get $8)
               (i32.const -4)
              )
             )
             (local.get $7)
            )
           )
          )
          (if
           (local.get $10)
           (i32.store
            (local.tee $7
             (i32.add
              (local.get $7)
              (i32.const -4)
             )
            )
            (local.get $10)
           )
          )
         )
        )
        (if
         (i32.gt_u
          (local.get $6)
          (local.get $7)
         )
         (block $label$break$L57
          (local.set $6
           (loop $while-in12 (result i32)
            (br_if $label$break$L57
             (i32.load
              (local.tee $8
               (i32.add
                (local.get $6)
                (i32.const -4)
               )
              )
             )
            )
            (if (result i32)
             (i32.gt_u
              (local.get $8)
              (local.get $7)
             )
             (block
              (local.set $6
               (local.get $8)
              )
              (br $while-in12)
             )
             (local.get $8)
            )
           )
          )
         )
        )
        (i32.store
         (local.get $9)
         (local.tee $8
          (i32.sub
           (i32.load
            (local.get $9)
           )
           (local.get $11)
          )
         )
        )
        (br_if $while-in7
         (i32.gt_s
          (local.get $8)
          (i32.const 0)
         )
        )
       )
      )
      (block
       (local.set $8
        (local.get $7)
       )
       (local.set $7
        (local.get $13)
       )
      )
     )
     (local.set $11
      (select
       (i32.const 6)
       (local.get $3)
       (i32.lt_s
        (local.get $3)
        (i32.const 0)
       )
      )
     )
     (local.set $3
      (if (result i32)
       (i32.lt_s
        (local.get $8)
        (i32.const 0)
       )
       (block (result i32)
        (local.set $19
         (i32.add
          (i32.div_s
           (i32.add
            (local.get $11)
            (i32.const 25)
           )
           (i32.const 9)
          )
          (i32.const 1)
         )
        )
        (local.set $24
         (i32.eq
          (local.get $15)
          (i32.const 102)
         )
        )
        (local.set $3
         (local.get $6)
        )
        (loop $while-in14 (result i32)
         (local.set $14
          (select
           (local.tee $6
            (i32.sub
             (i32.const 0)
             (local.get $8)
            )
           )
           (i32.const 9)
           (i32.lt_s
            (local.get $6)
            (i32.const 9)
           )
          )
         )
         (if
          (i32.lt_u
           (local.get $7)
           (local.get $3)
          )
          (block
           (local.set $10
            (i32.add
             (i32.shl
              (i32.const 1)
              (local.get $14)
             )
             (i32.const -1)
            )
           )
           (local.set $25
            (i32.shr_u
             (i32.const 1000000000)
             (local.get $14)
            )
           )
           (local.set $8
            (i32.const 0)
           )
           (local.set $6
            (local.get $7)
           )
           (loop $while-in16
            (i32.store
             (local.get $6)
             (i32.add
              (local.get $8)
              (i32.shr_u
               (local.tee $8
                (i32.load
                 (local.get $6)
                )
               )
               (local.get $14)
              )
             )
            )
            (local.set $8
             (i32.mul
              (i32.and
               (local.get $8)
               (local.get $10)
              )
              (local.get $25)
             )
            )
            (br_if $while-in16
             (i32.lt_u
              (local.tee $6
               (i32.add
                (local.get $6)
                (i32.const 4)
               )
              )
              (local.get $3)
             )
            )
           )
           (local.set $7
            (select
             (local.get $7)
             (i32.add
              (local.get $7)
              (i32.const 4)
             )
             (i32.load
              (local.get $7)
             )
            )
           )
           (if
            (local.get $8)
            (block
             (i32.store
              (local.get $3)
              (local.get $8)
             )
             (local.set $3
              (i32.add
               (local.get $3)
               (i32.const 4)
              )
             )
            )
           )
          )
          (local.set $7
           (select
            (local.get $7)
            (i32.add
             (local.get $7)
             (i32.const 4)
            )
            (i32.load
             (local.get $7)
            )
           )
          )
         )
         (local.set $10
          (select
           (i32.add
            (local.tee $6
             (select
              (local.get $13)
              (local.get $7)
              (local.get $24)
             )
            )
            (i32.shl
             (local.get $19)
             (i32.const 2)
            )
           )
           (local.get $3)
           (i32.gt_s
            (i32.shr_s
             (i32.sub
              (local.get $3)
              (local.get $6)
             )
             (i32.const 2)
            )
            (local.get $19)
           )
          )
         )
         (i32.store
          (local.get $9)
          (local.tee $8
           (i32.add
            (i32.load
             (local.get $9)
            )
            (local.get $14)
           )
          )
         )
         (if (result i32)
          (i32.lt_s
           (local.get $8)
           (i32.const 0)
          )
          (block
           (local.set $3
            (local.get $10)
           )
           (br $while-in14)
          )
          (local.get $7)
         )
        )
       )
       (block (result i32)
        (local.set $10
         (local.get $6)
        )
        (local.get $7)
       )
      )
     )
     (local.set $14
      (local.get $13)
     )
     (if
      (i32.lt_u
       (local.get $3)
       (local.get $10)
      )
      (block
       (local.set $7
        (i32.mul
         (i32.shr_s
          (i32.sub
           (local.get $14)
           (local.get $3)
          )
          (i32.const 2)
         )
         (i32.const 9)
        )
       )
       (if
        (i32.ge_u
         (local.tee $8
          (i32.load
           (local.get $3)
          )
         )
         (i32.const 10)
        )
        (block
         (local.set $6
          (i32.const 10)
         )
         (loop $while-in18
          (local.set $7
           (i32.add
            (local.get $7)
            (i32.const 1)
           )
          )
          (br_if $while-in18
           (i32.ge_u
            (local.get $8)
            (local.tee $6
             (i32.mul
              (local.get $6)
              (i32.const 10)
             )
            )
           )
          )
         )
        )
       )
      )
      (local.set $7
       (i32.const 0)
      )
     )
     (local.set $15
      (if (result i32)
       (i32.gt_u
        (local.tee $3
         (if (result i32)
          (i32.lt_s
           (local.tee $6
            (i32.add
             (i32.sub
              (local.get $11)
              (select
               (i32.const 0)
               (local.get $7)
               (i32.eq
                (local.get $15)
                (i32.const 102)
               )
              )
             )
             (i32.shr_s
              (i32.shl
               (i32.and
                (local.tee $24
                 (i32.eq
                  (local.get $15)
                  (i32.const 103)
                 )
                )
                (local.tee $25
                 (i32.ne
                  (local.get $11)
                  (i32.const 0)
                 )
                )
               )
               (i32.const 31)
              )
              (i32.const 31)
             )
            )
           )
           (i32.add
            (i32.mul
             (i32.shr_s
              (i32.sub
               (local.get $10)
               (local.get $14)
              )
              (i32.const 2)
             )
             (i32.const 9)
            )
            (i32.const -9)
           )
          )
          (block (result i32)
           (local.set $15
            (i32.div_s
             (local.tee $6
              (i32.add
               (local.get $6)
               (i32.const 9216)
              )
             )
             (i32.const 9)
            )
           )
           (if
            (i32.lt_s
             (local.tee $6
              (i32.sub
               (local.get $6)
               (i32.mul
                (local.get $15)
                (i32.const 9)
               )
              )
             )
             (i32.const 8)
            )
            (block
             (local.set $8
              (i32.const 10)
             )
             (loop $while-in20
              (local.set $9
               (i32.add
                (local.get $6)
                (i32.const 1)
               )
              )
              (local.set $8
               (i32.mul
                (local.get $8)
                (i32.const 10)
               )
              )
              (if
               (i32.lt_s
                (local.get $6)
                (i32.const 7)
               )
               (block
                (local.set $6
                 (local.get $9)
                )
                (br $while-in20)
               )
              )
             )
            )
            (local.set $8
             (i32.const 10)
            )
           )
           (local.set $19
            (i32.div_u
             (local.tee $15
              (i32.load
               (local.tee $6
                (i32.add
                 (i32.add
                  (i32.shl
                   (local.get $15)
                   (i32.const 2)
                  )
                  (local.get $13)
                 )
                 (i32.const -4092)
                )
               )
              )
             )
             (local.get $8)
            )
           )
           (if
            (i32.eqz
             (i32.and
              (local.tee $28
               (i32.eq
                (i32.add
                 (local.get $6)
                 (i32.const 4)
                )
                (local.get $10)
               )
              )
              (i32.eqz
               (local.tee $9
                (i32.sub
                 (local.get $15)
                 (i32.mul
                  (local.get $8)
                  (local.get $19)
                 )
                )
               )
              )
             )
            )
            (block
             (local.set $1
              (select
               (f64.const 9007199254740994)
               (f64.const 9007199254740992)
               (i32.and
                (local.get $19)
                (i32.const 1)
               )
              )
             )
             (local.set $16
              (select
               (f64.const 0.5)
               (select
                (f64.const 1)
                (f64.const 1.5)
                (i32.and
                 (local.get $28)
                 (i32.eq
                  (local.get $9)
                  (local.tee $19
                   (i32.shr_u
                    (local.get $8)
                    (i32.const 1)
                   )
                  )
                 )
                )
               )
               (i32.lt_u
                (local.get $9)
                (local.get $19)
               )
              )
             )
             (if
              (local.get $21)
              (block
               (local.set $1
                (select
                 (f64.neg
                  (local.get $1)
                 )
                 (local.get $1)
                 (local.tee $19
                  (i32.eq
                   (i32.load8_s
                    (local.get $20)
                   )
                   (i32.const 45)
                  )
                 )
                )
               )
               (local.set $16
                (select
                 (f64.neg
                  (local.get $16)
                 )
                 (local.get $16)
                 (local.get $19)
                )
               )
              )
             )
             (i32.store
              (local.get $6)
              (local.tee $9
               (i32.sub
                (local.get $15)
                (local.get $9)
               )
              )
             )
             (if
              (f64.ne
               (f64.add
                (local.get $1)
                (local.get $16)
               )
               (local.get $1)
              )
              (block
               (i32.store
                (local.get $6)
                (local.tee $7
                 (i32.add
                  (local.get $8)
                  (local.get $9)
                 )
                )
               )
               (if
                (i32.gt_u
                 (local.get $7)
                 (i32.const 999999999)
                )
                (loop $while-in22
                 (i32.store
                  (local.get $6)
                  (i32.const 0)
                 )
                 (if
                  (i32.lt_u
                   (local.tee $6
                    (i32.add
                     (local.get $6)
                     (i32.const -4)
                    )
                   )
                   (local.get $3)
                  )
                  (i32.store
                   (local.tee $3
                    (i32.add
                     (local.get $3)
                     (i32.const -4)
                    )
                   )
                   (i32.const 0)
                  )
                 )
                 (i32.store
                  (local.get $6)
                  (local.tee $7
                   (i32.add
                    (i32.load
                     (local.get $6)
                    )
                    (i32.const 1)
                   )
                  )
                 )
                 (br_if $while-in22
                  (i32.gt_u
                   (local.get $7)
                   (i32.const 999999999)
                  )
                 )
                )
               )
               (local.set $7
                (i32.mul
                 (i32.shr_s
                  (i32.sub
                   (local.get $14)
                   (local.get $3)
                  )
                  (i32.const 2)
                 )
                 (i32.const 9)
                )
               )
               (if
                (i32.ge_u
                 (local.tee $9
                  (i32.load
                   (local.get $3)
                  )
                 )
                 (i32.const 10)
                )
                (block
                 (local.set $8
                  (i32.const 10)
                 )
                 (loop $while-in24
                  (local.set $7
                   (i32.add
                    (local.get $7)
                    (i32.const 1)
                   )
                  )
                  (br_if $while-in24
                   (i32.ge_u
                    (local.get $9)
                    (local.tee $8
                     (i32.mul
                      (local.get $8)
                      (i32.const 10)
                     )
                    )
                   )
                  )
                 )
                )
               )
              )
             )
            )
           )
           (local.set $8
            (local.get $3)
           )
           (local.set $9
            (local.get $7)
           )
           (select
            (local.tee $3
             (i32.add
              (local.get $6)
              (i32.const 4)
             )
            )
            (local.get $10)
            (i32.gt_u
             (local.get $10)
             (local.get $3)
            )
           )
          )
          (block (result i32)
           (local.set $8
            (local.get $3)
           )
           (local.set $9
            (local.get $7)
           )
           (local.get $10)
          )
         )
        )
        (local.get $8)
       )
       (loop $while-in27 (result i32)
        (block $label$break$L109 (result i32)
         (if
          (i32.load
           (local.tee $7
            (i32.add
             (local.get $3)
             (i32.const -4)
            )
           )
          )
          (block
           (local.set $7
            (local.get $3)
           )
           (br $label$break$L109
            (i32.const 1)
           )
          )
         )
         (if (result i32)
          (i32.gt_u
           (local.get $7)
           (local.get $8)
          )
          (block
           (local.set $3
            (local.get $7)
           )
           (br $while-in27)
          )
          (i32.const 0)
         )
        )
       )
       (block (result i32)
        (local.set $7
         (local.get $3)
        )
        (i32.const 0)
       )
      )
     )
     (local.set $3
      (if (result i32)
       (local.get $24)
       (block (result i32)
        (local.set $5
         (if (result i32)
          (i32.and
           (i32.gt_s
            (local.tee $3
             (i32.add
              (i32.and
               (i32.xor
                (local.get $25)
                (i32.const 1)
               )
               (i32.const 1)
              )
              (local.get $11)
             )
            )
            (local.get $9)
           )
           (i32.gt_s
            (local.get $9)
            (i32.const -5)
           )
          )
          (block (result i32)
           (local.set $10
            (i32.sub
             (i32.add
              (local.get $3)
              (i32.const -1)
             )
             (local.get $9)
            )
           )
           (i32.add
            (local.get $5)
            (i32.const -1)
           )
          )
          (block (result i32)
           (local.set $10
            (i32.add
             (local.get $3)
             (i32.const -1)
            )
           )
           (i32.add
            (local.get $5)
            (i32.const -2)
           )
          )
         )
        )
        (if (result i32)
         (i32.and
          (local.get $4)
          (i32.const 8)
         )
         (local.get $10)
         (block (result i32)
          (if
           (local.get $15)
           (if
            (local.tee $11
             (i32.load
              (i32.add
               (local.get $7)
               (i32.const -4)
              )
             )
            )
            (if
             (i32.rem_u
              (local.get $11)
              (i32.const 10)
             )
             (local.set $3
              (i32.const 0)
             )
             (block
              (local.set $6
               (i32.const 10)
              )
              (local.set $3
               (i32.const 0)
              )
              (loop $while-in31
               (local.set $3
                (i32.add
                 (local.get $3)
                 (i32.const 1)
                )
               )
               (br_if $while-in31
                (i32.eqz
                 (i32.rem_u
                  (local.get $11)
                  (local.tee $6
                   (i32.mul
                    (local.get $6)
                    (i32.const 10)
                   )
                  )
                 )
                )
               )
              )
             )
            )
            (local.set $3
             (i32.const 9)
            )
           )
           (local.set $3
            (i32.const 9)
           )
          )
          (local.set $6
           (i32.add
            (i32.mul
             (i32.shr_s
              (i32.sub
               (local.get $7)
               (local.get $14)
              )
              (i32.const 2)
             )
             (i32.const 9)
            )
            (i32.const -9)
           )
          )
          (if (result i32)
           (i32.eq
            (i32.or
             (local.get $5)
             (i32.const 32)
            )
            (i32.const 102)
           )
           (select
            (local.get $10)
            (local.tee $3
             (select
              (local.tee $3
               (i32.sub
                (local.get $6)
                (local.get $3)
               )
              )
              (i32.const 0)
              (i32.gt_s
               (local.get $3)
               (i32.const 0)
              )
             )
            )
            (i32.lt_s
             (local.get $10)
             (local.get $3)
            )
           )
           (select
            (local.get $10)
            (local.tee $3
             (select
              (local.tee $3
               (i32.sub
                (i32.add
                 (local.get $6)
                 (local.get $9)
                )
                (local.get $3)
               )
              )
              (i32.const 0)
              (i32.gt_s
               (local.get $3)
               (i32.const 0)
              )
             )
            )
            (i32.lt_s
             (local.get $10)
             (local.get $3)
            )
           )
          )
         )
        )
       )
       (local.get $11)
      )
     )
     (local.set $6
      (i32.sub
       (i32.const 0)
       (local.get $9)
      )
     )
     (call $_pad_524
      (local.get $0)
      (i32.const 32)
      (local.get $2)
      (local.tee $9
       (i32.add
        (if (result i32)
         (local.tee $11
          (i32.eq
           (i32.or
            (local.get $5)
            (i32.const 32)
           )
           (i32.const 102)
          )
         )
         (block (result i32)
          (local.set $10
           (i32.const 0)
          )
          (select
           (local.get $9)
           (i32.const 0)
           (i32.gt_s
            (local.get $9)
            (i32.const 0)
           )
          )
         )
         (block (result i32)
          (local.set $6
           (call $_fmt_u
            (i64.extend_i32_s
             (select
              (local.get $6)
              (local.get $9)
              (i32.lt_s
               (local.get $9)
               (i32.const 0)
              )
             )
            )
            (local.get $17)
           )
          )
          (if
           (i32.lt_s
            (i32.sub
             (local.tee $10
              (local.get $17)
             )
             (local.get $6)
            )
            (i32.const 2)
           )
           (loop $while-in33
            (i32.store8
             (local.tee $6
              (i32.add
               (local.get $6)
               (i32.const -1)
              )
             )
             (i32.const 48)
            )
            (br_if $while-in33
             (i32.lt_s
              (i32.sub
               (local.get $10)
               (local.get $6)
              )
              (i32.const 2)
             )
            )
           )
          )
          (i32.store8
           (i32.add
            (local.get $6)
            (i32.const -1)
           )
           (i32.add
            (i32.and
             (i32.shr_s
              (local.get $9)
              (i32.const 31)
             )
             (i32.const 2)
            )
            (i32.const 43)
           )
          )
          (i32.store8
           (local.tee $6
            (i32.add
             (local.get $6)
             (i32.const -2)
            )
           )
           (local.get $5)
          )
          (i32.sub
           (local.get $10)
           (local.tee $10
            (local.get $6)
           )
          )
         )
        )
        (i32.add
         (i32.add
          (i32.add
           (local.get $21)
           (i32.const 1)
          )
          (local.get $3)
         )
         (select
          (i32.const 1)
          (i32.and
           (i32.shr_u
            (local.get $4)
            (i32.const 3)
           )
           (i32.const 1)
          )
          (local.tee $14
           (i32.ne
            (local.get $3)
            (i32.const 0)
           )
          )
         )
        )
       )
      )
      (local.get $4)
     )
     (call $_out
      (local.get $0)
      (local.get $20)
      (local.get $21)
     )
     (call $_pad_524
      (local.get $0)
      (i32.const 48)
      (local.get $2)
      (local.get $9)
      (i32.xor
       (local.get $4)
       (i32.const 65536)
      )
     )
     (if
      (local.get $11)
      (block
       (local.set $11
        (local.tee $10
         (i32.add
          (local.get $12)
          (i32.const 9)
         )
        )
       )
       (local.set $17
        (i32.add
         (local.get $12)
         (i32.const 8)
        )
       )
       (local.set $6
        (local.tee $8
         (select
          (local.get $13)
          (local.get $8)
          (i32.gt_u
           (local.get $8)
           (local.get $13)
          )
         )
        )
       )
       (loop $while-in35
        (local.set $5
         (call $_fmt_u
          (i64.extend_i32_u
           (i32.load
            (local.get $6)
           )
          )
          (local.get $10)
         )
        )
        (if
         (i32.eq
          (local.get $6)
          (local.get $8)
         )
         (if
          (i32.eq
           (local.get $5)
           (local.get $10)
          )
          (block
           (i32.store8
            (local.get $17)
            (i32.const 48)
           )
           (local.set $5
            (local.get $17)
           )
          )
         )
         (if
          (i32.gt_u
           (local.get $5)
           (local.get $12)
          )
          (block
           (drop
            (call $_memset
             (local.get $12)
             (i32.const 48)
             (i32.sub
              (local.get $5)
              (local.get $18)
             )
            )
           )
           (loop $while-in37
            (br_if $while-in37
             (i32.gt_u
              (local.tee $5
               (i32.add
                (local.get $5)
                (i32.const -1)
               )
              )
              (local.get $12)
             )
            )
           )
          )
         )
        )
        (call $_out
         (local.get $0)
         (local.get $5)
         (i32.sub
          (local.get $11)
          (local.get $5)
         )
        )
        (if
         (i32.le_u
          (local.tee $5
           (i32.add
            (local.get $6)
            (i32.const 4)
           )
          )
          (local.get $13)
         )
         (block
          (local.set $6
           (local.get $5)
          )
          (br $while-in35)
         )
        )
       )
       (if
        (i32.eqz
         (i32.and
          (i32.eqz
           (i32.and
            (local.get $4)
            (i32.const 8)
           )
          )
          (i32.xor
           (local.get $14)
           (i32.const 1)
          )
         )
        )
        (call $_out
         (local.get $0)
         (i32.const 1962)
         (i32.const 1)
        )
       )
       (call $_pad_524
        (local.get $0)
        (i32.const 48)
        (i32.add
         (if (result i32)
          (i32.and
           (i32.lt_u
            (local.get $5)
            (local.get $7)
           )
           (i32.gt_s
            (local.get $3)
            (i32.const 0)
           )
          )
          (loop $while-in39 (result i32)
           (if
            (i32.gt_u
             (local.tee $6
              (call $_fmt_u
               (i64.extend_i32_u
                (i32.load
                 (local.get $5)
                )
               )
               (local.get $10)
              )
             )
             (local.get $12)
            )
            (block
             (drop
              (call $_memset
               (local.get $12)
               (i32.const 48)
               (i32.sub
                (local.get $6)
                (local.get $18)
               )
              )
             )
             (loop $while-in41
              (br_if $while-in41
               (i32.gt_u
                (local.tee $6
                 (i32.add
                  (local.get $6)
                  (i32.const -1)
                 )
                )
                (local.get $12)
               )
              )
             )
            )
           )
           (call $_out
            (local.get $0)
            (local.get $6)
            (select
             (local.get $3)
             (i32.const 9)
             (i32.lt_s
              (local.get $3)
              (i32.const 9)
             )
            )
           )
           (local.set $6
            (i32.add
             (local.get $3)
             (i32.const -9)
            )
           )
           (if (result i32)
            (i32.and
             (i32.lt_u
              (local.tee $5
               (i32.add
                (local.get $5)
                (i32.const 4)
               )
              )
              (local.get $7)
             )
             (i32.gt_s
              (local.get $3)
              (i32.const 9)
             )
            )
            (block
             (local.set $3
              (local.get $6)
             )
             (br $while-in39)
            )
            (local.get $6)
           )
          )
          (local.get $3)
         )
         (i32.const 9)
        )
        (i32.const 9)
        (i32.const 0)
       )
      )
      (block
       (call $_pad_524
        (local.get $0)
        (i32.const 48)
        (i32.add
         (if (result i32)
          (i32.and
           (i32.lt_u
            (local.get $8)
            (local.tee $14
             (select
              (local.get $7)
              (i32.add
               (local.get $8)
               (i32.const 4)
              )
              (local.get $15)
             )
            )
           )
           (i32.gt_s
            (local.get $3)
            (i32.const -1)
           )
          )
          (block (result i32)
           (local.set $21
            (i32.eqz
             (i32.and
              (local.get $4)
              (i32.const 8)
             )
            )
           )
           (local.set $20
            (local.tee $11
             (i32.add
              (local.get $12)
              (i32.const 9)
             )
            )
           )
           (local.set $18
            (i32.sub
             (i32.const 0)
             (local.get $18)
            )
           )
           (local.set $13
            (i32.add
             (local.get $12)
             (i32.const 8)
            )
           )
           (local.set $7
            (local.get $8)
           )
           (local.set $5
            (local.get $3)
           )
           (loop $while-in43 (result i32)
            (if
             (i32.eq
              (local.get $11)
              (local.tee $3
               (call $_fmt_u
                (i64.extend_i32_u
                 (i32.load
                  (local.get $7)
                 )
                )
                (local.get $11)
               )
              )
             )
             (block
              (i32.store8
               (local.get $13)
               (i32.const 48)
              )
              (local.set $3
               (local.get $13)
              )
             )
            )
            (block $do-once44
             (if
              (i32.eq
               (local.get $7)
               (local.get $8)
              )
              (block
               (local.set $6
                (i32.add
                 (local.get $3)
                 (i32.const 1)
                )
               )
               (call $_out
                (local.get $0)
                (local.get $3)
                (i32.const 1)
               )
               (if
                (i32.and
                 (i32.lt_s
                  (local.get $5)
                  (i32.const 1)
                 )
                 (local.get $21)
                )
                (block
                 (local.set $3
                  (local.get $6)
                 )
                 (br $do-once44)
                )
               )
               (call $_out
                (local.get $0)
                (i32.const 1962)
                (i32.const 1)
               )
               (local.set $3
                (local.get $6)
               )
              )
              (block
               (br_if $do-once44
                (i32.le_u
                 (local.get $3)
                 (local.get $12)
                )
               )
               (drop
                (call $_memset
                 (local.get $12)
                 (i32.const 48)
                 (i32.add
                  (local.get $3)
                  (local.get $18)
                 )
                )
               )
               (loop $while-in47
                (br_if $while-in47
                 (i32.gt_u
                  (local.tee $3
                   (i32.add
                    (local.get $3)
                    (i32.const -1)
                   )
                  )
                  (local.get $12)
                 )
                )
               )
              )
             )
            )
            (call $_out
             (local.get $0)
             (local.get $3)
             (select
              (local.tee $3
               (i32.sub
                (local.get $20)
                (local.get $3)
               )
              )
              (local.get $5)
              (i32.gt_s
               (local.get $5)
               (local.get $3)
              )
             )
            )
            (br_if $while-in43
             (i32.and
              (i32.lt_u
               (local.tee $7
                (i32.add
                 (local.get $7)
                 (i32.const 4)
                )
               )
               (local.get $14)
              )
              (i32.gt_s
               (local.tee $5
                (i32.sub
                 (local.get $5)
                 (local.get $3)
                )
               )
               (i32.const -1)
              )
             )
            )
            (local.get $5)
           )
          )
          (local.get $3)
         )
         (i32.const 18)
        )
        (i32.const 18)
        (i32.const 0)
       )
       (call $_out
        (local.get $0)
        (local.get $10)
        (i32.sub
         (local.get $17)
         (local.get $10)
        )
       )
      )
     )
     (call $_pad_524
      (local.get $0)
      (i32.const 32)
      (local.get $2)
      (local.get $9)
      (i32.xor
       (local.get $4)
       (i32.const 8192)
      )
     )
     (local.get $9)
    )
   )
  )
  (global.set $STACKTOP
   (local.get $23)
  )
  (select
   (local.get $2)
   (local.get $0)
   (i32.lt_s
    (local.get $0)
    (local.get $2)
   )
  )
 )
 (func $_pop_arg_long_double (; 27 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local.set $3
   (f64.load
    (local.tee $2
     (i32.and
      (i32.add
       (i32.load
        (local.get $1)
       )
       (i32.const 7)
      )
      (i32.const -8)
     )
    )
   )
  )
  (i32.store
   (local.get $1)
   (i32.add
    (local.get $2)
    (i32.const 8)
   )
  )
  (f64.store
   (local.get $0)
   (local.get $3)
  )
 )
 (func $___vfprintf_internal (; 28 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local.set $5
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 224)
   )
  )
  (i64.store
   (local.tee $2
    (i32.add
     (local.tee $3
      (local.get $5)
     )
     (i32.const 160)
    )
   )
   (i64.const 0)
  )
  (i64.store offset=8
   (local.get $2)
   (i64.const 0)
  )
  (i64.store offset=16
   (local.get $2)
   (i64.const 0)
  )
  (i64.store offset=24
   (local.get $2)
   (i64.const 0)
  )
  (i64.store offset=32
   (local.get $2)
   (i64.const 0)
  )
  (i32.store
   (local.tee $4
    (i32.add
     (local.get $3)
     (i32.const 208)
    )
   )
   (i32.load
    (local.get $1)
   )
  )
  (drop
   (if (result i32)
    (i32.lt_s
     (call $_printf_core
      (i32.const 0)
      (local.get $4)
      (local.tee $1
       (i32.add
        (local.get $3)
        (i32.const 80)
       )
      )
      (local.get $2)
     )
     (i32.const 0)
    )
    (i32.const -1)
    (block (result i32)
     (drop
      (if (result i32)
       (i32.gt_s
        (i32.load offset=76
         (local.get $0)
        )
        (i32.const -1)
       )
       (i32.const 1)
       (i32.const 0)
      )
     )
     (local.set $6
      (i32.load
       (local.get $0)
      )
     )
     (if
      (i32.lt_s
       (i32.load8_s offset=74
        (local.get $0)
       )
       (i32.const 1)
      )
      (i32.store
       (local.get $0)
       (i32.and
        (local.get $6)
        (i32.const -33)
       )
      )
     )
     (if
      (i32.load
       (local.tee $7
        (i32.add
         (local.get $0)
         (i32.const 48)
        )
       )
      )
      (drop
       (call $_printf_core
        (local.get $0)
        (local.get $4)
        (local.get $1)
        (local.get $2)
       )
      )
      (block
       (local.set $9
        (i32.load
         (local.tee $8
          (i32.add
           (local.get $0)
           (i32.const 44)
          )
         )
        )
       )
       (i32.store
        (local.get $8)
        (local.get $3)
       )
       (i32.store
        (local.tee $11
         (i32.add
          (local.get $0)
          (i32.const 28)
         )
        )
        (local.get $3)
       )
       (i32.store
        (local.tee $10
         (i32.add
          (local.get $0)
          (i32.const 20)
         )
        )
        (local.get $3)
       )
       (i32.store
        (local.get $7)
        (i32.const 80)
       )
       (i32.store
        (local.tee $12
         (i32.add
          (local.get $0)
          (i32.const 16)
         )
        )
        (i32.add
         (local.get $3)
         (i32.const 80)
        )
       )
       (drop
        (call $_printf_core
         (local.get $0)
         (local.get $4)
         (local.get $1)
         (local.get $2)
        )
       )
       (if
        (local.get $9)
        (block
         (drop
          (call_indirect (type $FUNCSIG$iiii)
           (local.get $0)
           (i32.const 0)
           (i32.const 0)
           (i32.add
            (i32.and
             (i32.load offset=36
              (local.get $0)
             )
             (i32.const 3)
            )
            (i32.const 4)
           )
          )
         )
         (drop
          (i32.load
           (local.get $10)
          )
         )
         (i32.store
          (local.get $8)
          (local.get $9)
         )
         (i32.store
          (local.get $7)
          (i32.const 0)
         )
         (i32.store
          (local.get $12)
          (i32.const 0)
         )
         (i32.store
          (local.get $11)
          (i32.const 0)
         )
         (i32.store
          (local.get $10)
          (i32.const 0)
         )
        )
       )
      )
     )
     (i32.store
      (local.get $0)
      (i32.or
       (i32.load
        (local.get $0)
       )
       (i32.and
        (local.get $6)
        (i32.const 32)
       )
      )
     )
     (i32.const 0)
    )
   )
  )
  (global.set $STACKTOP
   (local.get $5)
  )
 )
 (func $_printf_core (; 29 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i64)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local.set $17
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.sub
    (global.get $STACKTOP)
    (i32.const -64)
   )
  )
  (local.set $10
   (i32.add
    (local.get $17)
    (i32.const 40)
   )
  )
  (local.set $23
   (i32.add
    (local.get $17)
    (i32.const 60)
   )
  )
  (i32.store
   (local.tee $12
    (i32.add
     (local.get $17)
     (i32.const 56)
    )
   )
   (i32.const 1896)
  )
  (local.set $19
   (i32.ne
    (local.get $0)
    (i32.const 0)
   )
  )
  (local.set $20
   (local.tee $21
    (i32.add
     (local.get $17)
     (i32.const 40)
    )
   )
  )
  (local.set $24
   (i32.add
    (local.get $17)
    (i32.const 39)
   )
  )
  (local.set $26
   (i32.add
    (local.tee $25
     (i32.add
      (local.get $17)
      (i32.const 48)
     )
    )
    (i32.const 4)
   )
  )
  (block $label$break$L123
   (block $__rjti$10
    (loop $label$continue$L1
     (block $label$break$L1
      (loop $while-in
       (if
        (i32.gt_s
         (local.get $9)
         (i32.const -1)
        )
        (local.set $9
         (if (result i32)
          (i32.gt_s
           (local.get $4)
           (i32.sub
            (i32.const 2147483647)
            (local.get $9)
           )
          )
          (block (result i32)
           (i32.store
            (i32.const 3072)
            (i32.const 75)
           )
           (i32.const -1)
          )
          (i32.add
           (local.get $4)
           (local.get $9)
          )
         )
        )
       )
       (br_if $__rjti$10
        (i32.eqz
         (local.tee $11
          (i32.load8_s
           (local.tee $8
            (i32.load
             (local.get $12)
            )
           )
          )
         )
        )
       )
       (local.set $4
        (local.get $8)
       )
       (block $label$break$L15
        (block $__rjti$0
         (loop $label$continue$L12
          (block $label$break$L12
           (block $switch
            (br_table $label$break$L12 $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $switch $__rjti$0 $switch
             (i32.shr_s
              (i32.shl
               (local.get $11)
               (i32.const 24)
              )
              (i32.const 24)
             )
            )
           )
           (i32.store
            (local.get $12)
            (local.tee $4
             (i32.add
              (local.get $4)
              (i32.const 1)
             )
            )
           )
           (local.set $11
            (i32.load8_s
             (local.get $4)
            )
           )
           (br $label$continue$L12)
          )
         )
         (br $label$break$L15)
        )
        (local.set $11
         (local.get $4)
        )
        (loop $while-in3
         (br_if $label$break$L15
          (i32.ne
           (i32.load8_s offset=1
            (local.get $11)
           )
           (i32.const 37)
          )
         )
         (local.set $4
          (i32.add
           (local.get $4)
           (i32.const 1)
          )
         )
         (i32.store
          (local.get $12)
          (local.tee $11
           (i32.add
            (local.get $11)
            (i32.const 2)
           )
          )
         )
         (br_if $while-in3
          (i32.eq
           (i32.load8_s
            (local.get $11)
           )
           (i32.const 37)
          )
         )
        )
       )
       (local.set $4
        (i32.sub
         (local.get $4)
         (local.get $8)
        )
       )
       (if
        (local.get $19)
        (call $_out
         (local.get $0)
         (local.get $8)
         (local.get $4)
        )
       )
       (br_if $while-in
        (local.get $4)
       )
      )
      (local.set $11
       (i32.eqz
        (call $_isdigit
         (i32.load8_s offset=1
          (i32.load
           (local.get $12)
          )
         )
        )
       )
      )
      (i32.store
       (local.get $12)
       (local.tee $4
        (i32.add
         (local.tee $4
          (i32.load
           (local.get $12)
          )
         )
         (if (result i32)
          (local.get $11)
          (block (result i32)
           (local.set $15
            (i32.const -1)
           )
           (i32.const 1)
          )
          (if (result i32)
           (i32.eq
            (i32.load8_s offset=2
             (local.get $4)
            )
            (i32.const 36)
           )
           (block (result i32)
            (local.set $15
             (i32.add
              (i32.load8_s offset=1
               (local.get $4)
              )
              (i32.const -48)
             )
            )
            (local.set $5
             (i32.const 1)
            )
            (i32.const 3)
           )
           (block (result i32)
            (local.set $15
             (i32.const -1)
            )
            (i32.const 1)
           )
          )
         )
        )
       )
      )
      (if
       (i32.or
        (i32.gt_u
         (local.tee $11
          (i32.add
           (local.tee $6
            (i32.load8_s
             (local.get $4)
            )
           )
           (i32.const -32)
          )
         )
         (i32.const 31)
        )
        (i32.eqz
         (i32.and
          (i32.shl
           (i32.const 1)
           (local.get $11)
          )
          (i32.const 75913)
         )
        )
       )
       (local.set $11
        (i32.const 0)
       )
       (block
        (local.set $6
         (i32.const 0)
        )
        (loop $while-in5
         (local.set $11
          (i32.or
           (local.get $6)
           (i32.shl
            (i32.const 1)
            (local.get $11)
           )
          )
         )
         (i32.store
          (local.get $12)
          (local.tee $4
           (i32.add
            (local.get $4)
            (i32.const 1)
           )
          )
         )
         (if
          (i32.eqz
           (i32.or
            (i32.gt_u
             (local.tee $7
              (i32.add
               (local.tee $6
                (i32.load8_s
                 (local.get $4)
                )
               )
               (i32.const -32)
              )
             )
             (i32.const 31)
            )
            (i32.eqz
             (i32.and
              (i32.shl
               (i32.const 1)
               (local.get $7)
              )
              (i32.const 75913)
             )
            )
           )
          )
          (block
           (local.set $6
            (local.get $11)
           )
           (local.set $11
            (local.get $7)
           )
           (br $while-in5)
          )
         )
        )
       )
      )
      (local.set $11
       (if (result i32)
        (i32.eq
         (i32.and
          (local.get $6)
          (i32.const 255)
         )
         (i32.const 42)
        )
        (block (result i32)
         (local.set $5
          (block $__rjto$1 (result i32)
           (block $__rjti$1
            (br_if $__rjti$1
             (i32.eqz
              (call $_isdigit
               (i32.load8_s offset=1
                (local.get $4)
               )
              )
             )
            )
            (br_if $__rjti$1
             (i32.ne
              (i32.load8_s offset=2
               (local.tee $4
                (i32.load
                 (local.get $12)
                )
               )
              )
              (i32.const 36)
             )
            )
            (i32.store
             (i32.add
              (i32.shl
               (i32.add
                (i32.load8_s
                 (local.tee $5
                  (i32.add
                   (local.get $4)
                   (i32.const 1)
                  )
                 )
                )
                (i32.const -48)
               )
               (i32.const 2)
              )
              (local.get $3)
             )
             (i32.const 10)
            )
            (local.set $7
             (i32.const 1)
            )
            (local.set $6
             (i32.add
              (local.get $4)
              (i32.const 3)
             )
            )
            (br $__rjto$1
             (i32.wrap_i64
              (i64.load
               (i32.add
                (i32.shl
                 (i32.add
                  (i32.load8_s
                   (local.get $5)
                  )
                  (i32.const -48)
                 )
                 (i32.const 3)
                )
                (local.get $2)
               )
              )
             )
            )
           )
           (if
            (local.get $5)
            (block
             (local.set $9
              (i32.const -1)
             )
             (br $label$break$L1)
            )
           )
           (if
            (local.get $19)
            (block
             (local.set $4
              (i32.load
               (local.tee $5
                (i32.and
                 (i32.add
                  (i32.load
                   (local.get $1)
                  )
                  (i32.const 3)
                 )
                 (i32.const -4)
                )
               )
              )
             )
             (i32.store
              (local.get $1)
              (i32.add
               (local.get $5)
               (i32.const 4)
              )
             )
            )
            (local.set $4
             (i32.const 0)
            )
           )
           (local.set $7
            (i32.const 0)
           )
           (local.set $6
            (i32.add
             (i32.load
              (local.get $12)
             )
             (i32.const 1)
            )
           )
           (local.get $4)
          )
         )
         (i32.store
          (local.get $12)
          (local.get $6)
         )
         (local.set $4
          (local.get $6)
         )
         (local.set $13
          (select
           (i32.or
            (local.get $11)
            (i32.const 8192)
           )
           (local.get $11)
           (local.tee $6
            (i32.lt_s
             (local.get $5)
             (i32.const 0)
            )
           )
          )
         )
         (local.set $16
          (select
           (i32.sub
            (i32.const 0)
            (local.get $5)
           )
           (local.get $5)
           (local.get $6)
          )
         )
         (local.get $7)
        )
        (block (result i32)
         (if
          (i32.lt_s
           (local.tee $16
            (call $_getint
             (local.get $12)
            )
           )
           (i32.const 0)
          )
          (block
           (local.set $9
            (i32.const -1)
           )
           (br $label$break$L1)
          )
         )
         (local.set $4
          (i32.load
           (local.get $12)
          )
         )
         (local.set $13
          (local.get $11)
         )
         (local.get $5)
        )
       )
      )
      (if
       (i32.eq
        (i32.load8_s
         (local.get $4)
        )
        (i32.const 46)
       )
       (block $do-once6
        (if
         (i32.ne
          (i32.load8_s
           (local.tee $5
            (i32.add
             (local.get $4)
             (i32.const 1)
            )
           )
          )
          (i32.const 42)
         )
         (block
          (i32.store
           (local.get $12)
           (local.get $5)
          )
          (local.set $4
           (call $_getint
            (local.get $12)
           )
          )
          (local.set $5
           (i32.load
            (local.get $12)
           )
          )
          (br $do-once6)
         )
        )
        (if
         (call $_isdigit
          (i32.load8_s offset=2
           (local.get $4)
          )
         )
         (if
          (i32.eq
           (i32.load8_s offset=3
            (local.tee $5
             (i32.load
              (local.get $12)
             )
            )
           )
           (i32.const 36)
          )
          (block
           (i32.store
            (i32.add
             (i32.shl
              (i32.add
               (i32.load8_s
                (local.tee $4
                 (i32.add
                  (local.get $5)
                  (i32.const 2)
                 )
                )
               )
               (i32.const -48)
              )
              (i32.const 2)
             )
             (local.get $3)
            )
            (i32.const 10)
           )
           (local.set $4
            (i32.wrap_i64
             (i64.load
              (i32.add
               (i32.shl
                (i32.add
                 (i32.load8_s
                  (local.get $4)
                 )
                 (i32.const -48)
                )
                (i32.const 3)
               )
               (local.get $2)
              )
             )
            )
           )
           (i32.store
            (local.get $12)
            (local.tee $5
             (i32.add
              (local.get $5)
              (i32.const 4)
             )
            )
           )
           (br $do-once6)
          )
         )
        )
        (if
         (local.get $11)
         (block
          (local.set $9
           (i32.const -1)
          )
          (br $label$break$L1)
         )
        )
        (if
         (local.get $19)
         (block
          (local.set $4
           (i32.load
            (local.tee $5
             (i32.and
              (i32.add
               (i32.load
                (local.get $1)
               )
               (i32.const 3)
              )
              (i32.const -4)
             )
            )
           )
          )
          (i32.store
           (local.get $1)
           (i32.add
            (local.get $5)
            (i32.const 4)
           )
          )
         )
         (local.set $4
          (i32.const 0)
         )
        )
        (i32.store
         (local.get $12)
         (local.tee $5
          (i32.add
           (i32.load
            (local.get $12)
           )
           (i32.const 2)
          )
         )
        )
       )
       (block
        (local.set $5
         (local.get $4)
        )
        (local.set $4
         (i32.const -1)
        )
       )
      )
      (local.set $14
       (i32.const 0)
      )
      (loop $while-in9
       (if
        (i32.gt_u
         (i32.add
          (i32.load8_s
           (local.get $5)
          )
          (i32.const -65)
         )
         (i32.const 57)
        )
        (block
         (local.set $9
          (i32.const -1)
         )
         (br $label$break$L1)
        )
       )
       (i32.store
        (local.get $12)
        (local.tee $6
         (i32.add
          (local.get $5)
          (i32.const 1)
         )
        )
       )
       (if
        (i32.lt_u
         (i32.add
          (local.tee $7
           (i32.and
            (local.tee $5
             (i32.load8_s offset=959
              (i32.add
               (i32.load8_s
                (local.get $5)
               )
               (i32.mul
                (local.get $14)
                (i32.const 58)
               )
              )
             )
            )
            (i32.const 255)
           )
          )
          (i32.const -1)
         )
         (i32.const 8)
        )
        (block
         (local.set $5
          (local.get $6)
         )
         (local.set $14
          (local.get $7)
         )
         (br $while-in9)
        )
       )
      )
      (if
       (i32.eqz
        (local.get $5)
       )
       (block
        (local.set $9
         (i32.const -1)
        )
        (br $label$break$L1)
       )
      )
      (local.set $18
       (i32.gt_s
        (local.get $15)
        (i32.const -1)
       )
      )
      (block $label$break$L77
       (block $__rjti$9
        (if
         (i32.eq
          (local.get $5)
          (i32.const 19)
         )
         (if
          (local.get $18)
          (block
           (local.set $9
            (i32.const -1)
           )
           (br $label$break$L1)
          )
         )
         (block $__rjti$8
          (if
           (local.get $18)
           (block
            (i32.store
             (i32.add
              (i32.shl
               (local.get $15)
               (i32.const 2)
              )
              (local.get $3)
             )
             (local.get $7)
            )
            (i64.store
             (local.get $10)
             (i64.load
              (i32.add
               (i32.shl
                (local.get $15)
                (i32.const 3)
               )
               (local.get $2)
              )
             )
            )
            (br $__rjti$8)
           )
          )
          (if
           (i32.eqz
            (local.get $19)
           )
           (block
            (local.set $9
             (i32.const 0)
            )
            (br $label$break$L1)
           )
          )
          (call $_pop_arg
           (local.get $10)
           (local.get $7)
           (local.get $1)
          )
          (local.set $6
           (i32.load
            (local.get $12)
           )
          )
          (br $__rjti$9)
         )
        )
        (br_if $__rjti$9
         (local.get $19)
        )
        (local.set $4
         (i32.const 0)
        )
        (br $label$break$L77)
       )
       (local.set $5
        (select
         (local.tee $7
          (i32.and
           (local.get $13)
           (i32.const -65537)
          )
         )
         (local.get $13)
         (i32.and
          (local.get $13)
          (i32.const 8192)
         )
        )
       )
       (block $__rjto$7
        (block $__rjti$7
         (block $__rjti$6
          (block $__rjti$5
           (block $__rjti$4
            (block $__rjti$3
             (block $switch-default44
              (block $switch-case43
               (block $switch-case35
                (block $switch-case34
                 (block $switch-case33
                  (block $switch-case32
                   (block $switch-case31
                    (block $switch-case30
                     (block $switch-case28
                      (block $switch-case25
                       (block $switch-case24
                        (br_table $switch-case43 $switch-default44 $switch-case34 $switch-default44 $switch-case43 $switch-case43 $switch-case43 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-case35 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $__rjti$3 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-case43 $switch-default44 $switch-case32 $switch-case30 $switch-case43 $switch-case43 $switch-case43 $switch-default44 $switch-case30 $switch-default44 $switch-default44 $switch-default44 $switch-default44 $switch-case24 $switch-case28 $switch-case25 $switch-default44 $switch-default44 $switch-case33 $switch-default44 $switch-case31 $switch-default44 $switch-default44 $__rjti$3 $switch-default44
                         (i32.sub
                          (local.tee $6
                           (select
                            (i32.and
                             (local.tee $6
                              (i32.load8_s
                               (i32.add
                                (local.get $6)
                                (i32.const -1)
                               )
                              )
                             )
                             (i32.const -33)
                            )
                            (local.get $6)
                            (i32.and
                             (i32.eq
                              (i32.and
                               (local.get $6)
                               (i32.const 15)
                              )
                              (i32.const 3)
                             )
                             (i32.ne
                              (local.get $14)
                              (i32.const 0)
                             )
                            )
                           )
                          )
                          (i32.const 65)
                         )
                        )
                       )
                       (block $switch-default23
                        (block $switch-case22
                         (block $switch-case21
                          (block $switch-case20
                           (block $switch-case19
                            (block $switch-case18
                             (block $switch-case17
                              (block $switch-case16
                               (br_table $switch-case16 $switch-case17 $switch-case18 $switch-case19 $switch-case20 $switch-default23 $switch-case21 $switch-case22 $switch-default23
                                (i32.shr_s
                                 (i32.shl
                                  (i32.and
                                   (local.get $14)
                                   (i32.const 255)
                                  )
                                  (i32.const 24)
                                 )
                                 (i32.const 24)
                                )
                               )
                              )
                              (i32.store
                               (i32.load
                                (local.get $10)
                               )
                               (local.get $9)
                              )
                              (local.set $4
                               (i32.const 0)
                              )
                              (br $label$break$L77)
                             )
                             (i32.store
                              (i32.load
                               (local.get $10)
                              )
                              (local.get $9)
                             )
                             (local.set $4
                              (i32.const 0)
                             )
                             (br $label$break$L77)
                            )
                            (i64.store
                             (i32.load
                              (local.get $10)
                             )
                             (i64.extend_i32_s
                              (local.get $9)
                             )
                            )
                            (local.set $4
                             (i32.const 0)
                            )
                            (br $label$break$L77)
                           )
                           (i32.store16
                            (i32.load
                             (local.get $10)
                            )
                            (local.get $9)
                           )
                           (local.set $4
                            (i32.const 0)
                           )
                           (br $label$break$L77)
                          )
                          (i32.store8
                           (i32.load
                            (local.get $10)
                           )
                           (local.get $9)
                          )
                          (local.set $4
                           (i32.const 0)
                          )
                          (br $label$break$L77)
                         )
                         (i32.store
                          (i32.load
                           (local.get $10)
                          )
                          (local.get $9)
                         )
                         (local.set $4
                          (i32.const 0)
                         )
                         (br $label$break$L77)
                        )
                        (i64.store
                         (i32.load
                          (local.get $10)
                         )
                         (i64.extend_i32_s
                          (local.get $9)
                         )
                        )
                        (local.set $4
                         (i32.const 0)
                        )
                        (br $label$break$L77)
                       )
                       (local.set $4
                        (i32.const 0)
                       )
                       (br $label$break$L77)
                      )
                      (local.set $5
                       (i32.or
                        (local.get $5)
                        (i32.const 8)
                       )
                      )
                      (local.set $4
                       (select
                        (local.get $4)
                        (i32.const 8)
                        (i32.gt_u
                         (local.get $4)
                         (i32.const 8)
                        )
                       )
                      )
                      (local.set $6
                       (i32.const 120)
                      )
                      (br $__rjti$3)
                     )
                     (local.set $6
                      (i32.sub
                       (local.get $20)
                       (local.tee $13
                        (call $_fmt_o
                         (i64.load
                          (local.get $10)
                         )
                         (local.get $21)
                        )
                       )
                      )
                     )
                     (local.set $8
                      (local.get $5)
                     )
                     (local.set $4
                      (select
                       (local.get $4)
                       (i32.add
                        (local.get $6)
                        (i32.const 1)
                       )
                       (i32.or
                        (i32.eqz
                         (i32.and
                          (local.get $5)
                          (i32.const 8)
                         )
                        )
                        (i32.gt_s
                         (local.get $4)
                         (local.get $6)
                        )
                       )
                      )
                     )
                     (local.set $7
                      (i32.const 0)
                     )
                     (local.set $14
                      (i32.const 1910)
                     )
                     (br $__rjti$6)
                    )
                    (if
                     (i64.lt_s
                      (local.tee $22
                       (i64.load
                        (local.get $10)
                       )
                      )
                      (i64.const 0)
                     )
                     (block
                      (i64.store
                       (local.get $10)
                       (local.tee $22
                        (i64.sub
                         (i64.const 0)
                         (local.get $22)
                        )
                       )
                      )
                      (local.set $7
                       (i32.const 1)
                      )
                      (local.set $14
                       (i32.const 1910)
                      )
                      (br $__rjti$4)
                     )
                     (block
                      (local.set $7
                       (i32.ne
                        (i32.and
                         (local.get $5)
                         (i32.const 2049)
                        )
                        (i32.const 0)
                       )
                      )
                      (local.set $14
                       (select
                        (i32.const 1911)
                        (select
                         (i32.const 1912)
                         (i32.const 1910)
                         (i32.and
                          (local.get $5)
                          (i32.const 1)
                         )
                        )
                        (i32.and
                         (local.get $5)
                         (i32.const 2048)
                        )
                       )
                      )
                      (br $__rjti$4)
                     )
                    )
                   )
                   (local.set $22
                    (i64.load
                     (local.get $10)
                    )
                   )
                   (local.set $7
                    (i32.const 0)
                   )
                   (local.set $14
                    (i32.const 1910)
                   )
                   (br $__rjti$4)
                  )
                  (i64.store8
                   (local.get $24)
                   (i64.load
                    (local.get $10)
                   )
                  )
                  (local.set $6
                   (local.get $24)
                  )
                  (local.set $5
                   (local.get $7)
                  )
                  (local.set $8
                   (i32.const 1)
                  )
                  (local.set $7
                   (i32.const 0)
                  )
                  (local.set $14
                   (i32.const 1910)
                  )
                  (local.set $4
                   (local.get $20)
                  )
                  (br $__rjto$7)
                 )
                 (local.set $18
                  (i32.eqz
                   (local.tee $15
                    (call $_memchr
                     (local.tee $13
                      (select
                       (local.tee $5
                        (i32.load
                         (local.get $10)
                        )
                       )
                       (i32.const 1920)
                       (local.get $5)
                      )
                     )
                     (local.get $4)
                    )
                   )
                  )
                 )
                 (local.set $5
                  (local.get $7)
                 )
                 (local.set $8
                  (select
                   (local.get $4)
                   (i32.sub
                    (local.get $15)
                    (local.tee $6
                     (local.get $13)
                    )
                   )
                   (local.get $18)
                  )
                 )
                 (local.set $7
                  (i32.const 0)
                 )
                 (local.set $14
                  (i32.const 1910)
                 )
                 (local.set $4
                  (select
                   (i32.add
                    (local.get $4)
                    (local.get $6)
                   )
                   (local.get $15)
                   (local.get $18)
                  )
                 )
                 (br $__rjto$7)
                )
                (i64.store32
                 (local.get $25)
                 (i64.load
                  (local.get $10)
                 )
                )
                (i32.store
                 (local.get $26)
                 (i32.const 0)
                )
                (i32.store
                 (local.get $10)
                 (local.get $25)
                )
                (local.set $8
                 (i32.const -1)
                )
                (br $__rjti$5)
               )
               (if
                (local.get $4)
                (block
                 (local.set $8
                  (local.get $4)
                 )
                 (br $__rjti$5)
                )
                (block
                 (call $_pad_524
                  (local.get $0)
                  (i32.const 32)
                  (local.get $16)
                  (i32.const 0)
                  (local.get $5)
                 )
                 (local.set $4
                  (i32.const 0)
                 )
                 (br $__rjti$7)
                )
               )
              )
              (local.set $4
               (call_indirect (type $FUNCSIG$iidiiii)
                (local.get $0)
                (f64.load
                 (local.get $10)
                )
                (local.get $16)
                (local.get $4)
                (local.get $5)
                (local.get $6)
                (i32.const 3)
               )
              )
              (br $label$break$L77)
             )
             (local.set $6
              (local.get $8)
             )
             (local.set $8
              (local.get $4)
             )
             (local.set $7
              (i32.const 0)
             )
             (local.set $14
              (i32.const 1910)
             )
             (local.set $4
              (local.get $20)
             )
             (br $__rjto$7)
            )
            (local.set $13
             (call $_fmt_x
              (i64.load
               (local.get $10)
              )
              (local.get $21)
              (i32.and
               (local.get $6)
               (i32.const 32)
              )
             )
            )
            (local.set $7
             (select
              (i32.const 0)
              (i32.const 2)
              (local.tee $5
               (i32.or
                (i32.eqz
                 (i32.and
                  (local.tee $8
                   (local.get $5)
                  )
                  (i32.const 8)
                 )
                )
                (i64.eq
                 (i64.load
                  (local.get $10)
                 )
                 (i64.const 0)
                )
               )
              )
             )
            )
            (local.set $14
             (select
              (i32.const 1910)
              (i32.add
               (i32.shr_u
                (local.get $6)
                (i32.const 4)
               )
               (i32.const 1910)
              )
              (local.get $5)
             )
            )
            (br $__rjti$6)
           )
           (local.set $13
            (call $_fmt_u
             (local.get $22)
             (local.get $21)
            )
           )
           (local.set $8
            (local.get $5)
           )
           (br $__rjti$6)
          )
          (local.set $4
           (i32.const 0)
          )
          (local.set $6
           (i32.load
            (local.get $10)
           )
          )
          (block $__rjto$2
           (block $__rjti$2
            (loop $while-in47
             (if
              (local.tee $7
               (i32.load
                (local.get $6)
               )
              )
              (block
               (br_if $__rjti$2
                (i32.or
                 (local.tee $14
                  (i32.lt_s
                   (local.tee $7
                    (call $_wctomb
                     (local.get $23)
                     (local.get $7)
                    )
                   )
                   (i32.const 0)
                  )
                 )
                 (i32.gt_u
                  (local.get $7)
                  (i32.sub
                   (local.get $8)
                   (local.get $4)
                  )
                 )
                )
               )
               (local.set $6
                (i32.add
                 (local.get $6)
                 (i32.const 4)
                )
               )
               (br_if $while-in47
                (i32.gt_u
                 (local.get $8)
                 (local.tee $4
                  (i32.add
                   (local.get $4)
                   (local.get $7)
                  )
                 )
                )
               )
              )
             )
            )
            (br $__rjto$2)
           )
           (if
            (local.get $14)
            (block
             (local.set $9
              (i32.const -1)
             )
             (br $label$break$L1)
            )
           )
          )
          (call $_pad_524
           (local.get $0)
           (i32.const 32)
           (local.get $16)
           (local.get $4)
           (local.get $5)
          )
          (if
           (local.get $4)
           (block
            (local.set $8
             (i32.const 0)
            )
            (local.set $6
             (i32.load
              (local.get $10)
             )
            )
            (loop $while-in49
             (br_if $__rjti$7
              (i32.eqz
               (local.tee $7
                (i32.load
                 (local.get $6)
                )
               )
              )
             )
             (br_if $__rjti$7
              (i32.gt_s
               (local.tee $8
                (i32.add
                 (local.tee $7
                  (call $_wctomb
                   (local.get $23)
                   (local.get $7)
                  )
                 )
                 (local.get $8)
                )
               )
               (local.get $4)
              )
             )
             (local.set $6
              (i32.add
               (local.get $6)
               (i32.const 4)
              )
             )
             (call $_out
              (local.get $0)
              (local.get $23)
              (local.get $7)
             )
             (br_if $while-in49
              (i32.lt_u
               (local.get $8)
               (local.get $4)
              )
             )
            )
            (br $__rjti$7)
           )
           (block
            (local.set $4
             (i32.const 0)
            )
            (br $__rjti$7)
           )
          )
         )
         (local.set $6
          (select
           (local.get $13)
           (local.get $21)
           (local.tee $18
            (i32.or
             (local.tee $15
              (i64.ne
               (i64.load
                (local.get $10)
               )
               (i64.const 0)
              )
             )
             (i32.ne
              (local.get $4)
              (i32.const 0)
             )
            )
           )
          )
         )
         (local.set $5
          (select
           (i32.and
            (local.get $8)
            (i32.const -65537)
           )
           (local.get $8)
           (i32.gt_s
            (local.get $4)
            (i32.const -1)
           )
          )
         )
         (local.set $8
          (select
           (select
            (local.get $4)
            (local.tee $8
             (i32.add
              (i32.sub
               (local.get $20)
               (local.get $13)
              )
              (i32.and
               (i32.xor
                (local.get $15)
                (i32.const 1)
               )
               (i32.const 1)
              )
             )
            )
            (i32.gt_s
             (local.get $4)
             (local.get $8)
            )
           )
           (i32.const 0)
           (local.get $18)
          )
         )
         (local.set $4
          (local.get $20)
         )
         (br $__rjto$7)
        )
        (call $_pad_524
         (local.get $0)
         (i32.const 32)
         (local.get $16)
         (local.get $4)
         (i32.xor
          (local.get $5)
          (i32.const 8192)
         )
        )
        (local.set $4
         (select
          (local.get $16)
          (local.get $4)
          (i32.gt_s
           (local.get $16)
           (local.get $4)
          )
         )
        )
        (br $label$break$L77)
       )
       (call $_pad_524
        (local.get $0)
        (i32.const 32)
        (local.tee $4
         (select
          (local.tee $8
           (i32.add
            (local.get $7)
            (local.tee $15
             (select
              (local.tee $13
               (i32.sub
                (local.get $4)
                (local.get $6)
               )
              )
              (local.get $8)
              (i32.lt_s
               (local.get $8)
               (local.get $13)
              )
             )
            )
           )
          )
          (local.get $16)
          (i32.lt_s
           (local.get $16)
           (local.get $8)
          )
         )
        )
        (local.get $8)
        (local.get $5)
       )
       (call $_out
        (local.get $0)
        (local.get $14)
        (local.get $7)
       )
       (call $_pad_524
        (local.get $0)
        (i32.const 48)
        (local.get $4)
        (local.get $8)
        (i32.xor
         (local.get $5)
         (i32.const 65536)
        )
       )
       (call $_pad_524
        (local.get $0)
        (i32.const 48)
        (local.get $15)
        (local.get $13)
        (i32.const 0)
       )
       (call $_out
        (local.get $0)
        (local.get $6)
        (local.get $13)
       )
       (call $_pad_524
        (local.get $0)
        (i32.const 32)
        (local.get $4)
        (local.get $8)
        (i32.xor
         (local.get $5)
         (i32.const 8192)
        )
       )
      )
      (local.set $5
       (local.get $11)
      )
      (br $label$continue$L1)
     )
    )
    (br $label$break$L123)
   )
   (if
    (i32.eqz
     (local.get $0)
    )
    (local.set $9
     (if (result i32)
      (local.get $5)
      (block (result i32)
       (local.set $0
        (i32.const 1)
       )
       (loop $while-in52
        (if
         (local.tee $4
          (i32.load
           (i32.add
            (i32.shl
             (local.get $0)
             (i32.const 2)
            )
            (local.get $3)
           )
          )
         )
         (block
          (call $_pop_arg
           (i32.add
            (i32.shl
             (local.get $0)
             (i32.const 3)
            )
            (local.get $2)
           )
           (local.get $4)
           (local.get $1)
          )
          (br_if $while-in52
           (i32.lt_u
            (local.tee $0
             (i32.add
              (local.get $0)
              (i32.const 1)
             )
            )
            (i32.const 10)
           )
          )
          (local.set $9
           (i32.const 1)
          )
          (br $label$break$L123)
         )
        )
       )
       (loop $while-in54 (result i32)
        (if
         (i32.load
          (i32.add
           (i32.shl
            (local.get $0)
            (i32.const 2)
           )
           (local.get $3)
          )
         )
         (block
          (local.set $9
           (i32.const -1)
          )
          (br $label$break$L123)
         )
        )
        (br_if $while-in54
         (i32.lt_u
          (local.tee $0
           (i32.add
            (local.get $0)
            (i32.const 1)
           )
          )
          (i32.const 10)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 0)
     )
    )
   )
  )
  (global.set $STACKTOP
   (local.get $17)
  )
  (local.get $9)
 )
 (func $_out (; 30 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (if
   (i32.eqz
    (i32.and
     (i32.load
      (local.get $0)
     )
     (i32.const 32)
    )
   )
   (call $___fwritex
    (local.get $1)
    (local.get $2)
    (local.get $0)
   )
  )
 )
 (func $_isdigit (; 31 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (i32.lt_u
   (i32.add
    (local.get $0)
    (i32.const -48)
   )
   (i32.const 10)
  )
 )
 (func $_getint (; 32 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (call $_isdigit
    (i32.load8_s
     (i32.load
      (local.get $0)
     )
    )
   )
   (loop $while-in
    (local.set $1
     (i32.add
      (i32.load8_s
       (local.tee $2
        (i32.load
         (local.get $0)
        )
       )
      )
      (i32.add
       (i32.mul
        (local.get $1)
        (i32.const 10)
       )
       (i32.const -48)
      )
     )
    )
    (i32.store
     (local.get $0)
     (local.tee $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
    )
    (br_if $while-in
     (call $_isdigit
      (i32.load8_s
       (local.get $2)
      )
     )
    )
   )
  )
  (local.get $1)
 )
 (func $_pop_arg (; 33 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 f64)
  (if
   (i32.le_u
    (local.get $1)
    (i32.const 20)
   )
   (block $label$break$L1
    (block $switch-case9
     (block $switch-case8
      (block $switch-case7
       (block $switch-case6
        (block $switch-case5
         (block $switch-case4
          (block $switch-case3
           (block $switch-case2
            (block $switch-case1
             (block $switch-case
              (br_table $switch-case $switch-case1 $switch-case2 $switch-case3 $switch-case4 $switch-case5 $switch-case6 $switch-case7 $switch-case8 $switch-case9 $label$break$L1
               (i32.sub
                (local.get $1)
                (i32.const 9)
               )
              )
             )
             (local.set $3
              (i32.load
               (local.tee $1
                (i32.and
                 (i32.add
                  (i32.load
                   (local.get $2)
                  )
                  (i32.const 3)
                 )
                 (i32.const -4)
                )
               )
              )
             )
             (i32.store
              (local.get $2)
              (i32.add
               (local.get $1)
               (i32.const 4)
              )
             )
             (i32.store
              (local.get $0)
              (local.get $3)
             )
             (br $label$break$L1)
            )
            (local.set $3
             (i32.load
              (local.tee $1
               (i32.and
                (i32.add
                 (i32.load
                  (local.get $2)
                 )
                 (i32.const 3)
                )
                (i32.const -4)
               )
              )
             )
            )
            (i32.store
             (local.get $2)
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
            (i64.store
             (local.get $0)
             (i64.extend_i32_s
              (local.get $3)
             )
            )
            (br $label$break$L1)
           )
           (local.set $3
            (i32.load
             (local.tee $1
              (i32.and
               (i32.add
                (i32.load
                 (local.get $2)
                )
                (i32.const 3)
               )
               (i32.const -4)
              )
             )
            )
           )
           (i32.store
            (local.get $2)
            (i32.add
             (local.get $1)
             (i32.const 4)
            )
           )
           (i64.store
            (local.get $0)
            (i64.extend_i32_u
             (local.get $3)
            )
           )
           (br $label$break$L1)
          )
          (local.set $4
           (i64.load
            (local.tee $1
             (i32.and
              (i32.add
               (i32.load
                (local.get $2)
               )
               (i32.const 7)
              )
              (i32.const -8)
             )
            )
           )
          )
          (i32.store
           (local.get $2)
           (i32.add
            (local.get $1)
            (i32.const 8)
           )
          )
          (i64.store
           (local.get $0)
           (local.get $4)
          )
          (br $label$break$L1)
         )
         (local.set $3
          (i32.load
           (local.tee $1
            (i32.and
             (i32.add
              (i32.load
               (local.get $2)
              )
              (i32.const 3)
             )
             (i32.const -4)
            )
           )
          )
         )
         (i32.store
          (local.get $2)
          (i32.add
           (local.get $1)
           (i32.const 4)
          )
         )
         (i64.store
          (local.get $0)
          (i64.extend_i32_s
           (i32.shr_s
            (i32.shl
             (i32.and
              (local.get $3)
              (i32.const 65535)
             )
             (i32.const 16)
            )
            (i32.const 16)
           )
          )
         )
         (br $label$break$L1)
        )
        (local.set $3
         (i32.load
          (local.tee $1
           (i32.and
            (i32.add
             (i32.load
              (local.get $2)
             )
             (i32.const 3)
            )
            (i32.const -4)
           )
          )
         )
        )
        (i32.store
         (local.get $2)
         (i32.add
          (local.get $1)
          (i32.const 4)
         )
        )
        (i64.store
         (local.get $0)
         (i64.extend_i32_u
          (i32.and
           (local.get $3)
           (i32.const 65535)
          )
         )
        )
        (br $label$break$L1)
       )
       (local.set $3
        (i32.load
         (local.tee $1
          (i32.and
           (i32.add
            (i32.load
             (local.get $2)
            )
            (i32.const 3)
           )
           (i32.const -4)
          )
         )
        )
       )
       (i32.store
        (local.get $2)
        (i32.add
         (local.get $1)
         (i32.const 4)
        )
       )
       (i64.store
        (local.get $0)
        (i64.extend_i32_s
         (i32.shr_s
          (i32.shl
           (i32.and
            (local.get $3)
            (i32.const 255)
           )
           (i32.const 24)
          )
          (i32.const 24)
         )
        )
       )
       (br $label$break$L1)
      )
      (local.set $3
       (i32.load
        (local.tee $1
         (i32.and
          (i32.add
           (i32.load
            (local.get $2)
           )
           (i32.const 3)
          )
          (i32.const -4)
         )
        )
       )
      )
      (i32.store
       (local.get $2)
       (i32.add
        (local.get $1)
        (i32.const 4)
       )
      )
      (i64.store
       (local.get $0)
       (i64.extend_i32_u
        (i32.and
         (local.get $3)
         (i32.const 255)
        )
       )
      )
      (br $label$break$L1)
     )
     (local.set $5
      (f64.load
       (local.tee $1
        (i32.and
         (i32.add
          (i32.load
           (local.get $2)
          )
          (i32.const 7)
         )
         (i32.const -8)
        )
       )
      )
     )
     (i32.store
      (local.get $2)
      (i32.add
       (local.get $1)
       (i32.const 8)
      )
     )
     (f64.store
      (local.get $0)
      (local.get $5)
     )
     (br $label$break$L1)
    )
    (call_indirect (type $FUNCSIG$vii)
     (local.get $0)
     (local.get $2)
     (i32.const 11)
    )
   )
  )
 )
 (func $_fmt_x (; 34 ;) (; has Stack IR ;) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i64.ne
    (local.get $0)
    (i64.const 0)
   )
   (loop $while-in
    (i32.store8
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const -1)
      )
     )
     (i32.or
      (local.get $2)
      (i32.load8_u
       (i32.add
        (i32.and
         (i32.wrap_i64
          (local.get $0)
         )
         (i32.const 15)
        )
        (i32.const 1488)
       )
      )
     )
    )
    (br_if $while-in
     (i64.ne
      (local.tee $0
       (i64.shr_u
        (local.get $0)
        (i64.const 4)
       )
      )
      (i64.const 0)
     )
    )
   )
  )
  (local.get $1)
 )
 (func $_fmt_o (; 35 ;) (; has Stack IR ;) (param $0 i64) (param $1 i32) (result i32)
  (if
   (i64.ne
    (local.get $0)
    (i64.const 0)
   )
   (loop $while-in
    (i32.store8
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const -1)
      )
     )
     (i32.or
      (i32.and
       (i32.wrap_i64
        (local.get $0)
       )
       (i32.const 7)
      )
      (i32.const 48)
     )
    )
    (br_if $while-in
     (i64.ne
      (local.tee $0
       (i64.shr_u
        (local.get $0)
        (i64.const 3)
       )
      )
      (i64.const 0)
     )
    )
   )
  )
  (local.get $1)
 )
 (func $_fmt_u (; 36 ;) (; has Stack IR ;) (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $2
   (i32.wrap_i64
    (local.get $0)
   )
  )
  (if
   (i64.gt_u
    (local.get $0)
    (i64.const 4294967295)
   )
   (block
    (loop $while-in
     (i32.store8
      (local.tee $1
       (i32.add
        (local.get $1)
        (i32.const -1)
       )
      )
      (i32.or
       (i32.and
        (i32.wrap_i64
         (i64.sub
          (local.get $0)
          (i64.mul
           (local.tee $3
            (i64.div_u
             (local.get $0)
             (i64.const 10)
            )
           )
           (i64.const 10)
          )
         )
        )
        (i32.const 255)
       )
       (i32.const 48)
      )
     )
     (if
      (i64.gt_u
       (local.get $0)
       (i64.const 42949672959)
      )
      (block
       (local.set $0
        (local.get $3)
       )
       (br $while-in)
      )
     )
    )
    (local.set $2
     (i32.wrap_i64
      (local.get $3)
     )
    )
   )
  )
  (if
   (local.get $2)
   (loop $while-in1
    (i32.store8
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const -1)
      )
     )
     (i32.or
      (i32.sub
       (local.get $2)
       (i32.mul
        (local.tee $4
         (i32.div_u
          (local.get $2)
          (i32.const 10)
         )
        )
        (i32.const 10)
       )
      )
      (i32.const 48)
     )
    )
    (if
     (i32.ge_u
      (local.get $2)
      (i32.const 10)
     )
     (block
      (local.set $2
       (local.get $4)
      )
      (br $while-in1)
     )
    )
   )
  )
  (local.get $1)
 )
 (func $_pad_524 (; 37 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $6
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 256)
   )
  )
  (local.set $5
   (local.get $6)
  )
  (if
   (i32.and
    (i32.eqz
     (i32.and
      (local.get $4)
      (i32.const 73728)
     )
    )
    (i32.gt_s
     (local.get $2)
     (local.get $3)
    )
   )
   (block
    (drop
     (call $_memset
      (local.get $5)
      (i32.shr_s
       (i32.shl
        (local.get $1)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (select
       (local.tee $1
        (i32.sub
         (local.get $2)
         (local.get $3)
        )
       )
       (i32.const 256)
       (i32.lt_u
        (local.get $1)
        (i32.const 256)
       )
      )
     )
    )
    (if
     (i32.gt_u
      (local.get $1)
      (i32.const 255)
     )
     (block
      (local.set $2
       (i32.sub
        (local.get $2)
        (local.get $3)
       )
      )
      (loop $while-in
       (call $_out
        (local.get $0)
        (local.get $5)
        (i32.const 256)
       )
       (br_if $while-in
        (i32.gt_u
         (local.tee $1
          (i32.add
           (local.get $1)
           (i32.const -256)
          )
         )
         (i32.const 255)
        )
       )
      )
      (local.set $1
       (i32.and
        (local.get $2)
        (i32.const 255)
       )
      )
     )
    )
    (call $_out
     (local.get $0)
     (local.get $5)
     (local.get $1)
    )
   )
  )
  (global.set $STACKTOP
   (local.get $6)
  )
 )
 (func $_wctomb (; 38 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (if (result i32)
   (local.get $0)
   (call $_wcrtomb
    (local.get $0)
    (local.get $1)
   )
   (i32.const 0)
  )
 )
 (func $_wcrtomb (; 39 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (if (result i32)
   (local.get $0)
   (block $do-once (result i32)
    (if
     (i32.lt_u
      (local.get $1)
      (i32.const 128)
     )
     (block
      (i32.store8
       (local.get $0)
       (local.get $1)
      )
      (br $do-once
       (i32.const 1)
      )
     )
    )
    (if
     (i32.eqz
      (i32.load
       (i32.load
        (i32.const 1840)
       )
      )
     )
     (if
      (i32.eq
       (i32.and
        (local.get $1)
        (i32.const -128)
       )
       (i32.const 57216)
      )
      (block
       (i32.store8
        (local.get $0)
        (local.get $1)
       )
       (br $do-once
        (i32.const 1)
       )
      )
      (block
       (i32.store
        (i32.const 3072)
        (i32.const 84)
       )
       (br $do-once
        (i32.const -1)
       )
      )
     )
    )
    (if
     (i32.lt_u
      (local.get $1)
      (i32.const 2048)
     )
     (block
      (i32.store8
       (local.get $0)
       (i32.or
        (i32.shr_u
         (local.get $1)
         (i32.const 6)
        )
        (i32.const 192)
       )
      )
      (i32.store8 offset=1
       (local.get $0)
       (i32.or
        (i32.and
         (local.get $1)
         (i32.const 63)
        )
        (i32.const 128)
       )
      )
      (br $do-once
       (i32.const 2)
      )
     )
    )
    (if
     (i32.or
      (i32.eq
       (i32.and
        (local.get $1)
        (i32.const -8192)
       )
       (i32.const 57344)
      )
      (i32.lt_u
       (local.get $1)
       (i32.const 55296)
      )
     )
     (block
      (i32.store8
       (local.get $0)
       (i32.or
        (i32.shr_u
         (local.get $1)
         (i32.const 12)
        )
        (i32.const 224)
       )
      )
      (i32.store8 offset=1
       (local.get $0)
       (i32.or
        (i32.and
         (i32.shr_u
          (local.get $1)
          (i32.const 6)
         )
         (i32.const 63)
        )
        (i32.const 128)
       )
      )
      (i32.store8 offset=2
       (local.get $0)
       (i32.or
        (i32.and
         (local.get $1)
         (i32.const 63)
        )
        (i32.const 128)
       )
      )
      (br $do-once
       (i32.const 3)
      )
     )
    )
    (if (result i32)
     (i32.lt_u
      (i32.add
       (local.get $1)
       (i32.const -65536)
      )
      (i32.const 1048576)
     )
     (block (result i32)
      (i32.store8
       (local.get $0)
       (i32.or
        (i32.shr_u
         (local.get $1)
         (i32.const 18)
        )
        (i32.const 240)
       )
      )
      (i32.store8 offset=1
       (local.get $0)
       (i32.or
        (i32.and
         (i32.shr_u
          (local.get $1)
          (i32.const 12)
         )
         (i32.const 63)
        )
        (i32.const 128)
       )
      )
      (i32.store8 offset=2
       (local.get $0)
       (i32.or
        (i32.and
         (i32.shr_u
          (local.get $1)
          (i32.const 6)
         )
         (i32.const 63)
        )
        (i32.const 128)
       )
      )
      (i32.store8 offset=3
       (local.get $0)
       (i32.or
        (i32.and
         (local.get $1)
         (i32.const 63)
        )
        (i32.const 128)
       )
      )
      (i32.const 4)
     )
     (block (result i32)
      (i32.store
       (i32.const 3072)
       (i32.const 84)
      )
      (i32.const -1)
     )
    )
   )
   (i32.const 1)
  )
 )
 (func $___fwritex (; 40 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$break$L5
   (block $__rjti$0
    (br_if $__rjti$0
     (local.tee $3
      (i32.load
       (local.tee $4
        (i32.add
         (local.get $2)
         (i32.const 16)
        )
       )
      )
     )
    )
    (if
     (i32.eqz
      (call $___towrite
       (local.get $2)
      )
     )
     (block
      (local.set $3
       (i32.load
        (local.get $4)
       )
      )
      (br $__rjti$0)
     )
    )
    (br $label$break$L5)
   )
   (if
    (i32.lt_u
     (i32.sub
      (local.get $3)
      (local.tee $4
       (i32.load
        (local.tee $5
         (i32.add
          (local.get $2)
          (i32.const 20)
         )
        )
       )
      )
     )
     (local.get $1)
    )
    (block
     (drop
      (call_indirect (type $FUNCSIG$iiii)
       (local.get $2)
       (local.get $0)
       (local.get $1)
       (i32.add
        (i32.and
         (i32.load offset=36
          (local.get $2)
         )
         (i32.const 3)
        )
        (i32.const 4)
       )
      )
     )
     (br $label$break$L5)
    )
   )
   (drop
    (if (result i32)
     (i32.or
      (i32.eqz
       (local.get $1)
      )
      (i32.lt_s
       (i32.load8_s offset=75
        (local.get $2)
       )
       (i32.const 0)
      )
     )
     (i32.const 0)
     (block $label$break$L10 (result i32)
      (local.set $3
       (local.get $1)
      )
      (loop $while-in
       (if
        (i32.ne
         (i32.load8_s
          (i32.add
           (local.get $0)
           (local.tee $6
            (i32.add
             (local.get $3)
             (i32.const -1)
            )
           )
          )
         )
         (i32.const 10)
        )
        (if
         (local.get $6)
         (block
          (local.set $3
           (local.get $6)
          )
          (br $while-in)
         )
         (br $label$break$L10
          (i32.const 0)
         )
        )
       )
      )
      (br_if $label$break$L5
       (i32.lt_u
        (call_indirect (type $FUNCSIG$iiii)
         (local.get $2)
         (local.get $0)
         (local.get $3)
         (i32.add
          (i32.and
           (i32.load offset=36
            (local.get $2)
           )
           (i32.const 3)
          )
          (i32.const 4)
         )
        )
        (local.get $3)
       )
      )
      (local.set $4
       (i32.load
        (local.get $5)
       )
      )
      (local.set $1
       (i32.sub
        (local.get $1)
        (local.get $3)
       )
      )
      (local.set $0
       (i32.add
        (local.get $0)
        (local.get $3)
       )
      )
      (i32.const 0)
     )
    )
   )
   (drop
    (call $_memcpy
     (local.get $4)
     (local.get $0)
     (local.get $1)
    )
   )
   (i32.store
    (local.get $5)
    (i32.add
     (i32.load
      (local.get $5)
     )
     (local.get $1)
    )
   )
  )
 )
 (func $___towrite (; 41 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (i32.load8_s
    (local.tee $2
     (i32.add
      (local.get $0)
      (i32.const 74)
     )
    )
   )
  )
  (i32.store8
   (local.get $2)
   (i32.or
    (local.get $1)
    (i32.add
     (local.get $1)
     (i32.const 255)
    )
   )
  )
  (if (result i32)
   (i32.and
    (local.tee $1
     (i32.load
      (local.get $0)
     )
    )
    (i32.const 8)
   )
   (block (result i32)
    (i32.store
     (local.get $0)
     (i32.or
      (local.get $1)
      (i32.const 32)
     )
    )
    (i32.const -1)
   )
   (block (result i32)
    (i32.store
     (i32.add
      (local.get $0)
      (i32.const 8)
     )
     (i32.const 0)
    )
    (i32.store
     (i32.add
      (local.get $0)
      (i32.const 4)
     )
     (i32.const 0)
    )
    (i32.store
     (i32.add
      (local.get $0)
      (i32.const 28)
     )
     (local.tee $1
      (i32.load
       (i32.add
        (local.get $0)
        (i32.const 44)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (local.get $0)
      (i32.const 20)
     )
     (local.get $1)
    )
    (i32.store
     (i32.add
      (local.get $0)
      (i32.const 16)
     )
     (i32.add
      (local.get $1)
      (i32.load
       (i32.add
        (local.get $0)
        (i32.const 48)
       )
      )
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $_printf (; 42 ;) (; has Stack IR ;) (param $0 i32)
  (local $1 i32)
  (local.set $1
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 16)
   )
  )
  (i32.store
   (local.get $1)
   (local.get $0)
  )
  (call $___vfprintf_internal
   (i32.load
    (i32.const 1648)
   )
   (local.get $1)
  )
  (global.set $STACKTOP
   (local.get $1)
  )
 )
 (func $_malloc (; 43 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local.set $14
   (global.get $STACKTOP)
  )
  (global.set $STACKTOP
   (i32.add
    (global.get $STACKTOP)
    (i32.const 16)
   )
  )
  (local.set $3
   (if (result i32)
    (i32.lt_u
     (local.get $0)
     (i32.const 245)
    )
    (block (result i32)
     (if
      (i32.and
       (local.tee $3
        (i32.shr_u
         (local.tee $7
          (i32.load
           (i32.const 3076)
          )
         )
         (local.tee $0
          (i32.shr_u
           (local.tee $2
            (select
             (i32.const 16)
             (i32.and
              (i32.add
               (local.get $0)
               (i32.const 11)
              )
              (i32.const -8)
             )
             (i32.lt_u
              (local.get $0)
              (i32.const 11)
             )
            )
           )
           (i32.const 3)
          )
         )
        )
       )
       (i32.const 3)
      )
      (block
       (if
        (i32.eq
         (local.tee $3
          (i32.load
           (local.tee $5
            (i32.add
             (local.tee $0
              (i32.load
               (local.tee $4
                (i32.add
                 (local.tee $2
                  (i32.add
                   (i32.shl
                    (local.tee $1
                     (i32.add
                      (i32.xor
                       (i32.and
                        (local.get $3)
                        (i32.const 1)
                       )
                       (i32.const 1)
                      )
                      (local.get $0)
                     )
                    )
                    (i32.const 3)
                   )
                   (i32.const 3116)
                  )
                 )
                 (i32.const 8)
                )
               )
              )
             )
             (i32.const 8)
            )
           )
          )
         )
         (local.get $2)
        )
        (i32.store
         (i32.const 3076)
         (i32.and
          (local.get $7)
          (i32.xor
           (i32.shl
            (i32.const 1)
            (local.get $1)
           )
           (i32.const -1)
          )
         )
        )
        (block
         (if
          (i32.gt_u
           (i32.load
            (i32.const 3092)
           )
           (local.get $3)
          )
          (call $_abort)
         )
         (if
          (i32.eq
           (local.get $0)
           (i32.load
            (local.tee $6
             (i32.add
              (local.get $3)
              (i32.const 12)
             )
            )
           )
          )
          (block
           (i32.store
            (local.get $6)
            (local.get $2)
           )
           (i32.store
            (local.get $4)
            (local.get $3)
           )
          )
          (call $_abort)
         )
        )
       )
       (i32.store offset=4
        (local.get $0)
        (i32.or
         (local.tee $3
          (i32.shl
           (local.get $1)
           (i32.const 3)
          )
         )
         (i32.const 3)
        )
       )
       (i32.store
        (local.tee $0
         (i32.add
          (i32.add
           (local.get $0)
           (local.get $3)
          )
          (i32.const 4)
         )
        )
        (i32.or
         (i32.load
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (global.set $STACKTOP
        (local.get $14)
       )
       (return
        (local.get $5)
       )
      )
     )
     (if (result i32)
      (i32.gt_u
       (local.get $2)
       (local.tee $13
        (i32.load
         (i32.const 3084)
        )
       )
      )
      (block (result i32)
       (if
        (local.get $3)
        (block
         (if
          (i32.eq
           (local.tee $3
            (i32.load
             (local.tee $10
              (i32.add
               (local.tee $0
                (i32.load
                 (local.tee $8
                  (i32.add
                   (local.tee $6
                    (i32.add
                     (i32.shl
                      (local.tee $1
                       (i32.add
                        (i32.or
                         (i32.or
                          (i32.or
                           (i32.or
                            (local.tee $3
                             (i32.and
                              (i32.shr_u
                               (local.tee $0
                                (i32.add
                                 (i32.and
                                  (local.tee $0
                                   (i32.and
                                    (i32.or
                                     (local.tee $1
                                      (i32.shl
                                       (i32.const 2)
                                       (local.get $0)
                                      )
                                     )
                                     (i32.sub
                                      (i32.const 0)
                                      (local.get $1)
                                     )
                                    )
                                    (i32.shl
                                     (local.get $3)
                                     (local.get $0)
                                    )
                                   )
                                  )
                                  (i32.sub
                                   (i32.const 0)
                                   (local.get $0)
                                  )
                                 )
                                 (i32.const -1)
                                )
                               )
                               (i32.const 12)
                              )
                              (i32.const 16)
                             )
                            )
                            (local.tee $3
                             (i32.and
                              (i32.shr_u
                               (local.tee $0
                                (i32.shr_u
                                 (local.get $0)
                                 (local.get $3)
                                )
                               )
                               (i32.const 5)
                              )
                              (i32.const 8)
                             )
                            )
                           )
                           (local.tee $3
                            (i32.and
                             (i32.shr_u
                              (local.tee $0
                               (i32.shr_u
                                (local.get $0)
                                (local.get $3)
                               )
                              )
                              (i32.const 2)
                             )
                             (i32.const 4)
                            )
                           )
                          )
                          (local.tee $3
                           (i32.and
                            (i32.shr_u
                             (local.tee $0
                              (i32.shr_u
                               (local.get $0)
                               (local.get $3)
                              )
                             )
                             (i32.const 1)
                            )
                            (i32.const 2)
                           )
                          )
                         )
                         (local.tee $3
                          (i32.and
                           (i32.shr_u
                            (local.tee $0
                             (i32.shr_u
                              (local.get $0)
                              (local.get $3)
                             )
                            )
                            (i32.const 1)
                           )
                           (i32.const 1)
                          )
                         )
                        )
                        (i32.shr_u
                         (local.get $0)
                         (local.get $3)
                        )
                       )
                      )
                      (i32.const 3)
                     )
                     (i32.const 3116)
                    )
                   )
                   (i32.const 8)
                  )
                 )
                )
               )
               (i32.const 8)
              )
             )
            )
           )
           (local.get $6)
          )
          (i32.store
           (i32.const 3076)
           (local.tee $4
            (i32.and
             (local.get $7)
             (i32.xor
              (i32.shl
               (i32.const 1)
               (local.get $1)
              )
              (i32.const -1)
             )
            )
           )
          )
          (block
           (if
            (i32.gt_u
             (i32.load
              (i32.const 3092)
             )
             (local.get $3)
            )
            (call $_abort)
           )
           (if
            (i32.eq
             (i32.load
              (local.tee $11
               (i32.add
                (local.get $3)
                (i32.const 12)
               )
              )
             )
             (local.get $0)
            )
            (block
             (i32.store
              (local.get $11)
              (local.get $6)
             )
             (i32.store
              (local.get $8)
              (local.get $3)
             )
             (local.set $4
              (local.get $7)
             )
            )
            (call $_abort)
           )
          )
         )
         (i32.store offset=4
          (local.get $0)
          (i32.or
           (local.get $2)
           (i32.const 3)
          )
         )
         (i32.store offset=4
          (local.tee $7
           (i32.add
            (local.get $0)
            (local.get $2)
           )
          )
          (i32.or
           (local.tee $6
            (i32.sub
             (local.tee $3
              (i32.shl
               (local.get $1)
               (i32.const 3)
              )
             )
             (local.get $2)
            )
           )
           (i32.const 1)
          )
         )
         (i32.store
          (i32.add
           (local.get $0)
           (local.get $3)
          )
          (local.get $6)
         )
         (if
          (local.get $13)
          (block
           (local.set $2
            (i32.load
             (i32.const 3096)
            )
           )
           (local.set $0
            (i32.add
             (i32.shl
              (local.tee $3
               (i32.shr_u
                (local.get $13)
                (i32.const 3)
               )
              )
              (i32.const 3)
             )
             (i32.const 3116)
            )
           )
           (if
            (i32.and
             (local.get $4)
             (local.tee $3
              (i32.shl
               (i32.const 1)
               (local.get $3)
              )
             )
            )
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3092)
              )
              (local.tee $1
               (i32.load
                (local.tee $3
                 (i32.add
                  (local.get $0)
                  (i32.const 8)
                 )
                )
               )
              )
             )
             (call $_abort)
             (block
              (local.set $12
               (local.get $3)
              )
              (local.set $5
               (local.get $1)
              )
             )
            )
            (block
             (i32.store
              (i32.const 3076)
              (i32.or
               (local.get $3)
               (local.get $4)
              )
             )
             (local.set $12
              (i32.add
               (local.get $0)
               (i32.const 8)
              )
             )
             (local.set $5
              (local.get $0)
             )
            )
           )
           (i32.store
            (local.get $12)
            (local.get $2)
           )
           (i32.store offset=12
            (local.get $5)
            (local.get $2)
           )
           (i32.store offset=8
            (local.get $2)
            (local.get $5)
           )
           (i32.store offset=12
            (local.get $2)
            (local.get $0)
           )
          )
         )
         (i32.store
          (i32.const 3084)
          (local.get $6)
         )
         (i32.store
          (i32.const 3096)
          (local.get $7)
         )
         (global.set $STACKTOP
          (local.get $14)
         )
         (return
          (local.get $10)
         )
        )
       )
       (if (result i32)
        (local.tee $12
         (i32.load
          (i32.const 3080)
         )
        )
        (block
         (local.set $10
          (i32.sub
           (i32.and
            (i32.load offset=4
             (local.tee $0
              (i32.load
               (i32.add
                (i32.shl
                 (i32.add
                  (i32.or
                   (i32.or
                    (i32.or
                     (i32.or
                      (local.tee $3
                       (i32.and
                        (i32.shr_u
                         (local.tee $0
                          (i32.add
                           (i32.and
                            (local.get $12)
                            (i32.sub
                             (i32.const 0)
                             (local.get $12)
                            )
                           )
                           (i32.const -1)
                          )
                         )
                         (i32.const 12)
                        )
                        (i32.const 16)
                       )
                      )
                      (local.tee $3
                       (i32.and
                        (i32.shr_u
                         (local.tee $0
                          (i32.shr_u
                           (local.get $0)
                           (local.get $3)
                          )
                         )
                         (i32.const 5)
                        )
                        (i32.const 8)
                       )
                      )
                     )
                     (local.tee $3
                      (i32.and
                       (i32.shr_u
                        (local.tee $0
                         (i32.shr_u
                          (local.get $0)
                          (local.get $3)
                         )
                        )
                        (i32.const 2)
                       )
                       (i32.const 4)
                      )
                     )
                    )
                    (local.tee $3
                     (i32.and
                      (i32.shr_u
                       (local.tee $0
                        (i32.shr_u
                         (local.get $0)
                         (local.get $3)
                        )
                       )
                       (i32.const 1)
                      )
                      (i32.const 2)
                     )
                    )
                   )
                   (local.tee $3
                    (i32.and
                     (i32.shr_u
                      (local.tee $0
                       (i32.shr_u
                        (local.get $0)
                        (local.get $3)
                       )
                      )
                      (i32.const 1)
                     )
                     (i32.const 1)
                    )
                   )
                  )
                  (i32.shr_u
                   (local.get $0)
                   (local.get $3)
                  )
                 )
                 (i32.const 2)
                )
                (i32.const 3380)
               )
              )
             )
            )
            (i32.const -8)
           )
           (local.get $2)
          )
         )
         (local.set $8
          (local.get $0)
         )
         (loop $while-in
          (block $while-out
           (if
            (local.tee $3
             (i32.load offset=16
              (local.get $0)
             )
            )
            (local.set $0
             (local.get $3)
            )
            (br_if $while-out
             (i32.eqz
              (local.tee $0
               (i32.load offset=20
                (local.get $0)
               )
              )
             )
            )
           )
           (local.set $3
            (i32.lt_u
             (local.tee $4
              (i32.sub
               (i32.and
                (i32.load offset=4
                 (local.get $0)
                )
                (i32.const -8)
               )
               (local.get $2)
              )
             )
             (local.get $10)
            )
           )
           (local.set $10
            (select
             (local.get $4)
             (local.get $10)
             (local.get $3)
            )
           )
           (local.set $8
            (select
             (local.get $0)
             (local.get $8)
             (local.get $3)
            )
           )
           (br $while-in)
          )
         )
         (if
          (i32.gt_u
           (local.tee $15
            (i32.load
             (i32.const 3092)
            )
           )
           (local.get $8)
          )
          (call $_abort)
         )
         (if
          (i32.le_u
           (local.tee $9
            (i32.add
             (local.get $2)
             (local.get $8)
            )
           )
           (local.get $8)
          )
          (call $_abort)
         )
         (local.set $11
          (i32.load offset=24
           (local.get $8)
          )
         )
         (if
          (i32.eq
           (local.tee $0
            (i32.load offset=12
             (local.get $8)
            )
           )
           (local.get $8)
          )
          (block $do-once4
           (if
            (i32.eqz
             (local.tee $0
              (i32.load
               (local.tee $3
                (i32.add
                 (local.get $8)
                 (i32.const 20)
                )
               )
              )
             )
            )
            (br_if $do-once4
             (i32.eqz
              (local.tee $0
               (i32.load
                (local.tee $3
                 (i32.add
                  (local.get $8)
                  (i32.const 16)
                 )
                )
               )
              )
             )
            )
           )
           (loop $while-in7
            (block $while-out6
             (local.set $0
              (if (result i32)
               (local.tee $5
                (i32.load
                 (local.tee $4
                  (i32.add
                   (local.get $0)
                   (i32.const 20)
                  )
                 )
                )
               )
               (block (result i32)
                (local.set $3
                 (local.get $4)
                )
                (local.get $5)
               )
               (block (result i32)
                (br_if $while-out6
                 (i32.eqz
                  (local.tee $5
                   (i32.load
                    (local.tee $4
                     (i32.add
                      (local.get $0)
                      (i32.const 16)
                     )
                    )
                   )
                  )
                 )
                )
                (local.set $3
                 (local.get $4)
                )
                (local.get $5)
               )
              )
             )
             (br $while-in7)
            )
           )
           (if
            (i32.gt_u
             (local.get $15)
             (local.get $3)
            )
            (call $_abort)
            (block
             (i32.store
              (local.get $3)
              (i32.const 0)
             )
             (local.set $1
              (local.get $0)
             )
            )
           )
          )
          (block
           (if
            (i32.gt_u
             (local.get $15)
             (local.tee $3
              (i32.load offset=8
               (local.get $8)
              )
             )
            )
            (call $_abort)
           )
           (if
            (i32.ne
             (local.get $8)
             (i32.load
              (local.tee $4
               (i32.add
                (local.get $3)
                (i32.const 12)
               )
              )
             )
            )
            (call $_abort)
           )
           (if
            (i32.eq
             (i32.load
              (local.tee $5
               (i32.add
                (local.get $0)
                (i32.const 8)
               )
              )
             )
             (local.get $8)
            )
            (block
             (i32.store
              (local.get $4)
              (local.get $0)
             )
             (i32.store
              (local.get $5)
              (local.get $3)
             )
             (local.set $1
              (local.get $0)
             )
            )
            (call $_abort)
           )
          )
         )
         (if
          (local.get $11)
          (block $label$break$L78
           (if
            (i32.eq
             (i32.load
              (local.tee $3
               (i32.add
                (i32.shl
                 (local.tee $0
                  (i32.load offset=28
                   (local.get $8)
                  )
                 )
                 (i32.const 2)
                )
                (i32.const 3380)
               )
              )
             )
             (local.get $8)
            )
            (block
             (i32.store
              (local.get $3)
              (local.get $1)
             )
             (if
              (i32.eqz
               (local.get $1)
              )
              (block
               (i32.store
                (i32.const 3080)
                (i32.and
                 (local.get $12)
                 (i32.xor
                  (i32.shl
                   (i32.const 1)
                   (local.get $0)
                  )
                  (i32.const -1)
                 )
                )
               )
               (br $label$break$L78)
              )
             )
            )
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3092)
              )
              (local.get $11)
             )
             (call $_abort)
             (block
              (i32.store
               (select
                (local.tee $0
                 (i32.add
                  (local.get $11)
                  (i32.const 16)
                 )
                )
                (i32.add
                 (local.get $11)
                 (i32.const 20)
                )
                (i32.eq
                 (i32.load
                  (local.get $0)
                 )
                 (local.get $8)
                )
               )
               (local.get $1)
              )
              (br_if $label$break$L78
               (i32.eqz
                (local.get $1)
               )
              )
             )
            )
           )
           (if
            (i32.gt_u
             (local.tee $3
              (i32.load
               (i32.const 3092)
              )
             )
             (local.get $1)
            )
            (call $_abort)
           )
           (i32.store offset=24
            (local.get $1)
            (local.get $11)
           )
           (if
            (local.tee $0
             (i32.load offset=16
              (local.get $8)
             )
            )
            (if
             (i32.gt_u
              (local.get $3)
              (local.get $0)
             )
             (call $_abort)
             (block
              (i32.store offset=16
               (local.get $1)
               (local.get $0)
              )
              (i32.store offset=24
               (local.get $0)
               (local.get $1)
              )
             )
            )
           )
           (if
            (local.tee $0
             (i32.load offset=20
              (local.get $8)
             )
            )
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3092)
              )
              (local.get $0)
             )
             (call $_abort)
             (block
              (i32.store offset=20
               (local.get $1)
               (local.get $0)
              )
              (i32.store offset=24
               (local.get $0)
               (local.get $1)
              )
             )
            )
           )
          )
         )
         (if
          (i32.lt_u
           (local.get $10)
           (i32.const 16)
          )
          (block
           (i32.store offset=4
            (local.get $8)
            (i32.or
             (local.tee $0
              (i32.add
               (local.get $2)
               (local.get $10)
              )
             )
             (i32.const 3)
            )
           )
           (i32.store
            (local.tee $0
             (i32.add
              (i32.add
               (local.get $0)
               (local.get $8)
              )
              (i32.const 4)
             )
            )
            (i32.or
             (i32.load
              (local.get $0)
             )
             (i32.const 1)
            )
           )
          )
          (block
           (i32.store offset=4
            (local.get $8)
            (i32.or
             (local.get $2)
             (i32.const 3)
            )
           )
           (i32.store offset=4
            (local.get $9)
            (i32.or
             (local.get $10)
             (i32.const 1)
            )
           )
           (i32.store
            (i32.add
             (local.get $9)
             (local.get $10)
            )
            (local.get $10)
           )
           (if
            (local.get $13)
            (block
             (local.set $2
              (i32.load
               (i32.const 3096)
              )
             )
             (local.set $0
              (i32.add
               (i32.shl
                (local.tee $3
                 (i32.shr_u
                  (local.get $13)
                  (i32.const 3)
                 )
                )
                (i32.const 3)
               )
               (i32.const 3116)
              )
             )
             (if
              (i32.and
               (local.get $7)
               (local.tee $3
                (i32.shl
                 (i32.const 1)
                 (local.get $3)
                )
               )
              )
              (if
               (i32.gt_u
                (i32.load
                 (i32.const 3092)
                )
                (local.tee $1
                 (i32.load
                  (local.tee $3
                   (i32.add
                    (local.get $0)
                    (i32.const 8)
                   )
                  )
                 )
                )
               )
               (call $_abort)
               (block
                (local.set $16
                 (local.get $3)
                )
                (local.set $6
                 (local.get $1)
                )
               )
              )
              (block
               (i32.store
                (i32.const 3076)
                (i32.or
                 (local.get $3)
                 (local.get $7)
                )
               )
               (local.set $16
                (i32.add
                 (local.get $0)
                 (i32.const 8)
                )
               )
               (local.set $6
                (local.get $0)
               )
              )
             )
             (i32.store
              (local.get $16)
              (local.get $2)
             )
             (i32.store offset=12
              (local.get $6)
              (local.get $2)
             )
             (i32.store offset=8
              (local.get $2)
              (local.get $6)
             )
             (i32.store offset=12
              (local.get $2)
              (local.get $0)
             )
            )
           )
           (i32.store
            (i32.const 3084)
            (local.get $10)
           )
           (i32.store
            (i32.const 3096)
            (local.get $9)
           )
          )
         )
         (global.set $STACKTOP
          (local.get $14)
         )
         (return
          (i32.add
           (local.get $8)
           (i32.const 8)
          )
         )
        )
        (local.get $2)
       )
      )
      (local.get $2)
     )
    )
    (if (result i32)
     (i32.gt_u
      (local.get $0)
      (i32.const -65)
     )
     (i32.const -1)
     (block $do-once (result i32)
      (local.set $4
       (i32.and
        (local.tee $0
         (i32.add
          (local.get $0)
          (i32.const 11)
         )
        )
        (i32.const -8)
       )
      )
      (if (result i32)
       (local.tee $5
        (i32.load
         (i32.const 3080)
        )
       )
       (block (result i32)
        (local.set $18
         (if (result i32)
          (local.tee $0
           (i32.shr_u
            (local.get $0)
            (i32.const 8)
           )
          )
          (if (result i32)
           (i32.gt_u
            (local.get $4)
            (i32.const 16777215)
           )
           (i32.const 31)
           (block (result i32)
            (local.set $0
             (i32.and
              (i32.shr_u
               (i32.add
                (local.tee $1
                 (i32.shl
                  (local.get $0)
                  (local.tee $2
                   (i32.and
                    (i32.shr_u
                     (i32.add
                      (local.get $0)
                      (i32.const 1048320)
                     )
                     (i32.const 16)
                    )
                    (i32.const 8)
                   )
                  )
                 )
                )
                (i32.const 520192)
               )
               (i32.const 16)
              )
              (i32.const 4)
             )
            )
            (i32.or
             (i32.and
              (i32.shr_u
               (local.get $4)
               (i32.add
                (local.tee $0
                 (i32.add
                  (i32.sub
                   (i32.const 14)
                   (i32.or
                    (local.tee $1
                     (i32.and
                      (i32.shr_u
                       (i32.add
                        (local.tee $6
                         (i32.shl
                          (local.get $1)
                          (local.get $0)
                         )
                        )
                        (i32.const 245760)
                       )
                       (i32.const 16)
                      )
                      (i32.const 2)
                     )
                    )
                    (i32.or
                     (local.get $0)
                     (local.get $2)
                    )
                   )
                  )
                  (i32.shr_u
                   (i32.shl
                    (local.get $6)
                    (local.get $1)
                   )
                   (i32.const 15)
                  )
                 )
                )
                (i32.const 7)
               )
              )
              (i32.const 1)
             )
             (i32.shl
              (local.get $0)
              (i32.const 1)
             )
            )
           )
          )
          (i32.const 0)
         )
        )
        (local.set $1
         (i32.sub
          (i32.const 0)
          (local.get $4)
         )
        )
        (block $__rjto$1
         (block $__rjti$1
          (if
           (local.tee $0
            (i32.load
             (i32.add
              (i32.shl
               (local.get $18)
               (i32.const 2)
              )
              (i32.const 3380)
             )
            )
           )
           (block
            (local.set $6
             (i32.shl
              (local.get $4)
              (select
               (i32.const 0)
               (i32.sub
                (i32.const 25)
                (i32.shr_u
                 (local.get $18)
                 (i32.const 1)
                )
               )
               (i32.eq
                (local.get $18)
                (i32.const 31)
               )
              )
             )
            )
            (local.set $2
             (i32.const 0)
            )
            (loop $while-in15
             (if
              (i32.lt_u
               (local.tee $16
                (i32.sub
                 (i32.and
                  (i32.load offset=4
                   (local.get $0)
                  )
                  (i32.const -8)
                 )
                 (local.get $4)
                )
               )
               (local.get $1)
              )
              (local.set $1
               (if (result i32)
                (local.get $16)
                (block (result i32)
                 (local.set $2
                  (local.get $0)
                 )
                 (local.get $16)
                )
                (block
                 (local.set $2
                  (i32.const 0)
                 )
                 (local.set $1
                  (local.get $0)
                 )
                 (br $__rjti$1)
                )
               )
              )
             )
             (local.set $0
              (select
               (local.get $12)
               (local.tee $12
                (i32.load offset=20
                 (local.get $0)
                )
               )
               (i32.or
                (i32.eqz
                 (local.get $12)
                )
                (i32.eq
                 (local.get $12)
                 (local.tee $16
                  (i32.load
                   (i32.add
                    (i32.add
                     (local.get $0)
                     (i32.const 16)
                    )
                    (i32.shl
                     (i32.shr_u
                      (local.get $6)
                      (i32.const 31)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                 )
                )
               )
              )
             )
             (local.set $6
              (i32.shl
               (local.get $6)
               (i32.const 1)
              )
             )
             (if
              (local.get $16)
              (block
               (local.set $12
                (local.get $0)
               )
               (local.set $0
                (local.get $16)
               )
               (br $while-in15)
              )
             )
            )
           )
           (block
            (local.set $0
             (i32.const 0)
            )
            (local.set $2
             (i32.const 0)
            )
           )
          )
          (local.set $0
           (if (result i32)
            (i32.or
             (local.get $0)
             (local.get $2)
            )
            (block (result i32)
             (local.set $6
              (local.get $0)
             )
             (local.get $2)
            )
            (block (result i32)
             (drop
              (br_if $do-once
               (local.get $4)
               (i32.eqz
                (local.tee $0
                 (i32.and
                  (local.get $5)
                  (i32.or
                   (local.tee $0
                    (i32.shl
                     (i32.const 2)
                     (local.get $18)
                    )
                   )
                   (i32.sub
                    (i32.const 0)
                    (local.get $0)
                   )
                  )
                 )
                )
               )
              )
             )
             (local.set $6
              (i32.load
               (i32.add
                (i32.shl
                 (i32.add
                  (i32.or
                   (i32.or
                    (i32.or
                     (i32.or
                      (local.tee $2
                       (i32.and
                        (i32.shr_u
                         (local.tee $0
                          (i32.add
                           (i32.and
                            (local.get $0)
                            (i32.sub
                             (i32.const 0)
                             (local.get $0)
                            )
                           )
                           (i32.const -1)
                          )
                         )
                         (i32.const 12)
                        )
                        (i32.const 16)
                       )
                      )
                      (local.tee $2
                       (i32.and
                        (i32.shr_u
                         (local.tee $0
                          (i32.shr_u
                           (local.get $0)
                           (local.get $2)
                          )
                         )
                         (i32.const 5)
                        )
                        (i32.const 8)
                       )
                      )
                     )
                     (local.tee $2
                      (i32.and
                       (i32.shr_u
                        (local.tee $0
                         (i32.shr_u
                          (local.get $0)
                          (local.get $2)
                         )
                        )
                        (i32.const 2)
                       )
                       (i32.const 4)
                      )
                     )
                    )
                    (local.tee $2
                     (i32.and
                      (i32.shr_u
                       (local.tee $0
                        (i32.shr_u
                         (local.get $0)
                         (local.get $2)
                        )
                       )
                       (i32.const 1)
                      )
                      (i32.const 2)
                     )
                    )
                   )
                   (local.tee $2
                    (i32.and
                     (i32.shr_u
                      (local.tee $0
                       (i32.shr_u
                        (local.get $0)
                        (local.get $2)
                       )
                      )
                      (i32.const 1)
                     )
                     (i32.const 1)
                    )
                   )
                  )
                  (i32.shr_u
                   (local.get $0)
                   (local.get $2)
                  )
                 )
                 (i32.const 2)
                )
                (i32.const 3380)
               )
              )
             )
             (i32.const 0)
            )
           )
          )
          (local.set $2
           (if (result i32)
            (local.get $6)
            (block
             (local.set $2
              (local.get $1)
             )
             (local.set $1
              (local.get $6)
             )
             (br $__rjti$1)
            )
            (block (result i32)
             (local.set $6
              (local.get $0)
             )
             (local.get $1)
            )
           )
          )
          (br $__rjto$1)
         )
         (local.set $6
          (local.get $0)
         )
         (loop $while-in17
          (local.set $12
           (i32.lt_u
            (local.tee $16
             (i32.sub
              (i32.and
               (i32.load offset=4
                (local.get $1)
               )
               (i32.const -8)
              )
              (local.get $4)
             )
            )
            (local.get $2)
           )
          )
          (local.set $2
           (select
            (local.get $16)
            (local.get $2)
            (local.get $12)
           )
          )
          (local.set $6
           (select
            (local.get $1)
            (local.get $6)
            (local.get $12)
           )
          )
          (if
           (block (result i32)
            (if
             (i32.eqz
              (local.tee $0
               (i32.load offset=16
                (local.get $1)
               )
              )
             )
             (local.set $0
              (i32.load offset=20
               (local.get $1)
              )
             )
            )
            (local.get $0)
           )
           (block
            (local.set $1
             (local.get $0)
            )
            (br $while-in17)
           )
          )
         )
        )
        (if (result i32)
         (local.get $6)
         (if (result i32)
          (i32.lt_u
           (local.get $2)
           (i32.sub
            (i32.load
             (i32.const 3084)
            )
            (local.get $4)
           )
          )
          (block
           (if
            (i32.gt_u
             (local.tee $17
              (i32.load
               (i32.const 3092)
              )
             )
             (local.get $6)
            )
            (call $_abort)
           )
           (if
            (i32.le_u
             (local.tee $9
              (i32.add
               (local.get $4)
               (local.get $6)
              )
             )
             (local.get $6)
            )
            (call $_abort)
           )
           (local.set $15
            (i32.load offset=24
             (local.get $6)
            )
           )
           (if
            (i32.eq
             (local.tee $0
              (i32.load offset=12
               (local.get $6)
              )
             )
             (local.get $6)
            )
            (block $do-once18
             (if
              (i32.eqz
               (local.tee $0
                (i32.load
                 (local.tee $1
                  (i32.add
                   (local.get $6)
                   (i32.const 20)
                  )
                 )
                )
               )
              )
              (br_if $do-once18
               (i32.eqz
                (local.tee $0
                 (i32.load
                  (local.tee $1
                   (i32.add
                    (local.get $6)
                    (i32.const 16)
                   )
                  )
                 )
                )
               )
              )
             )
             (loop $while-in21
              (block $while-out20
               (local.set $0
                (if (result i32)
                 (local.tee $11
                  (i32.load
                   (local.tee $8
                    (i32.add
                     (local.get $0)
                     (i32.const 20)
                    )
                   )
                  )
                 )
                 (block (result i32)
                  (local.set $1
                   (local.get $8)
                  )
                  (local.get $11)
                 )
                 (block (result i32)
                  (br_if $while-out20
                   (i32.eqz
                    (local.tee $11
                     (i32.load
                      (local.tee $8
                       (i32.add
                        (local.get $0)
                        (i32.const 16)
                       )
                      )
                     )
                    )
                   )
                  )
                  (local.set $1
                   (local.get $8)
                  )
                  (local.get $11)
                 )
                )
               )
               (br $while-in21)
              )
             )
             (if
              (i32.gt_u
               (local.get $17)
               (local.get $1)
              )
              (call $_abort)
              (block
               (i32.store
                (local.get $1)
                (i32.const 0)
               )
               (local.set $7
                (local.get $0)
               )
              )
             )
            )
            (block
             (if
              (i32.gt_u
               (local.get $17)
               (local.tee $1
                (i32.load offset=8
                 (local.get $6)
                )
               )
              )
              (call $_abort)
             )
             (if
              (i32.ne
               (local.get $6)
               (i32.load
                (local.tee $8
                 (i32.add
                  (local.get $1)
                  (i32.const 12)
                 )
                )
               )
              )
              (call $_abort)
             )
             (if
              (i32.eq
               (i32.load
                (local.tee $11
                 (i32.add
                  (local.get $0)
                  (i32.const 8)
                 )
                )
               )
               (local.get $6)
              )
              (block
               (i32.store
                (local.get $8)
                (local.get $0)
               )
               (i32.store
                (local.get $11)
                (local.get $1)
               )
               (local.set $7
                (local.get $0)
               )
              )
              (call $_abort)
             )
            )
           )
           (if
            (local.get $15)
            (block $label$break$L176
             (if
              (i32.eq
               (i32.load
                (local.tee $1
                 (i32.add
                  (i32.shl
                   (local.tee $0
                    (i32.load offset=28
                     (local.get $6)
                    )
                   )
                   (i32.const 2)
                  )
                  (i32.const 3380)
                 )
                )
               )
               (local.get $6)
              )
              (block
               (i32.store
                (local.get $1)
                (local.get $7)
               )
               (if
                (i32.eqz
                 (local.get $7)
                )
                (block
                 (i32.store
                  (i32.const 3080)
                  (local.tee $3
                   (i32.and
                    (local.get $5)
                    (i32.xor
                     (i32.shl
                      (i32.const 1)
                      (local.get $0)
                     )
                     (i32.const -1)
                    )
                   )
                  )
                 )
                 (br $label$break$L176)
                )
               )
              )
              (if
               (i32.gt_u
                (i32.load
                 (i32.const 3092)
                )
                (local.get $15)
               )
               (call $_abort)
               (block
                (i32.store
                 (select
                  (local.tee $0
                   (i32.add
                    (local.get $15)
                    (i32.const 16)
                   )
                  )
                  (i32.add
                   (local.get $15)
                   (i32.const 20)
                  )
                  (i32.eq
                   (i32.load
                    (local.get $0)
                   )
                   (local.get $6)
                  )
                 )
                 (local.get $7)
                )
                (if
                 (i32.eqz
                  (local.get $7)
                 )
                 (block
                  (local.set $3
                   (local.get $5)
                  )
                  (br $label$break$L176)
                 )
                )
               )
              )
             )
             (if
              (i32.gt_u
               (local.tee $1
                (i32.load
                 (i32.const 3092)
                )
               )
               (local.get $7)
              )
              (call $_abort)
             )
             (i32.store offset=24
              (local.get $7)
              (local.get $15)
             )
             (if
              (local.tee $0
               (i32.load offset=16
                (local.get $6)
               )
              )
              (if
               (i32.gt_u
                (local.get $1)
                (local.get $0)
               )
               (call $_abort)
               (block
                (i32.store offset=16
                 (local.get $7)
                 (local.get $0)
                )
                (i32.store offset=24
                 (local.get $0)
                 (local.get $7)
                )
               )
              )
             )
             (if
              (local.tee $0
               (i32.load offset=20
                (local.get $6)
               )
              )
              (if
               (i32.gt_u
                (i32.load
                 (i32.const 3092)
                )
                (local.get $0)
               )
               (call $_abort)
               (block
                (i32.store offset=20
                 (local.get $7)
                 (local.get $0)
                )
                (i32.store offset=24
                 (local.get $0)
                 (local.get $7)
                )
                (local.set $3
                 (local.get $5)
                )
               )
              )
              (local.set $3
               (local.get $5)
              )
             )
            )
            (local.set $3
             (local.get $5)
            )
           )
           (if
            (i32.lt_u
             (local.get $2)
             (i32.const 16)
            )
            (block
             (i32.store offset=4
              (local.get $6)
              (i32.or
               (local.tee $0
                (i32.add
                 (local.get $2)
                 (local.get $4)
                )
               )
               (i32.const 3)
              )
             )
             (i32.store
              (local.tee $0
               (i32.add
                (i32.add
                 (local.get $0)
                 (local.get $6)
                )
                (i32.const 4)
               )
              )
              (i32.or
               (i32.load
                (local.get $0)
               )
               (i32.const 1)
              )
             )
            )
            (block $label$break$L200
             (i32.store offset=4
              (local.get $6)
              (i32.or
               (local.get $4)
               (i32.const 3)
              )
             )
             (i32.store offset=4
              (local.get $9)
              (i32.or
               (local.get $2)
               (i32.const 1)
              )
             )
             (i32.store
              (i32.add
               (local.get $2)
               (local.get $9)
              )
              (local.get $2)
             )
             (local.set $1
              (i32.shr_u
               (local.get $2)
               (i32.const 3)
              )
             )
             (if
              (i32.lt_u
               (local.get $2)
               (i32.const 256)
              )
              (block
               (local.set $0
                (i32.add
                 (i32.shl
                  (local.get $1)
                  (i32.const 3)
                 )
                 (i32.const 3116)
                )
               )
               (if
                (i32.and
                 (local.tee $3
                  (i32.load
                   (i32.const 3076)
                  )
                 )
                 (local.tee $1
                  (i32.shl
                   (i32.const 1)
                   (local.get $1)
                  )
                 )
                )
                (if
                 (i32.gt_u
                  (i32.load
                   (i32.const 3092)
                  )
                  (local.tee $1
                   (i32.load
                    (local.tee $3
                     (i32.add
                      (local.get $0)
                      (i32.const 8)
                     )
                    )
                   )
                  )
                 )
                 (call $_abort)
                 (block
                  (local.set $19
                   (local.get $3)
                  )
                  (local.set $13
                   (local.get $1)
                  )
                 )
                )
                (block
                 (i32.store
                  (i32.const 3076)
                  (i32.or
                   (local.get $1)
                   (local.get $3)
                  )
                 )
                 (local.set $19
                  (i32.add
                   (local.get $0)
                   (i32.const 8)
                  )
                 )
                 (local.set $13
                  (local.get $0)
                 )
                )
               )
               (i32.store
                (local.get $19)
                (local.get $9)
               )
               (i32.store offset=12
                (local.get $13)
                (local.get $9)
               )
               (i32.store offset=8
                (local.get $9)
                (local.get $13)
               )
               (i32.store offset=12
                (local.get $9)
                (local.get $0)
               )
               (br $label$break$L200)
              )
             )
             (local.set $0
              (i32.add
               (i32.shl
                (local.tee $1
                 (if (result i32)
                  (local.tee $0
                   (i32.shr_u
                    (local.get $2)
                    (i32.const 8)
                   )
                  )
                  (if (result i32)
                   (i32.gt_u
                    (local.get $2)
                    (i32.const 16777215)
                   )
                   (i32.const 31)
                   (block (result i32)
                    (local.set $0
                     (i32.and
                      (i32.shr_u
                       (i32.add
                        (local.tee $1
                         (i32.shl
                          (local.get $0)
                          (local.tee $4
                           (i32.and
                            (i32.shr_u
                             (i32.add
                              (local.get $0)
                              (i32.const 1048320)
                             )
                             (i32.const 16)
                            )
                            (i32.const 8)
                           )
                          )
                         )
                        )
                        (i32.const 520192)
                       )
                       (i32.const 16)
                      )
                      (i32.const 4)
                     )
                    )
                    (i32.or
                     (i32.and
                      (i32.shr_u
                       (local.get $2)
                       (i32.add
                        (local.tee $0
                         (i32.add
                          (i32.sub
                           (i32.const 14)
                           (i32.or
                            (local.tee $1
                             (i32.and
                              (i32.shr_u
                               (i32.add
                                (local.tee $5
                                 (i32.shl
                                  (local.get $1)
                                  (local.get $0)
                                 )
                                )
                                (i32.const 245760)
                               )
                               (i32.const 16)
                              )
                              (i32.const 2)
                             )
                            )
                            (i32.or
                             (local.get $0)
                             (local.get $4)
                            )
                           )
                          )
                          (i32.shr_u
                           (i32.shl
                            (local.get $5)
                            (local.get $1)
                           )
                           (i32.const 15)
                          )
                         )
                        )
                        (i32.const 7)
                       )
                      )
                      (i32.const 1)
                     )
                     (i32.shl
                      (local.get $0)
                      (i32.const 1)
                     )
                    )
                   )
                  )
                  (i32.const 0)
                 )
                )
                (i32.const 2)
               )
               (i32.const 3380)
              )
             )
             (i32.store offset=28
              (local.get $9)
              (local.get $1)
             )
             (i32.store offset=4
              (local.tee $4
               (i32.add
                (local.get $9)
                (i32.const 16)
               )
              )
              (i32.const 0)
             )
             (i32.store
              (local.get $4)
              (i32.const 0)
             )
             (if
              (i32.eqz
               (i32.and
                (local.get $3)
                (local.tee $4
                 (i32.shl
                  (i32.const 1)
                  (local.get $1)
                 )
                )
               )
              )
              (block
               (i32.store
                (i32.const 3080)
                (i32.or
                 (local.get $3)
                 (local.get $4)
                )
               )
               (i32.store
                (local.get $0)
                (local.get $9)
               )
               (i32.store offset=24
                (local.get $9)
                (local.get $0)
               )
               (i32.store offset=12
                (local.get $9)
                (local.get $9)
               )
               (i32.store offset=8
                (local.get $9)
                (local.get $9)
               )
               (br $label$break$L200)
              )
             )
             (if
              (i32.eq
               (i32.and
                (i32.load offset=4
                 (local.tee $0
                  (i32.load
                   (local.get $0)
                  )
                 )
                )
                (i32.const -8)
               )
               (local.get $2)
              )
              (local.set $10
               (local.get $0)
              )
              (block $label$break$L218
               (local.set $1
                (i32.shl
                 (local.get $2)
                 (select
                  (i32.const 0)
                  (i32.sub
                   (i32.const 25)
                   (i32.shr_u
                    (local.get $1)
                    (i32.const 1)
                   )
                  )
                  (i32.eq
                   (local.get $1)
                   (i32.const 31)
                  )
                 )
                )
               )
               (loop $while-in30
                (if
                 (local.tee $3
                  (i32.load
                   (local.tee $4
                    (i32.add
                     (i32.add
                      (local.get $0)
                      (i32.const 16)
                     )
                     (i32.shl
                      (i32.shr_u
                       (local.get $1)
                       (i32.const 31)
                      )
                      (i32.const 2)
                     )
                    )
                   )
                  )
                 )
                 (block
                  (local.set $1
                   (i32.shl
                    (local.get $1)
                    (i32.const 1)
                   )
                  )
                  (if
                   (i32.eq
                    (i32.and
                     (i32.load offset=4
                      (local.get $3)
                     )
                     (i32.const -8)
                    )
                    (local.get $2)
                   )
                   (block
                    (local.set $10
                     (local.get $3)
                    )
                    (br $label$break$L218)
                   )
                   (block
                    (local.set $0
                     (local.get $3)
                    )
                    (br $while-in30)
                   )
                  )
                 )
                )
               )
               (if
                (i32.gt_u
                 (i32.load
                  (i32.const 3092)
                 )
                 (local.get $4)
                )
                (call $_abort)
                (block
                 (i32.store
                  (local.get $4)
                  (local.get $9)
                 )
                 (i32.store offset=24
                  (local.get $9)
                  (local.get $0)
                 )
                 (i32.store offset=12
                  (local.get $9)
                  (local.get $9)
                 )
                 (i32.store offset=8
                  (local.get $9)
                  (local.get $9)
                 )
                 (br $label$break$L200)
                )
               )
              )
             )
             (if
              (i32.and
               (i32.le_u
                (local.tee $0
                 (i32.load
                  (i32.const 3092)
                 )
                )
                (local.get $10)
               )
               (i32.le_u
                (local.get $0)
                (local.tee $0
                 (i32.load
                  (local.tee $3
                   (i32.add
                    (local.get $10)
                    (i32.const 8)
                   )
                  )
                 )
                )
               )
              )
              (block
               (i32.store offset=12
                (local.get $0)
                (local.get $9)
               )
               (i32.store
                (local.get $3)
                (local.get $9)
               )
               (i32.store offset=8
                (local.get $9)
                (local.get $0)
               )
               (i32.store offset=12
                (local.get $9)
                (local.get $10)
               )
               (i32.store offset=24
                (local.get $9)
                (i32.const 0)
               )
              )
              (call $_abort)
             )
            )
           )
           (global.set $STACKTOP
            (local.get $14)
           )
           (return
            (i32.add
             (local.get $6)
             (i32.const 8)
            )
           )
          )
          (local.get $4)
         )
         (local.get $4)
        )
       )
       (local.get $4)
      )
     )
    )
   )
  )
  (if
   (i32.ge_u
    (local.tee $1
     (i32.load
      (i32.const 3084)
     )
    )
    (local.get $3)
   )
   (block
    (local.set $0
     (i32.load
      (i32.const 3096)
     )
    )
    (if
     (i32.gt_u
      (local.tee $2
       (i32.sub
        (local.get $1)
        (local.get $3)
       )
      )
      (i32.const 15)
     )
     (block
      (i32.store
       (i32.const 3096)
       (local.tee $4
        (i32.add
         (local.get $0)
         (local.get $3)
        )
       )
      )
      (i32.store
       (i32.const 3084)
       (local.get $2)
      )
      (i32.store offset=4
       (local.get $4)
       (i32.or
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.store
       (i32.add
        (local.get $0)
        (local.get $1)
       )
       (local.get $2)
      )
      (i32.store offset=4
       (local.get $0)
       (i32.or
        (local.get $3)
        (i32.const 3)
       )
      )
     )
     (block
      (i32.store
       (i32.const 3084)
       (i32.const 0)
      )
      (i32.store
       (i32.const 3096)
       (i32.const 0)
      )
      (i32.store offset=4
       (local.get $0)
       (i32.or
        (local.get $1)
        (i32.const 3)
       )
      )
      (i32.store
       (local.tee $3
        (i32.add
         (i32.add
          (local.get $0)
          (local.get $1)
         )
         (i32.const 4)
        )
       )
       (i32.or
        (i32.load
         (local.get $3)
        )
        (i32.const 1)
       )
      )
     )
    )
    (global.set $STACKTOP
     (local.get $14)
    )
    (return
     (i32.add
      (local.get $0)
      (i32.const 8)
     )
    )
   )
  )
  (if
   (i32.gt_u
    (local.tee $1
     (i32.load
      (i32.const 3088)
     )
    )
    (local.get $3)
   )
   (block
    (i32.store
     (i32.const 3088)
     (local.tee $1
      (i32.sub
       (local.get $1)
       (local.get $3)
      )
     )
    )
    (i32.store
     (i32.const 3100)
     (local.tee $2
      (i32.add
       (local.tee $0
        (i32.load
         (i32.const 3100)
        )
       )
       (local.get $3)
      )
     )
    )
    (i32.store offset=4
     (local.get $2)
     (i32.or
      (local.get $1)
      (i32.const 1)
     )
    )
    (i32.store offset=4
     (local.get $0)
     (i32.or
      (local.get $3)
      (i32.const 3)
     )
    )
    (global.set $STACKTOP
     (local.get $14)
    )
    (return
     (i32.add
      (local.get $0)
      (i32.const 8)
     )
    )
   )
  )
  (local.set $0
   (local.get $14)
  )
  (if
   (i32.le_u
    (local.tee $4
     (i32.and
      (local.tee $6
       (i32.add
        (local.tee $0
         (if (result i32)
          (i32.load
           (i32.const 3548)
          )
          (i32.load
           (i32.const 3556)
          )
          (block (result i32)
           (i32.store
            (i32.const 3556)
            (i32.const 4096)
           )
           (i32.store
            (i32.const 3552)
            (i32.const 4096)
           )
           (i32.store
            (i32.const 3560)
            (i32.const -1)
           )
           (i32.store
            (i32.const 3564)
            (i32.const -1)
           )
           (i32.store
            (i32.const 3568)
            (i32.const 0)
           )
           (i32.store
            (i32.const 3520)
            (i32.const 0)
           )
           (i32.store
            (i32.const 3548)
            (i32.xor
             (i32.and
              (local.get $0)
              (i32.const -16)
             )
             (i32.const 1431655768)
            )
           )
           (i32.const 4096)
          )
         )
        )
        (local.tee $5
         (i32.add
          (local.get $3)
          (i32.const 47)
         )
        )
       )
      )
      (local.tee $7
       (i32.sub
        (i32.const 0)
        (local.get $0)
       )
      )
     )
    )
    (local.get $3)
   )
   (block
    (global.set $STACKTOP
     (local.get $14)
    )
    (return
     (i32.const 0)
    )
   )
  )
  (if
   (local.tee $0
    (i32.load
     (i32.const 3516)
    )
   )
   (if
    (i32.or
     (i32.le_u
      (local.tee $10
       (i32.add
        (local.tee $2
         (i32.load
          (i32.const 3508)
         )
        )
        (local.get $4)
       )
      )
      (local.get $2)
     )
     (i32.gt_u
      (local.get $10)
      (local.get $0)
     )
    )
    (block
     (global.set $STACKTOP
      (local.get $14)
     )
     (return
      (i32.const 0)
     )
    )
   )
  )
  (local.set $10
   (i32.add
    (local.get $3)
    (i32.const 48)
   )
  )
  (block $__rjto$7
   (block $__rjti$7
    (if
     (i32.and
      (i32.load
       (i32.const 3520)
      )
      (i32.const 4)
     )
     (local.set $1
      (i32.const 0)
     )
     (block
      (block $do-once37
       (block $__rjti$3
        (block $__rjti$2
         (br_if $__rjti$2
          (i32.eqz
           (local.tee $0
            (i32.load
             (i32.const 3100)
            )
           )
          )
         )
         (local.set $2
          (i32.const 3524)
         )
         (loop $while-in34
          (block $while-out33
           (if
            (i32.le_u
             (local.tee $13
              (i32.load
               (local.get $2)
              )
             )
             (local.get $0)
            )
            (br_if $while-out33
             (i32.gt_u
              (i32.add
               (local.get $13)
               (i32.load offset=4
                (local.get $2)
               )
              )
              (local.get $0)
             )
            )
           )
           (br_if $while-in34
            (local.tee $2
             (i32.load offset=8
              (local.get $2)
             )
            )
           )
           (br $__rjti$2)
          )
         )
         (if
          (i32.lt_u
           (local.tee $1
            (i32.and
             (i32.sub
              (local.get $6)
              (local.get $1)
             )
             (local.get $7)
            )
           )
           (i32.const 2147483647)
          )
          (block
           (local.set $6
            (i32.add
             (local.get $2)
             (i32.const 4)
            )
           )
           (local.set $0
            (call $_sbrk
             (local.get $1)
            )
           )
           (br_if $__rjti$3
            (i32.ne
             (local.get $0)
             (i32.add
              (i32.load
               (local.get $2)
              )
              (i32.load
               (local.get $6)
              )
             )
            )
           )
           (br_if $__rjti$7
            (i32.ne
             (local.get $0)
             (i32.const -1)
            )
           )
          )
          (local.set $1
           (i32.const 0)
          )
         )
         (br $do-once37)
        )
        (local.set $1
         (if (result i32)
          (i32.eq
           (local.tee $0
            (call $_sbrk
             (i32.const 0)
            )
           )
           (i32.const -1)
          )
          (i32.const 0)
          (block (result i32)
           (local.set $2
            (i32.add
             (local.tee $6
              (i32.load
               (i32.const 3508)
              )
             )
             (local.tee $1
              (i32.add
               (select
                (i32.sub
                 (i32.and
                  (i32.add
                   (local.get $0)
                   (local.tee $2
                    (i32.add
                     (local.tee $1
                      (i32.load
                       (i32.const 3552)
                      )
                     )
                     (i32.const -1)
                    )
                   )
                  )
                  (i32.sub
                   (i32.const 0)
                   (local.get $1)
                  )
                 )
                 (local.get $0)
                )
                (i32.const 0)
                (i32.and
                 (local.get $0)
                 (local.get $2)
                )
               )
               (local.get $4)
              )
             )
            )
           )
           (if (result i32)
            (i32.and
             (i32.lt_u
              (local.get $1)
              (i32.const 2147483647)
             )
             (i32.gt_u
              (local.get $1)
              (local.get $3)
             )
            )
            (block
             (if
              (local.tee $7
               (i32.load
                (i32.const 3516)
               )
              )
              (if
               (i32.or
                (i32.le_u
                 (local.get $2)
                 (local.get $6)
                )
                (i32.gt_u
                 (local.get $2)
                 (local.get $7)
                )
               )
               (block
                (local.set $1
                 (i32.const 0)
                )
                (br $do-once37)
               )
              )
             )
             (br_if $__rjti$7
              (i32.eq
               (local.get $0)
               (local.tee $2
                (call $_sbrk
                 (local.get $1)
                )
               )
              )
             )
             (local.set $0
              (local.get $2)
             )
             (br $__rjti$3)
            )
            (i32.const 0)
           )
          )
         )
        )
        (br $do-once37)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.and
           (i32.ne
            (local.get $0)
            (i32.const -1)
           )
           (i32.lt_u
            (local.get $1)
            (i32.const 2147483647)
           )
          )
          (i32.gt_u
           (local.get $10)
           (local.get $1)
          )
         )
        )
        (if
         (i32.eq
          (local.get $0)
          (i32.const -1)
         )
         (block
          (local.set $1
           (i32.const 0)
          )
          (br $do-once37)
         )
         (br $__rjti$7)
        )
       )
       (br_if $__rjti$7
        (i32.ge_u
         (local.tee $2
          (i32.and
           (i32.add
            (local.tee $2
             (i32.load
              (i32.const 3556)
             )
            )
            (i32.sub
             (local.get $5)
             (local.get $1)
            )
           )
           (i32.sub
            (i32.const 0)
            (local.get $2)
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (local.set $5
        (i32.sub
         (i32.const 0)
         (local.get $1)
        )
       )
       (local.set $1
        (if (result i32)
         (i32.eq
          (call $_sbrk
           (local.get $2)
          )
          (i32.const -1)
         )
         (block (result i32)
          (drop
           (call $_sbrk
            (local.get $5)
           )
          )
          (i32.const 0)
         )
         (block
          (local.set $1
           (i32.add
            (local.get $1)
            (local.get $2)
           )
          )
          (br $__rjti$7)
         )
        )
       )
      )
      (i32.store
       (i32.const 3520)
       (i32.or
        (i32.load
         (i32.const 3520)
        )
        (i32.const 4)
       )
      )
     )
    )
    (if
     (i32.lt_u
      (local.get $4)
      (i32.const 2147483647)
     )
     (block
      (local.set $0
       (call $_sbrk
        (local.get $4)
       )
      )
      (local.set $4
       (i32.gt_u
        (local.tee $5
         (i32.sub
          (local.tee $2
           (call $_sbrk
            (i32.const 0)
           )
          )
          (local.get $0)
         )
        )
        (i32.add
         (local.get $3)
         (i32.const 40)
        )
       )
      )
      (local.set $1
       (select
        (local.get $5)
        (local.get $1)
        (local.get $4)
       )
      )
      (br_if $__rjti$7
       (i32.eqz
        (i32.or
         (i32.or
          (i32.xor
           (local.get $4)
           (i32.const 1)
          )
          (i32.eq
           (local.get $0)
           (i32.const -1)
          )
         )
         (i32.xor
          (i32.and
           (i32.and
            (i32.ne
             (local.get $0)
             (i32.const -1)
            )
            (i32.ne
             (local.get $2)
             (i32.const -1)
            )
           )
           (i32.lt_u
            (local.get $0)
            (local.get $2)
           )
          )
          (i32.const 1)
         )
        )
       )
      )
     )
    )
    (br $__rjto$7)
   )
   (i32.store
    (i32.const 3508)
    (local.tee $2
     (i32.add
      (i32.load
       (i32.const 3508)
      )
      (local.get $1)
     )
    )
   )
   (if
    (i32.gt_u
     (local.get $2)
     (i32.load
      (i32.const 3512)
     )
    )
    (i32.store
     (i32.const 3512)
     (local.get $2)
    )
   )
   (if
    (local.tee $5
     (i32.load
      (i32.const 3100)
     )
    )
    (block $label$break$L294
     (local.set $2
      (i32.const 3524)
     )
     (block $__rjto$4
      (block $__rjti$4
       (loop $while-in41
        (br_if $__rjti$4
         (i32.eq
          (i32.add
           (local.tee $4
            (i32.load
             (local.get $2)
            )
           )
           (local.tee $6
            (i32.load offset=4
             (local.get $2)
            )
           )
          )
          (local.get $0)
         )
        )
        (br_if $while-in41
         (local.tee $2
          (i32.load offset=8
           (local.get $2)
          )
         )
        )
       )
       (br $__rjto$4)
      )
      (local.set $7
       (i32.add
        (local.get $2)
        (i32.const 4)
       )
      )
      (if
       (i32.eqz
        (i32.and
         (i32.load offset=12
          (local.get $2)
         )
         (i32.const 8)
        )
       )
       (if
        (i32.and
         (i32.le_u
          (local.get $4)
          (local.get $5)
         )
         (i32.gt_u
          (local.get $0)
          (local.get $5)
         )
        )
        (block
         (i32.store
          (local.get $7)
          (i32.add
           (local.get $1)
           (local.get $6)
          )
         )
         (local.set $0
          (i32.add
           (local.get $5)
           (local.tee $2
            (select
             (i32.and
              (i32.sub
               (i32.const 0)
               (local.tee $0
                (i32.add
                 (local.get $5)
                 (i32.const 8)
                )
               )
              )
              (i32.const 7)
             )
             (i32.const 0)
             (i32.and
              (local.get $0)
              (i32.const 7)
             )
            )
           )
          )
         )
         (local.set $1
          (i32.sub
           (local.tee $4
            (i32.add
             (i32.load
              (i32.const 3088)
             )
             (local.get $1)
            )
           )
           (local.get $2)
          )
         )
         (i32.store
          (i32.const 3100)
          (local.get $0)
         )
         (i32.store
          (i32.const 3088)
          (local.get $1)
         )
         (i32.store offset=4
          (local.get $0)
          (i32.or
           (local.get $1)
           (i32.const 1)
          )
         )
         (i32.store offset=4
          (i32.add
           (local.get $4)
           (local.get $5)
          )
          (i32.const 40)
         )
         (i32.store
          (i32.const 3104)
          (i32.load
           (i32.const 3564)
          )
         )
         (br $label$break$L294)
        )
       )
      )
     )
     (if
      (i32.lt_u
       (local.get $0)
       (local.tee $2
        (i32.load
         (i32.const 3092)
        )
       )
      )
      (block
       (i32.store
        (i32.const 3092)
        (local.get $0)
       )
       (local.set $2
        (local.get $0)
       )
      )
     )
     (local.set $6
      (i32.add
       (local.get $0)
       (local.get $1)
      )
     )
     (local.set $4
      (i32.const 3524)
     )
     (block $__rjto$5
      (block $__rjti$5
       (loop $while-in43
        (br_if $__rjti$5
         (i32.eq
          (i32.load
           (local.get $4)
          )
          (local.get $6)
         )
        )
        (br_if $while-in43
         (local.tee $4
          (i32.load offset=8
           (local.get $4)
          )
         )
        )
       )
       (br $__rjto$5)
      )
      (if
       (i32.eqz
        (i32.and
         (i32.load offset=12
          (local.get $4)
         )
         (i32.const 8)
        )
       )
       (block
        (i32.store
         (local.get $4)
         (local.get $0)
        )
        (i32.store
         (local.tee $4
          (i32.add
           (local.get $4)
           (i32.const 4)
          )
         )
         (i32.add
          (i32.load
           (local.get $4)
          )
          (local.get $1)
         )
        )
        (local.set $7
         (i32.add
          (local.tee $9
           (i32.add
            (select
             (i32.and
              (i32.sub
               (i32.const 0)
               (local.tee $1
                (i32.add
                 (local.get $0)
                 (i32.const 8)
                )
               )
              )
              (i32.const 7)
             )
             (i32.const 0)
             (i32.and
              (local.get $1)
              (i32.const 7)
             )
            )
            (local.get $0)
           )
          )
          (local.get $3)
         )
        )
        (local.set $4
         (i32.sub
          (i32.sub
           (local.tee $1
            (i32.add
             (local.get $6)
             (select
              (i32.and
               (i32.sub
                (i32.const 0)
                (local.tee $0
                 (i32.add
                  (local.get $6)
                  (i32.const 8)
                 )
                )
               )
               (i32.const 7)
              )
              (i32.const 0)
              (i32.and
               (local.get $0)
               (i32.const 7)
              )
             )
            )
           )
           (local.get $9)
          )
          (local.get $3)
         )
        )
        (i32.store offset=4
         (local.get $9)
         (i32.or
          (local.get $3)
          (i32.const 3)
         )
        )
        (if
         (i32.eq
          (local.get $1)
          (local.get $5)
         )
         (block
          (i32.store
           (i32.const 3088)
           (local.tee $0
            (i32.add
             (i32.load
              (i32.const 3088)
             )
             (local.get $4)
            )
           )
          )
          (i32.store
           (i32.const 3100)
           (local.get $7)
          )
          (i32.store offset=4
           (local.get $7)
           (i32.or
            (local.get $0)
            (i32.const 1)
           )
          )
         )
         (block $label$break$L317
          (if
           (i32.eq
            (i32.load
             (i32.const 3096)
            )
            (local.get $1)
           )
           (block
            (i32.store
             (i32.const 3084)
             (local.tee $0
              (i32.add
               (i32.load
                (i32.const 3084)
               )
               (local.get $4)
              )
             )
            )
            (i32.store
             (i32.const 3096)
             (local.get $7)
            )
            (i32.store offset=4
             (local.get $7)
             (i32.or
              (local.get $0)
              (i32.const 1)
             )
            )
            (i32.store
             (i32.add
              (local.get $0)
              (local.get $7)
             )
             (local.get $0)
            )
            (br $label$break$L317)
           )
          )
          (local.set $2
           (if (result i32)
            (i32.eq
             (i32.and
              (local.tee $0
               (i32.load offset=4
                (local.get $1)
               )
              )
              (i32.const 3)
             )
             (i32.const 1)
            )
            (block (result i32)
             (local.set $13
              (i32.and
               (local.get $0)
               (i32.const -8)
              )
             )
             (local.set $6
              (i32.shr_u
               (local.get $0)
               (i32.const 3)
              )
             )
             (block $label$break$L325
              (if
               (i32.lt_u
                (local.get $0)
                (i32.const 256)
               )
               (block
                (local.set $3
                 (i32.load offset=12
                  (local.get $1)
                 )
                )
                (if
                 (i32.ne
                  (local.tee $5
                   (i32.load offset=8
                    (local.get $1)
                   )
                  )
                  (local.tee $0
                   (i32.add
                    (i32.shl
                     (local.get $6)
                     (i32.const 3)
                    )
                    (i32.const 3116)
                   )
                  )
                 )
                 (block $do-once46
                  (if
                   (i32.gt_u
                    (local.get $2)
                    (local.get $5)
                   )
                   (call $_abort)
                  )
                  (br_if $do-once46
                   (i32.eq
                    (i32.load offset=12
                     (local.get $5)
                    )
                    (local.get $1)
                   )
                  )
                  (call $_abort)
                 )
                )
                (if
                 (i32.eq
                  (local.get $3)
                  (local.get $5)
                 )
                 (block
                  (i32.store
                   (i32.const 3076)
                   (i32.and
                    (i32.load
                     (i32.const 3076)
                    )
                    (i32.xor
                     (i32.shl
                      (i32.const 1)
                      (local.get $6)
                     )
                     (i32.const -1)
                    )
                   )
                  )
                  (br $label$break$L325)
                 )
                )
                (if
                 (i32.eq
                  (local.get $0)
                  (local.get $3)
                 )
                 (local.set $20
                  (i32.add
                   (local.get $3)
                   (i32.const 8)
                  )
                 )
                 (block $do-once48
                  (if
                   (i32.gt_u
                    (local.get $2)
                    (local.get $3)
                   )
                   (call $_abort)
                  )
                  (if
                   (i32.eq
                    (i32.load
                     (local.tee $0
                      (i32.add
                       (local.get $3)
                       (i32.const 8)
                      )
                     )
                    )
                    (local.get $1)
                   )
                   (block
                    (local.set $20
                     (local.get $0)
                    )
                    (br $do-once48)
                   )
                  )
                  (call $_abort)
                 )
                )
                (i32.store offset=12
                 (local.get $5)
                 (local.get $3)
                )
                (i32.store
                 (local.get $20)
                 (local.get $5)
                )
               )
               (block
                (local.set $10
                 (i32.load offset=24
                  (local.get $1)
                 )
                )
                (if
                 (i32.eq
                  (local.tee $0
                   (i32.load offset=12
                    (local.get $1)
                   )
                  )
                  (local.get $1)
                 )
                 (block $do-once50
                  (if
                   (local.tee $0
                    (i32.load
                     (local.tee $5
                      (i32.add
                       (local.tee $3
                        (i32.add
                         (local.get $1)
                         (i32.const 16)
                        )
                       )
                       (i32.const 4)
                      )
                     )
                    )
                   )
                   (local.set $3
                    (local.get $5)
                   )
                   (br_if $do-once50
                    (i32.eqz
                     (local.tee $0
                      (i32.load
                       (local.get $3)
                      )
                     )
                    )
                   )
                  )
                  (loop $while-in53
                   (block $while-out52
                    (local.set $0
                     (if (result i32)
                      (local.tee $6
                       (i32.load
                        (local.tee $5
                         (i32.add
                          (local.get $0)
                          (i32.const 20)
                         )
                        )
                       )
                      )
                      (block (result i32)
                       (local.set $3
                        (local.get $5)
                       )
                       (local.get $6)
                      )
                      (block (result i32)
                       (br_if $while-out52
                        (i32.eqz
                         (local.tee $6
                          (i32.load
                           (local.tee $5
                            (i32.add
                             (local.get $0)
                             (i32.const 16)
                            )
                           )
                          )
                         )
                        )
                       )
                       (local.set $3
                        (local.get $5)
                       )
                       (local.get $6)
                      )
                     )
                    )
                    (br $while-in53)
                   )
                  )
                  (if
                   (i32.gt_u
                    (local.get $2)
                    (local.get $3)
                   )
                   (call $_abort)
                   (block
                    (i32.store
                     (local.get $3)
                     (i32.const 0)
                    )
                    (local.set $8
                     (local.get $0)
                    )
                   )
                  )
                 )
                 (block
                  (if
                   (i32.gt_u
                    (local.get $2)
                    (local.tee $3
                     (i32.load offset=8
                      (local.get $1)
                     )
                    )
                   )
                   (call $_abort)
                  )
                  (if
                   (i32.ne
                    (local.get $1)
                    (i32.load
                     (local.tee $2
                      (i32.add
                       (local.get $3)
                       (i32.const 12)
                      )
                     )
                    )
                   )
                   (call $_abort)
                  )
                  (if
                   (i32.eq
                    (i32.load
                     (local.tee $5
                      (i32.add
                       (local.get $0)
                       (i32.const 8)
                      )
                     )
                    )
                    (local.get $1)
                   )
                   (block
                    (i32.store
                     (local.get $2)
                     (local.get $0)
                    )
                    (i32.store
                     (local.get $5)
                     (local.get $3)
                    )
                    (local.set $8
                     (local.get $0)
                    )
                   )
                   (call $_abort)
                  )
                 )
                )
                (br_if $label$break$L325
                 (i32.eqz
                  (local.get $10)
                 )
                )
                (if
                 (i32.eq
                  (i32.load
                   (local.tee $3
                    (i32.add
                     (i32.shl
                      (local.tee $0
                       (i32.load offset=28
                        (local.get $1)
                       )
                      )
                      (i32.const 2)
                     )
                     (i32.const 3380)
                    )
                   )
                  )
                  (local.get $1)
                 )
                 (block $do-once54
                  (i32.store
                   (local.get $3)
                   (local.get $8)
                  )
                  (br_if $do-once54
                   (local.get $8)
                  )
                  (i32.store
                   (i32.const 3080)
                   (i32.and
                    (i32.load
                     (i32.const 3080)
                    )
                    (i32.xor
                     (i32.shl
                      (i32.const 1)
                      (local.get $0)
                     )
                     (i32.const -1)
                    )
                   )
                  )
                  (br $label$break$L325)
                 )
                 (if
                  (i32.gt_u
                   (i32.load
                    (i32.const 3092)
                   )
                   (local.get $10)
                  )
                  (call $_abort)
                  (block
                   (i32.store
                    (select
                     (local.tee $0
                      (i32.add
                       (local.get $10)
                       (i32.const 16)
                      )
                     )
                     (i32.add
                      (local.get $10)
                      (i32.const 20)
                     )
                     (i32.eq
                      (i32.load
                       (local.get $0)
                      )
                      (local.get $1)
                     )
                    )
                    (local.get $8)
                   )
                   (br_if $label$break$L325
                    (i32.eqz
                     (local.get $8)
                    )
                   )
                  )
                 )
                )
                (if
                 (i32.gt_u
                  (local.tee $3
                   (i32.load
                    (i32.const 3092)
                   )
                  )
                  (local.get $8)
                 )
                 (call $_abort)
                )
                (i32.store offset=24
                 (local.get $8)
                 (local.get $10)
                )
                (if
                 (local.tee $0
                  (i32.load
                   (local.tee $2
                    (i32.add
                     (local.get $1)
                     (i32.const 16)
                    )
                   )
                  )
                 )
                 (if
                  (i32.gt_u
                   (local.get $3)
                   (local.get $0)
                  )
                  (call $_abort)
                  (block
                   (i32.store offset=16
                    (local.get $8)
                    (local.get $0)
                   )
                   (i32.store offset=24
                    (local.get $0)
                    (local.get $8)
                   )
                  )
                 )
                )
                (br_if $label$break$L325
                 (i32.eqz
                  (local.tee $0
                   (i32.load offset=4
                    (local.get $2)
                   )
                  )
                 )
                )
                (if
                 (i32.gt_u
                  (i32.load
                   (i32.const 3092)
                  )
                  (local.get $0)
                 )
                 (call $_abort)
                 (block
                  (i32.store offset=20
                   (local.get $8)
                   (local.get $0)
                  )
                  (i32.store offset=24
                   (local.get $0)
                   (local.get $8)
                  )
                 )
                )
               )
              )
             )
             (local.set $1
              (i32.add
               (local.get $1)
               (local.get $13)
              )
             )
             (i32.add
              (local.get $4)
              (local.get $13)
             )
            )
            (local.get $4)
           )
          )
          (i32.store
           (local.tee $0
            (i32.add
             (local.get $1)
             (i32.const 4)
            )
           )
           (i32.and
            (i32.load
             (local.get $0)
            )
            (i32.const -2)
           )
          )
          (i32.store offset=4
           (local.get $7)
           (i32.or
            (local.get $2)
            (i32.const 1)
           )
          )
          (i32.store
           (i32.add
            (local.get $2)
            (local.get $7)
           )
           (local.get $2)
          )
          (local.set $3
           (i32.shr_u
            (local.get $2)
            (i32.const 3)
           )
          )
          (if
           (i32.lt_u
            (local.get $2)
            (i32.const 256)
           )
           (block
            (local.set $0
             (i32.add
              (i32.shl
               (local.get $3)
               (i32.const 3)
              )
              (i32.const 3116)
             )
            )
            (if
             (i32.and
              (local.tee $1
               (i32.load
                (i32.const 3076)
               )
              )
              (local.tee $3
               (i32.shl
                (i32.const 1)
                (local.get $3)
               )
              )
             )
             (block $do-once58
              (if
               (i32.le_u
                (i32.load
                 (i32.const 3092)
                )
                (local.tee $1
                 (i32.load
                  (local.tee $3
                   (i32.add
                    (local.get $0)
                    (i32.const 8)
                   )
                  )
                 )
                )
               )
               (block
                (local.set $21
                 (local.get $3)
                )
                (local.set $15
                 (local.get $1)
                )
                (br $do-once58)
               )
              )
              (call $_abort)
             )
             (block
              (i32.store
               (i32.const 3076)
               (i32.or
                (local.get $1)
                (local.get $3)
               )
              )
              (local.set $21
               (i32.add
                (local.get $0)
                (i32.const 8)
               )
              )
              (local.set $15
               (local.get $0)
              )
             )
            )
            (i32.store
             (local.get $21)
             (local.get $7)
            )
            (i32.store offset=12
             (local.get $15)
             (local.get $7)
            )
            (i32.store offset=8
             (local.get $7)
             (local.get $15)
            )
            (i32.store offset=12
             (local.get $7)
             (local.get $0)
            )
            (br $label$break$L317)
           )
          )
          (local.set $0
           (i32.add
            (i32.shl
             (local.tee $3
              (if (result i32)
               (local.tee $0
                (i32.shr_u
                 (local.get $2)
                 (i32.const 8)
                )
               )
               (if (result i32)
                (i32.gt_u
                 (local.get $2)
                 (i32.const 16777215)
                )
                (i32.const 31)
                (block (result i32)
                 (local.set $0
                  (i32.and
                   (i32.shr_u
                    (i32.add
                     (local.tee $3
                      (i32.shl
                       (local.get $0)
                       (local.tee $1
                        (i32.and
                         (i32.shr_u
                          (i32.add
                           (local.get $0)
                           (i32.const 1048320)
                          )
                          (i32.const 16)
                         )
                         (i32.const 8)
                        )
                       )
                      )
                     )
                     (i32.const 520192)
                    )
                    (i32.const 16)
                   )
                   (i32.const 4)
                  )
                 )
                 (i32.or
                  (i32.and
                   (i32.shr_u
                    (local.get $2)
                    (i32.add
                     (local.tee $0
                      (i32.add
                       (i32.sub
                        (i32.const 14)
                        (i32.or
                         (local.tee $3
                          (i32.and
                           (i32.shr_u
                            (i32.add
                             (local.tee $4
                              (i32.shl
                               (local.get $3)
                               (local.get $0)
                              )
                             )
                             (i32.const 245760)
                            )
                            (i32.const 16)
                           )
                           (i32.const 2)
                          )
                         )
                         (i32.or
                          (local.get $0)
                          (local.get $1)
                         )
                        )
                       )
                       (i32.shr_u
                        (i32.shl
                         (local.get $4)
                         (local.get $3)
                        )
                        (i32.const 15)
                       )
                      )
                     )
                     (i32.const 7)
                    )
                   )
                   (i32.const 1)
                  )
                  (i32.shl
                   (local.get $0)
                   (i32.const 1)
                  )
                 )
                )
               )
               (i32.const 0)
              )
             )
             (i32.const 2)
            )
            (i32.const 3380)
           )
          )
          (i32.store offset=28
           (local.get $7)
           (local.get $3)
          )
          (i32.store offset=4
           (local.tee $1
            (i32.add
             (local.get $7)
             (i32.const 16)
            )
           )
           (i32.const 0)
          )
          (i32.store
           (local.get $1)
           (i32.const 0)
          )
          (if
           (i32.eqz
            (i32.and
             (local.tee $1
              (i32.load
               (i32.const 3080)
              )
             )
             (local.tee $4
              (i32.shl
               (i32.const 1)
               (local.get $3)
              )
             )
            )
           )
           (block
            (i32.store
             (i32.const 3080)
             (i32.or
              (local.get $1)
              (local.get $4)
             )
            )
            (i32.store
             (local.get $0)
             (local.get $7)
            )
            (i32.store offset=24
             (local.get $7)
             (local.get $0)
            )
            (i32.store offset=12
             (local.get $7)
             (local.get $7)
            )
            (i32.store offset=8
             (local.get $7)
             (local.get $7)
            )
            (br $label$break$L317)
           )
          )
          (if
           (i32.eq
            (i32.and
             (i32.load offset=4
              (local.tee $0
               (i32.load
                (local.get $0)
               )
              )
             )
             (i32.const -8)
            )
            (local.get $2)
           )
           (local.set $11
            (local.get $0)
           )
           (block $label$break$L410
            (local.set $1
             (i32.shl
              (local.get $2)
              (select
               (i32.const 0)
               (i32.sub
                (i32.const 25)
                (i32.shr_u
                 (local.get $3)
                 (i32.const 1)
                )
               )
               (i32.eq
                (local.get $3)
                (i32.const 31)
               )
              )
             )
            )
            (loop $while-in64
             (if
              (local.tee $3
               (i32.load
                (local.tee $4
                 (i32.add
                  (i32.add
                   (local.get $0)
                   (i32.const 16)
                  )
                  (i32.shl
                   (i32.shr_u
                    (local.get $1)
                    (i32.const 31)
                   )
                   (i32.const 2)
                  )
                 )
                )
               )
              )
              (block
               (local.set $1
                (i32.shl
                 (local.get $1)
                 (i32.const 1)
                )
               )
               (if
                (i32.eq
                 (i32.and
                  (i32.load offset=4
                   (local.get $3)
                  )
                  (i32.const -8)
                 )
                 (local.get $2)
                )
                (block
                 (local.set $11
                  (local.get $3)
                 )
                 (br $label$break$L410)
                )
                (block
                 (local.set $0
                  (local.get $3)
                 )
                 (br $while-in64)
                )
               )
              )
             )
            )
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3092)
              )
              (local.get $4)
             )
             (call $_abort)
             (block
              (i32.store
               (local.get $4)
               (local.get $7)
              )
              (i32.store offset=24
               (local.get $7)
               (local.get $0)
              )
              (i32.store offset=12
               (local.get $7)
               (local.get $7)
              )
              (i32.store offset=8
               (local.get $7)
               (local.get $7)
              )
              (br $label$break$L317)
             )
            )
           )
          )
          (if
           (i32.and
            (i32.le_u
             (local.tee $0
              (i32.load
               (i32.const 3092)
              )
             )
             (local.get $11)
            )
            (i32.le_u
             (local.get $0)
             (local.tee $0
              (i32.load
               (local.tee $3
                (i32.add
                 (local.get $11)
                 (i32.const 8)
                )
               )
              )
             )
            )
           )
           (block
            (i32.store offset=12
             (local.get $0)
             (local.get $7)
            )
            (i32.store
             (local.get $3)
             (local.get $7)
            )
            (i32.store offset=8
             (local.get $7)
             (local.get $0)
            )
            (i32.store offset=12
             (local.get $7)
             (local.get $11)
            )
            (i32.store offset=24
             (local.get $7)
             (i32.const 0)
            )
           )
           (call $_abort)
          )
         )
        )
        (global.set $STACKTOP
         (local.get $14)
        )
        (return
         (i32.add
          (local.get $9)
          (i32.const 8)
         )
        )
       )
      )
     )
     (local.set $2
      (i32.const 3524)
     )
     (loop $while-in66
      (block $while-out65
       (if
        (i32.le_u
         (local.tee $4
          (i32.load
           (local.get $2)
          )
         )
         (local.get $5)
        )
        (br_if $while-out65
         (i32.gt_u
          (local.tee $6
           (i32.add
            (local.get $4)
            (i32.load offset=4
             (local.get $2)
            )
           )
          )
          (local.get $5)
         )
        )
       )
       (local.set $2
        (i32.load offset=8
         (local.get $2)
        )
       )
       (br $while-in66)
      )
     )
     (local.set $4
      (i32.add
       (local.tee $2
        (select
         (local.get $5)
         (local.tee $2
          (i32.add
           (select
            (i32.and
             (i32.sub
              (i32.const 0)
              (local.tee $2
               (i32.add
                (local.tee $4
                 (i32.add
                  (local.get $6)
                  (i32.const -47)
                 )
                )
                (i32.const 8)
               )
              )
             )
             (i32.const 7)
            )
            (i32.const 0)
            (i32.and
             (local.get $2)
             (i32.const 7)
            )
           )
           (local.get $4)
          )
         )
         (i32.lt_u
          (local.get $2)
          (local.tee $8
           (i32.add
            (local.get $5)
            (i32.const 16)
           )
          )
         )
        )
       )
       (i32.const 8)
      )
     )
     (i32.store
      (i32.const 3100)
      (local.tee $10
       (i32.add
        (local.tee $7
         (select
          (i32.and
           (i32.sub
            (i32.const 0)
            (local.tee $7
             (i32.add
              (local.get $0)
              (i32.const 8)
             )
            )
           )
           (i32.const 7)
          )
          (i32.const 0)
          (i32.and
           (local.get $7)
           (i32.const 7)
          )
         )
        )
        (local.get $0)
       )
      )
     )
     (i32.store
      (i32.const 3088)
      (local.tee $7
       (i32.sub
        (local.tee $11
         (i32.add
          (local.get $1)
          (i32.const -40)
         )
        )
        (local.get $7)
       )
      )
     )
     (i32.store offset=4
      (local.get $10)
      (i32.or
       (local.get $7)
       (i32.const 1)
      )
     )
     (i32.store offset=4
      (i32.add
       (local.get $0)
       (local.get $11)
      )
      (i32.const 40)
     )
     (i32.store
      (i32.const 3104)
      (i32.load
       (i32.const 3564)
      )
     )
     (i32.store
      (local.tee $7
       (i32.add
        (local.get $2)
        (i32.const 4)
       )
      )
      (i32.const 27)
     )
     (i64.store align=4
      (local.get $4)
      (i64.load align=4
       (i32.const 3524)
      )
     )
     (i64.store offset=8 align=4
      (local.get $4)
      (i64.load align=4
       (i32.const 3532)
      )
     )
     (i32.store
      (i32.const 3524)
      (local.get $0)
     )
     (i32.store
      (i32.const 3528)
      (local.get $1)
     )
     (i32.store
      (i32.const 3536)
      (i32.const 0)
     )
     (i32.store
      (i32.const 3532)
      (local.get $4)
     )
     (local.set $0
      (i32.add
       (local.get $2)
       (i32.const 24)
      )
     )
     (loop $while-in68
      (i32.store
       (local.tee $1
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
       (i32.const 7)
      )
      (if
       (i32.lt_u
        (i32.add
         (local.get $0)
         (i32.const 8)
        )
        (local.get $6)
       )
       (block
        (local.set $0
         (local.get $1)
        )
        (br $while-in68)
       )
      )
     )
     (if
      (i32.ne
       (local.get $2)
       (local.get $5)
      )
      (block
       (i32.store
        (local.get $7)
        (i32.and
         (i32.load
          (local.get $7)
         )
         (i32.const -2)
        )
       )
       (i32.store offset=4
        (local.get $5)
        (i32.or
         (local.tee $4
          (i32.sub
           (local.get $2)
           (local.get $5)
          )
         )
         (i32.const 1)
        )
       )
       (i32.store
        (local.get $2)
        (local.get $4)
       )
       (local.set $1
        (i32.shr_u
         (local.get $4)
         (i32.const 3)
        )
       )
       (if
        (i32.lt_u
         (local.get $4)
         (i32.const 256)
        )
        (block
         (local.set $0
          (i32.add
           (i32.shl
            (local.get $1)
            (i32.const 3)
           )
           (i32.const 3116)
          )
         )
         (if
          (i32.and
           (local.tee $2
            (i32.load
             (i32.const 3076)
            )
           )
           (local.tee $1
            (i32.shl
             (i32.const 1)
             (local.get $1)
            )
           )
          )
          (if
           (i32.gt_u
            (i32.load
             (i32.const 3092)
            )
            (local.tee $2
             (i32.load
              (local.tee $1
               (i32.add
                (local.get $0)
                (i32.const 8)
               )
              )
             )
            )
           )
           (call $_abort)
           (block
            (local.set $22
             (local.get $1)
            )
            (local.set $17
             (local.get $2)
            )
           )
          )
          (block
           (i32.store
            (i32.const 3076)
            (i32.or
             (local.get $1)
             (local.get $2)
            )
           )
           (local.set $22
            (i32.add
             (local.get $0)
             (i32.const 8)
            )
           )
           (local.set $17
            (local.get $0)
           )
          )
         )
         (i32.store
          (local.get $22)
          (local.get $5)
         )
         (i32.store offset=12
          (local.get $17)
          (local.get $5)
         )
         (i32.store offset=8
          (local.get $5)
          (local.get $17)
         )
         (i32.store offset=12
          (local.get $5)
          (local.get $0)
         )
         (br $label$break$L294)
        )
       )
       (local.set $0
        (i32.add
         (i32.shl
          (local.tee $1
           (if (result i32)
            (local.tee $0
             (i32.shr_u
              (local.get $4)
              (i32.const 8)
             )
            )
            (if (result i32)
             (i32.gt_u
              (local.get $4)
              (i32.const 16777215)
             )
             (i32.const 31)
             (block (result i32)
              (local.set $0
               (i32.and
                (i32.shr_u
                 (i32.add
                  (local.tee $1
                   (i32.shl
                    (local.get $0)
                    (local.tee $2
                     (i32.and
                      (i32.shr_u
                       (i32.add
                        (local.get $0)
                        (i32.const 1048320)
                       )
                       (i32.const 16)
                      )
                      (i32.const 8)
                     )
                    )
                   )
                  )
                  (i32.const 520192)
                 )
                 (i32.const 16)
                )
                (i32.const 4)
               )
              )
              (i32.or
               (i32.and
                (i32.shr_u
                 (local.get $4)
                 (i32.add
                  (local.tee $0
                   (i32.add
                    (i32.sub
                     (i32.const 14)
                     (i32.or
                      (local.tee $1
                       (i32.and
                        (i32.shr_u
                         (i32.add
                          (local.tee $6
                           (i32.shl
                            (local.get $1)
                            (local.get $0)
                           )
                          )
                          (i32.const 245760)
                         )
                         (i32.const 16)
                        )
                        (i32.const 2)
                       )
                      )
                      (i32.or
                       (local.get $0)
                       (local.get $2)
                      )
                     )
                    )
                    (i32.shr_u
                     (i32.shl
                      (local.get $6)
                      (local.get $1)
                     )
                     (i32.const 15)
                    )
                   )
                  )
                  (i32.const 7)
                 )
                )
                (i32.const 1)
               )
               (i32.shl
                (local.get $0)
                (i32.const 1)
               )
              )
             )
            )
            (i32.const 0)
           )
          )
          (i32.const 2)
         )
         (i32.const 3380)
        )
       )
       (i32.store offset=28
        (local.get $5)
        (local.get $1)
       )
       (i32.store offset=20
        (local.get $5)
        (i32.const 0)
       )
       (i32.store
        (local.get $8)
        (i32.const 0)
       )
       (if
        (i32.eqz
         (i32.and
          (local.tee $2
           (i32.load
            (i32.const 3080)
           )
          )
          (local.tee $6
           (i32.shl
            (i32.const 1)
            (local.get $1)
           )
          )
         )
        )
        (block
         (i32.store
          (i32.const 3080)
          (i32.or
           (local.get $2)
           (local.get $6)
          )
         )
         (i32.store
          (local.get $0)
          (local.get $5)
         )
         (i32.store offset=24
          (local.get $5)
          (local.get $0)
         )
         (i32.store offset=12
          (local.get $5)
          (local.get $5)
         )
         (i32.store offset=8
          (local.get $5)
          (local.get $5)
         )
         (br $label$break$L294)
        )
       )
       (if
        (i32.eq
         (i32.and
          (i32.load offset=4
           (local.tee $0
            (i32.load
             (local.get $0)
            )
           )
          )
          (i32.const -8)
         )
         (local.get $4)
        )
        (local.set $9
         (local.get $0)
        )
        (block $label$break$L451
         (local.set $2
          (i32.shl
           (local.get $4)
           (select
            (i32.const 0)
            (i32.sub
             (i32.const 25)
             (i32.shr_u
              (local.get $1)
              (i32.const 1)
             )
            )
            (i32.eq
             (local.get $1)
             (i32.const 31)
            )
           )
          )
         )
         (loop $while-in71
          (if
           (local.tee $1
            (i32.load
             (local.tee $6
              (i32.add
               (i32.add
                (local.get $0)
                (i32.const 16)
               )
               (i32.shl
                (i32.shr_u
                 (local.get $2)
                 (i32.const 31)
                )
                (i32.const 2)
               )
              )
             )
            )
           )
           (block
            (local.set $2
             (i32.shl
              (local.get $2)
              (i32.const 1)
             )
            )
            (if
             (i32.eq
              (i32.and
               (i32.load offset=4
                (local.get $1)
               )
               (i32.const -8)
              )
              (local.get $4)
             )
             (block
              (local.set $9
               (local.get $1)
              )
              (br $label$break$L451)
             )
             (block
              (local.set $0
               (local.get $1)
              )
              (br $while-in71)
             )
            )
           )
          )
         )
         (if
          (i32.gt_u
           (i32.load
            (i32.const 3092)
           )
           (local.get $6)
          )
          (call $_abort)
          (block
           (i32.store
            (local.get $6)
            (local.get $5)
           )
           (i32.store offset=24
            (local.get $5)
            (local.get $0)
           )
           (i32.store offset=12
            (local.get $5)
            (local.get $5)
           )
           (i32.store offset=8
            (local.get $5)
            (local.get $5)
           )
           (br $label$break$L294)
          )
         )
        )
       )
       (if
        (i32.and
         (i32.le_u
          (local.tee $0
           (i32.load
            (i32.const 3092)
           )
          )
          (local.get $9)
         )
         (i32.le_u
          (local.get $0)
          (local.tee $0
           (i32.load
            (local.tee $1
             (i32.add
              (local.get $9)
              (i32.const 8)
             )
            )
           )
          )
         )
        )
        (block
         (i32.store offset=12
          (local.get $0)
          (local.get $5)
         )
         (i32.store
          (local.get $1)
          (local.get $5)
         )
         (i32.store offset=8
          (local.get $5)
          (local.get $0)
         )
         (i32.store offset=12
          (local.get $5)
          (local.get $9)
         )
         (i32.store offset=24
          (local.get $5)
          (i32.const 0)
         )
        )
        (call $_abort)
       )
      )
     )
    )
    (block
     (if
      (i32.or
       (i32.eqz
        (local.tee $2
         (i32.load
          (i32.const 3092)
         )
        )
       )
       (i32.lt_u
        (local.get $0)
        (local.get $2)
       )
      )
      (i32.store
       (i32.const 3092)
       (local.get $0)
      )
     )
     (i32.store
      (i32.const 3524)
      (local.get $0)
     )
     (i32.store
      (i32.const 3528)
      (local.get $1)
     )
     (i32.store
      (i32.const 3536)
      (i32.const 0)
     )
     (i32.store
      (i32.const 3112)
      (i32.load
       (i32.const 3548)
      )
     )
     (i32.store
      (i32.const 3108)
      (i32.const -1)
     )
     (i32.store
      (i32.const 3128)
      (i32.const 3116)
     )
     (i32.store
      (i32.const 3124)
      (i32.const 3116)
     )
     (i32.store
      (i32.const 3136)
      (i32.const 3124)
     )
     (i32.store
      (i32.const 3132)
      (i32.const 3124)
     )
     (i32.store
      (i32.const 3144)
      (i32.const 3132)
     )
     (i32.store
      (i32.const 3140)
      (i32.const 3132)
     )
     (i32.store
      (i32.const 3152)
      (i32.const 3140)
     )
     (i32.store
      (i32.const 3148)
      (i32.const 3140)
     )
     (i32.store
      (i32.const 3160)
      (i32.const 3148)
     )
     (i32.store
      (i32.const 3156)
      (i32.const 3148)
     )
     (i32.store
      (i32.const 3168)
      (i32.const 3156)
     )
     (i32.store
      (i32.const 3164)
      (i32.const 3156)
     )
     (i32.store
      (i32.const 3176)
      (i32.const 3164)
     )
     (i32.store
      (i32.const 3172)
      (i32.const 3164)
     )
     (i32.store
      (i32.const 3184)
      (i32.const 3172)
     )
     (i32.store
      (i32.const 3180)
      (i32.const 3172)
     )
     (i32.store
      (i32.const 3192)
      (i32.const 3180)
     )
     (i32.store
      (i32.const 3188)
      (i32.const 3180)
     )
     (i32.store
      (i32.const 3200)
      (i32.const 3188)
     )
     (i32.store
      (i32.const 3196)
      (i32.const 3188)
     )
     (i32.store
      (i32.const 3208)
      (i32.const 3196)
     )
     (i32.store
      (i32.const 3204)
      (i32.const 3196)
     )
     (i32.store
      (i32.const 3216)
      (i32.const 3204)
     )
     (i32.store
      (i32.const 3212)
      (i32.const 3204)
     )
     (i32.store
      (i32.const 3224)
      (i32.const 3212)
     )
     (i32.store
      (i32.const 3220)
      (i32.const 3212)
     )
     (i32.store
      (i32.const 3232)
      (i32.const 3220)
     )
     (i32.store
      (i32.const 3228)
      (i32.const 3220)
     )
     (i32.store
      (i32.const 3240)
      (i32.const 3228)
     )
     (i32.store
      (i32.const 3236)
      (i32.const 3228)
     )
     (i32.store
      (i32.const 3248)
      (i32.const 3236)
     )
     (i32.store
      (i32.const 3244)
      (i32.const 3236)
     )
     (i32.store
      (i32.const 3256)
      (i32.const 3244)
     )
     (i32.store
      (i32.const 3252)
      (i32.const 3244)
     )
     (i32.store
      (i32.const 3264)
      (i32.const 3252)
     )
     (i32.store
      (i32.const 3260)
      (i32.const 3252)
     )
     (i32.store
      (i32.const 3272)
      (i32.const 3260)
     )
     (i32.store
      (i32.const 3268)
      (i32.const 3260)
     )
     (i32.store
      (i32.const 3280)
      (i32.const 3268)
     )
     (i32.store
      (i32.const 3276)
      (i32.const 3268)
     )
     (i32.store
      (i32.const 3288)
      (i32.const 3276)
     )
     (i32.store
      (i32.const 3284)
      (i32.const 3276)
     )
     (i32.store
      (i32.const 3296)
      (i32.const 3284)
     )
     (i32.store
      (i32.const 3292)
      (i32.const 3284)
     )
     (i32.store
      (i32.const 3304)
      (i32.const 3292)
     )
     (i32.store
      (i32.const 3300)
      (i32.const 3292)
     )
     (i32.store
      (i32.const 3312)
      (i32.const 3300)
     )
     (i32.store
      (i32.const 3308)
      (i32.const 3300)
     )
     (i32.store
      (i32.const 3320)
      (i32.const 3308)
     )
     (i32.store
      (i32.const 3316)
      (i32.const 3308)
     )
     (i32.store
      (i32.const 3328)
      (i32.const 3316)
     )
     (i32.store
      (i32.const 3324)
      (i32.const 3316)
     )
     (i32.store
      (i32.const 3336)
      (i32.const 3324)
     )
     (i32.store
      (i32.const 3332)
      (i32.const 3324)
     )
     (i32.store
      (i32.const 3344)
      (i32.const 3332)
     )
     (i32.store
      (i32.const 3340)
      (i32.const 3332)
     )
     (i32.store
      (i32.const 3352)
      (i32.const 3340)
     )
     (i32.store
      (i32.const 3348)
      (i32.const 3340)
     )
     (i32.store
      (i32.const 3360)
      (i32.const 3348)
     )
     (i32.store
      (i32.const 3356)
      (i32.const 3348)
     )
     (i32.store
      (i32.const 3368)
      (i32.const 3356)
     )
     (i32.store
      (i32.const 3364)
      (i32.const 3356)
     )
     (i32.store
      (i32.const 3376)
      (i32.const 3364)
     )
     (i32.store
      (i32.const 3372)
      (i32.const 3364)
     )
     (i32.store
      (i32.const 3100)
      (local.tee $4
       (i32.add
        (local.tee $2
         (select
          (i32.and
           (i32.sub
            (i32.const 0)
            (local.tee $2
             (i32.add
              (local.get $0)
              (i32.const 8)
             )
            )
           )
           (i32.const 7)
          )
          (i32.const 0)
          (i32.and
           (local.get $2)
           (i32.const 7)
          )
         )
        )
        (local.get $0)
       )
      )
     )
     (i32.store
      (i32.const 3088)
      (local.tee $2
       (i32.sub
        (local.tee $1
         (i32.add
          (local.get $1)
          (i32.const -40)
         )
        )
        (local.get $2)
       )
      )
     )
     (i32.store offset=4
      (local.get $4)
      (i32.or
       (local.get $2)
       (i32.const 1)
      )
     )
     (i32.store offset=4
      (i32.add
       (local.get $0)
       (local.get $1)
      )
      (i32.const 40)
     )
     (i32.store
      (i32.const 3104)
      (i32.load
       (i32.const 3564)
      )
     )
    )
   )
   (if
    (i32.gt_u
     (local.tee $0
      (i32.load
       (i32.const 3088)
      )
     )
     (local.get $3)
    )
    (block
     (i32.store
      (i32.const 3088)
      (local.tee $1
       (i32.sub
        (local.get $0)
        (local.get $3)
       )
      )
     )
     (i32.store
      (i32.const 3100)
      (local.tee $2
       (i32.add
        (local.tee $0
         (i32.load
          (i32.const 3100)
         )
        )
        (local.get $3)
       )
      )
     )
     (i32.store offset=4
      (local.get $2)
      (i32.or
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.store offset=4
      (local.get $0)
      (i32.or
       (local.get $3)
       (i32.const 3)
      )
     )
     (global.set $STACKTOP
      (local.get $14)
     )
     (return
      (i32.add
       (local.get $0)
       (i32.const 8)
      )
     )
    )
   )
  )
  (i32.store
   (i32.const 3072)
   (i32.const 12)
  )
  (global.set $STACKTOP
   (local.get $14)
  )
  (i32.const 0)
 )
 (func $_free (; 44 ;) (; has Stack IR ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (if
   (i32.eqz
    (local.get $0)
   )
   (return)
  )
  (if
   (i32.lt_u
    (local.tee $5
     (i32.add
      (local.get $0)
      (i32.const -8)
     )
    )
    (local.tee $12
     (i32.load
      (i32.const 3092)
     )
    )
   )
   (call $_abort)
  )
  (if
   (i32.eq
    (local.tee $11
     (i32.and
      (local.tee $0
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const -4)
        )
       )
      )
      (i32.const 3)
     )
    )
    (i32.const 1)
   )
   (call $_abort)
  )
  (local.set $7
   (i32.add
    (local.get $5)
    (local.tee $2
     (i32.and
      (local.get $0)
      (i32.const -8)
     )
    )
   )
  )
  (if
   (i32.and
    (local.get $0)
    (i32.const 1)
   )
   (block
    (local.set $3
     (local.tee $4
      (local.get $5)
     )
    )
    (local.set $1
     (local.get $2)
    )
   )
   (block $label$break$L10
    (local.set $9
     (i32.load
      (local.get $5)
     )
    )
    (if
     (i32.eqz
      (local.get $11)
     )
     (return)
    )
    (if
     (i32.lt_u
      (local.tee $0
       (i32.sub
        (local.get $5)
        (local.get $9)
       )
      )
      (local.get $12)
     )
     (call $_abort)
    )
    (local.set $5
     (i32.add
      (local.get $2)
      (local.get $9)
     )
    )
    (if
     (i32.eq
      (i32.load
       (i32.const 3096)
      )
      (local.get $0)
     )
     (block
      (if
       (i32.ne
        (i32.and
         (local.tee $4
          (i32.load
           (local.tee $1
            (i32.add
             (local.get $7)
             (i32.const 4)
            )
           )
          )
         )
         (i32.const 3)
        )
        (i32.const 3)
       )
       (block
        (local.set $4
         (local.get $0)
        )
        (local.set $3
         (local.get $0)
        )
        (local.set $1
         (local.get $5)
        )
        (br $label$break$L10)
       )
      )
      (i32.store
       (i32.const 3084)
       (local.get $5)
      )
      (i32.store
       (local.get $1)
       (i32.and
        (local.get $4)
        (i32.const -2)
       )
      )
      (i32.store
       (i32.add
        (local.get $0)
        (i32.const 4)
       )
       (i32.or
        (local.get $5)
        (i32.const 1)
       )
      )
      (i32.store
       (i32.add
        (local.get $0)
        (local.get $5)
       )
       (local.get $5)
      )
      (return)
     )
    )
    (local.set $2
     (i32.shr_u
      (local.get $9)
      (i32.const 3)
     )
    )
    (if
     (i32.lt_u
      (local.get $9)
      (i32.const 256)
     )
     (block
      (local.set $4
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const 12)
        )
       )
      )
      (if
       (i32.ne
        (local.tee $3
         (i32.load
          (i32.add
           (local.get $0)
           (i32.const 8)
          )
         )
        )
        (local.tee $1
         (i32.add
          (i32.shl
           (local.get $2)
           (i32.const 3)
          )
          (i32.const 3116)
         )
        )
       )
       (block
        (if
         (i32.gt_u
          (local.get $12)
          (local.get $3)
         )
         (call $_abort)
        )
        (if
         (i32.ne
          (local.get $0)
          (i32.load
           (i32.add
            (local.get $3)
            (i32.const 12)
           )
          )
         )
         (call $_abort)
        )
       )
      )
      (if
       (i32.eq
        (local.get $3)
        (local.get $4)
       )
       (block
        (i32.store
         (i32.const 3076)
         (i32.and
          (i32.load
           (i32.const 3076)
          )
          (i32.xor
           (i32.shl
            (i32.const 1)
            (local.get $2)
           )
           (i32.const -1)
          )
         )
        )
        (local.set $4
         (local.get $0)
        )
        (local.set $3
         (local.get $0)
        )
        (local.set $1
         (local.get $5)
        )
        (br $label$break$L10)
       )
      )
      (if
       (i32.eq
        (local.get $1)
        (local.get $4)
       )
       (local.set $6
        (i32.add
         (local.get $4)
         (i32.const 8)
        )
       )
       (block
        (if
         (i32.gt_u
          (local.get $12)
          (local.get $4)
         )
         (call $_abort)
        )
        (if
         (i32.eq
          (i32.load
           (local.tee $1
            (i32.add
             (local.get $4)
             (i32.const 8)
            )
           )
          )
          (local.get $0)
         )
         (local.set $6
          (local.get $1)
         )
         (call $_abort)
        )
       )
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 12)
       )
       (local.get $4)
      )
      (i32.store
       (local.get $6)
       (local.get $3)
      )
      (local.set $4
       (local.get $0)
      )
      (local.set $3
       (local.get $0)
      )
      (local.set $1
       (local.get $5)
      )
      (br $label$break$L10)
     )
    )
    (local.set $13
     (i32.load
      (i32.add
       (local.get $0)
       (i32.const 24)
      )
     )
    )
    (if
     (i32.eq
      (local.tee $2
       (i32.load
        (i32.add
         (local.get $0)
         (i32.const 12)
        )
       )
      )
      (local.get $0)
     )
     (block $do-once
      (if
       (local.tee $2
        (i32.load
         (local.tee $9
          (i32.add
           (local.tee $6
            (i32.add
             (local.get $0)
             (i32.const 16)
            )
           )
           (i32.const 4)
          )
         )
        )
       )
       (local.set $6
        (local.get $9)
       )
       (br_if $do-once
        (i32.eqz
         (local.tee $2
          (i32.load
           (local.get $6)
          )
         )
        )
       )
      )
      (loop $while-in
       (block $while-out
        (local.set $2
         (if (result i32)
          (local.tee $11
           (i32.load
            (local.tee $9
             (i32.add
              (local.get $2)
              (i32.const 20)
             )
            )
           )
          )
          (block (result i32)
           (local.set $6
            (local.get $9)
           )
           (local.get $11)
          )
          (block (result i32)
           (br_if $while-out
            (i32.eqz
             (local.tee $11
              (i32.load
               (local.tee $9
                (i32.add
                 (local.get $2)
                 (i32.const 16)
                )
               )
              )
             )
            )
           )
           (local.set $6
            (local.get $9)
           )
           (local.get $11)
          )
         )
        )
        (br $while-in)
       )
      )
      (if
       (i32.gt_u
        (local.get $12)
        (local.get $6)
       )
       (call $_abort)
       (block
        (i32.store
         (local.get $6)
         (i32.const 0)
        )
        (local.set $8
         (local.get $2)
        )
       )
      )
     )
     (block
      (if
       (i32.gt_u
        (local.get $12)
        (local.tee $6
         (i32.load
          (i32.add
           (local.get $0)
           (i32.const 8)
          )
         )
        )
       )
       (call $_abort)
      )
      (if
       (i32.ne
        (local.get $0)
        (i32.load
         (local.tee $9
          (i32.add
           (local.get $6)
           (i32.const 12)
          )
         )
        )
       )
       (call $_abort)
      )
      (if
       (i32.eq
        (i32.load
         (local.tee $11
          (i32.add
           (local.get $2)
           (i32.const 8)
          )
         )
        )
        (local.get $0)
       )
       (block
        (i32.store
         (local.get $9)
         (local.get $2)
        )
        (i32.store
         (local.get $11)
         (local.get $6)
        )
        (local.set $8
         (local.get $2)
        )
       )
       (call $_abort)
      )
     )
    )
    (if
     (local.get $13)
     (block
      (if
       (i32.eq
        (i32.load
         (local.tee $6
          (i32.add
           (i32.shl
            (local.tee $2
             (i32.load
              (i32.add
               (local.get $0)
               (i32.const 28)
              )
             )
            )
            (i32.const 2)
           )
           (i32.const 3380)
          )
         )
        )
        (local.get $0)
       )
       (block
        (i32.store
         (local.get $6)
         (local.get $8)
        )
        (if
         (i32.eqz
          (local.get $8)
         )
         (block
          (i32.store
           (i32.const 3080)
           (i32.and
            (i32.load
             (i32.const 3080)
            )
            (i32.xor
             (i32.shl
              (i32.const 1)
              (local.get $2)
             )
             (i32.const -1)
            )
           )
          )
          (local.set $4
           (local.get $0)
          )
          (local.set $3
           (local.get $0)
          )
          (local.set $1
           (local.get $5)
          )
          (br $label$break$L10)
         )
        )
       )
       (if
        (i32.gt_u
         (i32.load
          (i32.const 3092)
         )
         (local.get $13)
        )
        (call $_abort)
        (block
         (i32.store
          (select
           (local.tee $2
            (i32.add
             (local.get $13)
             (i32.const 16)
            )
           )
           (i32.add
            (local.get $13)
            (i32.const 20)
           )
           (i32.eq
            (i32.load
             (local.get $2)
            )
            (local.get $0)
           )
          )
          (local.get $8)
         )
         (if
          (i32.eqz
           (local.get $8)
          )
          (block
           (local.set $4
            (local.get $0)
           )
           (local.set $3
            (local.get $0)
           )
           (local.set $1
            (local.get $5)
           )
           (br $label$break$L10)
          )
         )
        )
       )
      )
      (if
       (i32.gt_u
        (local.tee $6
         (i32.load
          (i32.const 3092)
         )
        )
        (local.get $8)
       )
       (call $_abort)
      )
      (i32.store
       (i32.add
        (local.get $8)
        (i32.const 24)
       )
       (local.get $13)
      )
      (if
       (local.tee $2
        (i32.load
         (local.tee $9
          (i32.add
           (local.get $0)
           (i32.const 16)
          )
         )
        )
       )
       (if
        (i32.gt_u
         (local.get $6)
         (local.get $2)
        )
        (call $_abort)
        (block
         (i32.store
          (i32.add
           (local.get $8)
           (i32.const 16)
          )
          (local.get $2)
         )
         (i32.store
          (i32.add
           (local.get $2)
           (i32.const 24)
          )
          (local.get $8)
         )
        )
       )
      )
      (if
       (local.tee $2
        (i32.load
         (i32.add
          (local.get $9)
          (i32.const 4)
         )
        )
       )
       (if
        (i32.gt_u
         (i32.load
          (i32.const 3092)
         )
         (local.get $2)
        )
        (call $_abort)
        (block
         (i32.store
          (i32.add
           (local.get $8)
           (i32.const 20)
          )
          (local.get $2)
         )
         (i32.store
          (i32.add
           (local.get $2)
           (i32.const 24)
          )
          (local.get $8)
         )
         (local.set $4
          (local.get $0)
         )
         (local.set $3
          (local.get $0)
         )
         (local.set $1
          (local.get $5)
         )
        )
       )
       (block
        (local.set $4
         (local.get $0)
        )
        (local.set $3
         (local.get $0)
        )
        (local.set $1
         (local.get $5)
        )
       )
      )
     )
     (block
      (local.set $4
       (local.get $0)
      )
      (local.set $3
       (local.get $0)
      )
      (local.set $1
       (local.get $5)
      )
     )
    )
   )
  )
  (if
   (i32.ge_u
    (local.get $4)
    (local.get $7)
   )
   (call $_abort)
  )
  (if
   (i32.eqz
    (i32.and
     (local.tee $0
      (i32.load
       (local.tee $5
        (i32.add
         (local.get $7)
         (i32.const 4)
        )
       )
      )
     )
     (i32.const 1)
    )
   )
   (call $_abort)
  )
  (local.set $1
   (i32.shr_u
    (local.tee $4
     (if (result i32)
      (i32.and
       (local.get $0)
       (i32.const 2)
      )
      (block (result i32)
       (i32.store
        (local.get $5)
        (i32.and
         (local.get $0)
         (i32.const -2)
        )
       )
       (i32.store
        (i32.add
         (local.get $3)
         (i32.const 4)
        )
        (i32.or
         (local.get $1)
         (i32.const 1)
        )
       )
       (i32.store
        (i32.add
         (local.get $1)
         (local.get $4)
        )
        (local.get $1)
       )
       (local.get $1)
      )
      (block (result i32)
       (if
        (i32.eq
         (i32.load
          (i32.const 3100)
         )
         (local.get $7)
        )
        (block
         (i32.store
          (i32.const 3088)
          (local.tee $0
           (i32.add
            (i32.load
             (i32.const 3088)
            )
            (local.get $1)
           )
          )
         )
         (i32.store
          (i32.const 3100)
          (local.get $3)
         )
         (i32.store
          (i32.add
           (local.get $3)
           (i32.const 4)
          )
          (i32.or
           (local.get $0)
           (i32.const 1)
          )
         )
         (if
          (i32.ne
           (local.get $3)
           (i32.load
            (i32.const 3096)
           )
          )
          (return)
         )
         (i32.store
          (i32.const 3096)
          (i32.const 0)
         )
         (i32.store
          (i32.const 3084)
          (i32.const 0)
         )
         (return)
        )
       )
       (if
        (i32.eq
         (i32.load
          (i32.const 3096)
         )
         (local.get $7)
        )
        (block
         (i32.store
          (i32.const 3084)
          (local.tee $0
           (i32.add
            (i32.load
             (i32.const 3084)
            )
            (local.get $1)
           )
          )
         )
         (i32.store
          (i32.const 3096)
          (local.get $4)
         )
         (i32.store
          (i32.add
           (local.get $3)
           (i32.const 4)
          )
          (i32.or
           (local.get $0)
           (i32.const 1)
          )
         )
         (i32.store
          (i32.add
           (local.get $0)
           (local.get $4)
          )
          (local.get $0)
         )
         (return)
        )
       )
       (local.set $5
        (i32.add
         (i32.and
          (local.get $0)
          (i32.const -8)
         )
         (local.get $1)
        )
       )
       (local.set $6
        (i32.shr_u
         (local.get $0)
         (i32.const 3)
        )
       )
       (block $label$break$L111
        (if
         (i32.lt_u
          (local.get $0)
          (i32.const 256)
         )
         (block
          (local.set $1
           (i32.load
            (i32.add
             (local.get $7)
             (i32.const 12)
            )
           )
          )
          (if
           (i32.ne
            (local.tee $2
             (i32.load
              (i32.add
               (local.get $7)
               (i32.const 8)
              )
             )
            )
            (local.tee $0
             (i32.add
              (i32.shl
               (local.get $6)
               (i32.const 3)
              )
              (i32.const 3116)
             )
            )
           )
           (block
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3092)
              )
              (local.get $2)
             )
             (call $_abort)
            )
            (if
             (i32.ne
              (local.get $7)
              (i32.load
               (i32.add
                (local.get $2)
                (i32.const 12)
               )
              )
             )
             (call $_abort)
            )
           )
          )
          (if
           (i32.eq
            (local.get $1)
            (local.get $2)
           )
           (block
            (i32.store
             (i32.const 3076)
             (i32.and
              (i32.load
               (i32.const 3076)
              )
              (i32.xor
               (i32.shl
                (i32.const 1)
                (local.get $6)
               )
               (i32.const -1)
              )
             )
            )
            (br $label$break$L111)
           )
          )
          (if
           (i32.eq
            (local.get $0)
            (local.get $1)
           )
           (local.set $16
            (i32.add
             (local.get $1)
             (i32.const 8)
            )
           )
           (block
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3092)
              )
              (local.get $1)
             )
             (call $_abort)
            )
            (if
             (i32.eq
              (i32.load
               (local.tee $0
                (i32.add
                 (local.get $1)
                 (i32.const 8)
                )
               )
              )
              (local.get $7)
             )
             (local.set $16
              (local.get $0)
             )
             (call $_abort)
            )
           )
          )
          (i32.store
           (i32.add
            (local.get $2)
            (i32.const 12)
           )
           (local.get $1)
          )
          (i32.store
           (local.get $16)
           (local.get $2)
          )
         )
         (block
          (local.set $8
           (i32.load
            (i32.add
             (local.get $7)
             (i32.const 24)
            )
           )
          )
          (if
           (i32.eq
            (local.tee $0
             (i32.load
              (i32.add
               (local.get $7)
               (i32.const 12)
              )
             )
            )
            (local.get $7)
           )
           (block $do-once6
            (if
             (local.tee $0
              (i32.load
               (local.tee $2
                (i32.add
                 (local.tee $1
                  (i32.add
                   (local.get $7)
                   (i32.const 16)
                  )
                 )
                 (i32.const 4)
                )
               )
              )
             )
             (local.set $1
              (local.get $2)
             )
             (br_if $do-once6
              (i32.eqz
               (local.tee $0
                (i32.load
                 (local.get $1)
                )
               )
              )
             )
            )
            (loop $while-in9
             (block $while-out8
              (local.set $0
               (if (result i32)
                (local.tee $6
                 (i32.load
                  (local.tee $2
                   (i32.add
                    (local.get $0)
                    (i32.const 20)
                   )
                  )
                 )
                )
                (block (result i32)
                 (local.set $1
                  (local.get $2)
                 )
                 (local.get $6)
                )
                (block (result i32)
                 (br_if $while-out8
                  (i32.eqz
                   (local.tee $6
                    (i32.load
                     (local.tee $2
                      (i32.add
                       (local.get $0)
                       (i32.const 16)
                      )
                     )
                    )
                   )
                  )
                 )
                 (local.set $1
                  (local.get $2)
                 )
                 (local.get $6)
                )
               )
              )
              (br $while-in9)
             )
            )
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3092)
              )
              (local.get $1)
             )
             (call $_abort)
             (block
              (i32.store
               (local.get $1)
               (i32.const 0)
              )
              (local.set $10
               (local.get $0)
              )
             )
            )
           )
           (block
            (if
             (i32.gt_u
              (i32.load
               (i32.const 3092)
              )
              (local.tee $1
               (i32.load
                (i32.add
                 (local.get $7)
                 (i32.const 8)
                )
               )
              )
             )
             (call $_abort)
            )
            (if
             (i32.ne
              (local.get $7)
              (i32.load
               (local.tee $2
                (i32.add
                 (local.get $1)
                 (i32.const 12)
                )
               )
              )
             )
             (call $_abort)
            )
            (if
             (i32.eq
              (i32.load
               (local.tee $6
                (i32.add
                 (local.get $0)
                 (i32.const 8)
                )
               )
              )
              (local.get $7)
             )
             (block
              (i32.store
               (local.get $2)
               (local.get $0)
              )
              (i32.store
               (local.get $6)
               (local.get $1)
              )
              (local.set $10
               (local.get $0)
              )
             )
             (call $_abort)
            )
           )
          )
          (if
           (local.get $8)
           (block
            (if
             (i32.eq
              (i32.load
               (local.tee $1
                (i32.add
                 (i32.shl
                  (local.tee $0
                   (i32.load
                    (i32.add
                     (local.get $7)
                     (i32.const 28)
                    )
                   )
                  )
                  (i32.const 2)
                 )
                 (i32.const 3380)
                )
               )
              )
              (local.get $7)
             )
             (block
              (i32.store
               (local.get $1)
               (local.get $10)
              )
              (if
               (i32.eqz
                (local.get $10)
               )
               (block
                (i32.store
                 (i32.const 3080)
                 (i32.and
                  (i32.load
                   (i32.const 3080)
                  )
                  (i32.xor
                   (i32.shl
                    (i32.const 1)
                    (local.get $0)
                   )
                   (i32.const -1)
                  )
                 )
                )
                (br $label$break$L111)
               )
              )
             )
             (if
              (i32.gt_u
               (i32.load
                (i32.const 3092)
               )
               (local.get $8)
              )
              (call $_abort)
              (block
               (i32.store
                (select
                 (local.tee $0
                  (i32.add
                   (local.get $8)
                   (i32.const 16)
                  )
                 )
                 (i32.add
                  (local.get $8)
                  (i32.const 20)
                 )
                 (i32.eq
                  (i32.load
                   (local.get $0)
                  )
                  (local.get $7)
                 )
                )
                (local.get $10)
               )
               (br_if $label$break$L111
                (i32.eqz
                 (local.get $10)
                )
               )
              )
             )
            )
            (if
             (i32.gt_u
              (local.tee $1
               (i32.load
                (i32.const 3092)
               )
              )
              (local.get $10)
             )
             (call $_abort)
            )
            (i32.store
             (i32.add
              (local.get $10)
              (i32.const 24)
             )
             (local.get $8)
            )
            (if
             (local.tee $0
              (i32.load
               (local.tee $2
                (i32.add
                 (local.get $7)
                 (i32.const 16)
                )
               )
              )
             )
             (if
              (i32.gt_u
               (local.get $1)
               (local.get $0)
              )
              (call $_abort)
              (block
               (i32.store
                (i32.add
                 (local.get $10)
                 (i32.const 16)
                )
                (local.get $0)
               )
               (i32.store
                (i32.add
                 (local.get $0)
                 (i32.const 24)
                )
                (local.get $10)
               )
              )
             )
            )
            (if
             (local.tee $0
              (i32.load
               (i32.add
                (local.get $2)
                (i32.const 4)
               )
              )
             )
             (if
              (i32.gt_u
               (i32.load
                (i32.const 3092)
               )
               (local.get $0)
              )
              (call $_abort)
              (block
               (i32.store
                (i32.add
                 (local.get $10)
                 (i32.const 20)
                )
                (local.get $0)
               )
               (i32.store
                (i32.add
                 (local.get $0)
                 (i32.const 24)
                )
                (local.get $10)
               )
              )
             )
            )
           )
          )
         )
        )
       )
       (i32.store
        (i32.add
         (local.get $3)
         (i32.const 4)
        )
        (i32.or
         (local.get $5)
         (i32.const 1)
        )
       )
       (i32.store
        (i32.add
         (local.get $4)
         (local.get $5)
        )
        (local.get $5)
       )
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.const 3096)
         )
         (local.get $3)
        )
        (block
         (i32.store
          (i32.const 3084)
          (local.get $5)
         )
         (return)
        )
        (local.get $5)
       )
      )
     )
    )
    (i32.const 3)
   )
  )
  (if
   (i32.lt_u
    (local.get $4)
    (i32.const 256)
   )
   (block
    (local.set $0
     (i32.add
      (i32.shl
       (local.get $1)
       (i32.const 3)
      )
      (i32.const 3116)
     )
    )
    (if
     (i32.and
      (local.tee $4
       (i32.load
        (i32.const 3076)
       )
      )
      (local.tee $1
       (i32.shl
        (i32.const 1)
        (local.get $1)
       )
      )
     )
     (if
      (i32.gt_u
       (i32.load
        (i32.const 3092)
       )
       (local.tee $4
        (i32.load
         (local.tee $1
          (i32.add
           (local.get $0)
           (i32.const 8)
          )
         )
        )
       )
      )
      (call $_abort)
      (block
       (local.set $17
        (local.get $1)
       )
       (local.set $15
        (local.get $4)
       )
      )
     )
     (block
      (i32.store
       (i32.const 3076)
       (i32.or
        (local.get $1)
        (local.get $4)
       )
      )
      (local.set $17
       (i32.add
        (local.get $0)
        (i32.const 8)
       )
      )
      (local.set $15
       (local.get $0)
      )
     )
    )
    (i32.store
     (local.get $17)
     (local.get $3)
    )
    (i32.store
     (i32.add
      (local.get $15)
      (i32.const 12)
     )
     (local.get $3)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 8)
     )
     (local.get $15)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 12)
     )
     (local.get $0)
    )
    (return)
   )
  )
  (local.set $0
   (i32.add
    (i32.shl
     (local.tee $1
      (if (result i32)
       (local.tee $0
        (i32.shr_u
         (local.get $4)
         (i32.const 8)
        )
       )
       (if (result i32)
        (i32.gt_u
         (local.get $4)
         (i32.const 16777215)
        )
        (i32.const 31)
        (block (result i32)
         (local.set $0
          (i32.and
           (i32.shr_u
            (i32.add
             (local.tee $1
              (i32.shl
               (local.get $0)
               (local.tee $5
                (i32.and
                 (i32.shr_u
                  (i32.add
                   (local.get $0)
                   (i32.const 1048320)
                  )
                  (i32.const 16)
                 )
                 (i32.const 8)
                )
               )
              )
             )
             (i32.const 520192)
            )
            (i32.const 16)
           )
           (i32.const 4)
          )
         )
         (local.set $1
          (i32.and
           (i32.shr_u
            (i32.add
             (local.tee $2
              (i32.shl
               (local.get $1)
               (local.get $0)
              )
             )
             (i32.const 245760)
            )
            (i32.const 16)
           )
           (i32.const 2)
          )
         )
         (i32.or
          (i32.and
           (i32.shr_u
            (local.get $4)
            (i32.add
             (local.tee $0
              (i32.add
               (i32.sub
                (i32.const 14)
                (i32.or
                 (i32.or
                  (local.get $0)
                  (local.get $5)
                 )
                 (local.get $1)
                )
               )
               (i32.shr_u
                (i32.shl
                 (local.get $2)
                 (local.get $1)
                )
                (i32.const 15)
               )
              )
             )
             (i32.const 7)
            )
           )
           (i32.const 1)
          )
          (i32.shl
           (local.get $0)
           (i32.const 1)
          )
         )
        )
       )
       (i32.const 0)
      )
     )
     (i32.const 2)
    )
    (i32.const 3380)
   )
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 28)
   )
   (local.get $1)
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 20)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (local.get $3)
    (i32.const 16)
   )
   (i32.const 0)
  )
  (if
   (i32.and
    (local.tee $5
     (i32.load
      (i32.const 3080)
     )
    )
    (local.tee $2
     (i32.shl
      (i32.const 1)
      (local.get $1)
     )
    )
   )
   (block $label$break$L197
    (if
     (i32.eq
      (i32.and
       (i32.load
        (i32.add
         (local.tee $0
          (i32.load
           (local.get $0)
          )
         )
         (i32.const 4)
        )
       )
       (i32.const -8)
      )
      (local.get $4)
     )
     (local.set $14
      (local.get $0)
     )
     (block $label$break$L200
      (local.set $5
       (i32.shl
        (local.get $4)
        (select
         (i32.const 0)
         (i32.sub
          (i32.const 25)
          (i32.shr_u
           (local.get $1)
           (i32.const 1)
          )
         )
         (i32.eq
          (local.get $1)
          (i32.const 31)
         )
        )
       )
      )
      (loop $while-in17
       (if
        (local.tee $1
         (i32.load
          (local.tee $2
           (i32.add
            (i32.add
             (local.get $0)
             (i32.const 16)
            )
            (i32.shl
             (i32.shr_u
              (local.get $5)
              (i32.const 31)
             )
             (i32.const 2)
            )
           )
          )
         )
        )
        (block
         (local.set $5
          (i32.shl
           (local.get $5)
           (i32.const 1)
          )
         )
         (if
          (i32.eq
           (i32.and
            (i32.load
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
            (i32.const -8)
           )
           (local.get $4)
          )
          (block
           (local.set $14
            (local.get $1)
           )
           (br $label$break$L200)
          )
          (block
           (local.set $0
            (local.get $1)
           )
           (br $while-in17)
          )
         )
        )
       )
      )
      (if
       (i32.gt_u
        (i32.load
         (i32.const 3092)
        )
        (local.get $2)
       )
       (call $_abort)
       (block
        (i32.store
         (local.get $2)
         (local.get $3)
        )
        (i32.store
         (i32.add
          (local.get $3)
          (i32.const 24)
         )
         (local.get $0)
        )
        (i32.store
         (i32.add
          (local.get $3)
          (i32.const 12)
         )
         (local.get $3)
        )
        (i32.store
         (i32.add
          (local.get $3)
          (i32.const 8)
         )
         (local.get $3)
        )
        (br $label$break$L197)
       )
      )
     )
    )
    (if
     (i32.and
      (i32.le_u
       (local.tee $0
        (i32.load
         (i32.const 3092)
        )
       )
       (local.get $14)
      )
      (i32.le_u
       (local.get $0)
       (local.tee $0
        (i32.load
         (local.tee $1
          (i32.add
           (local.get $14)
           (i32.const 8)
          )
         )
        )
       )
      )
     )
     (block
      (i32.store
       (i32.add
        (local.get $0)
        (i32.const 12)
       )
       (local.get $3)
      )
      (i32.store
       (local.get $1)
       (local.get $3)
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 8)
       )
       (local.get $0)
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 12)
       )
       (local.get $14)
      )
      (i32.store
       (i32.add
        (local.get $3)
        (i32.const 24)
       )
       (i32.const 0)
      )
     )
     (call $_abort)
    )
   )
   (block
    (i32.store
     (i32.const 3080)
     (i32.or
      (local.get $2)
      (local.get $5)
     )
    )
    (i32.store
     (local.get $0)
     (local.get $3)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 24)
     )
     (local.get $0)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 12)
     )
     (local.get $3)
    )
    (i32.store
     (i32.add
      (local.get $3)
      (i32.const 8)
     )
     (local.get $3)
    )
   )
  )
  (i32.store
   (i32.const 3108)
   (local.tee $0
    (i32.add
     (i32.load
      (i32.const 3108)
     )
     (i32.const -1)
    )
   )
  )
  (if
   (local.get $0)
   (return)
  )
  (local.set $0
   (i32.const 3532)
  )
  (loop $while-in19
   (local.set $0
    (i32.add
     (local.tee $1
      (i32.load
       (local.get $0)
      )
     )
     (i32.const 8)
    )
   )
   (br_if $while-in19
    (local.get $1)
   )
  )
  (i32.store
   (i32.const 3108)
   (i32.const -1)
  )
 )
 (func $_memcpy (; 45 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.ge_s
    (local.get $2)
    (i32.const 8192)
   )
   (block
    (drop
     (call $_emscripten_memcpy_big
      (local.get $0)
      (local.get $1)
      (local.get $2)
     )
    )
    (return
     (local.get $0)
    )
   )
  )
  (local.set $4
   (local.get $0)
  )
  (local.set $3
   (i32.add
    (local.get $0)
    (local.get $2)
   )
  )
  (if
   (i32.eq
    (i32.and
     (local.get $0)
     (i32.const 3)
    )
    (i32.and
     (local.get $1)
     (i32.const 3)
    )
   )
   (block
    (loop $while-in
     (if
      (i32.and
       (local.get $0)
       (i32.const 3)
      )
      (block
       (if
        (i32.eqz
         (local.get $2)
        )
        (return
         (local.get $4)
        )
       )
       (i32.store8
        (local.get $0)
        (i32.load8_s
         (local.get $1)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
       (local.set $2
        (i32.sub
         (local.get $2)
         (i32.const 1)
        )
       )
       (br $while-in)
      )
     )
    )
    (local.set $5
     (i32.add
      (local.tee $2
       (i32.and
        (local.get $3)
        (i32.const -4)
       )
      )
      (i32.const -64)
     )
    )
    (loop $while-in1
     (if
      (i32.le_s
       (local.get $0)
       (local.get $5)
      )
      (block
       (i32.store
        (local.get $0)
        (i32.load
         (local.get $1)
        )
       )
       (i32.store offset=4
        (local.get $0)
        (i32.load offset=4
         (local.get $1)
        )
       )
       (i32.store offset=8
        (local.get $0)
        (i32.load offset=8
         (local.get $1)
        )
       )
       (i32.store offset=12
        (local.get $0)
        (i32.load offset=12
         (local.get $1)
        )
       )
       (i32.store offset=16
        (local.get $0)
        (i32.load offset=16
         (local.get $1)
        )
       )
       (i32.store offset=20
        (local.get $0)
        (i32.load offset=20
         (local.get $1)
        )
       )
       (i32.store offset=24
        (local.get $0)
        (i32.load offset=24
         (local.get $1)
        )
       )
       (i32.store offset=28
        (local.get $0)
        (i32.load offset=28
         (local.get $1)
        )
       )
       (i32.store offset=32
        (local.get $0)
        (i32.load offset=32
         (local.get $1)
        )
       )
       (i32.store offset=36
        (local.get $0)
        (i32.load offset=36
         (local.get $1)
        )
       )
       (i32.store offset=40
        (local.get $0)
        (i32.load offset=40
         (local.get $1)
        )
       )
       (i32.store offset=44
        (local.get $0)
        (i32.load offset=44
         (local.get $1)
        )
       )
       (i32.store offset=48
        (local.get $0)
        (i32.load offset=48
         (local.get $1)
        )
       )
       (i32.store offset=52
        (local.get $0)
        (i32.load offset=52
         (local.get $1)
        )
       )
       (i32.store offset=56
        (local.get $0)
        (i32.load offset=56
         (local.get $1)
        )
       )
       (i32.store offset=60
        (local.get $0)
        (i32.load offset=60
         (local.get $1)
        )
       )
       (local.set $0
        (i32.sub
         (local.get $0)
         (i32.const -64)
        )
       )
       (local.set $1
        (i32.sub
         (local.get $1)
         (i32.const -64)
        )
       )
       (br $while-in1)
      )
     )
    )
    (loop $while-in3
     (if
      (i32.lt_s
       (local.get $0)
       (local.get $2)
      )
      (block
       (i32.store
        (local.get $0)
        (i32.load
         (local.get $1)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const 4)
        )
       )
       (br $while-in3)
      )
     )
    )
   )
   (block
    (local.set $2
     (i32.sub
      (local.get $3)
      (i32.const 4)
     )
    )
    (loop $while-in5
     (if
      (i32.lt_s
       (local.get $0)
       (local.get $2)
      )
      (block
       (i32.store8
        (local.get $0)
        (i32.load8_s
         (local.get $1)
        )
       )
       (i32.store8 offset=1
        (local.get $0)
        (i32.load8_s offset=1
         (local.get $1)
        )
       )
       (i32.store8 offset=2
        (local.get $0)
        (i32.load8_s offset=2
         (local.get $1)
        )
       )
       (i32.store8 offset=3
        (local.get $0)
        (i32.load8_s offset=3
         (local.get $1)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const 4)
        )
       )
       (br $while-in5)
      )
     )
    )
   )
  )
  (loop $while-in7
   (if
    (i32.lt_s
     (local.get $0)
     (local.get $3)
    )
    (block
     (i32.store8
      (local.get $0)
      (i32.load8_s
       (local.get $1)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $while-in7)
    )
   )
  )
  (local.get $4)
 )
 (func $_memset (; 46 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (local.get $2)
   )
  )
  (local.set $1
   (i32.and
    (local.get $1)
    (i32.const 255)
   )
  )
  (if
   (i32.ge_s
    (local.get $2)
    (i32.const 67)
   )
   (block
    (loop $while-in
     (if
      (i32.and
       (local.get $0)
       (i32.const 3)
      )
      (block
       (i32.store8
        (local.get $0)
        (local.get $1)
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (br $while-in)
      )
     )
    )
    (local.set $3
     (i32.or
      (i32.or
       (i32.or
        (i32.shl
         (local.get $1)
         (i32.const 8)
        )
        (local.get $1)
       )
       (i32.shl
        (local.get $1)
        (i32.const 16)
       )
      )
      (i32.shl
       (local.get $1)
       (i32.const 24)
      )
     )
    )
    (local.set $6
     (i32.add
      (local.tee $5
       (i32.and
        (local.get $4)
        (i32.const -4)
       )
      )
      (i32.const -64)
     )
    )
    (loop $while-in1
     (if
      (i32.le_s
       (local.get $0)
       (local.get $6)
      )
      (block
       (i32.store
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=4
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=8
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=12
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=16
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=20
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=24
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=28
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=32
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=36
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=40
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=44
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=48
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=52
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=56
        (local.get $0)
        (local.get $3)
       )
       (i32.store offset=60
        (local.get $0)
        (local.get $3)
       )
       (local.set $0
        (i32.sub
         (local.get $0)
         (i32.const -64)
        )
       )
       (br $while-in1)
      )
     )
    )
    (loop $while-in3
     (if
      (i32.lt_s
       (local.get $0)
       (local.get $5)
      )
      (block
       (i32.store
        (local.get $0)
        (local.get $3)
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
       (br $while-in3)
      )
     )
    )
   )
  )
  (loop $while-in5
   (if
    (i32.lt_s
     (local.get $0)
     (local.get $4)
    )
    (block
     (i32.store8
      (local.get $0)
      (local.get $1)
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (br $while-in5)
    )
   )
  )
  (i32.sub
   (local.get $4)
   (local.get $2)
  )
 )
 (func $_sbrk (; 47 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $3
   (call $_emscripten_get_heap_size)
  )
  (if
   (i32.or
    (i32.and
     (i32.lt_s
      (local.tee $1
       (i32.add
        (local.get $0)
        (local.tee $2
         (i32.load
          (global.get $DYNAMICTOP_PTR$asm2wasm$import)
         )
        )
       )
      )
      (local.get $2)
     )
     (i32.gt_s
      (local.get $0)
      (i32.const 0)
     )
    )
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
   )
   (block
    (drop
     (call $abortOnCannotGrowMemory
      (local.get $1)
     )
    )
    (call $___setErrNo
     (i32.const 12)
    )
    (return
     (i32.const -1)
    )
   )
  )
  (if
   (i32.gt_s
    (local.get $1)
    (local.get $3)
   )
   (if
    (i32.eqz
     (call $_emscripten_resize_heap
      (local.get $1)
     )
    )
    (block
     (call $___setErrNo
      (i32.const 12)
     )
     (return
      (i32.const -1)
     )
    )
   )
  )
  (i32.store
   (global.get $DYNAMICTOP_PTR$asm2wasm$import)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $dynCall_ii (; 48 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (call_indirect (type $FUNCSIG$ii)
   (local.get $1)
   (i32.and
    (local.get $0)
    (i32.const 1)
   )
  )
 )
 (func $dynCall_iidiiii (; 49 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 f64) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (call_indirect (type $FUNCSIG$iidiiii)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
   (local.get $6)
   (i32.add
    (i32.and
     (local.get $0)
     (i32.const 1)
    )
    (i32.const 2)
   )
  )
 )
 (func $dynCall_iiii (; 50 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (call_indirect (type $FUNCSIG$iiii)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (i32.add
    (i32.and
     (local.get $0)
     (i32.const 3)
    )
    (i32.const 4)
   )
  )
 )
 (func $dynCall_vii (; 51 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (call_indirect (type $FUNCSIG$vii)
   (local.get $1)
   (local.get $2)
   (i32.add
    (i32.and
     (local.get $0)
     (i32.const 1)
    )
    (i32.const 10)
   )
  )
 )
 (func $b0 (; 52 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (call $abort
   (i32.const 0)
  )
  (i32.const 0)
 )
 (func $b1 (; 53 ;) (; has Stack IR ;) (param $0 i32) (param $1 f64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (call $abort
   (i32.const 1)
  )
  (i32.const 0)
 )
 (func $b2 (; 54 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $abort
   (i32.const 2)
  )
  (i32.const 0)
 )
 (func $b3 (; 55 ;) (; has Stack IR ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i64)
  (call $abort
   (i32.const 3)
  )
  (i64.const 0)
 )
 (func $b4 (; 56 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (call $abort
   (i32.const 4)
  )
 )
 (func $legalstub$dynCall_jiji (; 57 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i64)
  (call $setTempRet0
   (i32.wrap_i64
    (i64.shr_u
     (local.tee $5
      (call_indirect (type $FUNCSIG$jiji)
       (local.get $1)
       (i64.or
        (i64.extend_i32_u
         (local.get $2)
        )
        (i64.shl
         (i64.extend_i32_u
          (local.get $3)
         )
         (i64.const 32)
        )
       )
       (local.get $4)
       (i32.add
        (i32.and
         (local.get $0)
         (i32.const 1)
        )
        (i32.const 8)
       )
      )
     )
     (i64.const 32)
    )
   )
  )
  (i32.wrap_i64
   (local.get $5)
  )
 )
)
