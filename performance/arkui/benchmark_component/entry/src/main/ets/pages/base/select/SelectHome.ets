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
struct SelectHome {

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('SelectBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'SelectCreate',buttonUrl:'pages/base/select/SelectCreateSample'});
        CommonButton({buttonName:'SelectWidth',buttonUrl:'pages/base/select/SelectWidthSample'});
        CommonButton({buttonName:'SelectHeight',buttonUrl:'pages/base/select/SelectHeightSample'});
        CommonButton({buttonName:'SelectSize',buttonUrl:'pages/base/select/SelectSizeSample'});
        CommonButton({buttonName:'SelectPadding',buttonUrl:'pages/base/select/SelectPaddingSample'});
        CommonButton({buttonName:'SelectMargin',buttonUrl:'pages/base/select/SelectMarginSample'});
        CommonButton({buttonName:'SelectSpace',buttonUrl:'pages/base/select/SelectSpaceSample'});
        CommonButton({buttonName:'SelectArrowPosition',buttonUrl:'pages/base/select/SelectArrowPositionSample'});
        CommonButton({buttonName:'SelectFirstExpand',buttonUrl:'pages/base/select/SelectFirstExpandSample'});
        CommonButton({buttonName:'SelectSecondExpand',buttonUrl:'pages/base/select/SelectSecondExpandSample'});
        CommonButton({buttonName:'SelectFirstExpandCollapse',buttonUrl:'pages/base/select/SelectFirstExpandCollapseSample'});
        CommonButton({buttonName:'SelectSecondExpandCollapse',buttonUrl:'pages/base/select/SelectSecondExpandCollapseSample'});
      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}