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
struct ComponentTextRicheditorFontfeature0058 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };
  @State paddingRichEditor: number = 1;
  @State marginRichEditor: number = 2;

  build() {
    Flex({ direction: FlexDirection.Column }) {
      RichEditor(this.options)
        .onReady(() => {
          this.controller.addTextSpan('【】 123',
            {
              style:
              {
                letterSpacing: 20,
                fontFeature: '\"vert\" on'
              }
            })
        })
        .id('ComponentTextRicheditorFontfeature0058')
        .height(100)
        .width('100%')
        .padding(this.paddingRichEditor)
        .margin(this.marginRichEditor)
        .backgroundColor(Color.Pink)
      Button('justFeature', {
        buttonStyle: ButtonStyleMode.NORMAL
      })
        .id('justFeature')
        .height(30)
        .fontSize(13)
        .onClick(() => {
          this.paddingRichEditor = 10;
          this.marginRichEditor = 20;
        })
    }
    .borderWidth(1)
    .width('100%')
    .height('100%')
  }
}