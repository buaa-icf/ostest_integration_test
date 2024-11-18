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
struct UIComponentButtonRadioCustonmizing004 {
  build() {
    Row() {
      Column({ space: 50 }) {
        Row() {
          Radio({ value: undefined, group: 'radioGroup' })
            .contentModifier(new RadioNullValueStyle(1))
            .checked(undefined)
            .width(300)
            .height(100)
        }

        Row() {
          Radio({ value: undefined, group: 'radioGroup' })
            .contentModifier(new RadioNullValueStyle(2))
            .checked(undefined)
            .width(300)
            .height(100)
        }

        Row() {
          Radio({ value: undefined, group: 'radioGroup' })
            .checked(undefined)
            .width(300)
            .height(60)
            .contentModifier(new RadioNullValueStyle(3))
        }

        Row() {
          Radio({ value: undefined, group: 'radioGroup' })
            .checked(undefined)
            .width(300)
            .height(60)
            .contentModifier(new RadioNullValueStyle(4))
        }

        Row() {
          Radio({ value: undefined, group: 'radioGroup' })
            .checked(undefined)
            .width(300)
            .height(60)
            .contentModifier(new RadioNullValueStyle(5))
        }

        Row() {
          Radio({ value: undefined, group: 'radioGroup' })
            .checked(undefined)
            .width(300)
            .height(60)
            .contentModifier(new RadioNullValueStyle(6))
        }
      }
      .width('200px')
      .height('80px')
    }
  }
}

class RadioNullValueStyle implements ContentModifier<RadioConfiguration> {
  type: number = 0;

  constructor(numberType: number) {
    this.type = numberType;
  }

  applyContent(): WrappedBuilder<[RadioConfiguration]> {
    return wrapBuilder(buildStyleNullValueRadio);
  }
}

@Builder
function buildStyleNullValueRadio(config: RadioConfiguration) {
  Row({ space: 30 }) {
    Circle({ width: 50, height: 50 })
      .stroke(config.checked ? Color.Red : Color.Black)
      .fill(Color.White)
      .strokeWidth(5)
    Button(config.checked ? 'Hi' : 'Hello')
      .width(100)
      .borderRadius(config.checked ? 10 : 0)
      .type(ButtonType.Normal)
      .backgroundColor('#2787D9')
      .id(`UIComponentButtonRadioCustonmizing004${(config.contentModifier as RadioNullValueStyle).type}`)
      .onClick(() => {
        if (config.checked) {
          config.triggerChange(false);
        } else {
          config.triggerChange(true);
        }
      })
  }
}