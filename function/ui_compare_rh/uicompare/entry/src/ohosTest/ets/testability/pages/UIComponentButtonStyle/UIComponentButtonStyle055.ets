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
struct UIComponentButtonStyle055 {
  @State rating: number = 3.5;
  @State myButtonModifier: RadioStyleAttributeModifier = new RadioStyleAttributeModifier();

  build() {
    Row() {
      Column() {
        Text('Radio')
        Radio({ value: 'Radio', group: 'radioGroup' })
          .height(50)
          .width(50)
          .checked(true)
          .attributeModifier(this.myButtonModifier)
          .id('UIComponentButtonStyle0550')
          .onClick(() => {
            this.myButtonModifier.radioStyle = {
              checkedBackgroundColor: 'rgba(255,100,255,0.5)',
              uncheckedBorderColor: Color.Black,
              indicatorColor: Color.White,
            };
          })
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

class RadioStyleAttributeModifier implements AttributeModifier<RadioAttribute> {
  radioStyle: RadioStyle = {
    checkedBackgroundColor: undefined,
    uncheckedBorderColor: undefined,
    indicatorColor: undefined
  };

  applyNormalAttribute(instance: RadioAttribute): void {
    instance.radioStyle(this.radioStyle)
  }
}