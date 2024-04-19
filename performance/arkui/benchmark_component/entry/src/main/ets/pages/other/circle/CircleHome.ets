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
struct CircleHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('CircleHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'CircleCreateSample', buttonUrl: 'pages/other/circle/CircleCreateSample' });
        CommonButton({ buttonName: 'CircleFillSample', buttonUrl: 'pages/other/circle/CircleFillSample' });
        CommonButton({ buttonName: 'CircleFillOpacitySample', buttonUrl: 'pages/other/circle/CircleFillOpacitySample' });
        CommonButton({ buttonName: 'CircleStrokeSample', buttonUrl: 'pages/other/circle/CircleStrokeSample' });
        CommonButton({ buttonName: 'CircleStrokeDashArraySample', buttonUrl: 'pages/other/circle/CircleStrokeDashArraySample' });
        CommonButton({ buttonName: 'CircleStrokeDashOffsetSample', buttonUrl: 'pages/other/circle/CircleStrokeDashOffsetSample' });
        CommonButton({ buttonName: 'CircleStrokeWidthSample', buttonUrl: 'pages/other/circle/CircleStrokeWidthSample' });
        CommonButton({ buttonName: 'CircleWidthSample', buttonUrl: 'pages/other/circle/CircleWidthSample' });
        CommonButton({ buttonName: 'CircleHeightSample', buttonUrl: 'pages/other/circle/CircleHeightSample' });
        CommonButton({ buttonName: 'CirclePaddingSample', buttonUrl: 'pages/other/circle/CirclePaddingSample' });
        CommonButton({ buttonName: 'CircleMarginSample', buttonUrl: 'pages/other/circle/CircleMarginSample' });

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
