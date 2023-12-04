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
struct GaugeHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('GaugeHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'GaugeCreateSample', buttonUrl: 'pages/base/gauge/GaugeCreateSample' });
        CommonButton({ buttonName: 'GaugeWidthSample', buttonUrl: 'pages/base/gauge/GaugeWidthSample' });
        CommonButton({ buttonName: 'GaugeHeightSample', buttonUrl: 'pages/base/gauge/GaugeHeightSample' });
        CommonButton({ buttonName: 'GaugePaddingSample', buttonUrl: 'pages/base/gauge/GaugePaddingSample' });
        CommonButton({ buttonName: 'GaugeMarginSample', buttonUrl: 'pages/base/gauge/GaugeMarginSample' });
        CommonButton({ buttonName: 'GaugeStrokeWidthSample', buttonUrl: 'pages/base/gauge/GaugeStrokeWidthSample' });
        CommonButton({ buttonName: 'GaugeTrackShadowSample', buttonUrl: 'pages/base/gauge/GaugeTrackShadowSample' });
        CommonButton({ buttonName: 'GaugeAngleSample', buttonUrl: 'pages/base/gauge/GaugeAngleSample' });

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
