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
struct UIComponentLayoutFlexInterface036 {
  @State message: string = 'Hello'

  build() {
    Column({space:10}) {
      Flex()
        .width(100)
        .height(30)
        .backgroundColor(Color.Blue)
        .layoutWeight(0.5)
      Flex()
        .width(100)
        .height(30)
        .backgroundColor(Color.Green)
        .layoutWeight(0.5)
      Flex()
        .width(100)
        .height(30)
        .backgroundColor(Color.Blue)
        .layoutWeight(0.5)
      Flex()
        .width(100)
        .height(30)
        .backgroundColor(Color.Green)
        .layoutWeight(0.5)
    }
    .width(300)
    .height(200)
    .backgroundColor(Color.Yellow)
  }
}