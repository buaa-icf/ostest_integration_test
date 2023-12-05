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
struct DataPanelHome {

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('DataPanelBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'DataPanelCreate',buttonUrl:'pages/base/dataPanel/DataPanelCreateSample'});
        CommonButton({buttonName:'DataPanelWidth',buttonUrl:'pages/base/dataPanel/DataPanelWidthSample'});
        CommonButton({buttonName:'DataPanelHeight',buttonUrl:'pages/base/dataPanel/DataPanelHeightSample'});
        CommonButton({buttonName:'DataPanelPadding',buttonUrl:'pages/base/dataPanel/DataPanelPaddingSample'});
        CommonButton({buttonName:'DataPanelMargin',buttonUrl:'pages/base/dataPanel/DataPanelMarginSample'});
        CommonButton({buttonName:'DataPanelCloseEffect',buttonUrl:'pages/base/dataPanel/DataPanelCloseEffectSample'});
        CommonButton({buttonName:'DataPanelStrokeWidth',buttonUrl:'pages/base/dataPanel/DataPanelStrokeWidthSample'});
        CommonButton({buttonName:'DataPanelRadius',buttonUrl:'pages/base/dataPanel/DataPanelRadiusSample'});
        CommonButton({buttonName:'DataPanelOffsetX',buttonUrl:'pages/base/dataPanel/DataPanelOffsetXSample'});
        CommonButton({buttonName:'DataPanelOffsetY',buttonUrl:'pages/base/dataPanel/DataPanelOffsetYSample'});



      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}