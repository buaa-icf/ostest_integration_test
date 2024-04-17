# ArkCompiler ts-swift workload mix-case

### 介绍

测试Wi-Fi基本功能：

| 用例     | 
|--------|
| 打开Wi-Fi |
| 发现SSID | 
| 连接（无密码） | 
| 断开 | 
| 重新连接（无密码） | 
| 重新连接（WEP） | 
| 连接（WPA/WPA2） | 
| 重新连接（WPA/WPA2） | 
| 连接（WPA-PSK） | 
| 重新连接（WPA-PSK） | 
| 访问网站 |
| 下载文件 | 
| 自动连接 | 
| 取消自动连接 | 
| 删除记录后重新连接（有密码） | 
| 连接不广播SSID | 
| 关闭Wi-Fi |

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
echo function/communiction_wifi/ > .git/info/sparse-checkout
git remote add origin https://gitee.com/openharmony-sig/ostest_integration_test.git
git pull origin master
```
