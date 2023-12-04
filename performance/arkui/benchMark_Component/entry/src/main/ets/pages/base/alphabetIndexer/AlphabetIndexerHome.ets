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

import { CommonButton } from '../../../util/CommonButton';

@Entry
@Component
struct AlphabetIndexerHome {

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('AlphabetIndexerBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'AlphabetIndexerCreate',buttonUrl:'pages/base/alphabetIndexer/AlphabetIndexerCreateSample'});
        CommonButton({buttonName:'AlphabetIndexerSelectedColor',buttonUrl:'pages/base/alphabetIndexer/AlphabetIndexerSelectedColorSample'});
        CommonButton({buttonName:'AlphabetIndexerPopupColor',buttonUrl:'pages/base/alphabetIndexer/AlphabetIndexerPopupColorSample'});
        CommonButton({buttonName:'AlphabetIndexerSelectedBackgroundColor',buttonUrl:'pages/base/alphabetIndexer/AlphabetIndexerSelectedBackgroundColorSample'});
        CommonButton({buttonName:'AlphabetIndexerPopupBackground',buttonUrl:'pages/base/alphabetIndexer/AlphabetIndexerPopupBackgroundSample'});
        CommonButton({buttonName:'AlphabetIndexerSelectedFont',buttonUrl:'pages/base/alphabetIndexer/AlphabetIndexerSelectedFontSample'});
        CommonButton({buttonName:'AlphabetIndexerPopupFont',buttonUrl:'pages/base/alphabetIndexer/AlphabetIndexerPopupFontSample'});



      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}