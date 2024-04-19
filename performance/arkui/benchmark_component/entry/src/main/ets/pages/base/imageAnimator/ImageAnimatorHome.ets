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
struct ImageAnimatorHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('ImageAnimatorHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'ImageAnimatorCreateSample', buttonUrl: 'pages/base/imageAnimator/ImageAnimatorCreateSample' });
        CommonButton({ buttonName: 'ImageAnimatorWidthSample', buttonUrl: 'pages/base/imageAnimator/ImageAnimatorWidthSample' });
        CommonButton({ buttonName: 'ImageAnimatorHeightSample', buttonUrl: 'pages/base/imageAnimator/ImageAnimatorHeightSample' });
        CommonButton({ buttonName: 'ImageAnimatorPaddingSample', buttonUrl: 'pages/base/imageAnimator/ImageAnimatorPaddingSample' });
        CommonButton({ buttonName: 'ImageAnimatorMarginSample', buttonUrl: 'pages/base/imageAnimator/ImageAnimatorMarginSample' });
        CommonButton({ buttonName: 'ImageAnimatorImagesSample', buttonUrl: 'pages/base/imageAnimator/ImageAnimatorImagesSample' });
        CommonButton({ buttonName: 'ImageAnimatorStateSample', buttonUrl: 'pages/base/imageAnimator/ImageAnimatorStateSample' });
        CommonButton({ buttonName: 'ImageAnimatorDurationSample', buttonUrl: 'pages/base/imageAnimator/ImageAnimatorDurationSample' });
        CommonButton({ buttonName: 'ImageAnimatorReverseSample', buttonUrl: 'pages/base/imageAnimator/ImageAnimatorReverseSample' });
        CommonButton({ buttonName: 'ImageAnimatorFixedSizeSample', buttonUrl: 'pages/base/imageAnimator/ImageAnimatorFixedSizeSample' });
        CommonButton({ buttonName: 'ImageAnimatorFillModeSample', buttonUrl: 'pages/base/imageAnimator/ImageAnimatorFillModeSample' });
        CommonButton({ buttonName: 'ImageAnimatorIterationsSample', buttonUrl: 'pages/base/imageAnimator/ImageAnimatorIterationsSample' });

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
