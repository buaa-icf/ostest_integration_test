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
struct UIComponentDividerBlankLayout020 {
  @State message: string = 'Hello'

  build() {
    Row() {
      Blank(50)
        .color(Color.Yellow)
      //  .width(100)
      Blank(60)
        .color(Color.Green)
      //  .width(100)
      Blank(40)
        .color(Color.Blue)
      //  .width(100)
    }
    .width(200)
    .height(200)
    .backgroundColor(Color.Grey)
  }
}