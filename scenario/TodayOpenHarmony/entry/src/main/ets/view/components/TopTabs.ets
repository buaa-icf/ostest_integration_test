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


// view/components/TopTabs.ets
import { NewsViewModel } from '../../viewmodel/NewsVM';
import { NewsItem } from '../../model/NewsModel';

@Component
export struct TopTabs {
  private newsVM: NewsViewModel = new NewsViewModel()
  @Link @Watch('onIndexChange') topTabIndex: number
  @Link newsList: NewsItem[]
  @Link isLoading: boolean
  // 监听索引变化
  onIndexChange() {
    this.loadData()
  }
  async loadData() {
    this.isLoading = true
    try {
      await this.newsVM.loadNews(this.topTabIndex)
      this.newsList = [...this.newsVM.newsList] // 使用浅拷贝更新
    } catch (error) {
      console.error('分类数据加载失败：', error)
    } finally {
      this.isLoading = false
    }
  }
  @Builder
  TabItem(index: number) {
    Column() {
      Text(this.getTabTitle(index))
        .fontSize(16)
        .fontColor(this.topTabIndex === index ? Color.Blue : Color.Gray)
        .margin({ bottom: 6 })

      Divider()
        .height(2)
        .width(24)
        .color(this.topTabIndex === index ? Color.Blue : Color.Transparent)
    }
    .flexGrow(1)
    .alignItems(HorizontalAlign.Center)
    .padding(4)
    .onClick(async () => this.topTabIndex = index)
  }

  private getTabTitle(index: number): string {
    return ['新闻', '活动', '直播', '博客'][index]
  }
  build() {
    Row() {
      ForEach([0, 1, 2, 3], (index: number) => {
        this.TabItem(index)
      })
    }
    .width('100%')
    .padding(12)
    .backgroundColor(Color.White)
    .margin({ bottom: 12 })
  }
}