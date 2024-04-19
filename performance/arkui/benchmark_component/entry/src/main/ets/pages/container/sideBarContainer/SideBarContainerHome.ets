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
        CommonButton({ buttonName: 'SideBarContainerShowSBSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerShowSBSample' });
        CommonButton({ buttonName: 'SideBarContainerCBSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerCBSample' });
        CommonButton({ buttonName: 'SideBarContainerShowCBSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerShowCBSample' });
        CommonButton({ buttonName: 'SideBarContainerSideBarWSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerSideBarWSample' });
        CommonButton({ buttonName: 'SideBarContainerAutoHideSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerAutoHideSample' });
        CommonButton({ buttonName: 'SideBarContainerSideBarPSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerSideBarPSample' });
        CommonButton({ buttonName: 'SideBarContainerDividerSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerDividerSample' });
        CommonButton({ buttonName: 'SideBarContainerMinCWSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerMinCWSample' });
        CommonButton({ buttonName: 'SideBarContainerMinSBWSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerMinSBWSample' });
        CommonButton({ buttonName: 'SideBarContainerMaxSBWSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerMaxSBWSample' });
        CommonButton({ buttonName: 'SideBarContainerDragSBSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerDragSBSample' });
        CommonButton({ buttonName: 'SideBarContainerDragCoSample', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerDragCoSample' });

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
