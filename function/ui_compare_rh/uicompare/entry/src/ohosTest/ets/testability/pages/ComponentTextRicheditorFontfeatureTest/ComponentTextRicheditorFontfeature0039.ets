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
struct ComponentTextRicheditorFontfeature0039 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };

  build() {
    Row() {
      Column() {
        TextArea({text:"中国人ll1"}).draggable(true).width(100).height(50).id('TextArea').fontFeature("\"sups\" on");
        RichEditor(this.options)
          .onReady(() => {
            this.controller.addTextSpan('中国人あadfll',
              {
                style:
                {
                  fontFeature: "\"ss04\" on"
                }
              })
          })
          .id('ComponentTextRicheditorFontfeature0039')
          .draggable(true)
          .width(200)
          .height(50)
      }
      .width('100%')
      .height('100%')
    }
  }
}