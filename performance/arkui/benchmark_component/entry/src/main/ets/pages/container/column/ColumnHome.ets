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
struct ColumnHome {

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('CloumnBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'ColumnCreate',buttonUrl:'pages/container/column/ColumnCreateSample'});
        CommonButton({buttonName:'ColumnWidth',buttonUrl:'pages/container/column/ColumnWidthSample'});
        CommonButton({buttonName:'ColumnHeight',buttonUrl:'pages/container/column/ColumnHeightSample'});
        CommonButton({buttonName:'ColumnPadding',buttonUrl:'pages/container/column/ColumnPaddingSample'});
        CommonButton({buttonName:'ColumnMargin',buttonUrl:'pages/container/column/ColumnMarginSample'});
        CommonButton({buttonName:'ColumnSpace',buttonUrl:'pages/container/column/ColumnSpaceSample'});
        CommonButton({buttonName:'ColumnMarginSpace',buttonUrl:'pages/container/column/ColumnSpaceMarginSample'});
        CommonButton({buttonName:'ColumnAlign',buttonUrl:'pages/container/column/ColumnAlignSample'});
        CommonButton({buttonName:'ColumnJustify',buttonUrl:'pages/container/column/ColumnJustifySample'});

      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}