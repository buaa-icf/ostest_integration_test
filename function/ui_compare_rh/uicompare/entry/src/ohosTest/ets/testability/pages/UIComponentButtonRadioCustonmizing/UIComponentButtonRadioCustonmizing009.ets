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
struct UIComponentButtonRadioCustonmizing009 {
  build() {
    Row() {
      Column({ space: 50 }) {
        Row() {
          Radio({ value: '', group: 'radioGroup' })
            .contentModifier(new ThirdRadioStyle(1))
            .checked(false)
            .width(300)
            .height(100)
        }

        Row() {
          Radio({ value: '', group: 'radioGroup' })
            .contentModifier(new ThirdRadioStyle(2))
            .checked(false)
            .width(300)
            .height(100)
        }

        Row() {
          Radio({ value: '', group: 'radioGroup' })
            .checked(false)
            .width(300)
            .height(60)
            .contentModifier(new ThirdRadioStyle(3))
        }
      }
      .width('200px')
      .height('80px')
    }
  }
}

class ThirdRadioStyle implements ContentModifier<RadioConfiguration> {
  type: number = 0;

  constructor(numberType: number) {
    this.type = numberType;
  }

  applyContent(): WrappedBuilder<[RadioConfiguration]> {
    return wrapBuilder(buildThirdStyleRadio);
  }
}

@Builder
function buildThirdStyleRadio(config: RadioConfiguration) {
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
      .id(`UIComponentButtonRadioCustonmizing009${(config.contentModifier as ThirdRadioStyle).type}`)
      .onClick(() => {
        if (config.checked) {
          config.triggerChange(undefined);
        } else {
          config.triggerChange(undefined);
        }
      })
  }
}