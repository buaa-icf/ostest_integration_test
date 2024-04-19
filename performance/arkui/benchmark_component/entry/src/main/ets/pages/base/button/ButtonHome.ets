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
struct ButtonHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('ButtonBenchmark')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'ButtonCreateSample', buttonUrl: 'pages/base/button/ButtonCreateSample' });
        CommonButton({ buttonName: 'ButtonWidthSample', buttonUrl: 'pages/base/button/ButtonWidthSample' });
        CommonButton({ buttonName: 'ButtonHeightSample', buttonUrl: 'pages/base/button/ButtonHeightSample' });
        CommonButton({ buttonName: 'ButtonPaddingSample', buttonUrl: 'pages/base/button/ButtonPaddingSample' });
        CommonButton({ buttonName: 'ButtonMarginSample', buttonUrl: 'pages/base/button/ButtonMarginSample' });
        CommonButton({ buttonName: 'ButtonOptionTypeSample', buttonUrl: 'pages/base/button/ButtonOptionTypeSample' });
        CommonButton({ buttonName: 'ButtonTypeSample', buttonUrl: 'pages/base/button/ButtonTypeSample' });
      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
