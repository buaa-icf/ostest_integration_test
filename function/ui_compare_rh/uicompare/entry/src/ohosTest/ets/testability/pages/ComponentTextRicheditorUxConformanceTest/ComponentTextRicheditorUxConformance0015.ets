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
struct ComponentTextRicheditorUxConformance0015 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };

  build() {
    Row() {
      Column() {
        Button('select')
          .id('select')
          .width(100)
          .height(50)
          .onClick(() => {
            this.controller.setSelection(-1, 3);
          })
        RichEditor(this.options)
          .onReady(() => {
            this.controller.addTextSpan('我是中国人', {
              style: {
                decoration: { color: Color.Red, type: TextDecorationType.Overline }
              }
            });
            this.controller.addImageSpan(("cat.jpg"),
              {
                imageStyle:
                {
                  size: ["57px", "57px"],
                }
              });
          })
          .key('ComponentTextRicheditorUxConformance0015')
      }
      .width('100%')
      .height('100%')
    }
  }
}