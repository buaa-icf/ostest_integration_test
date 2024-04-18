# ArkTS Compiler Benchmark

### 介绍

将业界JetStream2中收集的典型benchmark用例用ts重写，测试OpenHarmony ArkTS语言运行的性能。

### 效果预览

| 主页                             | 
|--------------------------------|
| ![image](screenshots/home.png) | 



```
.
├── README_CN.md
└── pages
    ├── Index.ets                        //测试入口页面   
└── cases
    ├── BenchmarkMeasure.ts             // ts测试套
    ├── Octane
    │   ├── box2d.ts                    // 用例
    │   ├── deltablue.ts
    │   ├── navier-stoke.ts
    │   ├── raytrace.ts
    │   └── richards.ts
    └── SunSpider
        ├── base64.ts                   // 用例
        ├── crypto-aes.ts
        ├── crypto-md5.ts
        └── crypto-sha1.ts
```
### 相关权限
无

### 约束与限制

1. 本示例仅支持标准系统上运行，支持设备：RK3568；
2. 本示例仅支持API10版本SDK，版本号：4.0.10.13；
3. 本示例需要使用DevEco Studio 4.0 Release (Build Version: 4.0.0.600)；

### 下载

如需单独下载本工程，执行如下命令：

```
git init
git config core.sparsecheckout true
echo performance/arkts/benchmark_arkts_compiler > .git/info/sparse-checkout
git remote add origin https://gitee.com/openharmony-sig/ostest_integration_test.git
git pull origin master
```
