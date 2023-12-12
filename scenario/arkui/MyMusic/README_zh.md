# 我的音乐

### 介绍

本示例主要模拟主流音乐应用，使用ArkUI的组件实现应用的布局、动效等，复制应用的界面及交互，以此测试ArkUI是否足够支持主流音乐应用的UX实现，以及是否存在问题;

### 效果预览

| 主页                              | 播客                                 | 我的                              |
|---------------------------------|------------------------------------|---------------------------------|
| ![image](screenshots/home.jpeg) | ![image](screenshots/podcast.jpeg) | ![image](screenshots/mine.jpeg) |


### 工程目录

```
├─common
│  └─constants
│          CommonConstants.ets //常量定义
│
├─entryability
│      EntryAbility.ts  //入口
│
├─pages
│      LoginPage.ets   //登录界面
│      MainPage.ets    //主界面
│
├─view                 //子界面、自定义组件
│      BookFirstItem.ets
│      BookSecondItem.ets
│      BookTriItem.ets
│      FindHead.ets
│      Home.ets
│      ListHead.ets
│      MidItem.ets
│      Mine.ets
│      MineHead.ets
│      MineInfo.ets
│      MineListItem.ets
│      PlayerBar.ets
│      PodCast.ets
│      PodCastBigItem.ets
│      PodCastContentFirst.ets
│      PodCastContentFourth.ets
│      PodCastContentSecond.ets
│      PodCastContentThird.ets
│      PodCastHead.ets
│      PodCastListenItem.ets
│      RadioItem.ets
│      SelectFirstItem.ets
│      Setting.ets
│      SmallItem.ets
│      TriItem.ets
│
└─viewmodel    //数据结构
        BookTriItemData.ets
        ItemData.ets
        ListHeadData.ets
        MainViewModel.ets
        MidItemData.ets
        MineListItemData.ets
        PodCastBigItemData.ets
        RadioItemData.ets
        SelectFirstItemData.ets
        TriItemData.ets

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
echo scenario/arkui/MyMusic/ > .git/info/sparse-checkout
git remote add origin https://gitee.com/openharmony-sig/ostest_integration_test.git
git pull origin master
```