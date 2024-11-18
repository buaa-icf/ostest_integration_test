/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

@Entry
@Component
struct UIComponentButtonCommonButton0370 {
  @State styleIndex: number = 0;

  build() {
    Row() {
      Column() {
        Text('Rating1')
        Rating()
          .margin({ top: 24 })

        Text('Rating2')
          .margin({ top: 10 })
        Rating()
          .margin({ top: 24 })
          .stars(RatingData[0].Stars)
          .stepSize(RatingData[0].StepSize)
          .starStyle(RatingData[0].StarStyle)
      }
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}

export interface RatingAttributes {
  Stars?: number | undefined
  StepSize?: number | undefined
  StarStyle?: RatingStarStyle
}

export interface RatingStarStyle {
  backgroundUri: string | undefined
  foregroundUri: string | undefined
  secondaryUri?: string | undefined
}

export const RatingData: RatingAttributes[] = [
  {
    Stars: 10,
    StepSize: 5,
    StarStyle: { backgroundUri: 'image2.png', foregroundUri: 'image2.png' },
  },
  {
    StarStyle: { backgroundUri: 'image2.png', foregroundUri: 'image2.png', secondaryUri: 'img.png' },
  },
  {
    StarStyle: { backgroundUri: 'image2.png', foregroundUri: 'image2.png', secondaryUri: 'img2.png' },
  }
]
