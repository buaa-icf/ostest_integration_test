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
struct fontAttributeAndStyle67 {
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

      Button("addSymbolSpan_01")
        .id("fontAttributeAndStyle67_01")
        .fontSize(18)
        .onClick(()=>{
          this.controller.addSymbolSpan($r("sys.symbol.ohos_trash_circle"),
            {
              style:
              {
                fontSize: '10'
              }
            })
        })
        .margin({top:50})

      Button("addSymbolSpan_02")
        .id("fontAttributeAndStyle67_02")
        .fontSize(18)
        .onClick(()=>{
          this.controller.addSymbolSpan($r("sys.symbol.ohos_trash_circle"),
            {
              style:
              {
                fontSize: '-10'
              }
            })
        })
        .margin({top:50})

      Button("addSymbolSpan_03")
        .id("fontAttributeAndStyle67_03")
        .fontSize(18)
        .onClick(()=>{
          this.controller.addSymbolSpan($r("sys.symbol.ohos_trash_circle"),
            {
              style:
              {
                fontSize: '10abc'
              }
            })
        })
        .margin({top:50})

      Button("addSymbolSpan_04")
        .id("fontAttributeAndStyle67_04")
        .fontSize(18)
        .onClick(()=>{
          this.controller.addSymbolSpan($r("sys.symbol.ohos_trash_circle"),
            {
              style:
              {
                fontSize: '50%'
              }
            })
        })
        .margin({top:50})
    }.width('100%')
  }
}