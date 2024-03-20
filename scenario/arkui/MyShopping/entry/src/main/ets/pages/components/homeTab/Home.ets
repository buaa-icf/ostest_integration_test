/*
 * Copyright (c) 2023-2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import promptAction from '@ohos.promptAction'
import { WaterFlowDataSource, DataInfo } from '../../../data/WaterFlowDataSource'
import { Banner } from '../contentPlate/banner'
import { Content } from '../contentPlate/content'
import { Classification } from '../Classification/classification'

@Component
export struct Home {
  private title!: Resource;
  @State scroll_direction: ScrollDirection = ScrollDirection.Horizontal
  private menumargin: number = 10
  private controller: TabsController = new TabsController()
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#007DFF'
  @State currentIndex: number = 0

  @Builder
  tabBuilder(index: number, name: string) {
    Column() {
      Text(name)
        .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(16)
        .fontWeight(this.currentIndex === index ? 500 : 400)
        .lineHeight(22)
        .margin({ left: 5, top: 17, bottom: 10, right: 5 })
    }
  }

  datasource: WaterFlowDataSource = new WaterFlowDataSource()

  build() {
    Column() {
      Column() {
        // 顶部 用户头像 消息图标
        Row() {
          Image($r('app.media.flower'))
            .id("home_image_01")
            .height(30)
            .objectFit(ImageFit.Contain)
            .onClick(() => {
              promptAction.showToast({
                message: 'click on banner',
                duration: 2000,
              })
            })
          Blank()
          Image($r('app.media.ic_public_community_messages'))
            .height(30)
            .margin({ right: 6 })
            .id("home_image_02")
        }
        .height(56)
        .width('95%')

        // 搜索功能框
        Row() {
          Image($r('app.media.ic_public_scan'))
            .height(30)
            .margin({ left: 9 })
            .objectFit(ImageFit.Contain)
            .id("home_image_03")
          Divider()
            .margin({ left: 9 })
            .vertical(true)
            .height(26)
            .color(Color.Grey)
            .width(3)
          Image($r('app.media.ic_public_camera'))
            .height(30)
            .margin({ left: 9 })
            .objectFit(ImageFit.Contain)
            .id("home_image_04")
          TextInput({ placeholder: '遥遥领先' })
            .backgroundColor(Color.White)
            .width(135)
            .defaultFocus(false)
          Blank()
          Column() {
            Text('搜索').fontColor(Color.White).fontSize(24)
          }
          .width(110)
          .height(50)
          .borderRadius(24)
          .backgroundColor(Color.Red)
          .justifyContent(FlexAlign.Center)
          .margin({ right: 3 })
        }
        .height(56)
        .width('95%')
        .backgroundColor(Color.White)
        .borderRadius(24)
        .padding({ right: 4 })

        // 内容板块
        Column() {
          Stack() {
            Tabs({ barPosition: BarPosition.Start, index: this.currentIndex, controller: this.controller }) {
              TabContent() {
                Scroll() {
                  Column() {
                    // 推荐商品滚动banner
                    Banner()
                    // 功能栏 （领红包、汪汪乐园、签到提现、1分抽奖、充值中心）
                    Content()
                  }
                }
              }.tabBar(this.tabBuilder(0, '推荐'))

              TabContent() {
                Column() {
                  // 推荐商品滚动banner
                  Banner()
                  // 功能栏 （领红包、汪汪乐园、签到提现、1分抽奖、充值中心）
                  Content()
                }
              }.tabBar(this.tabBuilder(1, '酒水饮料'))

              TabContent() {
                Column().width('100%').height('100%').backgroundColor('#FFBF00')
              }.tabBar(this.tabBuilder(2, '母婴童装'))

              TabContent() {
                Column().width('100%').height('100%').backgroundColor('#E67C92')
              }.tabBar(this.tabBuilder(3, '推荐'))

              TabContent() {
                Column().width('100%').height('100%').backgroundColor('#E67C92')
              }.tabBar(this.tabBuilder(4, '食品'))

              TabContent() {
                Column().width('100%').height('100%').backgroundColor('#E67C92')
              }.tabBar(this.tabBuilder(5, '手机'))

              TabContent() {
                Column().width('100%').height('100%').backgroundColor('#E67C92')
              }.tabBar(this.tabBuilder(6, '生鲜'))

              TabContent() {
                Column().width('100%').height('100%').backgroundColor('#E67C92')
              }.tabBar(this.tabBuilder(7, '电脑'))

              TabContent() {
                Column().width('100%').height('100%').backgroundColor('#E67C92')
              }.tabBar(this.tabBuilder(8, '女装'))

              TabContent() {
                Column().width('100%').height('100%').backgroundColor('#E67C92')
              }.tabBar(this.tabBuilder(9, '数码'))
            }
            .scrollable(true)
            .vertical(false)
            .barMode(BarMode.Scrollable)
            .barWidth(320)
            .barHeight(56)
            .animationDuration(400)
            .onChange((index: number) => {
              this.currentIndex = index
            })
            .fadingEdge(true)
            .width('100%')
            .margin({ top: 20 })
            .backgroundColor('#F1F3F5')
            .zIndex(1)

            Classification()

          }.width('100%')
        }.width('98%')
      }
    }.width('100%').backgroundColor($r('app.color.home_banner_color'))
  }
}