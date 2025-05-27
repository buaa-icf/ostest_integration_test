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


// components/recommend/RecommendList.ets
import { Banner } from '../../view/components/Banner';
import { BannerItem } from '../../model/BannerModel';
import { RecommendItem } from '../../model/RecommendModel';
import { RecommendListItem } from './RecommendListItem';
import router from '@ohos.router';

@Component
export default struct RecommendList {
  @Prop bannerItems: BannerItem[] = []
  @State recommendItems: RecommendItem[] = []

  build() {
    Column() {
      // 内容区域
      Scroll() {
        Column() {
          // Banner区域
          if (this.bannerItems.length > 0) {
            // 修改Banner区域
            Banner({
              items: this.bannerItems,
              callbackObj: {
                onItemClick: (link: string) => this.handleBannerClick(link)
              }
            })
              .height(240)
              .margin({ bottom: 16 })
              .scale({ x: 0.9, y: 0.9 }) // 基础缩放
          }
          Column() {
            if (this.recommendItems.length === 0) {
              Text('暂无推荐内容')
                .fontSize(16)
                .opacity(0.6)
            } else {
              List() {
                ForEach(this.recommendItems, (item: RecommendItem) => {
                  ListItem() {
                    RecommendListItem({ item: item })
                      .margin({ left: 16, right: 16, bottom: 16 })
                  }
                }, (item: RecommendItem) => item.id.toString())
              }
              .padding({ bottom: 10 }) // 增加底部内边距
            }
          }
          .layoutWeight(1)
          .width('100%')
        }
      }
      .scrollable(ScrollDirection.Vertical)
      .width('100%')
      .layoutWeight(1)
    }
    .backgroundColor(Color.White)
    .height('100%')
    .width('100%')
  }

  private handleBannerClick(link: string):void {
    if (link.startsWith('http')) {
      router.pushUrl({
        url: 'pages/WebPage',
        params: { url: link }
      })
    } else {
      router.pushUrl({ url: link })
    }
  }
}