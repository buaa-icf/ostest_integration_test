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
struct NavigationHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('NavigationBenchmark')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'NavigationCreateSample', buttonUrl: 'pages/base/navigation/NavigationCreateSample' });
        CommonButton({ buttonName: 'NavigationWidthSample', buttonUrl: 'pages/base/navigation/NavigationWidthSample' });
        CommonButton({ buttonName: 'NavigationHeightSample', buttonUrl: 'pages/base/navigation/NavigationHeightSample' });
        CommonButton({ buttonName: 'NavigationPaddingSample', buttonUrl: 'pages/base/navigation/NavigationPaddingSample' });
        CommonButton({ buttonName: 'NavigationMarginSample', buttonUrl: 'pages/base/navigation/NavigationMarginSample' });
        CommonButton({ buttonName: 'NavigationTitleModeSample', buttonUrl: 'pages/base/navigation/NavigationTitleModeSample' });
        CommonButton({ buttonName: 'NavigationHideToolBarSample', buttonUrl: 'pages/base/navigation/NavigationHideToolBarSample' });
        CommonButton({ buttonName: 'NavigationHideTitleBarSample', buttonUrl: 'pages/base/navigation/NavigationHideTitleBarSample' });
        CommonButton({ buttonName: 'NavigationHideBackButtonSample', buttonUrl: 'pages/base/navigation/NavigationHideBackButtonSample' });
        CommonButton({ buttonName: 'NavigationNavBarWidthSample', buttonUrl: 'pages/base/navigation/NavigationNavBarWidthSample' });
        CommonButton({ buttonName: 'NavigationNavBarPositionSample', buttonUrl: 'pages/base/navigation/NavigationNavBarPositionSample' });
        CommonButton({ buttonName: 'NavigationModeSample', buttonUrl: 'pages/base/navigation/NavigationModeSample' });
        CommonButton({ buttonName: 'NavigationHideNavBarSample', buttonUrl: 'pages/base/navigation/NavigationHideNavBarSample' });
        CommonButton({ buttonName: 'NavigationStackJumpSample', buttonUrl: 'pages/base/navigation/NavigationStackJumpSample' });
        CommonButton({ buttonName: 'NavigationSplitJumpSample', buttonUrl: 'pages/base/navigation/NavigationSplitJumpSample' });
      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
