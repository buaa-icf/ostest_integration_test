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
struct UIComponentButtonRadioCustonmizing002 {
  build() {
    Row() {
      Column({ space: 50 }) {
        Row() {
          Radio({ value: '', group: 'radioGroup' })
            .contentModifier(new FirstRadioStyle(1))
            .checked(false)
            .width(300)
            .height(100)
        }

        Row() {
          Radio({ value: '', group: 'radioGroup' })
            .contentModifier(new FirstRadioStyle(2))
            .checked(false)
            .width(300)
            .height(100)
        }

        Row() {
          Radio({ value: '', group: 'radioGroup' })
            .checked(false)
            .width(300)
            .height(60)
            .enabled(false)
            .contentModifier(new FirstRadioStyle(3))
        }
      }
      .width('200px')
      .height('80px')
    }
  }
}

class FirstRadioStyle implements ContentModifier<RadioConfiguration> {
  type: number = 0;

  constructor(numberType: number) {
    this.type = numberType;
  }

  applyContent(): WrappedBuilder<[RadioConfiguration]> {
    return wrapBuilder(buildFirstStyleRadio);
  }
}

@Builder
function buildFirstStyleRadio(config: RadioConfiguration) {
  Row({ space: 30 }) {
    Circle({ width: 50, height: 50 })
      .stroke(config.checked ? Color.Brown : Color.Black)
      .fill(Color.White)
      .strokeWidth(5)
    Button(config.checked ? 'Hi' : 'Hello')
      .width(100)
      .type(config.checked ? ButtonType.Circle : ButtonType.Normal)
      .backgroundColor('#2787D9')
      .id(`UIComponentButtonRadioCustonmizing002${(config.contentModifier as FirstRadioStyle).type}`)
  }
}