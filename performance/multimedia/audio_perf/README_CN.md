# 音频性能测试 Multimedia Audio Performance Test

### 介绍

测试音频性能：

| 用例     | 
|--------|
| 冷启动输入延迟测试 |
| 冷启动输出延迟测试 | 
| 音频点按与发声间测试 | 
| 音频环回延迟测试 | 
| 专业音频测试 | 
| 验证乐器数字接口(MIDI) | 



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
    ├── headphone.ets                   // 用例
    ├── input_notify.ets
    ├── output_notify.ets
    └── input_router.ets
    └── output_router.ets
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
echo performance/multimedia/audio_perf > .git/info/sparse-checkout
git remote add origin https://gitee.com/openharmony-sig/ostest_integration_test.git
git pull origin master
```
