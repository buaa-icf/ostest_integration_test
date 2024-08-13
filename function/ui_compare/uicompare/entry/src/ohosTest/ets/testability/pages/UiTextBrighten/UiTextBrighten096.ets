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
import font from '@ohos.font'

@Entry
@Component
struct UiTextBrighten096 {
  @State message: string = 'Hello World'

  @State unicode: string = '\u0000'
  @State codePoint: string = String.fromCharCode(0x0000)

  aboutToAppear() {
    font.registerFont({
      familyName: 'iconFont',
      familySrc: '/font/iconFont.ttf'
    })

    font.registerFont({
      familyName: 'medium',
      familySrc: '/font/medium.ttf'
    })
  }

  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller }

  build() {
    Row() {
      Column() {
        RichEditor(this.options)
          .onReady(() => {
            this.controller.addTextSpan("test string",
              {
                style:
                {
                  fontColor: Color.Orange,
                  fontFamily: "iconFont",
                  textShadow: [{ radius: 0, color: Color.Red, offsetX: -10, offsetY: -10 },
                  { radius: 3, color: Color.Blue, offsetX: 10, offsetY: 10 },
                  { radius: 8, color: Color.Green, offsetX: -10, offsetY: 10 },
                  { radius: 10, color: Color.Black, offsetX: 10, offsetY: -10 }]
                }
              })
          })
      }
      .width('100%')
      .height('100%')
    }
  }
}