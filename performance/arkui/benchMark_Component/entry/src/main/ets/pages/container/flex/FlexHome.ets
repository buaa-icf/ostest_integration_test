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
struct FlexHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('FlexBenchmark')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'FlexCreateSample', buttonUrl: 'pages/container/flex/FlexCreateSample' });
        CommonButton({ buttonName: 'FlexWidthSample', buttonUrl: 'pages/container/flex/FlexWidthSample' });
        CommonButton({ buttonName: 'FlexHeightSample', buttonUrl: 'pages/container/flex/FlexHeightSample' });
        CommonButton({ buttonName: 'FlexPaddingSample', buttonUrl: 'pages/container/flex/FlexPaddingSample' });
        CommonButton({ buttonName: 'FlexMarginSample', buttonUrl: 'pages/container/flex/FlexMarginSample' });
        CommonButton({ buttonName: 'FlexValueDirectionSample', buttonUrl: 'pages/container/flex/FlexValueDirectionSample' });
        CommonButton({ buttonName: 'FlexValueWrapSample', buttonUrl: 'pages/container/flex/FlexValueWrapSample' });
        CommonButton({ buttonName: 'FlexValueJustifyContentSample', buttonUrl: 'pages/container/flex/FlexValueJustifyContentSample' });
        CommonButton({ buttonName: 'FlexValueAlignItemsSample', buttonUrl: 'pages/container/flex/FlexValueAlignItemsSample' });
        CommonButton({ buttonName: 'FlexValueAlignContentSample', buttonUrl: 'pages/container/flex/FlexValueAlignContentSample' });
      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}