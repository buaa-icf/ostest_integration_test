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
struct UIComponentUISupportColor104 {
  @State rating: number = 3.5;

  build() {
    WithTheme({ colorMode: ThemeColorMode.DARK }) {
      Column() {
        Rating({ rating: this.rating, indicator: false })
          .stars(5)
          .stepSize(0.5)
          .margin({ top: 24 })
          .id('UIComponentUISupportColor1040')
          .onChange((value: number) => {
            this.rating = value
          })
        Button('切换模式')
          .fontSize(20)
          .fontColor(Color.Blue)
          .width('200px')
          .id('UIComponentUISupportColor1041')
      }.width('100%').height('100%').backgroundColor($r('sys.color.background_primary'))
    }
  }
}