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
struct TextPickerHome {

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('TextPickerBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'TextPickerCreate',buttonUrl:'pages/base/textPicker/TextPickerCreateSample'});
        CommonButton({buttonName:'TextPickerTextStyle',buttonUrl:'pages/base/textPicker/TextPickerTextStyleSample'});
        CommonButton({buttonName:'TextPickerSelectedTextStyle',buttonUrl:'pages/base/textPicker/TextPickerSelectedTextStyleSample'});
        CommonButton({buttonName:'TextPickerDisappearTextStyle',buttonUrl:'pages/base/textPicker/TextPickerDisappearTextStyleSample'});
        CommonButton({buttonName:'TextPickerWidth',buttonUrl:'pages/base/textPicker/TextPickerWidthSample'});
        CommonButton({buttonName:'TextPickerHeight',buttonUrl:'pages/base/textPicker/TextPickerHeightSample'});
        CommonButton({buttonName:'TextPickerPadding',buttonUrl:'pages/base/textPicker/TextPickerPaddingSample'});
        CommonButton({buttonName:'TextPickerMargin',buttonUrl:'pages/base/textPicker/TextPickerMarginSample'});
        CommonButton({buttonName:'TextPickerFingerSwip',buttonUrl:'pages/base/textPicker/TextPickerFingerSwipSample'});
        CommonButton({buttonName:'TextPickerClick',buttonUrl:'pages/base/textPicker/TextPickerClickSample'});
        CommonButton({buttonName:'TextPickerMouseScroll',buttonUrl:'pages/base/textPicker/TextPickerMouseScrollSample'});
        CommonButton({buttonName:'TextPickerKeyBoardScroll',buttonUrl:'pages/base/textPicker/TextPickerKeyBoardScrollSample'});



      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}