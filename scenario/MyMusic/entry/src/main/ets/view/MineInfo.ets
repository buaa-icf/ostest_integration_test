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

/**
 * List item information component.
 */
@Component
export default struct MineInfo {
  @Consume addVisibility: Visibility
  @Consume nameVisibility: Visibility

  build() {
    Column() {
      Image($r('app.media.brand'))
        .width('64vp')
        .height('64vp')
        .borderRadius('32vp')
        .margin({ top: '24vp' })
        .borderWidth('2vp')
        .borderColor(Color.White)
      Row() {
        Text('闲潭春半')
          .fontSize('24fp')
          .fontColor(Color.White)
        /*.onVisibleAreaChange([0.0, 1.0], (isVisible: boolean, currentRatio: number) => {
          if (isVisible && currentRatio >= 1.0) {
            this.addVisibility = Visibility.Visible
            //this.nameVisibility = Visibility.None
          }
          if (isVisible && currentRatio >= 0.5) {
            //this.addVisibility = Visibility.Visible
            this.nameVisibility = Visibility.None
          }else{
            this.addVisibility = Visibility.None
          }
          if (!isVisible && currentRatio <= 0.0) {
            //this.addVisibility = Visibility.None
            this.nameVisibility = Visibility.Visible
          }
        })*/
        Text('SVIP·柒')
          .fontSize('14fp')
          .fontColor(Color.White)
          .backgroundColor(Color.Brown)
          .borderRadius('6vp')
          .padding('2vp')
          .margin('4vp')
      }.margin({ top: '16vp' })

      Text('闲潭春半')
        .fontSize('14fp')
        .fontColor($r('app.color.mainPage_backgroundColor'))
        .margin({ top: '12vp' })
      Text('江苏 南京 · 村龄7年')
        .fontSize('14fp')
        .fontColor($r('app.color.mainPage_backgroundColor'))
        .margin({ top: '12vp' })
      Row() {
        Row() {
          Text('11')
            .fontSize('14fp')
            .fontColor(Color.White)
          Text('关注')
            .fontSize('14fp')
            .fontColor($r('app.color.mainPage_backgroundColor'))
        }

        Row() {
          Text('9')
            .fontSize('14fp')
            .fontColor(Color.White)
          Text('粉丝')
            .fontSize('14fp')
            .fontColor($r('app.color.mainPage_backgroundColor'))
        }

        Row() {
          Text('Lv.9')
            .fontSize('14fp')
            .fontColor(Color.White)
          Text('等级')
            .fontSize('14fp')
            .fontColor($r('app.color.mainPage_backgroundColor'))
        }

        Row() {
          Text('3018时')
            .fontSize('14fp')
            .fontColor(Color.White)
          Text('听歌')
            .fontSize('14fp')
            .fontColor($r('app.color.mainPage_backgroundColor'))
        }
      }.width('70%')
      .margin({ top: '16vp' })
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Row() {
          Image($r('app.media.ic_public_history'))
            .width('24vp')
            .height('24vp')
          Text('最近')
            .fontSize('14fp')
            .fontColor(Color.White)
        }
        .backgroundColor('#44a0a0a0')
        .width('72vp')
        .height('36vp')
        .borderRadius('4vp')
        .padding('4vp')
        .justifyContent(FlexAlign.SpaceBetween)

        Row() {
          Image($r('app.media.ic_public_cloud_download'))
            .width('24vp')
            .height('24vp')
          Text('本地')
            .fontSize('14fp')
            .fontColor(Color.White)
        }
        .backgroundColor('#44a0a0a0')
        .width('72vp')
        .height('36vp')
        .borderRadius('4vp')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding('4vp')

        Row() {
          Image($r('app.media.ic_public_cloud_upload'))
            .width('24vp')
            .height('24vp')
          Text('云盘')
            .fontSize('14fp')
            .fontColor(Color.White)
        }
        .backgroundColor('#44a0a0a0')
        .width('72vp')
        .height('36vp')
        .borderRadius('4vp')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding('4vp')

        Row() {
          Image($r('app.media.ic_public_appstore_filled'))
            .width('24vp')
            .height('24vp')
          Text('已购')
            .fontSize('14fp')
            .fontColor(Color.White)
        }
        .backgroundColor('#44a0a0a0')
        .width('72vp')
        .height('36vp')
        .borderRadius('4vp')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding('4vp')

        Row() {
          Image($r('app.media.ic_gallery_photoedit_more'))
            .width('24vp')
            .height('24vp')
        }
        .backgroundColor('#44a0a0a0')
        .width('36vp')
        .height('36vp')
        .justifyContent(FlexAlign.Center)
        .borderRadius('4vp')
      }.width('90%')
      .margin({ top: '16vp', bottom: '48vp' })
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .margin({ top: $r('app.float.head_height') })
    .width('100%')
    .height('300vp')
    .justifyContent(FlexAlign.SpaceBetween)
  }
}