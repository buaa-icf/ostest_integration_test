# 音频功能测试 Multimedia Audio Function Test

### 介绍

测试音频基本功能：

| 用例     | 
|--------|
| 模拟耳机音频测试 |
| 输入设备通知测试 | 
| 输出设备通知测试 | 
| 输入路由通知测试 | 
| 输出路由通知测试 | 
| 音频流断开连接测试 | 
| 音频频响曲线测试| 
| 扬声器音频频响测试 |
| 麦克风音频频响测试 |
| 音频频响未处理测试 |


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
echo function/multimedia/audio > .git/info/sparse-checkout
git remote add origin https://gitee.com/openharmony-sig/ostest_integration_test.git
git pull origin master
```
