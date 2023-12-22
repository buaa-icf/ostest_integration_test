/*
 * Copyright (c) 2023 Southeast University.
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


import router from '@ohos.router';


/**
 * All the items in the bottom tab bar.
 * 页面底部所有选项卡。
 */
const BottomTabItemList: string[] = [
  '灵感',
  '文章',
  '微头条',
  '模板',
  '视频',
  '直播'
]

@Entry
@Component
struct PublishPage {
  @State currentIndex: number = 2
  private tabsController: TabsController = new TabsController()

  build() {
    Tabs({ barPosition: BarPosition.End, controller: this.tabsController }) {
      ForEach(BottomTabItemList, (item: string, itemIndex: number) => {
        TabContent() {
          /* Provide different content according to the tab index. */
          Column() {
            MicroToutiaoTab()
          }
          .width('100%')
          .height('100%')
          .backgroundColor($r("app.color.light_bg"))
        }
        .width('100%')
        .height('100%')
        .align(Alignment.Top)
        .tabBar(this.TabBuilder(item, itemIndex))
      })
    }
    .width('100%')
    .height('100%')
    .barHeight(64)
    .scrollable(false)
    .barMode(BarMode.Scrollable)
    .backgroundColor($r('app.color.light_fg'))
  }

  @Builder
  TabBuilder(item: string, itemIndex: number) {
    Column({ space: 9 }) {
      Text(item)
        .fontSize(18)
        .fontColor($r('app.color.primary_fg'))
        .opacity(0.6)

      /* The line under the selected tab. */
      Line()
        .startPoint([0, 0])
        .endPoint([20, 0])
        .stroke(this.currentIndex === itemIndex ? $r('app.color.primary_fg') : Color.Transparent)
        .strokeLineCap(LineCapStyle.Round)
        .strokeWidth(3)
    }
    .height('100%')
    .padding({ bottom: 13, left: 18, right: 18 })
    .justifyContent(FlexAlign.End)
    .onClick(() => {
      this.tabsController.changeIndex(itemIndex)
      this.currentIndex = itemIndex
    })
  }
}


@Component
struct MicroToutiaoTab {
  build() {
    Column() {
      /* Tool bar. */
      Row() {
        Text('取消')
          .margin({ left: 20 })
          .fontSize(18)
          .fontColor($r('app.color.light_fg'))
          .onClick(() => {
            router.back()
          })
        Row({ space: 20 }) {
          Text('预览')
            .fontSize(18)
            .fontColor($r('app.color.light_fg_shallow'))
          Text('发布')
            .fontSize(18)
            .fontColor($r('app.color.light_fg_shallow'))
        }
        .margin({ right: 20 })
      }
      .width('100%')
      .height(48)
      .justifyContent(FlexAlign.SpaceBetween)

      Divider().color($r('app.color.light_border'))

      Column() {
        TextArea({ placeholder: '说点什么' })
          .width('100%')
          .height(90)
          .padding(0)
          .borderRadius(0)
          .backgroundColor(Color.Transparent)

        /* Insert images. */
        Row() {
          Row() {
            Image($r("app.media.ic_public_add"))
              .size({ width: 60, height: 60 })
              .fillColor('#D8D8D8')
          }
          .width(100)
          .height(100)
          .justifyContent(FlexAlign.Center)
          .backgroundColor('#F2F2F2')
        }
        .width('100%')
        .margin({ top: 15 })
      }
      .width('100%')
      .padding(18)
    }
    .width('100%')
    .height('100%')
    .margin({ top: 28 })
  }
}
