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
struct ConsumeHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('ProvideHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)
        CommonButton({buttonName:'ProvideObjectSample',buttonUrl:'pages/stateManagement/provide/ProvideObjectSample'});
        CommonButton({buttonName:'ProvideClassSample',buttonUrl:'pages/stateManagement/provide/ProvideClassSample'});
        CommonButton({buttonName:'ProvideStringSample',buttonUrl:'pages/stateManagement/provide/ProvideStringSample'});
        CommonButton({buttonName:'ProvideNumberSample',buttonUrl:'pages/stateManagement/provide/ProvideNumberSample'});
        CommonButton({buttonName:'ProvideBooleanSample',buttonUrl:'pages/stateManagement/provide/ProvideBooleanSample'});
        CommonButton({buttonName:'ProvideEnumSample',buttonUrl:'pages/stateManagement/provide/ProvideEnumSample'});
        CommonButton({buttonName:'ProvideDateSample',buttonUrl:'pages/stateManagement/provide/ProvideDateSample'});
        CommonButton({buttonName:'ProvideObjectArrSample',buttonUrl:'pages/stateManagement/provide/ProvideObjectArrSample'});
        CommonButton({buttonName:'ProvideClassArrSample',buttonUrl:'pages/stateManagement/provide/ProvideClassArrSample'});
        CommonButton({buttonName:'ProvideStringArrSample',buttonUrl:'pages/stateManagement/provide/ProvideStringArrSample'});
        CommonButton({buttonName:'ProvideNumberArrSample',buttonUrl:'pages/stateManagement/provide/ProvideNumberArrSample'});
        CommonButton({buttonName:'ProvideBooleanArrSample',buttonUrl:'pages/stateManagement/provide/ProvideBooleanArrSample'});
        CommonButton({buttonName:'ProvideEnumArrSample',buttonUrl:'pages/stateManagement/provide/ProvideEnumArrSample'});

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}