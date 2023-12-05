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
struct RefreshHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('RefreshBenchmark')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'RefreshCreateSample', buttonUrl: 'pages/container/refresh/RefreshCreateSample' });
        CommonButton({ buttonName: 'RefreshWidthSample', buttonUrl: 'pages/container/refresh/RefreshWidthSample' });
        CommonButton({ buttonName: 'RefreshHeightSample', buttonUrl: 'pages/container/refresh/RefreshHeightSample' });
        CommonButton({ buttonName: 'RefreshSizeSample', buttonUrl: 'pages/container/refresh/RefreshSizeSample' });
        CommonButton({ buttonName: 'RefreshPaddingSample', buttonUrl: 'pages/container/refresh/RefreshPaddingSample' });
        CommonButton({ buttonName: 'RefreshMarginSample', buttonUrl: 'pages/container/refresh/RefreshMarginSample' });
        CommonButton({ buttonName: 'RefreshPullSample', buttonUrl: 'pages/container/refresh/RefreshPullSample' });
        CommonButton({ buttonName: 'RefreshOffsetSample', buttonUrl: 'pages/container/refresh/RefreshOffsetSample' });
        CommonButton({ buttonName: 'RefreshFrictionSample', buttonUrl: 'pages/container/refresh/RefreshFrictionSample' });
        CommonButton({ buttonName: 'RefreshOnStateChangeSample', buttonUrl: 'pages/container/refresh/RefreshOnStateChangeSample' });

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}