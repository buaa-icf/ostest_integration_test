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

import { ArrEntity } from '../../../entity/ArrEntity';
import { CommonButton } from '../../../util/CommonButton';

@Entry
@Component
struct GridColHome {
  @State messageTenLength: string = 'Hello-Text';
  @State message: string = 'Hello-Text';

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('GridColBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({
          buttonName: 'GridColCreate',
          buttonUrl: 'pages/container/gridCol/GridColCreateSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridColOptionSpan',
          buttonUrl: 'pages/container/gridCol/GridColOptionSpanSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridColOptionOffset',
          buttonUrl: 'pages/container/gridCol/GridColOptionOffsetSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridColOptionOrder',
          buttonUrl: 'pages/container/gridCol/GridColOptionOrderSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridColSpan',
          buttonUrl: 'pages/container/gridCol/GridColSpanSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridColOffset',
          buttonUrl: 'pages/container/gridCol/GridColOffsetSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridColOrder',
          buttonUrl: 'pages/container/gridCol/GridColOrderSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridColWidth',
          buttonUrl: 'pages/container/gridCol/GridColWidthSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridColHeight',
          buttonUrl: 'pages/container/gridCol/GridColHeightSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridColPadding',
          buttonUrl: 'pages/container/gridCol/GridColPaddingSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'GridColMargin',
          buttonUrl: 'pages/container/gridCol/GridColMarginSample',
          data: ArrEntity.textOneHundredHuLength
        });

      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}