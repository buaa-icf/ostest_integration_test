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

@Component
export struct contentMenu {
  private verbTab:Array<Array<Resource>> = [
    [$r('app.media.ic_event_area_change'), $r('app.string.app_market')],
  ]
  private verbTabId:Array<string> = [
    'content_image_001'
  ]

  build() {
    Column(){
      Row({space:20}) {
        ForEach(this.verbTab.slice(0,5), (item: Array<Resource>, index: number) => {
          Column() {
            Image(item[0])
              .height(40)
              .objectFit(ImageFit.Contain)
              .id(this.verbTabId[index])
            Text(item[1]).fontSize(12)
              .textAlign(TextAlign.Center)
          }.margin({ left: 10 })
        }, (item: string) => item)
      }
      .margin({ top: 5 })
      .width('100%')
      .height('60')
      .backgroundColor(Color.White)
      .justifyContent(FlexAlign.SpaceEvenly)

      Row({space:20}) {
        ForEach(this.verbTab.slice(5,this.verbTab.length), (item: Array<Resource>, index: number) => {
          Column() {
            Image(item[0])
              .height(40)
              .objectFit(ImageFit.Contain)
              .id(this.verbTabId[index])
            Text(item[1]).fontSize(12)
          }.margin({ left: 10 })
        }, (item: string) => item)
      }
      .width('100%')
      .height('60')
      .backgroundColor(Color.White)
      .justifyContent(FlexAlign.SpaceEvenly)
    }.width('100%')
  }
}