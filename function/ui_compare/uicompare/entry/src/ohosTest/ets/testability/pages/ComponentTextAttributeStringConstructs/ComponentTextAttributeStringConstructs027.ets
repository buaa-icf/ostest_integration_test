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
struct ComponentTextAttributeStringConstructs027 {
  @State text: string =
    'The text component is used to display a piece of textual information.Support universal attributes and universal text attributes.'
  @State textAlignIndex: number = 0;
  @State textAlignMode: TextAlign[] = [TextAlign.Center, TextAlign.Start, TextAlign.End]
  @State textAlignModeStr: string[] = ['Center', 'Start', 'End']

  controller1: TextController = new TextController();

  build() {
    Column({ space: 10 }) {
      Text(this.text)
        .width(300)
        .margin({ left: 20, top: 20 })
        .fontSize(16)
        .border({ width: 1 })
        .lineHeight(20)
        .maxLines(2)
        .textAlign((this.textAlignMode[this.textAlignIndex]))


      Row() {
        Button('更改省略号位置：' + this.textAlignModeStr[this.textAlignIndex]).onClick(() => {
          this.textAlignIndex++
          if (this.textAlignIndex > (this.textAlignModeStr.length - 1)) {
            this.textAlignIndex = 0
          }
        })
      }
    }
  }
}