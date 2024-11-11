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
struct ComponentTextRicheditorFontfeature0048 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };

  build() {
    Flex({ direction: FlexDirection.Column }) {
      RichEditor(this.options)
        .onReady(() => {
          this.controller.addTextSpan('1010',
            {
              style:
              {
                fontSize: 30,
                fontFeature: '\"sups\", 1'
              }
            });
          this.controller.addTextSpan('shell100',
            {
              style:
              {
                fontSize: 30,
                fontFeature: '\"ss04\",  1'
              }
            });
        })
        .id('ComponentTextRicheditorFontfeature0048')
        .height(100)
        .backgroundColor(0xF5DEB3)
        .width('100%')
        .onSelect((value: RichEditorSelection) => {
          this.controller.addTextSpan('选中内容属性'+value,
            {

            });
          console.info("onSelect========"+JSON.stringify(value));
        })
      Button('')
        .id('select')
        .margin(15)
        .backgroundColor(Color.Transparent)
        .onClick(() => {
          this.controller.setSelection(1, 2);
        })
    }
    .borderWidth(1)
    .width('100%')
    .height('100%')
  }
}