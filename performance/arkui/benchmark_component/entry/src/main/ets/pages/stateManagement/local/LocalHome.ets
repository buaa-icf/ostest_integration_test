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
@ComponentV2
struct LocalHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('LocalHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'LocalArraySample',buttonUrl:'pages/stateManagement/local/LocalArraySample'});
        CommonButton({buttonName:'LocalBooleanSample',buttonUrl:'pages/stateManagement/local/LocalBooleanSample'});
        CommonButton({buttonName:'LocalClassSample',buttonUrl:'pages/stateManagement/local/LocalClassSample'});
        CommonButton({buttonName:'LocalDateSample',buttonUrl:'pages/stateManagement/local/LocalDateSample'});
        CommonButton({buttonName:'LocalEnumSample',buttonUrl:'pages/stateManagement/local/LocalEnumSample'});
        CommonButton({buttonName:'LocalMapSample',buttonUrl:'pages/stateManagement/local/LocalMapSample'});
        CommonButton({buttonName:'LocalNumberSample',buttonUrl:'pages/stateManagement/local/LocalNumberSample'});
        CommonButton({buttonName:'LocalObjectSample',buttonUrl:'pages/stateManagement/local/LocalObjectSample'});
        CommonButton({buttonName:'LocalSetSample',buttonUrl:'pages/stateManagement/local/LocalSetSample'});
        CommonButton({buttonName:'LocalStringSample',buttonUrl:'pages/stateManagement/local/LocalStringSample'});
        CommonButton({buttonName:'LocalUnionSample',buttonUrl:'pages/stateManagement/local/LocalUnionSample'});

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}