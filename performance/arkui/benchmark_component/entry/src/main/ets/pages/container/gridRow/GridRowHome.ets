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

import router from '@ohos.router';
import { ArrEntity } from '../../../entity/ArrEntity';
import { CommonButton } from '../../../util/CommonButton';

@Entry
@Component
struct GridRowHome {
  @State messageTenLength: string = 'Hello-Text';
  @State message: string = 'Hello-Text';

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('GridRowBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({
          buttonName: 'GridRowCreate',
          buttonUrl: 'pages/container/gridRow/GridRowCreateSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridRowWidth',
          buttonUrl: 'pages/container/gridRow/GridRowWidthSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridRowHeight',
          buttonUrl: 'pages/container/gridRow/GridRowHeightSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridRowPadding',
          buttonUrl: 'pages/container/gridRow/GridRowPaddingSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridRowMargin',
          buttonUrl: 'pages/container/gridRow/GridRowMarginSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridRowColumns',
          buttonUrl: 'pages/container/gridRow/GridRowColumnsSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridRowGutter',
          buttonUrl: 'pages/container/gridRow/GridRowGutterSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridRowDirection',
          buttonUrl: 'pages/container/gridRow/GridRowDirectionSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridRowBreakpoints',
          buttonUrl: 'pages/container/gridRow/GridRowBreakpointsSample',
          data: ArrEntity.textOneHundredHuLength
        });


      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}