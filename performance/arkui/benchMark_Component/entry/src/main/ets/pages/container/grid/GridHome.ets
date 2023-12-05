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

import { CommonButton } from '../../../util/CommonButton'

@Entry
@Component
struct GridHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('GridBenchmark')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'GridCreateSample', buttonUrl: 'pages/container/grid/GridCreateSample' });
        CommonButton({ buttonName: 'GridWidthSample', buttonUrl: 'pages/container/grid/GridWidthSample' });
        CommonButton({ buttonName: 'GridHeightSample', buttonUrl: 'pages/container/grid/GridHeightSample' });
        CommonButton({ buttonName: 'GridPaddingSample', buttonUrl: 'pages/container/grid/GridPaddingSample' });
        CommonButton({ buttonName: 'GridMarginSample', buttonUrl: 'pages/container/grid/GridMarginSample' });
        CommonButton({ buttonName: 'GridSetRCColumnsTemplateSample', buttonUrl: 'pages/container/grid/GridSetRCColumnsTemplateSample' });
        CommonButton({ buttonName: 'GridSetRCRowsTemplateSample', buttonUrl: 'pages/container/grid/GridSetRCRowsTemplateSample' });
        CommonButton({ buttonName: 'GridSetRCRowsGapSample', buttonUrl: 'pages/container/grid/GridSetRCRowsGapSample' });
        CommonButton({ buttonName: 'GridSetRCColumnsGapSample', buttonUrl: 'pages/container/grid/GridSetRCColumnsGapSample' });
        CommonButton({ buttonName: 'GridSetCColumnsGapSample', buttonUrl: 'pages/container/grid/GridSetCColumnsGapSample' });
        CommonButton({ buttonName: 'GridSetCRowsGapSample', buttonUrl: 'pages/container/grid/GridSetCRowsGapSample' });
        CommonButton({ buttonName: 'GridSetRColumnsGapSample', buttonUrl: 'pages/container/grid/GridSetRColumnsGapSample' });
        CommonButton({ buttonName: 'GridSetRRowsGapSample', buttonUrl: 'pages/container/grid/GridSetRRowsGapSample' });
        CommonButton({ buttonName: 'GridMinCountSample', buttonUrl: 'pages/container/grid/GridMinCountSample' });
        CommonButton({ buttonName: 'GridMaxCountSample', buttonUrl: 'pages/container/grid/GridMaxCountSample' });
        CommonButton({ buttonName: 'GridNotSetRCColumnsGapSample', buttonUrl: 'pages/container/grid/GridNotSetRCColumnsGapSample' });
        CommonButton({ buttonName: 'GridNotSetRCLayoutDirectionSample', buttonUrl: 'pages/container/grid/GridNotSetRCLayoutDirectionSample' });
        CommonButton({ buttonName: 'GridNotSetRCCellLengthSample', buttonUrl: 'pages/container/grid/GridNotSetRCCellLengthSample' });
        CommonButton({ buttonName: 'GridManualScrollingSample', buttonUrl: 'pages/container/grid/GridManualScrollingSample' });
        CommonButton({ buttonName: 'GridScrollToSample', buttonUrl: 'pages/container/grid/GridScrollToSample' });
        CommonButton({ buttonName: 'GridScrollEdgeSample', buttonUrl: 'pages/container/grid/GridScrollEdgeSample' });
        CommonButton({ buttonName: 'GridScrollBySample', buttonUrl: 'pages/container/grid/GridScrollBySample' });
        CommonButton({ buttonName: 'GridEdgeEffectSample', buttonUrl: 'pages/container/grid/GridEdgeEffectSample' });

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}