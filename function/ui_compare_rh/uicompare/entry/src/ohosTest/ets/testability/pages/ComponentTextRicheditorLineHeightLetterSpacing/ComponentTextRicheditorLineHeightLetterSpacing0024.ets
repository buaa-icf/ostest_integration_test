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
struct ComponentTextRicheditorLineHeightLetterSpacing0024 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };
  @State lineHeightText: number | undefined | string | Resource = 0;
  @State letterSpacingText: number | undefined | string = 0;

  build() {
    Row() {
      Column() {
        Text('lineHeight value =' + this.lineHeightText + 'letterSpacing value =' + this.letterSpacingText);
        Button('getStyles')
          .id('getStyles')
          .width(100)
          .height(50)
          .onClick(() => {
            console.info('lineHeight value'+this.controller.getSelection());
            console.info('lineHeight value'+this.controller.getSelection().spans);
            this.controller.getSelection().spans.forEach(item => {
              this.lineHeightText = (item as RichEditorTextSpanResult).textStyle.lineHeight;
              this.letterSpacingText = (item as RichEditorTextSpanResult).textStyle.letterSpacing;
            });
          });
        RichEditor(this.options)
          .onReady(() => {
            this.controller.addTextSpan('我是中国人', {
              style: {
                fontStyle: FontStyle.Normal,
                fontColor: Color.Black,
                fontSize: 15,
                lineHeight: 30,
                letterSpacing: 30
              }
            });
          })
          .id('ComponentTextRicheditorLineHeightLetterSpacing0024')
      }
      .width('100%')
      .height('100%')
    }
  }
}