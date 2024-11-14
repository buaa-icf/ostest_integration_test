/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

@Entry
@Component
struct UIComponentScrollSwiperLayout1400 {
  private swiperController: SwiperController = new SwiperController()
  private data: number[] = [1, 2, 3]
  private icon: Resource = $r('app.media.icon')

  build() {
    Column() {
      Swiper(this.swiperController) {
        ForEach(this.data, (item: number) => {
          Column() {
            Image(this.icon).width(41)
            Image(this.icon).width(41)
          }
        }, (item: string) => item)
      }
      .displayMode(SwiperDisplayMode.AutoLinear)
      .size({ width: 300, height: 300 })
      .border({ width: 10 })
    }
  }
}