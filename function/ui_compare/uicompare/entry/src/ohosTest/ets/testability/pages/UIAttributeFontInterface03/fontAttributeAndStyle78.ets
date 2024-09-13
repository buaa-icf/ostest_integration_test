/**
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

@Entry
@Component
struct fontAttributeAndStyle78 {
  @State symbolFontWeight:FontWeight = FontWeight.Normal
  @State start: number = -1
  @State end: number = -1
  @State textColor:Color |string = Color.Blue
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller }

  build() {
    Column() {
      RichEditor(this.options)
        .onReady(() => {
          this.controller.addTextSpan("123456",
            {
              style:
              {
                fontColor: this.textColor,
                fontSize: 20
              }
            })
        })
        .onSelect((value: RichEditorSelection) => {
          this.start = value.selection[0];
          this.end = value.selection[1];
        })

      Button("addSymbolSpan")
        .id("fontAttributeAndStyle78_01")
        .fontSize(18)
        .onClick(()=>{
          this.textColor = '#FF0000'
          this.controller.updateSpanStyle({
            start: this.start,
            end: this.end,
            textStyle: { fontColor: this.textColor }
          })
        })
        .margin({top:50})
    }.width('100%')
  }
}