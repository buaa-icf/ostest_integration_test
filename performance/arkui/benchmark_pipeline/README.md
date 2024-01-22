# 工程目录结构

```
├── Benchmark                         // 场景用例Sample及ohosTest
├── pip                               // python安装读写Excel插件的配置文件
├── screenshot                        // 截图
├── benchmark.bat                     // 工具主体，启动trace生成解析和自动化
├── benchmark_pipeline_report.html    // 管线渲染报告
├── bytrace.bat                       // trace生成工具
├── startBuild.bat                    // 工具入口
├── test.bat                          // 启动ohosTest
├── traceParseFile.py                 // trace解析
├── xlpip.bat                         // 安装读写Excel插件的工具
```

>  **benchmark_pipeline_report.html 需把html后缀改为xls** 

# 前期准备

### 设备

> 1、手机要求Mate 60或同等级设备及以上
> 
> 2、系统要求ALN-AL00

### 锁频锁核

> [脚本地址下载](https://wiki.huawei.com/domains/1456/wiki/8/WIKI20220906294838)
> 
> 使用方法按上面wiki文档说明操作即可

# 安装python最新版，至少3.x以上

# 运行`xlpip.bat` 安装python插件

> 如果运行`xlpip.bat`报错，把pip文件夹复制到 C:\Users\工号\ 目录下，再次运行`xlpip.bat`

# 使用DevEco Studio 打开 【Benchmark】工程

### 设置真机签名证书，见下图

![图片1](https://gitee.com/openharmony-sig/ostest_integration_test/raw/master/performance/arkui/benchmark_pipeline/screenshot/image1.png)

![图片2](https://gitee.com/openharmony-sig/ostest_integration_test/raw/master/performance/arkui/benchmark_pipeline/screenshot/image2.png)

### 运行测试用例获取hap包 ，见下图

![图片3](https://gitee.com/openharmony-sig/ostest_integration_test/raw/master/performance/arkui/benchmark_pipeline/screenshot/image3.png)

![图片4](https://gitee.com/openharmony-sig/ostest_integration_test/raw/master/performance/arkui/benchmark_pipeline/screenshot/image4.png)

# 运行工具

### 运行【startBuild.bat】，选择Benchmark场景用例运行模式，见下图

![图片5](https://gitee.com/openharmony-sig/ostest_integration_test/raw/master/performance/arkui/benchmark_pipeline/screenshot/image5.png)

> 说明：
> 
> 1、确保所有工具和【benchmark_pipeline_report.xls】处于同一目录下；
> 
> 2、如果选择1，则自动运行全部用例，中间无需做其他操作；如果选择2只可以运行具体某用例；
> 
> 3、无论选择1还是2，耗时时间都会自动写入【benchmark_pipeline_report.xls】；
> 
> 4、工具会自动比对，耗时时间小于基线时间或者不大于基线时间10%均为Pass，否则Fail
> 
> 5、在运行用例时，禁止打开【benchmark_pipeline_report.xls】，否则耗时时间无法写入。
> 
> ![图片6](https://gitee.com/openharmony-sig/ostest_integration_test/raw/master/performance/arkui/benchmark_pipeline/screenshot/image6.png)
