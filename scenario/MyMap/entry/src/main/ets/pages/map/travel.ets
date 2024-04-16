/*
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

@Extend(Text)
function leftTitleStyle() {
  .fontColor($r('app.color.sub_title_color'))
  .fontSize(18)
  .height(22)
  .alignSelf(ItemAlign.Start)
  .margin({ left: 12, bottom: 8 })
}

@Extend(Column)
function cardStyle() {
  .margin({ bottom: 12 })
  .backgroundColor(Color.White)
  .borderRadius(24)
  .width('100%')
  .padding(15)
}

@Extend(Circle)
function colorPicker(color: Color | string, callback: () => void) {
  .fill(color)
  .height(20)
  .width(20)
  .onClick(() => {
    callback()
  })
}

@Styles
function pressedStyle() {
  .opacity(0.7)
  .borderWidth(1)
  .borderRadius(20)
}

// Page travel
@Component
export struct travel {
  private title!: Resource;
  @State scroll_direction: ScrollDirection = ScrollDirection.Horizontal

  build() {
    Column() {
      // 第一段
      Column() {
        Row() {
          Image($r('app.media.search_fMyMap'))
            .width(40)
            .height(40)
            .margin({ left: 5 })
            .objectFit(ImageFit.Contain)
            .id('backBtn')
          Text()
            .fontSize(20)
            .layoutWeight(1)
            .margin({ left: 16 })
            .align(Alignment.Start)
          Image($r('app.media.photo_fMyMap'))
            .width(40)
            .height(40)
            .margin({ left: 30 })
            .objectFit(ImageFit.Contain)
            .id('backBtn')
          Image($r('app.media.ic_custom_dialog_voice'))
            .width(40)
            .height(40)
            .margin({ left: 15 })
            .objectFit(ImageFit.Contain)
            .id('backBtn')
        }
        .height('100%')
        .width('100%')
        .margin({ left: 26, right: 26 })
      }
      .backgroundColor($r('app.color.background_light_gray'))
      .margin({ top: 8, bottom: 8 })
      .backgroundColor(Color.White)
      .borderRadius(18)
      .width('94%')
      .padding(15)
      .align(Alignment.Center)
      .height(60)

      // 第二段
      Column() {
        Row() {
          // 第二段 左边
          Column() {
            Image($r('app.media.circle_guide_fMyMap'))//.width(60)
              .height(80)
              .objectFit(ImageFit.Contain)
              .id('backBtn')
              .align(Alignment.Start)
            Text()
              .fontSize(20)
              .layoutWeight(1)
              .align(Alignment.Start)
          }
          .width('25%')
          .alignItems(HorizontalAlign.Start)

          // 第二段 中间
          Column() {
            Text()
              .fontSize(20)
              .layoutWeight(1)
              .margin({ left: 16 })
              .align(Alignment.Start)
          }.width('60%')

          // 第二段 右边
          Column() {
            Column() {
              Image($r('app.media.upArrow_fMyMap'))//.width(30)
                .height(20)
                .margin({ bottom: 5 })
                .objectFit(ImageFit.Contain)
                .id('backBtn')
              Image($r('app.media.layer_fMyMap'))//.width(30)
                .height(30)
                .margin({ bottom: 5 })
                .objectFit(ImageFit.Contain)
                .id('backBtn')
              Text($r('app.string.layer'))
                .fontSize(16)
                .align(Alignment.Start)
              Divider()
                .vertical(false)
                .color('#182431')
                .opacity(0.6)
                .margin({ top: 8, bottom: 8 })
              Image($r('app.media.icon_feedback_fMyMap'))
                .height(30)
                .margin({ bottom: 5 })
                .objectFit(ImageFit.Contain)
                .id('backBtn')
              Text($r('app.string.feedback'))
                .fontSize(16)
                .align(Alignment.Start)
            }
            .height(120)
            .backgroundColor($r('app.color.background_light_gray'))
            .borderRadius(12)
            .margin({ top: 4 })
            .backgroundColor(Color.White)
            .padding(12)
            .align(Alignment.TopStart)
            .width('100%')

            Column() {
              Image($r('app.media.location_fMyMap'))
                .width('80%')
                .height('80%')
                .objectFit(ImageFit.Contain)
                .id('backBtn')

            }
            .height(55)
            .backgroundColor($r('app.color.background_light_gray'))
            .borderRadius(24)
            .backgroundColor(Color.White)
            .padding(2)
            .align(Alignment.TopStart)
            .margin({ bottom: 8 })
            .width('100%')

            Column() {
              Image($r('app.media.icon_path_fMyMap'))
                .width('80%')
                .height('80%')
                .objectFit(ImageFit.Contain)
                .id('backBtn')

            }
            .height(55)
            .width('100%')
            .backgroundColor($r('app.color.background_light_gray'))
            .borderRadius(24)
            .backgroundColor(Color.White)
            .padding(2)
            .align(Alignment.TopStart)
          }.height("100%").width('15%')

        }.height('100%').width('100%')
      }.height(250).width('94%')

      Scroll() {
        // 第三+四段
        Column() {
          // 第三段
          Column() {
            Column() {
              Row({ space: 10 }) {
                Image($r('app.media.openMicrophone_fMyMap'))
                  .width('15%')
                  .height(40)
                  .objectFit(ImageFit.Contain)
                  .id('backBtn')
                  .margin({ left: 16 })
                Text($r('app.string.openMicrophone'))
                  .fontSize(18)
                  .align(Alignment.Center)
              }
              .width('100%')
              .justifyContent(FlexAlign.Start)
            }
            .height(40)
            .width('100%')

            Divider()
              .vertical(false)
              .height(10)
              .color('#182431')
              .opacity(0.6)
              .margin({ left: 8, right: 8 })
            Column() {
              Row({ space: 6 }) {
                Column() {
                  Image($r('app.media.icon_blue_fMyMap'))
                    .height(45)
                    .objectFit(ImageFit.Contain)
                    .id('backBtn')
                  Text($r('app.string.drive'))
                    .fontSize(16)
                    .align(Alignment.Start)
                    .padding({ top: 5, bottom: 20 })
                  Image($r('app.media.icon_green_fMyMap'))
                    .height(45)
                    .objectFit(ImageFit.Contain)
                    .id('backBtn')
                  Text($r('app.string.walk'))
                    .fontSize(16)
                    .align(Alignment.Start)
                    .padding({ top: 5 })
                }
                .align(Alignment.TopStart)
                .width("19%")
                .padding({ top: 15 })

                Column() {
                  Image($r('app.media.icon_green_fMyMap'))
                    .height(45)
                    .objectFit(ImageFit.Contain)
                    .id('backBtn')
                  Text($r('app.string.public_transport'))
                    .fontSize(16)
                    .align(Alignment.Start)
                    .padding({ top: 5, bottom: 20 })
                  Image($r('app.media.icon_green_fMyMap'))
                    .height(45)
                    .objectFit(ImageFit.Contain)
                    .id('backBtn')
                  Text($r('app.string.riding'))
                    .fontSize(16)
                    .align(Alignment.Start)
                    .padding({ top: 5 })
                }
                .align(Alignment.TopStart)
                .width("19%")
                .padding({ top: 15 })

                Column() {
                  Image($r('app.media.ic_orange_fMyMap'))
                    .height(45)
                    .objectFit(ImageFit.Contain)
                    .id('backBtn')
                  Text($r('app.string.taxi'))
                    .fontSize(16)
                    .align(Alignment.Start)
                    .padding({ top: 5, bottom: 20 })
                  Image($r('app.media.ic_orange_fMyMap'))
                    .height(45)
                    .objectFit(ImageFit.Contain)
                    .id('backBtn')
                  Text($r('app.string.realTimeBus'))
                    .fontSize(16)
                    .align(Alignment.Start)
                    .padding({ top: 5 })
                }
                .align(Alignment.TopStart)
                .width("19%")
                .padding({ top: 15 })

                Column() {
                  Image($r('app.media.ic_purple_fMyMap'))
                    .height(45)
                    .objectFit(ImageFit.Contain)
                    .id('backBtn')
                  Text($r('app.string.AIGuide'))
                    .fontSize(16)
                    .align(Alignment.Start)
                    .padding({ top: 5, bottom: 20 })
                  Image($r('app.media.icon_green_fMyMap'))
                    .height(45)
                    .objectFit(ImageFit.Contain)
                    .id('backBtn')
                  Text($r('app.string.recordVoicePackage'))
                    .fontSize(16)
                    .align(Alignment.Start)
                    .padding({ top: 5 })
                }
                .align(Alignment.TopStart)
                .width("19%")
                .padding({ top: 15 })

                Column() {
                  Image($r('app.media.ic_purple_fMyMap'))
                    .height(45)
                    .objectFit(ImageFit.Contain)
                    .id('backBtn')
                  Text($r('app.string.hotelReservation'))
                    .fontSize(16)
                    .align(Alignment.Start)
                    .padding({ top: 5, bottom: 20 })
                  Image($r('app.media.ic_gray_fMyMap'))
                    .height(45)
                    .objectFit(ImageFit.Contain)
                    .id('backBtn')
                  Text($r('app.string.more'))
                    .fontSize(16)
                    .align(Alignment.Start)
                    .padding({ top: 5 })
                }
                .align(Alignment.TopStart)
                .width("19%")
                .padding({ top: 15 })
              }
            }
            .height(200)
            .width('100%')
          }
          .backgroundColor($r('app.color.background_light_gray'))
          .margin({ bottom: 3 })
          .backgroundColor(Color.White)
          .borderRadius(24)
          .width('94%')
          .padding(10)
          // .cardStyle()
          .align(Alignment.Top)
          .height(260)

          // 第四段
          Column({ space: 8 }) {
            Column() {
              Row() {
                Image($r('app.media.ic_orange_fMyMap'))
                  .width('10%')
                  .height(30)
                  .objectFit(ImageFit.Contain)
                  .id('backBtn')
                  .margin({ left: 4 })
                Text($r('app.string.GoHome'))
                  .fontSize(20)
                  .align(Alignment.Start)
                  .padding({ left: 5 })
                  .width('20%')
                Text($r('app.string.toSetting'))
                  .fontSize(16)
                  .align(Alignment.Start)
                  .padding({ left: 20 })
                  .width('20%')
                Divider()
                  .vertical(true)
                  .height(20)
                  .color('#182431')
                  .opacity(0.6)
                  .margin({ left: 8, right: 8 })
                Image($r('app.media.icon_blue_fMyMap'))
                  .width('10%')
                  .height(30)
                  .objectFit(ImageFit.Contain)
                  .id('backBtn')
                Text($r('app.string.GoCompany'))
                  .fontSize(20)
                  .align(Alignment.Start)
                  .padding({ left: 5 })
                  .width('20%')
                Text($r('app.string.toSetting'))
                  .fontSize(16)
                  .align(Alignment.Start)
                  .padding({ left: 15 })
                  .margin({ right: 8 })
                  .width('20%')
              }
              .height('90%')
              .width('98%')
            }
            .width('98%')
            .align(Alignment.Center)
            .height(60)

            Column() {
              Row() {
                Image($r('app.media.icon_blue_fMyMap'))
                  .width('10%')
                  .height(30)
                  .objectFit(ImageFit.Contain)
                  .id('backBtn')
                  .margin({ left: 4 })
                Text($r('app.string.settingHomeorcompany'))
                  .fontSize(18)
                  .align(Alignment.Start)
                  .padding({ left: 2 })
                  .width('80%')
                Image($r('app.media.ic_right_arrow'))
                  .width('10%')
                  .height(30)
                  .objectFit(ImageFit.Contain)
                  .id('backBtn')
              }
              .height('90%')
              .width('98%')
            }
            .width('98%')
            .align(Alignment.Center)
            .height(60)
          }
          .backgroundColor($r('app.color.background_light_gray'))
          .margin({ top: 3 })
          .backgroundColor(Color.White)
          .borderRadius(24)
          .width('94%')
          .align(Alignment.Top)
          .height(200)
        }
        .width('100%')
        .height(550)
        .backgroundColor($r("app.color.lead"))
      }
      .padding({ left: 5, right: 5, bottom: 20 })
      .height(550)
      .backgroundColor($r('app.color.background_shallow_grey'))
      .scrollable(ScrollDirection.Vertical)
      .scrollBarWidth(8)

    }
    .height('100%')
    .width('100%')
    .backgroundImage($r('app.media.background_fMyMap'))
    .backgroundImageSize(ImageSize.Cover)
  }
}
