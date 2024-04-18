# 相机性能测试 Multimedia Camera Performance Test

### 介绍

相机性能测试：

| 用例     | 
|--------|
| 照片参数最大值 |
| 视频参数最大值 | 
| 照片参数最小值 | 
| 视频参数最小值 | 
| 宽高比、视野缩放范围 | 
| 曝光、感光度、EV 补偿参数边界值 |


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
