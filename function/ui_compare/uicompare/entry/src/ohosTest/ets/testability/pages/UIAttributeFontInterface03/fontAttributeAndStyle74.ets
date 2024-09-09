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
struct fontAttributeAndStyle74 {
  @State symbolFontWeight:FontWeight = FontWeight.Normal
  private clickNum1:number = 0
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller }

  private fontWeights1:Array<FontWeight> = [
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

      Button("addSymbolSpan")
        .id("fontAttributeAndStyle74_01")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum1<5){
            this.symbolFontWeight = this.fontWeights1[this.clickNum1]
            this.clickNum1++
            if(this.clickNum1==5){
              this.clickNum1=0
            }
          }
          this.controller.addSymbolSpan($r("sys.symbol.ohos_trash_circle"),
            {
              style:
              {
                fontSize: 30,
                fontWeight:this.symbolFontWeight
              }
            })
        })
        .margin({top:50})
    }.width('100%')
  }
}