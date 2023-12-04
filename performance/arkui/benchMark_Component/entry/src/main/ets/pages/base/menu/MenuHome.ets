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
struct MenuHome {

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('MenuBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'MenuCreate',buttonUrl:'pages/base/menu/MenuCreateSample'});
        CommonButton({buttonName:'MenuFont',buttonUrl:'pages/base/menu/MenuFontSample'});
        CommonButton({buttonName:'MenuFontColor',buttonUrl:'pages/base/menu/MenuFontColorSample'});
        CommonButton({buttonName:'MenuWidth',buttonUrl:'pages/base/menu/MenuWidthSample'});
        CommonButton({buttonName:'MenuHeight',buttonUrl:'pages/base/menu/MenuHeightSample'});
        CommonButton({buttonName:'MenuPadding',buttonUrl:'pages/base/menu/MenuPaddingSample'});
        CommonButton({buttonName:'MenuMargin',buttonUrl:'pages/base/menu/MenuMarginSample'});
        CommonButton({buttonName:'MenuFirstExpend',buttonUrl:'pages/base/menu/MenuFirstExpendSample'});
        CommonButton({buttonName:'MenuSecondExpend',buttonUrl:'pages/base/menu/MenuSecondExpendSample'});
        CommonButton({buttonName:'MenuMoreClose',buttonUrl:'pages/base/menu/MenuMoreCloseSample'});
        CommonButton({buttonName:'MenuGroupCloseExpand',buttonUrl:'pages/base/menu/MenuGroupCloseExpandSample'});
        CommonButton({buttonName:'MenuGroupMoreClose',buttonUrl:'pages/base/menu/MenuGroupMoreCloseSample'});



      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}