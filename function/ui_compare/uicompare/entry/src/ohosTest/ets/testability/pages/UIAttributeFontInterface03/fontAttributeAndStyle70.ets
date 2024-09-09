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
struct fontAttributeAndStyle70 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller }

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

      Button("addSymbolSpan_1")
        .id("fontAttributeAndStyle70_01")
        .fontSize(18)
        .onClick(()=>{
          this.controller.addSymbolSpan($r("sys.symbol.ohos_trash_circle"),
            {
              style:
              {
                fontSize: 30,
                fontColor: ["#008800"]
              }
            })
        })
        .margin({top:50})

      Button("addSymbolSpan_2")
        .id("fontAttributeAndStyle70_02")
        .fontSize(18)
        .onClick(()=>{
          this.controller.addSymbolSpan($r("sys.symbol.ohos_trash_circle"),
            {
              style:
              {
                fontSize: 30,
                fontColor: ["rgba(0,255,0,1)"]
              }
            })
        })
        .margin({top:50})

      Button("addSymbolSpan_3")
        .id("fontAttributeAndStyle70_03")
        .fontSize(18)
        .onClick(()=>{
          this.controller.addSymbolSpan($r("sys.symbol.ohos_trash_circle"),
            {
              style:
              {
                fontSize: 30,
                fontColor: ["rgb(0,0,255)"]
              }
            })
        })
        .margin({top:50})
    }.width('100%')
  }
}