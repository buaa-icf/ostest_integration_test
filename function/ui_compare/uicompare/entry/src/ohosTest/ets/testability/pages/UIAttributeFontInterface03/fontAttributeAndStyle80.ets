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
struct fontAttributeAndStyle80 {
  @State symbolFontWeight:string | number = 100
  @State start: number = -1
  @State end: number = -1
  private clickNum1:number = 0
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller }

  private fontWeights1:Array<string | number> = [
    150,
    200,
    250,
    300,
    400,
    900
  ]

  build() {
    Column() {
      RichEditor(this.options)
        .onReady(() => {
          this.controller.addTextSpan("123456",
            {
              style:
              {
                fontColor: Color.Orange,
                fontSize: 30,
                fontWeight:100
              }
            })
        })
        .onSelect((value: RichEditorSelection) => {
          this.start = value.selection[0];
          this.end = value.selection[1];
        })

      Button("addSymbolSpan")
        .id("fontAttributeAndStyle80_01")
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