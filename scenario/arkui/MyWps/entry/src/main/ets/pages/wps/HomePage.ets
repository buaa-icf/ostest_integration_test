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

// Page HomePage
@Component
export struct HomePage {
  build() {
    Column() {
      Column() {
        Row() {
          Image($r('app.media.ic_user'))
            .width('10%')
            .height(30)
            .margin({ left: 16 })
            .objectFit(ImageFit.Contain)
            .id('backBtn1')
          Text('Hello')
            .fontSize(20)
            .layoutWeight(1)
            .margin({ left: 10 })
            .align(Alignment.Start)
          Blank()
          Image($r('app.media.ic_dialog'))
            .width('10%')
            .height(20)
            .margin({ right: 16 })
            .objectFit(ImageFit.Contain)
            .id('backBtn2')
        }
        .height(56)
        .width('100%')

        Row() {
          Image($r('app.media.ic_search'))
            .width('%10')
            .height(20)
            .margin({ left: 12 })
            .objectFit(ImageFit.Contain)
            .id('backBtn')
          Text('搜索')
            .fontSize(15)
            .layoutWeight(1)
            .fontColor(Color.Gray)
            .margin({ left: 5 })
            .align(Alignment.Start)
          Image($r('app.media.ic_image_effects'))
            .width('%10')
            .height(20)
            .margin({ right: 12 })
            .objectFit(ImageFit.Contain)
            .id('backBtn')
        }
        .height(40)
        .width('92%')
        .margin({ left: 10, right: 10 })
        .borderRadius(20)
        .backgroundColor(Color.White)

        Row() {
        }.height(10).width('100%')
      }.backgroundColor($r('app.color.background_grey')) //column
      Column(){
        Row() {
          Text($r('app.string.wps_recent'))
            .fontSize(20)
            .width('12%')
            .fontWeight('bold')
            .margin({ left: '5%' })
            .align(Alignment.Start)

          Text($r('app.string.wps_share'))
            .fontSize(20)
            .fontColor(Color.Gray)
            .width('12%')
            .margin({ left: '4%' })
            .align(Alignment.Start)

          Text($r('app.string.wps_star'))
            .fontSize(20)
            .fontColor(Color.Gray)
            .width('12%')
            .margin({ left: '4%' })
            .align(Alignment.Start)

          Text($r('app.string.wps_label'))
            .fontSize(20)
            .fontColor(Color.Gray)
            .width('12%')
            .margin({ left: '5%' })
            .align(Alignment.Start)

          Text($r('app.string.wps_local'))
            .fontSize(20)
            .fontColor(Color.Gray)
            .width('12%')
            .margin({ left: '5%' })
            .align(Alignment.Start)

          Image($r('app.media.ic_image_dirs'))
            .width('8%')
            .height(30)
            .margin({ left: '5%' })
            .objectFit(ImageFit.Contain)
            .id('backBtn5')
        }
        .width('100%')
        .height(45)
        .backgroundColor($r('app.color.white'))
        .alignItems(VerticalAlign.Bottom)
        .align(Alignment.End) //row
        Row() {
          Row() {
            Path()
              .commands('M0 0 L50 0')
              .strokeLineCap(LineCapStyle.Round)
              .stroke(Color.Red)
              .strokeWidth(3)
          }.width('10%').height(10).backgroundColor(Color.White).margin({ left: '6%' })
        }.width('100%').backgroundColor(Color.White)

        Scroll() {
          Column() {
            Row() {
              Text($r('app.string.wps_today'))
                .width('75%')
                .fontSize(20)
                .margin({ left: '5%' })
                .align(Alignment.Start)

              Image($r('app.media.ic_image_wpsfilter'))
                .width('7%')
                .height(40)
                .margin({ left: '0%' })
                .objectFit(ImageFit.Contain)
                .id('backBtn5')

              Image($r('app.media.ic_image_wpsevent'))
                .width('20.00vp')
                .height(40)
                .margin({ left: '4%' })
                .objectFit(ImageFit.Contain)
                .id('backBtn5')
            }.width('100%').height(40).backgroundColor($r('app.color.white'))

            this.FileList(1, "欢迎使用My PS", "本地/data/doc");
            this.FileList(2, "常用命令记录", "电脑桌面");

            Row() {
              Text($r('app.string.wps_sevendays'))
                .fontSize(20)
                .layoutWeight(1)
                .margin({ left: 12 })
                .fontColor(Color.Gray)
                .align(Alignment.Start)
            }.width('100%').height(40).backgroundColor($r('app.color.white'))

            this.FileList(1, "测试报告", "本地/data/work");
            this.FileList(2, "应用列表", "电脑桌面");

            Row() {
              Text($r('app.string.wps_earlier'))
                .fontSize(20)
                .fontColor(Color.Gray)
                .layoutWeight(1)
                .margin({ left: 12 })
                .align(Alignment.Start)
            }.width('100%').height(40).backgroundColor($r('app.color.white'))

            this.FileList(1, "工具使用手册", "本地/data/work");
            this.FileList(1, "工具使用报告", "本地/data/work");
            this.FileList(2, "测试列表", "本地/data/work");
            this.FileList(1, "杂七杂八笔记", "本地/data/work");
          }.width('100%')
        }
        .padding({ left: 5, right: 5, bottom: 20 })
        .height(550)
        .backgroundColor($r('app.color.background_shallow_grey'))
        .scrollable(ScrollDirection.Vertical)
      }.backgroundColor(Color.White)
    }
  } //build

  @Builder FileList(type: number, fileName: string, filePos: string) {
    Row() {
      Image( type == 1 ? $r('app.media.ic_images_wpsdoc') :$r('app.media.ic_images_wpsexcel'))
        .width('15%')
        .height(40)
        .margin({ left: '2%' })
        .objectFit(ImageFit.Contain)
        .id('backBtn5')

      Column() {
        Text(fileName)
          .fontSize(20)
          .align(Alignment.Start)
        Text(filePos)
          .fontSize(15)
          .fontColor(Color.Gray)
          .align(Alignment.Start)
      }.height(40).width('60%')
      .align(Alignment.Start)
      .alignItems(HorizontalAlign.Start)

      Image($r('app.media.ic_image_wpsstart'))
        .width('8%')
        .height(40)
        .margin({ left: '3%' })
        .objectFit(ImageFit.Contain)
        .id('backBtn5')

      Image($r('app.media.ic_images_wpsdot'))
        .width('8%')
        .height(40)
        .margin({ left: '2%' })
        .objectFit(ImageFit.Contain)
        .id('backBtn5')
    }.width('100%').height(80).backgroundColor($r('app.color.white'))
  } //FileList
} //Green