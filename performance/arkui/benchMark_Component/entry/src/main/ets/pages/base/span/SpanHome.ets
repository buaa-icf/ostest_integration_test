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

import { CommonButton } from '../../../util/CommonButton'

@Entry
@Component
struct SpanHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('SpanBenchmark')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'SpanCreateInText', buttonUrl: 'pages/base/span/SpanCreateInTextSample' });
        CommonButton({ buttonName: 'SpanCreateInRichEditor', buttonUrl: 'pages/base/span/SpanCreateInRichEditorSample' });
        CommonButton({ buttonName: 'SpanValueInText', buttonUrl: 'pages/base/span/SpanValueInTextSample' });
        CommonButton({ buttonName: 'SpanValueInRichEditor', buttonUrl: 'pages/base/span/SpanValueInRichEditorSample' });
        CommonButton({ buttonName: 'SpanLetterSpacingInText', buttonUrl: 'pages/base/span/SpanLetterSpacingInTextSample' });
        CommonButton({ buttonName: 'SpanLetterSpacingInRichEditor', buttonUrl: 'pages/base/span/SpanLetterSpacingInRichEditorSample' });
        CommonButton({ buttonName: 'SpanTextCaseInText', buttonUrl: 'pages/base/span/SpanTextCaseInTextSample' });
        CommonButton({ buttonName: 'SpanTextCaseInRichEditor', buttonUrl: 'pages/base/span/SpanTextCaseInRichEditorSample' });
        CommonButton({ buttonName: 'SpanFontInText', buttonUrl: 'pages/base/span/SpanFontInTextSample' });
        CommonButton({ buttonName: 'SpanFontInRichEditor', buttonUrl: 'pages/base/span/SpanFontInRichEditorSample' });

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
