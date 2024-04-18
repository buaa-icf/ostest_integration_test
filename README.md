# 集成测试仓 ostest_integration_test

#### 介绍
集成测试仓用于统一规划、开发、管理操作系统产品化的场景、功能、性能、稳定性、安全性等测试用例。

集成测试仓在整体目录结构中的位置如下图：

![test_dir](figures/test_dir.png)

集成测试在测试内容组成中的位置如下图所示：

![test_content](figures/test_content.png)

#### 目录结构
```
├── function                //功能测试目录
│       └── communication	         //子系统
│               └── wifi	                //Wi-Fi模块功能测试应用
│               └── bluetooth	            //蓝牙模块功能测试应用
│       └── multimedia               //子系统
│               └── audio	            //音频模块功能测试应用
│               └── camera	            //相机功能测试应用
├── performance	            //性能测试目录
│       └── arkts	                 //子系统
│               └── benchmark_arkts_compiler	 //编译器语言Benchmark用例 
│       └── arkui	                 //子系统
│               └── benchmark_component	         //组件性能BenchMark用例
│               └── benchmark_pipeline	         //组件性能BenchMark工具
│       └── communication	         //子系统
│               └── wifi_perf	                //Wi-Fi模块性能测试应用
│               └── bluetooth_perf	            //蓝牙模块性能测试应用
│       └── multimedia               //子系统
│               └── audio_perf	            //音频模块性能测试应用
│               └── camera_perf	            //相机性能测试应用
├── scenario               //场景测试应用
│       └── MyMap	        //地图测试hap
│       └── MyMusic	        //音乐测试hap
│       └── MyNews	        //新闻测试hap
│       └── MyShopping      //购物测试hap
│       └── MyDoc	        //办公测试hap
│       └── MyChat	        //社交测试hap
│       └── MyGame	        //游戏测试hap
└── figures		           //readme 图片资源
└── docs		           //readme 二级文档
└── readme                 //说明文档
```

#### 测试应用示例

 | Wi-Fi功能测试                       | 音频功能测试                                                   | 相机功能测试                                                    |
|----------------------|----------------------------------------------------------|-----------------------------------------------------------|
 | ![image](function/communication/wifi/screenshots/home.png) | ![image](function/multimedia/audio/screenshots/home.png) | ![image](function/multimedia/camera/screenshots/home.png) | 



| Wi-Fi性能测试                      | 音频性能测试                                                           | 相机性能测试                                                            |
|--------------------------------|------------------------------------------------------------------|-------------------------------------------------------------------|
| ![image](performance/communication/wifi_perf/screenshots/home.png) | ![image](performance/multimedia/audio_perf/screenshots/home.png) | ![image](performance/multimedia/camera_perf/screenshots/home.png) | 



| 音乐场景测试应用                                        | 新闻场景测试应用    |
|-----------------------------|-----------------------|
| ![image](scenario/MyMusic/screenshots/home.png) | ![image](scenario/MyNews/screenshots/home.png) | 

#### 测试内容和目标

1. 测试内容

测试规范参考：[OpenHarmony应用质量要求](https://www.openharmony.cn/certification/moreStandard)

集成测试仓规划的测试内容如下（持续更新）：

* 功能测试

| 编号  | 子系统  | 测试模块  |
|-----|------|-------|
| 1   | 设备管理 | 系统信息  |
| 2   | 多模输入 | 触摸/手势 |
| 3   | 通信   | Wi-Fi |
| 4   | 通信   | 蓝牙    |
| 5   | 通信   | 网络传输  |
| 6   | 媒体   | 音频    |
| 7   | 媒体   | 相机    |
| 8   | 媒体   | 视频    |
| 9   | 媒体   | 图片    |
| 10  | 文件   | 文件读写  |
| 11  | 分布式  | 分布式设备 |

* 场景测试

| 编号  | 场景    |
|-----|-------|
| 1   | 音乐播放  |
| 2   | 社交软件  |
| 3   | 办公软件  |
| 4   | 电商购物  |
| 5   | 新闻资讯  |
| 6   | 游戏    |
| 7   | 视频直播  |
| 8   | 智能家居  |

* 性能测试

| 编号  | 子系统    | 测试项              |
|-----|--------|------------------|
| 1   | 应用程序框架 | 应用启动、切换          |
| 2   | 文件     | 文件IO性能           |
| 3   | 通信     | 网络传输性能（Wi-Fi）    |
| 4   | 图形     | 图形显示性能           |
| 5   | 多媒体    | 音频性能             |
| 6   | 多媒体    | 视频性能             |
| 7   | 多媒体    | 相机性能             |
| 8   | 多媒体    | 游戏性能             |
| 9   | 电源管理   | 功耗               |
| 10  | ArkUI  | ArkUI组件benchmark |
| 11  | ArkTS  | ArkTS语言benchmark |


测试项细节参考各用例模块说明

2. 测试目标

* 通过功能和场景测试，保障OpenHarmony作为操作系统底座，基本功能可用，流程完善，并且可以覆盖主流的应用场景。

* 通过性能测试，标定系统基本性能指标，支持能力范围，为基于OpenHarmony的产品研发提供参考。

* 为基于OpenHarmony的产品研发提供基础测试方法、框架、用例，本测试仓的测试内容可以直接应用于二次开发的产品。

测试建议：
* Release版本发布前需要通过功能测试和场景测试

* Release版本建议基于硬件平台进行性能测试


#### 使用说明

用例测试使用步骤：
1. 下载代码

从代码仓同步代码

2. 编译构建

* 使用DevEco编译测试hap

手动测试直接在DevEco中运行test工程测试用例即可。

* 使用XTS的gn编译方式（后续将替换成hivigor）

自动化测试使用xDevice框架，环境搭建执行按后续步骤操作：

3. 环境准备

* 测试环境创建四个目录和一个执行脚本：

    - config//json配置文件

    - tools//执行所需的工具

    - testcases//测试应用hap

    - report//报告输出目录

    - run.bat//执行脚本

* 将编译好的hap文件拷贝到testcases目录。

* 配置文件预置模板:

  - myShopping.json

```
{
  "description": "Configuration for myshopping Tests",
  "driver": {
      "type": "OHJSUnitTest",
      "test-timeout": "180000",
      "bundle-name": "ohos.samples.myShopping",
      "module-name": "entry_test",
      "shell-timeout": "60000",
      "testcase-timeout": 30000
  },
  "kits": [
  {
      "test-file-name": [
          "myShopping.hap"
      ],
      "type": "AppInstallKit",
      "cleanup-apps": true
  }, {
      "type": "ShellKit",
      "run-command": [
          "power-shell wakeup",
          "power-shell setmode 602"
      ]
  }]
}
```

参展这个模板,给其他应用的测试hap创建json文件,创建后修改bundle-name，module-name，test-file-name ,这里注意应用的bundle-name的这个名称最好和hap的文件名一致,方便检索修改。

例如：myMusic.json

修改:

```
template_data['driver']['bundle-name'] = f'ohos.samples.{文件名}'
template_data['driver']['bundle-name'] = 'entry_test'
template_data['kits']['test-file-name'] = 'myShopping.hap'
```

```
{
  "description": "Configuration for myshopping Tests",
  "driver": {
      "type": "OHJSUnitTest",
      "test-timeout": "180000",
      "bundle-name": "ohos.samples.myMusic",
      "module-name": "entry_test",
      "shell-timeout": "60000",
      "testcase-timeout": 30000
  },
  "kits": [
  {
      "test-file-name": [
          "myShopping.hap"
      ],
      "type": "AppInstallKit",
      "cleanup-apps": true
  }, {
      "type": "ShellKit",
      "run-command": [
          "power-shell wakeup",
          "power-shell setmode 602"
      ]
  }]
}
```

4. 执行用例

    脚本参考[run.bat](docs/run.bat)

        run -l 包名
    不同环境下，可以自行修改自动化执行的脚本。
5. 查看报告

    查看report输出的报告。

其他细节参考各测试应用使用说明。

#### 编码规范
应用代码规范参考Sample仓要求:
1.  代码规范

    查看[代码规范](https://gitee.com/openharmony/applications_app_samples/blob/master/CodeCommitChecklist.md)。
2.  工程结构规范

    查看[工程结构规范](https://gitee.com/openharmony/applications_app_samples/blob/master/CodeCommitChecklist.md)。
3.  README编写规范

    查看[README编写规范](https://gitee.com/openharmony/applications_app_samples/blob/master/CodeCommitChecklist.md)。
4.  用例设计规范

    查看[用例设计规范](docs/CaseRule.md)。

#### 参与贡献

上述规划中的测试内容，包括不限于：
1.  功能测试:Wi-Fi、蓝牙、音频、视频等;
2.  场景测试：办公、媒体、游戏等;
3.  专项工具：应用性能、安全性、稳定性等;

有任何关于本仓的想法和问题请联系管理员或者提issue问题单。

共建操作步骤：
1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request
