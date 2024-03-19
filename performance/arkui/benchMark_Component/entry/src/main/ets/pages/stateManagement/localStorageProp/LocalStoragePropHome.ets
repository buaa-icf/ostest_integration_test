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
struct LocalStoragePropHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('LocalStoragePropBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({
          buttonName: 'LocalStoragePropBooleanArrSample',
          buttonUrl: 'pages/stateManagement/localStorageProp/LocalStoragePropBooleanArrSample'
        });
        CommonButton({
          buttonName: 'LocalStoragePropBooleanSample',
          buttonUrl: 'pages/stateManagement/localStorageProp/LocalStoragePropBooleanSample'
        });
        CommonButton({
          buttonName: 'LocalStoragePropClassArrSample',
          buttonUrl: 'pages/stateManagement/localStorageProp/LocalStoragePropClassArrSample'
        });
        CommonButton({
          buttonName: 'LocalStoragePropClassSample',
          buttonUrl: 'pages/stateManagement/localStorageProp/LocalStoragePropClassSample'
        });
        CommonButton({
          buttonName: 'LocalStoragePropEnumArrSample',
          buttonUrl: 'pages/stateManagement/localStorageProp/LocalStoragePropEnumArrSample'
        });
        CommonButton({
          buttonName: 'LocalStoragePropEnumSample',
          buttonUrl: 'pages/stateManagement/localStorageProp/LocalStoragePropEnumSample'
        });
        CommonButton({
          buttonName: 'LocalStoragePropNumberArrSample',
          buttonUrl: 'pages/stateManagement/localStorageProp/LocalStoragePropNumberArrSample'
        });
        CommonButton({
          buttonName: 'LocalStoragePropNumberSample',
          buttonUrl: 'pages/stateManagement/localStorageProp/LocalStoragePropNumberSample'
        });
        CommonButton({
          buttonName: 'LocalStoragePropObjectArrSample',
          buttonUrl: 'pages/stateManagement/localStorageProp/LocalStoragePropObjectArrSample'
        });
        CommonButton({
          buttonName: 'LocalStoragePropObjectSample',
          buttonUrl: 'pages/stateManagement/localStorageProp/LocalStoragePropObjectSample'
        });
        CommonButton({
          buttonName: 'LocalStoragePropStringArrSample',
          buttonUrl: 'pages/stateManagement/localStorageProp/LocalStoragePropStringArrSample'
        });
        CommonButton({
          buttonName: 'LocalStoragePropStringSample',
          buttonUrl: 'pages/stateManagement/localStorageProp/LocalStoragePropStringSample'
        });

      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}