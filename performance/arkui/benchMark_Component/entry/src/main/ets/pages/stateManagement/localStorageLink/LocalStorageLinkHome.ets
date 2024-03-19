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
struct LocalStorageLinkHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('LocalStorageLinkHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'LocalStorageLinkBooleanArrSample',buttonUrl:'pages/stateManagement/localStorageLink/LocalStorageLinkBooleanArrSample'});
        CommonButton({buttonName:'LocalStorageLinkBooleanSample',buttonUrl:'pages/stateManagement/localStorageLink/LocalStorageLinkBooleanSample'});
        CommonButton({buttonName:'LocalStorageLinkClassArrSample',buttonUrl:'pages/stateManagement/localStorageLink/LocalStorageLinkClassArrSample'});
        CommonButton({buttonName:'LocalStorageLinkClassSample',buttonUrl:'pages/stateManagement/localStorageLink/LocalStorageLinkClassSample'});
        CommonButton({buttonName:'LocalStorageLinkEnumArrSample',buttonUrl:'pages/stateManagement/localStorageLink/LocalStorageLinkEnumArrSample'});
        CommonButton({buttonName:'LocalStorageLinkEnumSample',buttonUrl:'pages/stateManagement/localStorageLink/LocalStorageLinkEnumSample'});
        CommonButton({buttonName:'LocalStorageLinkNumberArrSample',buttonUrl:'pages/stateManagement/localStorageLink/LocalStorageLinkNumberArrSample'});
        CommonButton({buttonName:'LocalStorageLinkNumberSample',buttonUrl:'pages/stateManagement/localStorageLink/LocalStorageLinkNumberSample'});
        CommonButton({buttonName:'LocalStorageLinkObjectArrSample',buttonUrl:'pages/stateManagement/localStorageLink/LocalStorageLinkObjectArrSample'});
        CommonButton({buttonName:'LocalStorageLinkObjectSample',buttonUrl:'pages/stateManagement/localStorageLink/LocalStorageLinkObjectSample'});
        CommonButton({buttonName:'LocalStorageLinkStringArrSample',buttonUrl:'pages/stateManagement/localStorageLink/LocalStorageLinkStringArrSample'});
        CommonButton({buttonName:'LocalStorageLinkStringSample',buttonUrl:'pages/stateManagement/localStorageLink/LocalStorageLinkStringSample'});

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}