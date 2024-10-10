/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


@Entry
@Component
struct ComponentTextRicheditorWordbreak0005 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };

  build() {
    Row() {
      Column() {
        RichEditor(this.options)
          .onReady(() => {
            this.controller.addTextSpan('test wordbreak-', {
              style: {
                fontStyle: FontStyle.Normal,
                fontColor: Color.Black,
                fontSize: 15,
              },
            })
          })
          .id('ComponentTextRicheditorWordbreak0005')
        Button('updateParagraphStyle', {
          buttonStyle: ButtonStyleMode.NORMAL
        })
          .id('updateParagraphStyle')
          .height(30)
          .fontSize(13)
          .onClick(() => {
            this.controller.updateParagraphStyle({ start: -1, end: -1,
              style: {
                wordBreak:WordBreak.BREAK_ALL
              }
            })
            let wordBreak = JSON.stringify(this.controller.getParagraphs({ start: -1, end: -1 })[0].style.wordBreak);
            this.controller.addTextSpan('wordBreak设置WordBreak.BREAK_ALL属性值：'+wordBreak, {
              style: {
                fontStyle: FontStyle.Normal,
                fontColor: Color.Black,
                fontSize: 15,
              }
            })
          })
      }
      .width('100%')
      .height('100%')
    }
  }
}