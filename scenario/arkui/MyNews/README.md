# 我的新闻

## 介绍

本示例主要模拟主流新闻资讯应用，使用 ArkUI 的组件实现应用的布局、动效等，复制应用的界面及交互，以此测试 ArkUI
是否足够支持主流新闻资讯应用的 UX 实现，以及是否存在问题;

## 效果预览

![image](screenshots/home-recommendation.png)

![image](screenshots/home-following.png)

## 工程目录

```text
./entry/src/main/
├─ets
│  ├─entryability
│  │    EntryAbility.ets                // 入口
│  ├─pages
│  │    Index.ets
│  ├─view                               // 子界面、自定义组件
│  │    HomePage.ets
│  │    HomePageFollowingTab.ets
│  │    HomePageRecommendationTab.ets
│  │    ProfilePage.ets
│  │    PublishPage.ets
│  │    TaskPage.ets
│  │    VideoPage.ets
│  └─viewmodel                          // 数据结构
│       IndexBottomNavItem.ets
│       RecommendedArticle.ets
│       RecommendedVideo.ets
│       UserInfo.ets
└─mock                                  // 模拟后端提供数据
   RecommendedArticleList.ets
   RecommendedUserList.ets
   RecommendedVideoList.ets
```
