# 在线音乐

### 介绍

本示例主要实现网络音乐展示和播放，以此测试OpenHarmony是否支持网络信息获取，网络流媒体播放，以及是否存在问题。

测试设计及实现方法：

    1.参考网络音乐应用内容，设计应用的功能、数据、测试用例

    2.开发应用功能，展示功能和数据内容

    3.开发测试用例，检查应用功能及数据内容

    4.测试方式：
    1）运行应用手工测试，检查应用是否正确运行及内容是否正确
    2）通过DevEco 测试框架自动化执行测试套并查看结果和测试log

### 效果预览

| 主页                              | 播客                                | 我的                                  |
|---------------------------------|-----------------------------------|-------------------------------------|
| ![image](screenshots/home.jpeg) | ![image](screenshots/detail.jpeg) | ![image](screenshots/playlist.jpeg) |


### 工程目录

```
├─main
│  │  module.json5
│  │  
│  ├─ets
│  │  ├─entryability
│  │  │      EntryAbility.ets
│  │  │      
│  │  ├─manager
│  │  │      PlayerManager.ets
│  │  │      ServerConstants.ets
│  │  │      
│  │  ├─model
│  │  │      AudioItem.ets
│  │  │      LrcLine.ets
│  │  │      PlayListData.ets
│  │  │      
│  │  ├─pages
│  │  │      Index.ets
│  │  │      
│  │  ├─utils
│  │  │      CommonUtils.ets
│  │  │      Logger.ts
│  │  │      
│  │  └─view
│  │          PlayerBar.ets
│  │          PlayerDetail.ets
│  │          PlayList.ets
│  │          PlayListItem.ets
│  │          SongCell.ets
│  │          
│  └─resources
│      ├─base
│      │  ├─element
│      │  │      color.json
│      │  │      string.json
│      │  │      
│      │  ├─media
│      │  │      icon.png
│      │  │      ic_public_arrow_down_0.png
│      │  │      ic_public_arrow_right.png
│      │  │      ic_public_arrow_right_grey.png
│      │  │      ic_public_comments.png
│      │  │      ic_public_favor.png
│      │  │      ic_public_list_cycle.png
│      │  │      ic_public_pause.png
│      │  │      ic_public_play.png
│      │  │      ic_public_play_last.png
│      │  │      ic_public_play_next.png
│      │  │      ic_public_play_white.png
│      │  │      ic_public_share.png
│      │  │      ic_public_view_list.png
│      │  │      ic_screenshot_line.png
│      │  │      ic_screenshot_line_select.png
│      │  │      startIcon.png
│      │  │      
│      │  └─profile
│      │          main_pages.json
│      │          
│      ├─en_US
│      │  └─element
│      │          string.json
│      │          
│      ├─rawfile
│      └─zh_CN
│          └─element
│                  string.json
│                  
├─mock
│      mock-config.json5
│      
├─ohosTest
│  │  module.json5
│  │  
│  ├─ets
│  │  ├─test
│  │  │      Ability.test.ets
│  │  │      List.test.ets
│  │  │      
│  │  ├─testability
│  │  │  │  TestAbility.ets
│  │  │  │  
│  │  │  └─pages
│  │  │          Index.ets
│  │  │          
│  │  └─testrunner
│  │          OpenHarmonyTestRunner.ets
│  │          
│  └─resources
│      └─base
│          ├─element
│          │      color.json
│          │      string.json
│          │      
│          ├─media
│          │      icon.png
│          │      
│          └─profile
│                  test_pages.json
│                  
└─test
        List.test.ets
        LocalUnit.test.ets

```

### 相关权限
ohos.permission.INTERNET
ohos.permission.KEEP_BACKGROUND_RUNNING

### 约束与限制

1. 本示例仅支持标准系统上运行，支持设备：RK3568；
2. 本示例仅支持API11版本SDK，版本号：4.1.7.5；
3. 本示例需要使用DevEco Studio 4.1 Release (Build Version: 4.0.0.400)；

### 下载

如需单独下载本工程，执行如下命令：

```
git init
git config core.sparsecheckout true
echo scenario/MusicPlayerOnline/ > .git/info/sparse-checkout
git remote add origin https://gitee.com/openharmony-sig/ostest_integration_test.git
git pull origin master
```