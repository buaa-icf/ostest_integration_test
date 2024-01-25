# ArkCompiler ts-swift workload mix-case

### 介绍

mix-case属于ts-swift workload用例的一部分,实现如下了TS和Swift用例
```
.
├── out                                 // 结果输出目录
│   ├── 2023-08-23-00-33-28-log.txt     // 执行日志
│   ├── 2023-08-23-00-33-28-result.xls  // 结果输出文件
├── README_CN.md
├── run_all.py                          // 总执行入口
├── swift
│   ├── Octane
│   │   ├── deltablue.swift             // 用例
│   │   ├── navier-stoke.swift
│   │   ├── raytrace.swift
│   │   └── richards.swift
│   ├── run.sh                          // swift单独执行执行入口
│   └── SunSpider
│       ├── base64.swift                // 用例
│       ├── crypto-aes.swift
│       ├── crypto-md5.swift
│       └── crypto-sha1.swift
└── ts
    ├── BenchmarkMeasure.ts             // ts测试套
    ├── Octane
    │   ├── box2d.ts                    // 用例
    │   ├── deltablue.ts
    │   ├── navier-stoke.ts
    │   ├── raytrace.ts
    │   └── richards.ts
    ├── run.sh                          // ts单独执行入口
    └── SunSpider
        ├── base64.ts                   // 用例
        ├── crypto-aes.ts
        ├── crypto-md5.ts
        └── crypto-sha1.ts
```
### 环境搭建&执行
1. 下载OpenHarmony源码，搭建常规镜像的编译构建环境；  
2. 构建 ark_js和ark_ets编译工具:
   
   `./build.sh --product-name rk3568 --build-target ark_js_host_linux_tools_packages --build-target ets_frontend_build`

   检查out/rk3568/clang_x64/arkcompiler/：

   ets_frontend/build-ets/目录下是否生成es2abc*文件

   ets_runtime目录下是否生成ark_aot_compiler文件

   ets_runtime目录下是否生成ark_js_vmr文件

3. 如需运行Swift用例，需要安装Swift环境：
   
   从官网下载swift在linux上的安装包 https://www.swift.org/download/
4. 用例路径在源码目录：
   `./test/os_test/ostest_integration_test/performance/arkts/benchmarks/compiler_workload/mix-case`
   
   执行 run_all.py

    `python run_all.py --run-count <count> --case <case-name> --type <type>`

    举例：

    执行所有 ts 和 swift 用例1次：

    `python run_all.py` 

    执行所有 ts 和 swift 用例10次

    `python run_all.py --run-count 10` 

    执行 swift 中 base64 用例10次

    `python run_all.py --type swift --run-count 10 --case base64` 

    执行 ts 用例

    `python run_all.py --type ts` 

    帮助

    `python run_all.py -h`


#####  结果
    结果和日志输出在/mix-case/out目录下
