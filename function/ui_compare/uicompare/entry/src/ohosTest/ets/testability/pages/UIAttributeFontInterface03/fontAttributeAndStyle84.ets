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
struct fontAttributeAndStyle84 {
  @State symbolFontWeight:FontWeight = FontWeight.Normal
  @State symbolRenderingStrategy:SymbolRenderingStrategy = SymbolRenderingStrategy.SINGLE
  @State textColor:ResourceColor[] = [Color.Red]
  @State textAlign: TextAlign = TextAlign.Start
  @State start: number = -1
  @State end: number = -1
  private clickNum1:number = 0
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller }

  private textAligns:TextAlign[]= [
    TextAlign.Start,
    TextAlign.Center,
    TextAlign.End,
    TextAlign.JUSTIFY
  ]

  build() {
    Column() {
      RichEditor(this.options)
        .onReady(() => {
          this.controller.addTextSpan("123456",
            {
              style:
              {
                fontSize: 30
              }
            })
        })
        .onSelect((value: RichEditorSelection) => {
          this.start = value.selection[0];
          this.end = value.selection[1];
        })

      Button("addSymbolSpan")
        .id("fontAttributeAndStyle84_01")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum1<4){
            this.textAlign = this.textAligns[this.clickNum1]
            this.clickNum1++
            if(this.clickNum1==4){
              this.clickNum1=0
            }
          }
          this.controller.updateParagraphStyle({
            start: this.start,
            end: this.end,
            style: {
              textAlign:this.textAlign
            }
          })
        })
        .margin({top:50})
    }.width('100%')
  }
}