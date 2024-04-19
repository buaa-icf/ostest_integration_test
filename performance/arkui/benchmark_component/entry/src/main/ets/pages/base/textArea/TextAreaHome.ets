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
struct TextAreaHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('TextAreaBenchmark')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'TextAreaCreateSample', buttonUrl: 'pages/base/textArea/TextAreaCreateSample' });
        CommonButton({ buttonName: 'TextAreaTextAlignSample', buttonUrl: 'pages/base/textArea/TextAreaTextAlignSample' });
        CommonButton({ buttonName: 'TextAreaWidthSample', buttonUrl: 'pages/base/textArea/TextAreaWidthSample' });
        CommonButton({ buttonName: 'TextAreaHeightSample', buttonUrl: 'pages/base/textArea/TextAreaHeightSample' });
        CommonButton({ buttonName: 'TextAreaPaddingSample', buttonUrl: 'pages/base/textArea/TextAreaPaddingSample' });
        CommonButton({ buttonName: 'TextAreaMarginSample', buttonUrl: 'pages/base/textArea/TextAreaMarginSample' });
        CommonButton({ buttonName: 'TextAreaFontSample', buttonUrl: 'pages/base/textArea/TextAreaFontSample' });
        CommonButton({ buttonName: 'TextAreaTextSample', buttonUrl: 'pages/base/textArea/TextAreaTextSample' });
        CommonButton({ buttonName: 'TextAreaMaxLinesSample', buttonUrl: 'pages/base/textArea/TextAreaMaxLinesSample' });
      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
