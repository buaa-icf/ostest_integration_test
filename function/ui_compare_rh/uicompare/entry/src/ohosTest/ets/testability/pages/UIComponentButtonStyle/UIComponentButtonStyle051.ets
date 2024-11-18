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
struct UIComponentButtonStyle051 {
  @State rating: number = 2;
  @State myButtonModifier: RatingAttributeModifier = new RatingAttributeModifier();

  build() {
    Row() {
      Column() {
        Rating({ rating: this.rating, indicator: false })
          .stars(5)
          .stepSize(0.5)
          .margin({ top: 24 })
          .attributeModifier(this.myButtonModifier)
        Column() {
          Button('Modifier')
            .fontSize(20)
            .fontColor(Color.Blue)
            .width('200px')
            .id('UIComponentButtonStyle0510')
            .onClick(() => {
              this.rating = 3;
            })
        }
      }
      .width('200px')
      .height('200px')
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}

class RatingAttributeModifier implements AttributeModifier<RatingAttribute> {
  stars: number = 0;
  stepSize: number = 0;
  starStyle: StarStyleOptions = {
    backgroundUri: '',
    foregroundUri: ''
  };

  applyNormalAttribute(instance: RatingAttribute): void {
    instance.stars(this.stars);
    instance.stepSize(this.stepSize);
    instance.starStyle(this.starStyle);
  }
}
