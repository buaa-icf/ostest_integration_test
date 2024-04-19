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
struct ToggleHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('ToggleBenchmark')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'ToggleCreateSample', buttonUrl: 'pages/base/toggle/ToggleCreateSample' });
        CommonButton({ buttonName: 'ToggleSelectedColorSample', buttonUrl: 'pages/base/toggle/ToggleSelectedColorSample' });
        CommonButton({ buttonName: 'ToggleSwitchPointColorSample', buttonUrl: 'pages/base/toggle/ToggleSwitchPointColorSample' });
        CommonButton({ buttonName: 'ToggleWidthSample', buttonUrl: 'pages/base/toggle/ToggleWidthSample' });
        CommonButton({ buttonName: 'ToggleHeightSample', buttonUrl: 'pages/base/toggle/ToggleHeightSample' });
        CommonButton({ buttonName: 'ToggleSizeSample', buttonUrl: 'pages/base/toggle/ToggleSizeSample' });
        CommonButton({ buttonName: 'TogglePaddingSample', buttonUrl: 'pages/base/toggle/TogglePaddingSample' });
        CommonButton({ buttonName: 'ToggleMarginSample', buttonUrl: 'pages/base/toggle/ToggleMarginSample' });
        CommonButton({ buttonName: 'ToggleSwitchSample', buttonUrl: 'pages/base/toggle/ToggleSwitchSample' });
        CommonButton({ buttonName: 'ToggleCheckboxSelectSample', buttonUrl: 'pages/base/toggle/ToggleCheckboxSelectSample' });
        CommonButton({ buttonName: 'ToggleCheckboxCancelSample', buttonUrl: 'pages/base/toggle/ToggleCheckboxCancelSample' });
      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
