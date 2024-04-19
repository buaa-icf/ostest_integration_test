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
struct ShapeHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('ShapeBenchmark')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'ShapeCreate', buttonUrl: 'pages/other/shape/ShapeCreateSample' });
        CommonButton({ buttonName: 'ShapeFill', buttonUrl: 'pages/other/shape/ShapeFillSample' });
        CommonButton({ buttonName: 'ShapeFillOpacity', buttonUrl: 'pages/other/shape/ShapeFillOpacitySample' });
        CommonButton({ buttonName: 'ShapeStroke', buttonUrl: 'pages/other/shape/ShapeStrokeSample' });
        CommonButton({ buttonName: 'ShapeStrokeDashArray', buttonUrl: 'pages/other/shape/ShapeStrokeDashArraySample' });
        CommonButton({ buttonName: 'ShapeStrokeDashOffset', buttonUrl: 'pages/other/shape/ShapeStrokeDashOffsetSample' });
        CommonButton({ buttonName: 'ShapeStrokeWidth', buttonUrl: 'pages/other/shape/ShapeStrokeWidthSample' });
        CommonButton({ buttonName: 'ShapeWidth', buttonUrl: 'pages/other/shape/ShapeWidthSample' });
        CommonButton({ buttonName: 'ShapeHeight', buttonUrl: 'pages/other/shape/ShapeHeightSample' });
        CommonButton({ buttonName: 'ShapePadding', buttonUrl: 'pages/other/shape/ShapePaddingSample' });
        CommonButton({ buttonName: 'ShapeMargin', buttonUrl: 'pages/other/shape/ShapeMarginSample' });

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
