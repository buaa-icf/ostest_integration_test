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
struct UIComponentScrollSwiperInterface3790 {
  private swiperController: SwiperController = new SwiperController()
  private data: number[] = [1, 2, 3]


  build() {
    Column() {
      Swiper(this.swiperController) {
        ForEach(this.data, (item: string) => {
          Column() {
            Text(item.toString())
          }
        }, (item: string) => item)
      }
      .width(150)
      .height(150)
      .backgroundColor(Color.Blue)

      Swiper(this.swiperController) {
        ForEach(this.data, (item: string) => {
          Column() {
            Text(item.toString())
          }
        }, (item: string) => item)
      }
      .width(150)
      .height(150)
      .backgroundColor(Color.Red)
      .margin({ top: 10 })

      Swiper(this.swiperController) {
        ForEach(this.data, (item: string) => {
          Column() {
            Text(item.toString())
          }
        }, (item: string) => item)
      }
      .width(150)
      .height(150)
      .backgroundColor(Color.Yellow)
      .margin({ top: 10 })

      Button("ShowNext").onClick(() => {
        this.swiperController.showNext()
      })
        .id('UIComponentScrollSwiperInterface3790_ShowNext')
        .margin({ top: 10 })
    }
  }
}