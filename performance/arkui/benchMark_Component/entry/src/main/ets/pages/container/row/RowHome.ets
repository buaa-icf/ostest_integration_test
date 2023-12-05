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
struct RowHome {

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('RowBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'RowCreate',buttonUrl:'pages/container/row/RowCreateSample'});
        CommonButton({buttonName:'RowWidth',buttonUrl:'pages/container/row/RowWidthSample'});
        CommonButton({buttonName:'RowHeight',buttonUrl:'pages/container/row/RowHeightSample'});
        CommonButton({buttonName:'RowPadding',buttonUrl:'pages/container/row/RowPaddingSample'});
        CommonButton({buttonName:'RowMargin',buttonUrl:'pages/container/row/RowMarginSample'});
        CommonButton({buttonName:'RowSpace',buttonUrl:'pages/container/row/RowSpaceSample'});
        CommonButton({buttonName:'RowMarginSpace',buttonUrl:'pages/container/row/RowSpaceMarginSample'});
        CommonButton({buttonName:'RowAlign',buttonUrl:'pages/container/row/RowAlignSample'});
        CommonButton({buttonName:'RowJustify',buttonUrl:'pages/container/row/RowJustifySample'});

      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}