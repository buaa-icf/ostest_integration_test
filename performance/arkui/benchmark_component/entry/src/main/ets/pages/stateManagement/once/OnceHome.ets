/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
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
struct OnceHome{
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('OnceHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'OnceObjectSample',buttonUrl:'pages/stateManagement/once/OnceObjectSample'});
        CommonButton({buttonName:'OnceClassSample',buttonUrl:'pages/stateManagement/once/OnceClassSample'});
        CommonButton({buttonName:'OnceStringSample',buttonUrl:'pages/stateManagement/once/OnceStringSample'});
        CommonButton({buttonName:'OnceNumberSample',buttonUrl:'pages/stateManagement/once/OnceNumberSample'});
        CommonButton({buttonName:'OnceBooleanSample',buttonUrl:'pages/stateManagement/once/OnceBooleanSample'});
        CommonButton({buttonName:'OnceEnumSample',buttonUrl:'pages/stateManagement/once/OnceEnumSample'});
        CommonButton({buttonName:'OnceArraySample',buttonUrl:'pages/stateManagement/once/OnceArraySample'});
        CommonButton({buttonName:'OnceDateSample',buttonUrl:'pages/stateManagement/once/OnceDateSample'});
        CommonButton({buttonName:'OnceMapSample',buttonUrl:'pages/stateManagement/once/OnceMapSample'});
        CommonButton({buttonName:'OnceSetSample',buttonUrl:'pages/stateManagement/once/OnceSetSample'});
        CommonButton({buttonName:'OnceUnionSample',buttonUrl:'pages/stateManagement/once/OnceUnionSample'});

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}