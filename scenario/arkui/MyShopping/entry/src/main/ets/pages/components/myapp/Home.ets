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

@Component
export struct Home {
  private title!: Resource;
  @State scroll_direction: ScrollDirection = ScrollDirection.Horizontal
  private menumargin: number = 10

  datasource: WaterFlowDataSource = new WaterFlowDataSource()

  build() {
    Column() {
      Column() {
        Row() {
          Image($r('app.media.flower'))
            .height(30)
            .objectFit(ImageFit.Contain)
            .id('backBtn')
            .onClick(()=>{
              promptAction.showToast({
                message: 'click on banner',
                duration: 2000,
              })
            })
          Blank()
          Image($r('app.media.ic_public_community_messages'))
            .height(30)
            .margin({right:6})
        }
        .height(56)
        .width('95%')

        Row() {
          Image($r('app.media.ic_public_scan'))
            .height(30)
            .margin({ left: 9})
            .objectFit(ImageFit.Contain)
          Divider().margin({left:9}).vertical(true).height(26).color(Color.Grey).width(3)
          Image($r('app.media.ic_public_camera'))
            .height(30)
            .margin({ left: 9 })
            .objectFit(ImageFit.Contain)
          TextInput({placeholder:'遥遥领先'}).backgroundColor(Color.White).width(135)
          Blank()
          Column() {
            Text('搜索').fontColor(Color.White).fontSize(24)
          }.width(110).height(50).borderRadius(24).backgroundColor(Color.Red).justifyContent(FlexAlign.Center).margin({right:3})
        }.height(56).width('95%').backgroundColor(Color.White).borderRadius(24).padding({right:4})

        Scroll() {
          Column() {
            Row() {
              Column() {
                Scroll() {
                  Row() {
                    Text('精选').fontSize(28)
                    Text('酒水饮料').margin({left:this.menumargin})
                    Text('母婴童装').margin({left:this.menumargin})
                    Text('推荐').margin({left:this.menumargin})
                    Text('食品').margin({left:this.menumargin})
                    Text('手机').margin({left:this.menumargin})
                    Text('生鲜').margin({left:this.menumargin})
                    Text('电脑').margin({left:this.menumargin})
                    Text('女装').margin({left:this.menumargin})
                    Text('数码').margin({left:this.menumargin})
                  }
                }.width('100%').scrollable(ScrollDirection.Horizontal).scrollBar(BarState.Off)
              }.width('80%')
              Column(){
                Row() {
                  Image($r('app.media.ic_list_and_grid'))
                    .width(20)
                    .height(20)
                    .objectFit(ImageFit.Fill)
                  Text('分类')
                }
              }.width('20%')
            }.height(50).width('95%')

            Row() {
              Column(){
                Image($r('app.media.test01'))
                  //.margin({ left: 9 })
                  .objectFit(ImageFit.Contain)
              }.width('25%')
              Column(){
                Image($r('app.media.ic_scenery3')).objectFit(ImageFit.Contain)
              }.width('50%')
              Column(){
                Image($r('app.media.test02'))
                  //.margin({ left: 9 })
                  .objectFit(ImageFit.Contain)
              }.width('25%')
            }.height(80)

            Column() {
              Column() {
                Row() {
                  Column() {
                    Image($r('app.media.ic_event_area_change'))
                      .height(40)
                        //.margin({ left: 9 })
                      .objectFit(ImageFit.Contain)
                    Text('领红包 ').fontSize(12)
                  }.margin({ left: 10 })

                  Column() {
                    Image($r('app.media.ic_event_drag'))
                      .height(40)
                        //.margin({ left: 9 })
                      .objectFit(ImageFit.Contain)

                    Text('汪汪乐园').fontSize(12)
                  }

                  Column() {
                    Image($r('app.media.ic_event_focus'))
                      .height(40)
                        //.margin({ left: 9 })
                      .objectFit(ImageFit.Contain)

                    Text('签到提现').fontSize(12)
                  }

                  Column() {
                    Image($r('app.media.ic_event_load_and_hide'))
                      .height(40)
                        //.margin({ left: 9 })
                      .objectFit(ImageFit.Contain)

                    Text('1分抽奖').fontSize(12)
                  }

                  Column() {
                    Image($r('app.media.ic_event_mouse'))
                      .height(40)
                        //.margin({ left: 9 })
                      .objectFit(ImageFit.Contain)

                    Text('充值中心').fontSize(12)
                  }.margin({ right: 10 })
                }
                .margin({ top: 5 })
                .width('100%')
                .height('60')
                .backgroundColor(Color.White)
                .borderRadius(10)
                .justifyContent(FlexAlign.SpaceEvenly)

                Row() {
                  Image($r('app.media.banner'))
                    .width('100%')
                      //.margin({ left: 9 })
                    .objectFit(ImageFit.Contain)
                }.margin({top:5})

                Row() {
                  Column() {
                    Image($r('app.media.ic_99baoyou'))
                      .height(80)
                        //.margin({ left: 9 })
                      .objectFit(ImageFit.Contain)
                    Row() {
                      Text('去抢购').fontSize(14).margin({ left: 5 })
                      Blank()
                      Column() {
                        Image($r('app.media.ic_right_arrow')).height(20)
                      }.width(20).backgroundColor(Color.Red).borderRadius('50').margin({ right: 5 })
                    }.backgroundColor(Color.White).borderRadius(16).height(30).width('100%')
                  }.width('25%').padding({ left: 5, right: 5 })

                  Column() {
                    Row() {
                      Column() {
                        Image($r('app.media.ic_99_notebook'))
                          //.width('25%')
                          //.margin({ left: 9 })
                          .objectFit(ImageFit.Contain)

                        Text('¥1337').fontSize(20).fontColor(Color.Red).margin({ bottom: 5 })
                      }.width('25%')

                      Column() {
                        Image($r('app.media.ic_99_paper'))

                          //.margin({ left: 9 })
                          .objectFit(ImageFit.Contain)

                        Text('¥1').fontSize(20).fontColor(Color.Red).margin({ bottom: 5 })
                      }.width('25%')

                      Column() {
                        Image($r('app.media.ic_99_toy'))

                          //.margin({ left: 9 })
                          .objectFit(ImageFit.Contain)

                        Text('¥24.6').fontSize(20).fontColor(Color.Red).margin({ bottom: 5 })
                      }.width('25%')

                      Column() {
                        Image($r('app.media.ic_99_water'))

                          //.margin({ left: 9 })
                          .objectFit(ImageFit.Contain)

                        Text('¥9').fontSize(20).fontColor(Color.Red).margin({ bottom: 5 })
                      }.width('25%')
                    }.height('70%').width('100%').justifyContent(FlexAlign.SpaceEvenly)
                  }.width('75%').borderRadius(24).backgroundColor(Color.White).height('100%')
                }
                .height(130)
                .borderRadius(24)
                .backgroundColor(Color.Red)
                .margin({top:5})
                .padding(1)

                Row() {
                  Column() {
                    Row() {
                      Text('百亿补贴').fontSize(17).margin({ right: 8 })
                      Text('买贵双倍赚').fontColor(Color.Red)
                    }.width('100%').padding({ left: 10, top: 10 }).alignItems(VerticalAlign.Bottom)

                    Row() {
                      Column() {
                        Image($r('app.media.ic_butie1'))

                          //.margin({ left: 9 })
                          .objectFit(ImageFit.Contain)

                        Text('¥1').fontSize(20).fontColor(Color.Red).margin({ bottom: 3 })
                      }.width('48%').height('60%')

                      Blank()
                      Column() {
                        Image($r('app.media.ic_butie2'))

                          //.margin({ left: 9 })
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

                          //.margin({ left: 9 })
                          .objectFit(ImageFit.Contain)

                        Text('¥1').fontSize(20).fontColor(Color.Red).margin({ bottom: 3 })
                      }.width('48%').height('60%')

                      Blank()
                      Column() {
                        Image($r('app.media.ic_miaosha2'))

                          //.margin({ left: 9 })
                          .objectFit(ImageFit.Contain)

                        Text('¥1').fontSize(20).fontColor(Color.Red).margin({ bottom: 3 })
                      }.width('48%').height('60%').padding({ left: 5, right: 5 })
                    }
                  }.width('49%').height('100%').borderRadius(16).backgroundColor(Color.White)
                }.height(160).margin({ top: 5 }).width('100%')

                Row() {
                  WaterFlow({}) {
                    LazyForEach(this.datasource, (item:DataInfo) => {
                      FlowItem() {
                        Column() {
                          Text("N" + item.type).fontSize(12).height('16')
                          Image(item.src).objectFit(ImageFit.Fill)
                          //以ets为根目录
                          //Image('pages/components/myapp/res/autoimage0.png').objectFit(ImageFit.Fill)
                        }
                      }
                      .width('100%')
                      .height(200)
                      //.backgroundColor(this.colors[item % 5])
                    })
                  }
                  .alignSelf(ItemAlign.Center)
                  .columnsTemplate('1fr 1fr 1fr')
                  .layoutDirection(FlexDirection.Column)
                  .columnsGap(12)
                  .rowsGap(12)
                  .height('100%')
                  .width('100%')
                  .borderRadius(24)
                  .padding({ left: 12, right: 12, top: 12, bottom: 12 })
                  .backgroundColor(Color.White)
                  .nestedScroll({scrollForward:NestedScrollMode.PARENT_FIRST, scrollBackward:NestedScrollMode.SELF_FIRST})
                }.width('100%')
              }.width('95%')
            }.width('100%').backgroundColor($r('app.color.background_shallow_grey'))
          }
        }.width('100%').scrollBar(BarState.Off)
      }
    }.width('100%').backgroundColor($r('app.color.home_banner_color'))
  }
}