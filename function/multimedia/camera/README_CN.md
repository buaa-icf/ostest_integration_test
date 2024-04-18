# 相机功能测试 Multimedia Camera Function Test

### 介绍

相机功能测试：

| 用例     | 
|--------|
| 拍摄元数据、抖动、陀螺仪、振动 |
| 曝光、感光度、EV 补偿、YUV 与 JPEG/RAW | 
| 人脸检测、需要彩色场景或完全黑暗的测试 | 
| 边缘增强、镜头移动 | 
| 宽高比、剪裁、视野范围 | 
| 镜头阴影 | 
| 缩放 | 
| 相机/陀螺仪定时偏差 | 



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
echo performance/multimedia/camera > .git/info/sparse-checkout
git remote add origin https://gitee.com/openharmony-sig/ostest_integration_test.git
git pull origin master
```
