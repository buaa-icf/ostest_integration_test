/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// pages/HomePage.ets
import { NewsViewModel } from '../viewmodel/NewsVM';
import { NewsItem} from '../model/NewsModel';
import { BannerItem} from '../model/BannerModel';
import router from '@ohos.router';
import{ TabBar} from'../common/constants/tab/TabBar';
import { TopTabs } from '../view/components/TopTabs';
import { UserViewModel } from '../viewmodel/UserVM';
import { UserProfile } from '../view/components/UserProfile';
import common from '@ohos.app.ability.common';
import { RecommendItem } from '../model/RecommendModel';
import  RecommendList  from '../view/components/RecommendList';
import { RecommendViewModel } from '../viewmodel/RecommendVM';
import { DiscoveryList } from '../view/components/DiscoveryList';
import { DiscoveryViewModel } from '../viewmodel/DiscoveryVM';
import { NewsCard } from '../view/components/NewsCard';
import { LanguageManager } from '../common/i18n/LanguageManager';
import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct HomePage {
  @State topTabIndex: number = 0
  @State newsList: NewsItem[] = []
  @State bannerData: BannerItem[] = []
  @State isLoading: boolean = true
  @State isSearching: boolean = false
  @State searchKeyword: string = ''
  @Provide newsVM: NewsViewModel = new NewsViewModel()
  @Provide('userVM') userVM: UserViewModel =
    UserViewModel.getInstance(getContext() as common.UIAbilityContext);
  @State selectedTabIndex: number = 0;
  @State isShowProfile: boolean = false
  @State cacheSize: number = 24576;
  @Provide recommendVM: RecommendViewModel = new RecommendViewModel();
  @State recommendBannerData: BannerItem[] = [] // 推荐页的Banner数据
  @State recommendItems: RecommendItem[] = []    // 推荐列表数据
  @Provide discoveryVM: DiscoveryViewModel = new DiscoveryViewModel();
  @Provide liveVM: NewsViewModel = new NewsViewModel()
  @Provide blogVM: NewsViewModel = new NewsViewModel()
  @Provide activityVM: NewsViewModel = new NewsViewModel()
  @State newsData: NewsItem[] = []
  @State activityData: NewsItem[] = []
  @State liveData: NewsItem[] = []
  @State blogData: NewsItem[] = []
  @State currentData: NewsItem[] = []
  @StorageLink('currentLanguage') currentLanguage: string = 'zh_CN';

  async aboutToAppear() {
    try {
      // 统一获取语言设置并处理默认值
      const langManager = LanguageManager.getInstance(getContext(this) as common.UIAbilityContext);
      this.currentLanguage = AppStorage.get('currentLanguage') || 'zh_CN';

      // 确保 userVM 初始化完成（假设 onInit 是异步方法）
      await this.userVM.onInit();

      // 并行加载分类数据（提升性能）
      await Promise.all([
        this.loadCategoryData(0),
        this.loadCategoryData(1),
        this.loadCategoryData(2),
        this.loadCategoryData(3)
      ]);

    } catch (error) {
      console.error('aboutToAppear initialization failed:', error);
      promptAction.showToast({ message: '初始化失败，请重试' });
    }
  }

  //  loadCategoryData 方法
  private async loadCategoryData(category: number) {
    this.isLoading = true;
    try {
      // 根据分类使用对应的ViewModel
      const targetVM = this.getViewModelByCategory(category);
      await targetVM.loadNews(category);
      // 使用箭头函数确保this指向正确
      switch (category) {
        case 0:
          this.newsData = [...targetVM.newsList];
          break;
        case 1:
          this.activityData = [...targetVM.newsList];
          break;
        case 2:
          this.liveData = [...targetVM.newsList];
          break;
        case 3:
          this.blogData = [...targetVM.newsList];
          break;
      }
      this.currentData = this.getCurrentData(); // 更新当前数据
    }
    catch (error) {
      console.error('数据加载失败：', error);
    } finally {
      this.isLoading = false;
    }
  }

  // 新增ViewModel获取方法
  private getViewModelByCategory(category: number): NewsViewModel {
    switch(category) {
      case 0: return this.newsVM;
      case 1: return this.activityVM;
      case 2: return this.liveVM;
      case 3: return this.blogVM;
      default: return this.newsVM;
    }
  }
  build() {
    Column() {
      // 顶部导航
      this.buildTopNav()
      // 主内容区域
      Column() {
        if (this.selectedTabIndex === 3) {
          UserProfile({ })
            .height('100%')
            .width('100%')
        } else if (this.selectedTabIndex === 2) {
          this.buildDiscoveryContent()
        } else if (this.selectedTabIndex === 1) {
          this.buildRecommendContent()
        } else {
          this.buildNewsContent()
        }
      }
      .layoutWeight(1)
      .height('100%')
      .backgroundColor(Color.White)
      // 底部Tab栏
      Column() {
        TabBar({
          selectedIndex: $selectedTabIndex,
          onTabSelected: this.handleTabSelected
        })
          .width('100%')
          .height(56)
          .backgroundColor('#F5F5F5') // 标签栏浅灰色
      }
      .width('100%')
      .align(Alignment.Bottom)
      .backgroundColor(Color.White)
    }
    .backgroundColor(Color.White)
    .height('100%')
    .clip(false)
  }
  // tab选择处理
  private handleTabSelected = (index: number): void => {
    this.selectedTabIndex = index;
    this.isShowProfile = index === 3;

    // 当在新闻主Tab时处理子分类切换
    if (this.selectedTabIndex === 0) { // 仅在新闻主Tab时处理子分类
      const newCategory = this.convertTabToCategory(this.topTabIndex);
      this.loadCategoryData(newCategory);
    }
    switch (index) {
      case 0: // 新闻主Tab
        this.topTabIndex = 0; // 重置为默认新闻分类
        this.loadCategoryData(0);
        break;
      case 1:
        this.loadRecommendData();
        break;
      case 2:
        this.discoveryVM.onInit()  // 发现页
        break;
      case 3:
        this.userVM.onInit();
        break;
    }
  }

  private convertTabToCategory(tabIndex: number): number {
    const categoryMap = new Map<number, number>([
      [0, 0], // 新闻  categoryId 0
      [1, 1], // 活动  categoryId 1
      [2, 2], // 直播  categoryId 2
      [3, 3]  // 博客  categoryId 3
    ]);
    return categoryMap.get(tabIndex) ?? 0;
  }
  // 新闻内容结构
  @Builder
  buildNewsContent():void {
    if (this.isLoading) {
      LoadingProgress()
        .height(200)
    } else {
      Column() {
        TopTabs({
          topTabIndex: $topTabIndex,
          newsList: $newsList,
          isLoading: $isLoading,
        })
        if (this.getCurrentData().length > 0) {
          List({ space:20 }) {
            ForEach(this.getCurrentData(), (item: NewsItem) => {
              ListItem() {
                NewsCard({
                  item: item,
                })
                  .margin({ bottom: 8 })
              }
            },(item:NewsItem)  => item.id.toString())
          }
          .id(`newsList_${this.topTabIndex}`)
          .width('100%')
          .layoutWeight(1)
          .padding(6)
          .height('100%')
          .scrollBar(BarState.On) // 启用滚动条
          .edgeEffect(EdgeEffect.Spring) // 添加边缘回弹效果
          .backgroundColor(Color.White)
        }
      }
      .height('100%')
      .width('100%')
    }
  }
  private getCurrentData(): NewsItem[] {
    switch(this.topTabIndex) {
      case 0: return this.newsData;
      case 1: return this.activityData;
      case 2: return this.liveData;
      case 3: return this.blogData;
      default: return [];
    }
  }
  @Builder
  private buildRecommendContent() :void{
    RecommendList({
      bannerItems: this.recommendBannerData, // 使用状态变量
      recommendItems: this.recommendItems,
    })
      .width('100%')
      .height('100%')
  }
  @Builder
  buildDiscoveryContent():void {
    Column() {
         DiscoveryList()
        .layoutWeight(1)
    }
  }
  @Builder
  buildTopNav() {
    if (this.isSearching) {
      this.buildSearchBar()
    } else {
    }
    Row() {
      Row(){
        Image($r('app.media.logo'))
          .width(40)
          .height(40)
          .margin({ right: 8 })
        Text($r('app.string.app_name'))
          .fontSize(20)
          .fontColor(Color.Black)
      }
      Image($r('app.media.search'))
        .width(30)
        .height(30)
        .margin({ right: 12 })
        .onClick(() => this.isSearching = true)
    }
    .justifyContent(FlexAlign.SpaceBetween) // 左右布局
    .alignItems(VerticalAlign.Center)
    .width('100%')
    .height(56)
    .padding(12)
    .backgroundColor('#007AFF')
  }
  // 搜索栏构建器
  @Builder
  buildSearchBar() {
    Row() {
      TextInput({ placeholder: '搜索OpenHarmony内容' })
        .placeholderColor('#999999')
        .fontSize(16)
        .fontColor('#999')
        .width('80%')
        .onChange((value: string) => this.searchKeyword = value)
        .onSubmit(() => this.handleSearch()) // 回车触发搜索

      Button('取消')
        .onClick(() => {
          this.isSearching = false
          this.searchKeyword = ''
        })
    }
  }
  //  loadRecommendData 方法
  private async loadRecommendData() {
    try {
      await this.recommendVM.onInit();
      // 强制触发UI更新
      this.recommendBannerData = JSON.parse(JSON.stringify(this.recommendVM.bannerList));
      this.recommendItems = JSON.parse(JSON.stringify(this.recommendVM.recommendList));
    } catch (error) {

    }
  }
  // 搜索处理方法
  private handleSearch(): void {
    if (this.searchKeyword.trim()) {
      router.pushUrl({
        url: 'pages/SearchResultPage',
        params: { keyword: encodeURIComponent(this.searchKeyword) }
      })
      this.isSearching = false
    }
  }
}