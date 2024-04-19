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
struct ProgressHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('ProgressHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'ProgressCreateSample', buttonUrl: 'pages/base/progress/ProgressCreateSample' });
        CommonButton({ buttonName: 'ProgressWidthSample', buttonUrl: 'pages/base/progress/ProgressWidthSample' });
        CommonButton({ buttonName: 'ProgressHeightSample', buttonUrl: 'pages/base/progress/ProgressHeightSample' });
        CommonButton({ buttonName: 'ProgressPaddingSample', buttonUrl: 'pages/base/progress/ProgressPaddingSample' });
        CommonButton({ buttonName: 'ProgressMarginSample', buttonUrl: 'pages/base/progress/ProgressMarginSample' });
        CommonButton({ buttonName: 'ProgressProgressTypeSample', buttonUrl: 'pages/base/progress/ProgressProgressTypeSample' });
        CommonButton({ buttonName: 'ProgressProgressStyleSample', buttonUrl: 'pages/base/progress/ProgressProgressStyleSample' });
        CommonButton({ buttonName: 'ProgressLinearSample', buttonUrl: 'pages/base/progress/ProgressLinearSample' });
        CommonButton({ buttonName: 'ProgressRingSample', buttonUrl: 'pages/base/progress/ProgressRingSample' });
        CommonButton({ buttonName: 'ProgressScaleRingSample', buttonUrl: 'pages/base/progress/ProgressScaleRingSample' });

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
