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
struct SearchHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('SearchHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'SearchCreateSample', buttonUrl: 'pages/base/search/SearchCreateSample' });
        CommonButton({ buttonName: 'SearchValueSample', buttonUrl: 'pages/base/search/SearchValueSample' });
        CommonButton({ buttonName: 'SearchTextAlignSample', buttonUrl: 'pages/base/search/SearchTextAlignSample' });
        CommonButton({ buttonName: 'SearchWidthSample', buttonUrl: 'pages/base/search/SearchWidthSample' });
        CommonButton({ buttonName: 'SearchHeightSample', buttonUrl: 'pages/base/search/SearchHeightSample' });
        CommonButton({ buttonName: 'SearchPaddingSample', buttonUrl: 'pages/base/search/SearchPaddingSample' });
        CommonButton({ buttonName: 'SearchMarginSample', buttonUrl: 'pages/base/search/SearchMarginSample' });
        CommonButton({ buttonName: 'SearchTextFontSample', buttonUrl: 'pages/base/search/SearchTextFontSample' });
        CommonButton({ buttonName: 'SearchPlaceholderFontSample', buttonUrl: 'pages/base/search/SearchPlaceholderFontSample' });

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}
