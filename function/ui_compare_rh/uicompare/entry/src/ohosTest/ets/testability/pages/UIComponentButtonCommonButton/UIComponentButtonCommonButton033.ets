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
struct UIComponentButtonCommonButton0330 {
  @State styleIndex: number = 0;

  build() {
    Row() {
      Column() {
        Text('Radio')
        Radio({ value: 'Radio1', group: 'radioGroup' })
          .height(50)
          .width(50)
          .id('UIComponentButtonCommonButton0330')

        Text('Radio')
          .margin({ top: 10 })
        Radio({ value: 'Radio2', group: 'radioGroup' })
          .height(50)
          .width(50)
          .checked(RadioData[0].Checked)
          .id('UIComponentButtonCommonButton0331')
          .radioStyle(RadioData[0].RadioStyle)
      }
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}

export interface RadioAttributes {
  RadioStyle?: RadioStyle
  Checked?: boolean
}

export const RadioData: RadioAttributes[] = [
  {
    RadioStyle: {
      checkedBackgroundColor: Color.Black,
      uncheckedBorderColor: Color.Green,
      indicatorColor: Color.Yellow
    },
    Checked: true
  },
  {
    RadioStyle: { checkedBackgroundColor: '#ffffff', uncheckedBorderColor: '#ff980d0d', indicatorColor: '#ff2f6db7' },
    Checked: true
  },
  {
    RadioStyle: { checkedBackgroundColor: undefined, uncheckedBorderColor: undefined, indicatorColor: undefined },
    Checked: false
  },
  {
    RadioStyle: { checkedBackgroundColor: 0xff0033, uncheckedBorderColor: 0xff0033, indicatorColor: 0xff0033 },
    Checked: false
  }
]
