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
struct ImageHome {
  @State messageTenLength: string = 'Hello-Text';
  @State message: string = 'Hello-Text';

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('ImageBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({
          buttonName: 'ImageCreate',
          buttonUrl: 'pages/base/image/ImageCreateSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ImageWidth',
          buttonUrl: 'pages/base/image/ImageWidthSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ImageHeight',
          buttonUrl: 'pages/base/image/ImageHeightSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ImagePadding',
          buttonUrl: 'pages/base/image/ImagePaddingSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ImageMargin',
          buttonUrl: 'pages/base/image/ImageMarginSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ImageObjectFit',
          buttonUrl: 'pages/base/image/ImageObjectFitSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ImageObjectRepeat',
          buttonUrl: 'pages/base/image/ImageObjectRepeatSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ImageAutoResize',
          buttonUrl: 'pages/base/image/ImageAutoResizeSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ImageInterpolation',
          buttonUrl: 'pages/base/image/ImageInterpolationSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ImageFitOriginalSize',
          buttonUrl: 'pages/base/image/ImageFitOriginalSizeSample',
          data: ArrEntity.textOneHundredHuLength
        });


      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}