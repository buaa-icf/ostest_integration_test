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

import { WaterFlowDataSource, DataInfo } from '../../../data/WaterFlowDataSource'

@Component
export struct Content {
  datasource: WaterFlowDataSource = new WaterFlowDataSource()
  private verbTab: Array<Array<Resource>> = [
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

  build() {
    // 功能栏 （领红包、汪汪乐园、签到提现、1分抽奖、充值中心）
    Column() {
      Column() {
        Row({space:20}) {
          ForEach(this.verbTab.slice(0,5), (item: Array<Resource>, index: number) => {
            Column() {
              Image(item[0])
                .height(40)//.margin({ left: 9 })
                .objectFit(ImageFit.Contain)
                .id(this.verbTabId[index])
              Text(item[1]).fontSize(12)
            }.margin({ left: 10 })
          }, (item: string) => item)
        }
        .margin({ top: 5 })
        .width('100%')
        .height('60')
        .backgroundColor(Color.White)
        .borderRadius(10)
        .justifyContent(FlexAlign.SpaceEvenly)

        Row({space:20}) {
          ForEach(this.verbTab.slice(5,this.verbTab.length), (item: Array<Resource>, index: number) => {
            Column() {
              Image(item[0])
                .height(40)//.margin({ left: 9 })
                .objectFit(ImageFit.Contain)
                .id(this.verbTabId[index])
              Text(item[1]).fontSize(12)
            }.margin({ left: 10 })
          }, (item: string) => item)
        }
        .width('100%')
        .height('60')
        .backgroundColor(Color.White)
        .borderRadius(10)
        .justifyContent(FlexAlign.SpaceEvenly)

        // 中部banner 活动跳转banner
        Row() {
          Image($r('app.media.banner'))
            .width('100%')//.margin({ left: 9 })
            .objectFit(ImageFit.Contain)
        }.margin({ top: 5 })

        // 低价商品推荐栏
        Row() {
          // 9.9包邮活动页入口
          Column() {
            Image($r('app.media.ic_99baoyou'))
              .height(80)//.margin({ left: 9 })
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
                Image($r('app.media.ic_99_notebook'))//.width('25%')
                  //.margin({ left: 9 })
                  .objectFit(ImageFit.Contain)

                Text('¥1337').fontSize(20).fontColor(Color.Red).margin({ bottom: 5 })
              }.width('25%')

              Column() {
                Image($r('app.media.ic_99_paper'))//.margin({ left: 9 })
                  .objectFit(ImageFit.Contain)

                Text('¥1').fontSize(20).fontColor(Color.Red).margin({ bottom: 5 })
              }.width('25%')

              Column() {
                Image($r('app.media.ic_99_toy'))//.margin({ left: 9 })
                  .objectFit(ImageFit.Contain)

                Text('¥24.6').fontSize(20).fontColor(Color.Red).margin({ bottom: 5 })
              }.width('25%')

              Column() {
                Image($r('app.media.ic_99_water'))//.margin({ left: 9 })
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
                Image($r('app.media.ic_butie1'))//.margin({ left: 9 })
                  .objectFit(ImageFit.Contain)

                Text('¥1').fontSize(20).fontColor(Color.Red).margin({ bottom: 3 })
              }.width('48%').height('60%')

              Blank()
              Column() {
                Image($r('app.media.ic_butie2'))//.margin({ left: 9 })
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
                Image($r('app.media.ic_miaosha1'))//.margin({ left: 9 })
                  .objectFit(ImageFit.Contain)

                Text('¥1').fontSize(20).fontColor(Color.Red).margin({ bottom: 3 })
              }.width('48%').height('60%')

              Blank()
              Column() {
                Image($r('app.media.ic_miaosha2'))//.margin({ left: 9 })
                  .objectFit(ImageFit.Contain)

                Text('¥1').fontSize(20).fontColor(Color.Red).margin({ bottom: 3 })
              }.width('48%').height('60%').padding({ left: 5, right: 5 })
            }
          }.width('49%').height('100%').borderRadius(16).backgroundColor(Color.White)
        }.height(160).margin({ top: 5 }).width('100%')

        Column({ space: 2 }) {
          WaterFlow({}) {
            LazyForEach(this.datasource, (item: DataInfo, idx: number) => {
              FlowItem() {
                Column() {
                  Text(`商品${idx}`).fontSize(12).height('16')
                  if (item.type === "video") {
                    Video({ src: $rawfile(item.src[0]) })
                      .autoPlay(true)
                      .height(100)
                      .loop(true)
                  } else if (item.type === "swiper") {
                    Swiper() {
                      ForEach(item.src, (img: string) => {
                        Image($rawfile(img)).objectFit(ImageFit.Fill).width('100%')
                          .layoutWeight(1)
                      })
                    }.autoPlay(true)
                  } else if (idx % 4 == 0) {
                    Image($rawfile(item.src[1])).objectFit(ImageFit.Fill).height(100).width('100%')
                  } else if (idx % 4 == 1) {
                    Image($rawfile(item.src[0])).objectFit(ImageFit.Fill).height(200).width('100%')
                  } else if (idx % 4 == 2) {
                    Image($rawfile(item.src[0])).objectFit(ImageFit.Fill).height(240).width('100%')
                  } else if (idx % 4 == 3) {
                    Image($rawfile(item.src[0])).objectFit(ImageFit.Fill).height(280).width('100%')
                  }
                }
                .backgroundColor(idx % 2 == 0 ? $r('app.color.background_green') : $r('app.color.font_color_red'))
              }
              .width('100%')
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