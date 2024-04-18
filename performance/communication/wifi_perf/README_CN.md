# Wi-Fi性能测试

### 介绍

测试Wi-Fi性能测试：

| 用例     | 
|--------|
| 启动时间（平均耗时） |
| 发现SSID（最短时间） | 
| 发现SSID（1秒内最大数量） | 
| 连接（无密码平均耗时） | 
| 断开（平均耗时） | 
| 重新连接（无密码平均耗时） | 
| 最大带宽（大文件）| 
| 延时（本地服务器平均） | 


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
    ├── enable.ets                   // 用例
    ├── disable.ets
    ├── scan.ets
    └── connect.ets
    └── transmit.ets
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
echo performance/communiction/wifi_perf/ > .git/info/sparse-checkout
git remote add origin https://gitee.com/openharmony-sig/ostest_integration_test.git
git pull origin master
```
