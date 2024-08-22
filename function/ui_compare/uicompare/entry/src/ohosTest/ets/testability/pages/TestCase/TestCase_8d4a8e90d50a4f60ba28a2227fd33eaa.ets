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
struct TestCase_8d4a8e90d50a4f60ba28a2227fd33eaa {
  @State text: string ='1/4 5/8 9/10 10/9'
  build() {
    Row() {
      Column() {
        Text(this.text)
          .margin(40)
          .width('90%')
          .height(100)
          .fontSize(50)
          .fontFeature('\"sups\"')
        Text(this.text)
          .margin(40)
          .width('90%')
          .height(100)
          .fontSize(50)
      }
    }
    .width('100%')
    .height('100%')
  }
}