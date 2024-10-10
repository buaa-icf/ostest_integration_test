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
struct ComponentTextRicheditorInterface0350 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };

  build() {
    Row() {
      Column() {
        RichEditor(this.options)
          .onReady(() => {
            this.controller.addTextSpan('我爱你中国' + '\n',
              {});
            this.controller.addTextSpan('我爱你中国' + '\n',
              {});
            this.controller.addTextSpan('我爱你中国' + '\n',
              {});
            this.controller.updateParagraphStyle({
              start: 1,
              end: 10,
              style: {
                textAlign:TextAlign.Center,
                leadingMargin:200
              }
            });
          })
          .id('ComponentTextRicheditorInterface0350')
      }
      .width('100%')
      .height('100%')
    }
  }
}