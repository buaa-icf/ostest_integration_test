# 功能和用例映射规则
本文档定义功能和用例的映射关系，用来关联管理【功能模块】和【测试用例】配套、联动。

### 映射规则
通过功能代码所属”组件名“或“syscap”字段，对应用例关系。

例如：多媒体子系统中，player_framework 组件定义：
```
"component": {
      "name": "player_framework",
      "subsystem": "multimedia",
      "syscap": [
        "SystemCapability.Multimedia.Media.AVMetadataExtractor",
        "SystemCapability.Multimedia.Media.AVImageGenerator",
        "SystemCapability.Multimedia.SystemSound.Core",
        "SystemCapability.Multimedia.AudioHaptic.Core",
        "SystemCapability.Multimedia.Media.SoundPool",
        "SystemCapability.Multimedia.Media.AVScreenCapture",
        "SystemCapability.Multimedia.Media.AudioPlayer",
        "SystemCapability.Multimedia.Media.VideoPlayer",
        "SystemCapability.Multimedia.Media.AudioRecorder",
        "SystemCapability.Multimedia.Media.VideoRecorder",
        "SystemCapability.Multimedia.Media.AVPlayer",
        "SystemCapability.Multimedia.Media.AVRecorder"
      ],
     ......
 }
```
其中“name”字段为组件名、“syscap”为系统能力定义，与提供给应用使用的系统能力对应。
测试程序也是一种应用，所以也能据此查询到测试程序使用了什么系统能力，这样测试程序和模块就能实现关联。
对于没有明确syscap对应的，仅通过组件名关联，用例名称对应syscap的字段根据测试场景填写有意义的文字。

如果组件代码发生修改，那么对应覆盖了相应功能点的用例需要被执行。

另外，在用例设计规范中，将组件名称和syscap字段作为用例名的字段组成，能够直接看出用例测试的组件对象及能力,并且记录到测试结果中，便于结果分类收集和展示。

比如：

syscap中"SystemCapability.Multimedia.Media.AudioPlayer",对应测试用例命名字段：模块/应用_功能

【级别_分类_模块/应用_功能点_编号】

lv0_function_playerFramework_mediaAudioPlayer_001

### 触发方式
#### 自动化
根据上述用例和组件的映射关系，在自动化测试环境（持续集成、版本测试）中，使用配置触发的方式实现自动化。

例如： 持续集成的某个组件构建完成后，触发该组件管关联的level0（冒烟）测试。

根据版本需要进行执行策略配置。

编写执行配置文件：testcases/xxx.json
填写用例级别、分类、模块。
```
{
    "description": "Configuration for myshopping Tests",
    "level": ["0","1","2"],
    "type": "function",
    "component": "player_framework",
    "syscap": [
        "SystemCapability.Multimedia.Media.AudioPlayer",
        "SystemCapability.Multimedia.Media.VideoPlayer",
        "SystemCapability.Multimedia.Media.AudioRecorder",
        "SystemCapability.Multimedia.Media.VideoRecorder",
        "SystemCapability.Multimedia.Media.AVPlayer",
        "SystemCapability.Multimedia.Media.AVRecorder"
    ],
    ......
}
```
自动化配置方法参考”使用说明“

#### 手工测试

在版本发布时、开发周期中功能/集成测试阶段，通过手工的配置方式可以有选择性、执行部分或全量组件的功能测试用例。

手工执行方法参考”使用说明“
