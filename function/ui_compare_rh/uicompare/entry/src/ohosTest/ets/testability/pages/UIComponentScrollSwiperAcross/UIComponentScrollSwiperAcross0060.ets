/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
@Entry
@Component
struct UIComponentScrollSwiperAcross0060 {
  private swiperController: SwiperController = new SwiperController()
  @State data: number[] = [0, 1, 2, 3, 4, 5, 6, 7]

  build() {
    Column() {
      Swiper(this.swiperController) {
        ForEach(this.data, (item: string) => {
          Column() {
            Text(item.toString()).fontSize(80)
          }
          .backgroundColor(Color.Yellow)
        }, (item: string) => item)
      }
      .width(300)
      .height(300)
      .displayCount(2, true)
      .loop(true)

      Row({ space: 8 }) {
        Button('Remove').onClick(() => {
          this.data = [0, 1, 2, 3, 4]
        })
          .id('UIComponentScrollSwiperAcross0060_Remove')

        Button('Change4').onClick(() => {
          this.swiperController.changeIndex(4, true)
        })
          .id('UIComponentScrollSwiperAcross0060_ChangeIndex')
      }
      .margin({ top: 20 })
    }
  }
}