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
struct UiComponentNavModifier013 {
  @State currentIndex: number = 0
  @Builder NavigationTitle() {
    Column() {
      Text('Title')
        .fontColor('#182431')
        .fontSize(30)
        .lineHeight(41)
        .fontWeight(700)
    }.alignItems(HorizontalAlign.Start)
  }

  build() {
    Column() {
      Navigation() {
        TextInput({ placeholder: 'search...' })
          .height(40)
          .backgroundColor('#FFFFFF')
          .margin({ top: 20 })
      }
      .title(this.NavigationTitle)
      .titleMode(NavigationTitleMode.Full)
      .hideTitleBar(false)
      .hideToolBar(false)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F1F3F5')
  }
}