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
struct ComponentTextRicheditorOnWillChange0007 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };
  @State replacedSpansValue: string = '';
  @State rangeBefore: string = '';
  @State rangeAfter: string = '';

  build() {
    Row() {
      Column() {
        Text('replacedSpans  value====' + this.replacedSpansValue).borderColor(Color.Red);
        Text('rangeBefore value=====' + this.rangeBefore + 'rangeAfter value=====' + this.rangeAfter)
          .borderColor(Color.Green);
        RichEditor(this.options)
          .id('ComponentTextRicheditorOnWillChange0007')
          .borderColor(Color.Orange)
          .onReady(() => {
            this.controller.addTextSpan('111', {
              style: {
                fontStyle: FontStyle.Normal,
                fontColor: Color.Black,
                fontSize: 15,
              }
            })
          })
          .borderWidth(1)
          .onWillChange((value: RichEditorChangeValue) => {
            this.replacedSpansValue = JSON.stringify(value.replacedSpans);
            return true;
          })
          .onDidChange((rangeBefore: TextRange, rangeAfter: TextRange) => {
            this.rangeAfter = JSON.stringify(rangeAfter);
            this.rangeBefore = JSON.stringify(rangeBefore);
          })
      }
      .width('100%')
      .height('100%')
    }
  }
}