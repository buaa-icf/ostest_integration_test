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
struct ComponentTextRicheditorFontfeature0037 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };
  controller1: RichEditorController = new RichEditorController();
  options1: RichEditorOptions = { controller: this.controller1 };

  build() {
    Flex({ direction: FlexDirection.Column }) {
      RichEditor(this.options)
        .onReady(() => {
          this.controller.addTextSpan('shell123',
            {
              style:
              {
                fontSize: 30,
                fontFeature: "\"sups\" on"
              }
            })
        })
        .id('ComponentTextRicheditorFontfeature003701')
        .height(100)
        .backgroundColor(0xF5DEB3)
        .width('100%')
      RichEditor(this.options1)
        .onReady(() => {
          this.controller1.addTextSpan('1',
            {
              style:
              {
                fontSize: 30,
                fontFeature: "\"ss04\" on"
              }
            })
        })
        .id('ComponentTextRicheditorFontfeature003702')
        .width('100%')
        .height(100)
        .backgroundColor(0xD2B48C)

    }
    .borderWidth(1)
    .width('100%')
    .height('100%')
  }
}