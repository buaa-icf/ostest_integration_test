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
struct CheckBoxHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('CheckBoxBenchmark')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'CheckBoxCreate', buttonUrl: 'pages/base/checkbox/CheckBoxCreateSample' });
        CommonButton({ buttonName: 'CheckBoxWidth', buttonUrl: 'pages/base/checkbox/CheckBoxWidthSample' });
        CommonButton({ buttonName: 'CheckBoxHeight', buttonUrl: 'pages/base/checkbox/CheckBoxHeightSample' });
        CommonButton({ buttonName: 'CheckBoxPadding', buttonUrl: 'pages/base/checkbox/CheckBoxPaddingSample' });
        CommonButton({ buttonName: 'CheckBoxMargin', buttonUrl: 'pages/base/checkbox/CheckBoxMarginSample' });
        CommonButton({ buttonName: 'CheckBoxSize', buttonUrl: 'pages/base/checkbox/CheckBoxSizeSample' });
        CommonButton({ buttonName: 'CheckBoxSelect', buttonUrl: 'pages/base/checkbox/CheckBoxSelectSample' });
        CommonButton({ buttonName: 'CheckBoxMarkStyle', buttonUrl: 'pages/base/checkbox/CheckBoxMarkStyleSample' });
        CommonButton({ buttonName: 'CheckBoxGroupSelect', buttonUrl: 'pages/base/checkbox/CheckBoxGroupSelectSample' });
        CommonButton({ buttonName: 'CheckBoxGroupCancelSelect', buttonUrl: 'pages/base/checkbox/CheckBoxGroupCancelSelectSample' });
      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
