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
struct PolylineHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('PolylineHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'PolylineCreateSample', buttonUrl: 'pages/other/polyline/PolylineCreateSample' });
        CommonButton({ buttonName: 'PolylineFillSample', buttonUrl: 'pages/other/polyline/PolylineFillSample' });
        CommonButton({ buttonName: 'PolylineFillOpacitySample', buttonUrl: 'pages/other/polyline/PolylineFillOpacitySample' });
        CommonButton({ buttonName: 'PolylineStrokeSample', buttonUrl: 'pages/other/polyline/PolylineStrokeSample' });
        CommonButton({ buttonName: 'PolylineStrokeDashArraySample', buttonUrl: 'pages/other/polyline/PolylineStrokeDashArraySample' });
        CommonButton({ buttonName: 'PolylineStrokeDashOffsetSample', buttonUrl: 'pages/other/polyline/PolylineStrokeDashOffsetSample' });
        CommonButton({ buttonName: 'PolylineStrokeWidthSample', buttonUrl: 'pages/other/polyline/PolylineStrokeWidthSample' });
        CommonButton({ buttonName: 'PolylineWidthSample', buttonUrl: 'pages/other/polyline/PolylineWidthSample' });
        CommonButton({ buttonName: 'PolylineHeightSample', buttonUrl: 'pages/other/polyline/PolylineHeightSample' });
        CommonButton({ buttonName: 'PolylinePaddingSample', buttonUrl: 'pages/other/polyline/PolylinePaddingSample' });
        CommonButton({ buttonName: 'PolylineMarginSample', buttonUrl: 'pages/other/polyline/PolylineMarginSample' });

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
