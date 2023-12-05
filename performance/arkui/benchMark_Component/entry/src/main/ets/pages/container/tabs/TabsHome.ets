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
struct TabsHome {

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('TabsBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'TabsCreate',buttonUrl:'pages/container/tabs/TabsCreateSample'});
        CommonButton({buttonName:'TabsWidth',buttonUrl:'pages/container/tabs/TabsWidthSample'});
        CommonButton({buttonName:'TabsHeight',buttonUrl:'pages/container/tabs/TabsHeightSample'});
        CommonButton({buttonName:'TabsPadding',buttonUrl:'pages/container/tabs/TabsPaddingSample'});
        CommonButton({buttonName:'TabsMargin',buttonUrl:'pages/container/tabs/TabsMarginSample'});
        CommonButton({buttonName:'TabsVertical',buttonUrl:'pages/container/tabs/TabsVerticalSample'});
        CommonButton({buttonName:'TabsBarMode',buttonUrl:'pages/container/tabs/TabsBarModeSample'});
        CommonButton({buttonName:'TabsDivider',buttonUrl:'pages/container/tabs/TabsDividerSample'});
        CommonButton({buttonName:'TabsBarPosition',buttonUrl:'pages/container/tabs/TabsBarPositionSample'});
        CommonButton({buttonName:'TabsIndex',buttonUrl:'pages/container/tabs/TabsIndexSample'});
        CommonButton({buttonName:'TabsBarWidth',buttonUrl:'pages/container/tabs/TabsBarWidthSample'});
        CommonButton({buttonName:'TabsBarHeight',buttonUrl:'pages/container/tabs/TabsBarHeightSample'});
        CommonButton({buttonName:'TabsFling',buttonUrl:'pages/container/tabs/TabsFlingSample'});
        CommonButton({buttonName:'TabsDrag',buttonUrl:'pages/container/tabs/TabsDragSample'});
        CommonButton({buttonName:'TabsClickTab',buttonUrl:'pages/container/tabs/TabsClickTabSample'});

      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}