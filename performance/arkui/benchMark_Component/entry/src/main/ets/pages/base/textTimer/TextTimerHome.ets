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
struct TextTimerHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('TextTimerHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'TextTimerCreateSample', buttonUrl: 'pages/base/textTimer/TextTimerCreateSample' });
        CommonButton({ buttonName: 'TextTimerWidthSample', buttonUrl: 'pages/base/textTimer/TextTimerWidthSample' });
        CommonButton({ buttonName: 'TextTimerHeightSample', buttonUrl: 'pages/base/textTimer/TextTimerHeightSample' });
        CommonButton({ buttonName: 'TextTimerPaddingSample', buttonUrl: 'pages/base/textTimer/TextTimerPaddingSample' });
        CommonButton({ buttonName: 'TextTimerMarginSample', buttonUrl: 'pages/base/textTimer/TextTimerMarginSample' });
        CommonButton({ buttonName: 'TextTimerControllerSample', buttonUrl: 'pages/base/textTimer/TextTimerControllerSample' });
        CommonButton({ buttonName: 'TextTimerFormatSample', buttonUrl: 'pages/base/textTimer/TextTimerFormatSample' });

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
