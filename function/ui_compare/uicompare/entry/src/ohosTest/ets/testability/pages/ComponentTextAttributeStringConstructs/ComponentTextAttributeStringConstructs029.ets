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
struct ComponentTextAttributeStringConstructs029 {
  @State decorationIndex: number = 0;
  @State decorationMode: TextDecorationType[] = [TextDecorationType.Underline, TextDecorationType.Overline, TextDecorationType.LineThrough, TextDecorationType.None]
  @State decorationModeStr: string[] = ['Underline', 'Overline', 'LineThrough', 'None']

  StyledString1: StyledString = new StyledString('这是一段测试文字',
    [{start:0, length:8,styledKey: StyledStringKey.TEXT_SHADOW,
      styledValue: new DecorationStyle({type: this.decorationMode[this.decorationIndex]})}]);

  controller1: TextController = new TextController();

  build() {
    Column({ space: 10 }) {
      Text(undefined, { controller: this.controller1 })
        .onAreaChange(() => {
          this.controller1.setStyledString(this.StyledString1)
        })
        .width(300)
        .margin({ left: 20, top: 20 })
        .fontSize(16)
        .border({ width: 1 })
        .lineHeight(20)
        .maxLines(2)

      Row() {
        Button('更改decoration：' + this.decorationModeStr[this.decorationIndex]).onClick(() => {
          this.decorationIndex++
          if (this.decorationIndex > (this.decorationModeStr.length - 1)) {
            this.decorationIndex = 0
          }
        })
      }
    }
  }
}