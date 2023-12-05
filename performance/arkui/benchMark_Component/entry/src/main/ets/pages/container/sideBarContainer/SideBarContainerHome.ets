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
struct SideBarContainerHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('SideBarContainerHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'SideBarContainerCreateSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerCreateSample' });
        CommonButton({ buttonName: 'SideBarContainerWidthSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerWidthSample' });
        CommonButton({ buttonName: 'SideBarContainerHeightSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerHeightSample' });
        CommonButton({ buttonName: 'SideBarContainerPaddingSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerPaddingSample' });
        CommonButton({ buttonName: 'SideBarContainerMarginSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerMarginSample' });
        CommonButton({ buttonName: 'SideBarContainerShowSideBarSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerShowSideBarSample' });
        CommonButton({ buttonName: 'SideBarContainerControlButtonSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerControlButtonSample' });
        CommonButton({ buttonName: 'SideBarContainerShowControlButtonSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerShowControlButtonSample' });
        CommonButton({ buttonName: 'SideBarContainerSideBarWidthSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerSideBarWidthSample' });
        CommonButton({ buttonName: 'SideBarContainerAutoHideSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerAutoHideSample' });
        CommonButton({ buttonName: 'SideBarContainerSideBarPositionSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerSideBarPositionSample' });
        CommonButton({ buttonName: 'SideBarContainerDividerSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerDividerSample' });
        CommonButton({ buttonName: 'SideBarContainerMinContentWidthSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerMinContentWidthSample' });
        CommonButton({ buttonName: 'SideBarContainerMinSideBarWidthSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerMinSideBarWidthSample' });
        CommonButton({ buttonName: 'SideBarContainerMaxSideBarWidthSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerMaxSideBarWidthSample' });
        CommonButton({ buttonName: 'SideBarContainerDragSideBarSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerDragSideBarSample' });
        CommonButton({ buttonName: 'SideBarContainerDragContentSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerDragContentSample' });

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
