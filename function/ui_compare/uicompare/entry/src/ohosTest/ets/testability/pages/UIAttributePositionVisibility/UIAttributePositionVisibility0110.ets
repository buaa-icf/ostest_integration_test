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
struct VisibilityExample0110{
  @State numbers: String[] = ['0', '1', '2', '3', '4']
  build() {
    Column({ space: 5 }) {
      List() {
        ForEach(this.numbers, (str: string) => {
          ListItem() {
            Text(str)
              .width('100%')
              .height(100)
              .fontSize(16)
              .textAlign(TextAlign.Center)
          }
        }, (str: string) => str)
      }
      .width('100%')
      .height(400)
      .visibility(Visibility.Visible)
      Button('占位按钮')
    }
  }}