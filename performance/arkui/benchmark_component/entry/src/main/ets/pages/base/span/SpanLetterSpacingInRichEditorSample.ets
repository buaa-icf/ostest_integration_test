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
struct SpanLetterSpacingInRichEditorSample {
  timeHelper: TimeHelper = new TimeHelper('SpanLetterSpacingInRichEditorSample');
  @State letterSpacing: number = 0;
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };

  build() {
    Scroll() {
      Column() {
        Button('change LetterSpacing')
          .id('SpanChangeLetterSpacingInRichEditor')
          .margin('5vp')
          .onClick(() => {
            this.letterSpacing = 20;
          })

        RichEditor(this.options)
          .width('100%')
          .height(220)

        Text('this is span')
          .letterSpacing(this.letterSpacing)
          .width('100%')
          .onClick(() => {
            if (this.letterSpacing == 20 && this.timeHelper.printTime(false)) {
            }
          })
      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
