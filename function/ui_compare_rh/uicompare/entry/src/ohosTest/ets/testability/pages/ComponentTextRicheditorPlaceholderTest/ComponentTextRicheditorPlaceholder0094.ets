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
struct ComponentTextRicheditorPlaceholder0094 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };

  @Builder
  builder() {
    Text("hello").padding('20').borderWidth(1).width('100%');
  }

  build() {
    Row() {
      Column() {
        RichEditor(this.options)
          .placeholder('这是提示', {})
          .borderWidth(1)
          .borderColor(Color.Red)
          .id('ComponentTextRicheditorPlaceholder0094')
          .width(100)
          .height(300)
        Button('add')
          .id('add')
          .width(100)
          .height(30)
          .onClick(() => {
            this.controller.addTextSpan('1',
              {});
            this.controller.addSymbolSpan($r("sys.symbol.ohos_trash"),
              {});
            this.controller.addImageSpan(("cat.jpg"),
              {
                imageStyle:
                {
                  size: ["57px", "57px"]
                }
              });
            this.controller.addBuilderSpan(() => {
              this.builder();
            });
          })
      };

      Button('delete')
        .id('delete')
        .width(100)
        .height(30)
        .onClick(() => {
          this.controller.deleteSpans();
        })
    }
    .width('100%')
    .height('100%')
  }
}