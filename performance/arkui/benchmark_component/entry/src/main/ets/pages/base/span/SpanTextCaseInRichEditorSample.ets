/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct SpanTextCaseInRichEditorSample {
  timeHelper: TimeHelper = new TimeHelper('SpanTextCaseInRichEditorSample');
  @State testCase: TextCase = TextCase.LowerCase;
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };

  build() {
    Scroll() {
      Column() {
        Button('TextCase.Normal')
          .id('TextCase.Normal.RichEditor')
          .margin('5vp')
          .onClick(() => {
            this.testCase = TextCase.Normal;
          })
        Button('TextCase.LowerCase')
          .id('TextCase.LowerCase.RichEditor')
          .margin('5vp')
          .onClick(() => {
            this.testCase = TextCase.LowerCase;
          })
        Button('TextCase.UpperCase')
          .id('TextCase.UpperCase.RichEditor')
          .margin('5vp')
          .onClick(() => {
            this.testCase = TextCase.UpperCase;
          })

        RichEditor(this.options)
          .width('100%')
          .height(220)

        Text('this is span')
          .textCase(this.testCase)
          .width('100%')
          .onClick(() => {
            if (this.testCase != null && this.timeHelper.printTime(false)) {
            }
          })
      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
