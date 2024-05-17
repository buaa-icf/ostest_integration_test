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
struct ParamHome{
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('ParamHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'ParamObjectSample',buttonUrl:'pages/stateManagement/param/ParamObjectSample'});
        CommonButton({buttonName:'ParamClassSample',buttonUrl:'pages/stateManagement/param/ParamClassSample'});
        CommonButton({buttonName:'ParamStringSample',buttonUrl:'pages/stateManagement/param/ParamStringSample'});
        CommonButton({buttonName:'ParamNumberSample',buttonUrl:'pages/stateManagement/param/ParamNumberSample'});
        CommonButton({buttonName:'ParamBooleanSample',buttonUrl:'pages/stateManagement/param/ParamBooleanSample'});
        CommonButton({buttonName:'ParamEnumSample',buttonUrl:'pages/stateManagement/param/ParamEnumSample'});
        CommonButton({buttonName:'ParamArraySample',buttonUrl:'pages/stateManagement/param/ParamArraySample'});
        CommonButton({buttonName:'ParamDateSample',buttonUrl:'pages/stateManagement/param/ParamDateSample'});
        CommonButton({buttonName:'ParamMapSample',buttonUrl:'pages/stateManagement/param/ParamMapSample'});
        CommonButton({buttonName:'ParamSetSample',buttonUrl:'pages/stateManagement/param/ParamSetSample'});
        CommonButton({buttonName:'ParamUnionSample',buttonUrl:'pages/stateManagement/param/ParamUnionSample'});

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}