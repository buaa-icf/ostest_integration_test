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
struct TestCase_0746f8c1bea94e85b7d2f2caa263de08{
  @State text: string ='this is ss01'
  @State FontFeaturenow: string = '';
  @State FontFeatureStr: string = "\"ss01\" on"
  build() {
    Row() {
      Column() {
        Button('change')
          .width('90%')
          .margin(50)
          .onClick(() => {
            this.FontFeaturenow = this.FontFeatureStr
          })
          .id('change1')
        Text(this.text)
          .margin(40)
          .width('90%')
          .height(50)
          .fontFeature(this.FontFeaturenow)
        Text(this.text)
          .margin(40)
          .width('90%')
          .height(50)
          .fontFeature(this.FontFeaturenow)
        }
      }
    .width('100%')
    .height('100%')
  }
}