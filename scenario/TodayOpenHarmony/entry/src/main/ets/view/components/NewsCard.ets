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



// view/news/components/NewsCard.ets
import { NewsItem,LiveNewsItem ,BlogPostItem} from '../../model/NewsModel';
import { LiveView } from'../../view/components/LiveView'
import { BlogView } from'../../view/components/BlogView'
import { ActivityView } from'../../view/components/ActivityView'
import { NewsView } from'../../view/components/NewsView'
@Component
export struct NewsCard {
  @ObjectLink item: NewsItem;
  @Prop onLike: () => void
  @Prop onBookmark: () => void
  @State barrageText: string = ''
  @State showSuccess: boolean = false
  @State isLiving: boolean = false

  @Builder
  ButtonWithIcon(icon: Resource, onClick: () => void) {
    Image(icon)
      .size({ width: 24, height: 24 })
      .margin({ right: 16 })
      .onClick(() => {
        onClick();
        // 优化动画效果
        animateTo({
          duration: 100,
          curve: Curve.EaseOut
        }, () => {
          this.scale({ x: 0.9, y: 0.9 })
        });
        animateTo({
          duration: 100,
          curve: Curve.EaseIn,
          delay: 100
        }, () => {
          this.scale({ x: 1, y: 1 })
        });
      })
  }
  // 类型标识
  @Builder
  TypeTag(type: string) {
    Text(type)
      .fontSize(12)
      .fontColor(Color.White)
      .backgroundColor(
        type === '直播' ? '#D32F2F' :
          type === '活动' ? '#FF4081' :
            type === '博客' ? '#FFA500' :
              type === '新闻' ? '#2196F3' : '#4CAF50')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })
      .borderRadius(4)
      .position({ x: 10, y: 10 })
  }
  // 公共图片区域
  @Builder
  CommonImage() {
    Column() {
      Image(this.item.image)
        .width(344)
        .height(194)
        .objectFit(ImageFit.Cover)
        .borderRadius(12)

      if (!this.item.image) {
        LoadingProgress()
          .width(40)
          .height(40)
          .margin({ top: 20 })
      }
      this.TypeTag(this.item.type) // 显示类型标签
    }
    .alignItems(HorizontalAlign.Center)
  }

  build() {
    Column({ space: 16 }) {
      this.CommonImage()
      Column({ space: 8 }) {
        // 公共标题
        Text(this.item.title)
          .fontSize(18)
          .fontColor('#1A1A1A')
        // 动态内容区域
        if (this.item.type === '活动') {
          ActivityView({ item: this.item as NewsItem })
        } else if (this.item.type === '直播') {
          LiveView({
            item: this.item as LiveNewsItem, // 类型断言保证安全
            isLiving: $isLiving              // 双向绑定直播状态
          })
        } else if (this.item.type === '博客') {
          BlogView({ item: this.item as BlogPostItem })
        } else {
          NewsView({ item: this.item as NewsItem })
        }
      }
      .width('100%')
    }
    .width('100%')
    .padding(16)
    .borderRadius(12)
    .shadow({ radius: 8, color: '#10000000' })
    .margin({ bottom: 16 })
  }
}