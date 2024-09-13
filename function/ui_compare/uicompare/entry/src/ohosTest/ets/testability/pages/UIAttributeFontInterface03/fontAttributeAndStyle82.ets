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
struct fontAttributeAndStyle82 {
  @State symbolFontWeight:FontWeight = FontWeight.Normal
  @State start: number = -1
  @State end: number = -1
  private clickNum1:number = 0
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller }

  private fontWeights1:Array<FontWeight> = [
    FontWeight.Normal,
    FontWeight.Lighter,
    FontWeight.Regular,
    FontWeight.Medium,
    FontWeight.Bold,
    FontWeight.Bolder,
  ]

  build() {
    Column() {
      RichEditor(this.options)
        .onReady(() => {
          this.controller.addTextSpan("123",
            {
              style:
              {
                fontColor: Color.Orange,
                fontSize: 20
              }
            })
        })
        .onSelect((value: RichEditorSelection) => {
          this.start = value.selection[0];
          this.end = value.selection[1];
        })

      Button("addSymbolSpan")
        .id("fontAttributeAndStyle82_01")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum1<6){
            this.symbolFontWeight = this.fontWeights1[this.clickNum1]
            this.clickNum1++
            if(this.clickNum1==6){
              this.clickNum1=0
            }
          }
          this.controller.updateSpanStyle({
            start: this.start,
            end: this.end,
            textStyle: { fontWeight: this.symbolFontWeight }
          })
        })
        .margin({top:50})
    }.width('100%')
  }
}