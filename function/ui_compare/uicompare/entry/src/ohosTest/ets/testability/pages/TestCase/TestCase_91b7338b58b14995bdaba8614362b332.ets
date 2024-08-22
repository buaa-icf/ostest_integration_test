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
struct TestCase_91b7338b58b14995bdaba8614362b332 {
  @State text: string ='1 2 3 444 555'
  build() {
    Row() {
      Column() {
        Text(this.text)
          .margin(40)
          .width('90%')
          .height(100)
          .fontFeature('\"sinf\"')
        Text(this.text)
          .margin(40)
          .width('90%')
          .height(100)
      }
    }
    .width('100%')
    .height('100%')
  }
}