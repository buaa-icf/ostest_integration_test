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
struct DividerHome {

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('DividerBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'DividerCreate',buttonUrl:'pages/base/divider/DividerCreateSample'});
        CommonButton({buttonName:'DividerStrokeWidth',buttonUrl:'pages/base/divider/DividerStrokeWidthSample'});
        CommonButton({buttonName:'DividerWidth',buttonUrl:'pages/base/divider/DividerWidthSample'});
        CommonButton({buttonName:'DividerHeight',buttonUrl:'pages/base/divider/DividerHeightSample'});
        CommonButton({buttonName:'DividerSize',buttonUrl:'pages/base/divider/DividerSizeSample'});
        CommonButton({buttonName:'DividerPadding',buttonUrl:'pages/base/divider/DividerPaddingSample'});
        CommonButton({buttonName:'DividerMargin',buttonUrl:'pages/base/divider/DividerMarginSample'});
        CommonButton({buttonName:'DividerColor',buttonUrl:'pages/base/divider/DividerColorSample'});
        CommonButton({buttonName:'DividerVertical',buttonUrl:'pages/base/divider/DividerVerticalSample'});
        CommonButton({buttonName:'DividerLineCap',buttonUrl:'pages/base/divider/DividerLineCapSample'});


      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}