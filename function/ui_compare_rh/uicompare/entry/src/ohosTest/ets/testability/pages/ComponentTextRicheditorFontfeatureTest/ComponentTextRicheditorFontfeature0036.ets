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
struct ComponentTextRicheditorFontfeature0036 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };

  build() {
    Row() {
      Column() {
        RichEditor(this.options)
          .onReady(() => {
            this.controller.addTextSpan('\uD83D\uDE00',
              {
                style:
                {
                  fontSize: 30,
                }
              })
            this.controller.updateSpanStyle({
              textStyle: {
                fontFeature: "\"ss04\" on"
              }
            })
          })
          .key('ComponentTextRicheditorFontfeature0036')
      }
      .borderWidth(1)
      .width('100%')
      .height('100%')
    }
  }
}