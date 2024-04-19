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
struct PathHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('PathBenchmark')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'PathCreate', buttonUrl: 'pages/other/path/PathCreateSample' });
        CommonButton({ buttonName: 'PathFill', buttonUrl: 'pages/other/path/PathFillSample' });
        CommonButton({ buttonName: 'PathFillOpacity', buttonUrl: 'pages/other/path/PathFillOpacitySample' });
        CommonButton({ buttonName: 'PathStroke', buttonUrl: 'pages/other/path/PathStrokeSample' });
        CommonButton({ buttonName: 'PathStrokeDashArray', buttonUrl: 'pages/other/path/PathStrokeDashArraySample' });
        CommonButton({ buttonName: 'PathStrokeDashOffset', buttonUrl: 'pages/other/path/PathStrokeDashOffsetSample' });
        CommonButton({ buttonName: 'PathStrokeWidth', buttonUrl: 'pages/other/path/PathStrokeWidthSample' });
        CommonButton({ buttonName: 'PathWidth', buttonUrl: 'pages/other/path/PathWidthSample' });
        CommonButton({ buttonName: 'PathHeight', buttonUrl: 'pages/other/path/PathHeightSample' });
        CommonButton({ buttonName: 'PathPadding', buttonUrl: 'pages/other/path/PathPaddingSample' });
        CommonButton({ buttonName: 'PathMargin', buttonUrl: 'pages/other/path/PathMarginSample' });


      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
