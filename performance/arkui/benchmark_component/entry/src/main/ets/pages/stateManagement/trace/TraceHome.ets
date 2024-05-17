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
struct TraceHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('TraceHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'TraceMapSample',buttonUrl:'pages/stateManagement/trace/TraceMapSample'});
        CommonButton({buttonName:'TraceBooleanSample',buttonUrl:'pages/stateManagement/trace/TraceBooleanSample'});
        CommonButton({buttonName:'TraceClassSample',buttonUrl:'pages/stateManagement/trace/TraceClassSample'});
        CommonButton({buttonName:'TraceNumberSample',buttonUrl:'pages/stateManagement/trace/TraceNumberSample'});
        CommonButton({buttonName:'TraceStringSample',buttonUrl:'pages/stateManagement/trace/TraceStringSample'});
        CommonButton({buttonName:'TraceSetSample',buttonUrl:'pages/stateManagement/trace/TraceSetSample'});
        CommonButton({buttonName:'TraceDateSample',buttonUrl:'pages/stateManagement/trace/TraceDateSample'});
        CommonButton({buttonName:'TraceArraySample',buttonUrl:'pages/stateManagement/trace/TraceArraySample'});
      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}