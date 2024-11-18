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
struct UIComponentButtonRadioCustonmizing007 {
  @State textTip: string = '';

  build() {
    Row() {
      Column({ space: 50 }) {
        Text(this.textTip)
        Row() {
          Radio({ value: 'Radio1', group: 'radioGroup' })
            .contentModifier(new FourRadioStyle(1))
            .checked(false)
            .width(300)
            .height(100)
            .onChange(() => {
              this.textTip = 'Radio1 回调触发';
            })
        }

        Row() {
          Radio({ value: 'Radio2', group: 'radioGroup' })
            .contentModifier(new FourRadioStyle(2))
            .checked(false)
            .width(300)
            .height(100)
            .onChange(() => {
              this.textTip = 'Radio2 回调触发';
            })
        }

        Row() {
          Radio({ value: 'Radio3', group: 'radioGroup' })
            .checked(false)
            .width(300)
            .height(60)
            .contentModifier(new FourRadioStyle(3))
            .onChange(() => {
              this.textTip = 'Radio3 回调触发';
            })
        }

        Row() {
          Radio({ value: 'Radio4', group: 'radioGroup' })
            .checked(false)
            .width(300)
            .height(60)
            .contentModifier(new FourRadioStyle(4))
            .onChange(() => {
              this.textTip = 'Radio4 回调触发';
            })
        }

        Row() {
          Radio({ value: 'Radio5', group: 'radioGroup' })
            .checked(false)
            .width(300)
            .height(60)
            .contentModifier(new FourRadioStyle(5))
            .onChange(() => {
              this.textTip = 'Radio5 回调触发';
            })
        }

        Row() {
          Radio({ value: 'Radio6', group: 'radioGroup' })
            .checked(false)
            .width(300)
            .height(60)
            .contentModifier(new FourRadioStyle(6))
            .onChange(() => {
              this.textTip = 'Radio6 回调触发';
              setTimeout(() => {
                this.textTip = '';
              }, 1000)
            })
        }
      }
      .width('200px')
      .height('80px')
    }
  }
}

class FourRadioStyle implements ContentModifier<RadioConfiguration> {
  type: number = 0;

  constructor(numberType: number) {
    this.type = numberType;
  }

  applyContent(): WrappedBuilder<[RadioConfiguration]> {
    return wrapBuilder(buildFourStyleRadio);
  }
}

@Builder
function buildFourStyleRadio(config: RadioConfiguration) {
  Row({ space: 30 }) {
    Circle({ width: 50, height: 50 })
      .stroke(config.checked ? Color.Red : Color.Black)
      .fill(Color.White)
      .strokeWidth(5)
      .id(`UIComponentButtonRadioCustonmizing007${(config.contentModifier as FourRadioStyle).type}0`)
      .onClick(() => {
        console.log('Circle click: ', config.triggerChange(undefined));
      })
    Button(config.checked ? 'Hi' : 'Hello')
      .width(100)
      .borderRadius(config.checked ? 10 : 0)
      .type(ButtonType.Normal)
      .backgroundColor('#2787D9')
      .id(`UIComponentButtonRadioCustonmizing007${(config.contentModifier as FourRadioStyle).type}1`)
      .onClick(() => {
        console.log('Button click: ', config.triggerChange(!config.checked));
      })
  }
}