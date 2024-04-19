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
struct SliderHome {

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('SliderBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'SliderCreate',buttonUrl:'pages/base/slider/SliderCreateSample'});
        CommonButton({buttonName:'SliderWidth',buttonUrl:'pages/base/slider/SliderWidthSample'});
        CommonButton({buttonName:'SliderHeight',buttonUrl:'pages/base/slider/SliderHeightSample'});
        CommonButton({buttonName:'SliderPadding',buttonUrl:'pages/base/slider/SliderPaddingSample'});
        CommonButton({buttonName:'SliderMargin',buttonUrl:'pages/base/slider/SliderMarginSample'});
        CommonButton({buttonName:'SliderStep',buttonUrl:'pages/base/slider/SliderStepSample'});
        CommonButton({buttonName:'SliderDirection',buttonUrl:'pages/base/slider/SliderDirectionSample'});
        CommonButton({buttonName:'SliderReverse',buttonUrl:'pages/base/slider/SliderReverseSample'});
        CommonButton({buttonName:'SliderStyle',buttonUrl:'pages/base/slider/SliderStyleSample'});
        CommonButton({buttonName:'SliderTrackThickness',buttonUrl:'pages/base/slider/SliderTrackThicknessSample'});
        CommonButton({buttonName:'SliderBlockSize',buttonUrl:'pages/base/slider/SliderBlockSizeSample'});
        CommonButton({buttonName:'SliderFingerSliding',buttonUrl:'pages/base/slider/SliderFingerSlidingSample'});
        CommonButton({buttonName:'SliderClick',buttonUrl:'pages/base/slider/SliderClickSample'});
        CommonButton({buttonName:'SliderMouseScroll',buttonUrl:'pages/base/slider/SliderMouseScrollSample'});
        CommonButton({buttonName:'SliderKeyboardScroll',buttonUrl:'pages/base/slider/SliderKeyboardScrollSample'});

      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}