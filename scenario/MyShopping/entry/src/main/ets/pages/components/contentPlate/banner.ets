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
export struct Banner {

  build() {
    // 推荐商品滚动banner
    Row() {
      Column() {
        Image($r('app.media.test01'))//.margin({ left: 9 })
          .objectFit(ImageFit.Contain)
      }.width('25%')

      Column() {
        Image($r('app.media.ic_scenery3')).objectFit(ImageFit.Contain)
      }.width('50%')

      Column() {
        Image($r('app.media.test02'))//.margin({ left: 9 })
          .objectFit(ImageFit.Contain)
      }.width('25%')
    }.height(80)
  }
}