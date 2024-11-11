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
struct ComponentTextRicheditorWordbreak0012 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };

  build() {
    Row() {
      Column() {
        RichEditor(this.options)
          .onReady(() => {
            this.controller.addTextSpan('rdbreakwordなたのことがなたのことがなたのことが', {
            })
          })
          .id('ComponentTextRicheditorWordbreak0012')
        Button('updateParagraphStyle', {
          buttonStyle: ButtonStyleMode.NORMAL
        })
          .id('updateParagraphStyle')
          .height(30)
          .fontSize(13)
          .onClick(() => {
            this.getUIContext().getFocusController().clearFocus();
            this.controller.updateParagraphStyle({ start:this.controller.getSpans().length,end:-1,
              style: {
                wordBreak:WordBreak.NORMAL
              }
            })
          })
      }
      .width('100%')
      .height('100%')
    }
  }
}