// ts-noCheck
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

import { WaterFlowDataSource } from '../../../data/WaterFlowDataSource'
import { MerchandiseList } from '../../../dataModel/merchandise'
import { contentMenu } from './contentMenu'

@Component
export struct Content {
  private controller: TabsController = new TabsController()
  datasource: WaterFlowDataSource = new WaterFlowDataSource()
  private verbTab1: Array<Array<Resource>> = [
    [$r('app.media.ic_event_area_change'), $r('app.string.app_market')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_medicine')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_secKill')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_voucher')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_home')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_dress_and_make_up')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_domestic_appliance')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_charge_center')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_borrow_money')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_electric_appliance')],
  ]

  private verbTab2: Array<Array<Resource>> = [
    [$r('app.media.ic_event_area_change'), $r('app.string.app_secKill')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_auction')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_men_clothing')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_wal_mart')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_car')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_travel')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_used')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_voucher')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_life')],
    [$r('app.media.ic_event_area_change'), $r('app.string.app_more')],
  ]

  private verbTabId:Array<string> = [
    'content_image_001',
    'content_image_002',
    'content_image_003',
    'content_image_004',
    'content_image_005',
    'content_image_006',
    'content_image_007',
    'content_image_008',
    'content_image_009',
    'content_image_010',
  ]
  @State currentIndex: number = 0

  @Builder
  tabBuilder(index: number) {
    Column() {
      Rect({ width: this.currentIndex === index ? 15 : 7, height: 7 })
        .radiusHeight(20)
        .radiusWidth(this.currentIndex === index ? 40 : 20)
        .fill(this.currentIndex === index ? Color.Red : Color.Gray)
    }.height(7)
    .margin({left:8})
  }

  build() {
    // 功能栏 （领红包、汪汪乐园、签到提现、1分抽奖、充值中心）
    Column() {
      Column() {
        Tabs({ barPosition: BarPosition.End, index: this.currentIndex, controller: this.controller }) {
          TabContent() {
            contentMenu({verbTab:this.verbTab1, verbTabId:this.verbTabId })
          }.tabBar(this.tabBuilder(0))
          .height(120)

          TabContent() {
            contentMenu({verbTab:this.verbTab2,verbTabId:this.verbTabId })
          }.tabBar(this.tabBuilder(1))
          .height(120)
        }.scrollable(true)
        .backgroundColor(Color.White)
        .borderRadius(10)
        .vertical(false)
        .height(150)
        .barHeight(20)
        .width('100%')
        .barMode(BarMode.Scrollable)
        .animationDuration(400)
        .onChange((index: number) => {
          this.currentIndex = index
        })

        // 中部banner 活动跳转banner
        Row() {
          Image($r('app.media.banner'))
            .width('100%')
            .objectFit(ImageFit.Contain)
        }.margin({ top: 5 })

        // 低价商品推荐栏
        Row() {
          // 9.9包邮活动页入口
          Column() {
            Image($r('app.media.ic_99baoyou'))
              .height(80)
              .objectFit(ImageFit.Contain)
            Row() {
              Text('去抢购').fontSize(14).margin({ left: 5 })
              Blank()
              Column() {
                Image($r('app.media.ic_right_arrow')).height(20)
              }.width(20).backgroundColor(Color.Red).borderRadius('50').margin({ right: 5 })
            }.backgroundColor(Color.White).borderRadius(16).height(30).width('100%')
          }.width('25%').padding({ left: 5, right: 5 })

          // 低价商品推荐位
          Column() {
            Row() {
              Column() {
                Image($r('app.media.ic_99_notebook'))
                  .objectFit(ImageFit.Contain)

                Text('¥1337').fontSize(20).fontColor(Color.Red).margin({ bottom: 5 })
              }.width('25%')

              Column() {
                Image($r('app.media.ic_99_paper'))
                  .objectFit(ImageFit.Contain)

                Text('¥1').fontSize(20).fontColor(Color.Red).margin({ bottom: 5 })
              }.width('25%')

              Column() {
                Image($r('app.media.ic_99_toy'))
                  .objectFit(ImageFit.Contain)

                Text('¥24.6').fontSize(20).fontColor(Color.Red).margin({ bottom: 5 })
              }.width('25%')

              Column() {
                Image($r('app.media.ic_99_water'))
                  .objectFit(ImageFit.Contain)

                Text('¥9').fontSize(20).fontColor(Color.Red).margin({ bottom: 5 })
              }.width('25%')
            }.height('70%').width('100%').justifyContent(FlexAlign.SpaceEvenly)
          }.width('75%').borderRadius(24).backgroundColor(Color.White).height('100%')
        }
        .height(130)
        .borderRadius(24)
        .backgroundColor(Color.Red)
        .margin({ top: 5 })
        .padding(1)

        // 活动栏
        Row() {
          Column() {
            Row() {
              Text('百亿补贴').fontSize(17).margin({ right: 8 })
              Text('买贵双倍赚').fontColor(Color.Red)
            }.width('100%').padding({ left: 10, top: 10 }).alignItems(VerticalAlign.Bottom)

            Row() {
              Column() {
                Image($r('app.media.ic_butie1'))
                  .objectFit(ImageFit.Contain)

                Text('¥1').fontSize(20).fontColor(Color.Red).margin({ bottom: 3 })
              }.width('48%').height('60%')

              Blank()
              Column() {
                Image($r('app.media.ic_butie2'))
                  .objectFit(ImageFit.Contain)

                Text('¥1').fontSize(20).fontColor(Color.Red).margin({ bottom: 3 })
              }.width('48%').height('60%').padding({ left: 5, right: 5 })
            }
          }.width('49%').height('100%').borderRadius(16).backgroundColor(Color.White)

          Blank()
          Column() {
            Row() {
              Text('京东秒杀').fontSize(17)
            }.width('100%').padding({ left: 10, top: 10 })

            Row() {
              Column() {
                Image($r('app.media.ic_miaosha1'))
                  .objectFit(ImageFit.Contain)

                Text('¥1').fontSize(20).fontColor(Color.Red).margin({ bottom: 3 })
              }.width('48%').height('60%')

              Blank()
              Column() {
                Image($r('app.media.ic_miaosha2'))
                  .objectFit(ImageFit.Contain)

                Text('¥1').fontSize(20).fontColor(Color.Red).margin({ bottom: 3 })
              }.width('48%').height('60%').padding({ left: 5, right: 5 })
            }
          }.width('49%').height('100%').borderRadius(16).backgroundColor(Color.White)
        }.height(160).margin({ top: 5 }).width('100%')

        Column({ space: 2 }) {
          WaterFlow({}) {
            LazyForEach(this.datasource, (item: MerchandiseList, idx: number) => {
              FlowItem() {
                Column() {
                  Image(item.img).objectFit(ImageFit.Fill).height(100).width('100%')
                  Row(){
                    Text(item.title).fontSize(12).height('16')
                    Text(item.price).fontSize(12).height('16')
                  }.justifyContent(FlexAlign.SpaceBetween)
                }
              }
              .width('100%')
              .border({width:1})
            })
          }
          .alignSelf(ItemAlign.Center)
          .columnsTemplate('1fr 1fr')
          .layoutDirection(FlexDirection.Column)
          .columnsGap(12)
          .rowsGap(12)
          .height('100%')
          .width('100%')
          .padding({ left: 12, right: 12, top: 12, bottom: 12 })
          .backgroundColor(Color.White)
          .nestedScroll({
            scrollForward: NestedScrollMode.PARENT_FIRST,
            scrollBackward: NestedScrollMode.SELF_FIRST
          })
        }.width('100%')
      }.width('95%')
    }.width('100%').backgroundColor($r('app.color.background_shallow_grey'))
  }
}