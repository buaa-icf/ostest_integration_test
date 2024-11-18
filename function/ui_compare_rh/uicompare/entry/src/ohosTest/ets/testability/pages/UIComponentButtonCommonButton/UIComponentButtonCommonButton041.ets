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
import { SelectData } from './UIComponentButtonCommonButton040';

@Entry
@Component
struct UIComponentButtonCommonButton0410 {
  @State styleIndex: number = 0;

  build() {
    Row() {
      Column() {
        Text('原有配置的Select')
        Select([{
          value: 'abc',
        }, {
          value: 'def',
        }, {
          value: 'ghi',
        }])
          .id('UIComponentButtonCommonButton0410')

        Text('modifier配置的Select')
          .margin({ top: 10 })
        Select([{
          value: 'abc',
        }, {
          value: 'def',
        }, {
          value: 'ghi',
        }])
          .id('UIComponentButtonCommonButton0411')
          .optionWidth(SelectData[1].OptionWidth)
          .optionHeight(SelectData[1].OptionHeight)
          .menuAlign(SelectData[1].MenuAlign)
          .offset({
            x: SelectData[1].Offset ? SelectData[1].Offset.dx : undefined,
            y: SelectData[1].Offset ? SelectData[1].Offset.dy : undefined
          })
          .value(SelectData[1].Value)
          .selected(SelectData[1].Selected)
          .space(SelectData[1].Space)
          .arrowPosition(SelectData[1].ArrowPosition)
          .font(SelectData[1].Font)
          .fontColor(SelectData[1].FontColor)
          .selectedOptionBgColor(SelectData[1].SelectedOptionBgColor)
          .selectedOptionFont(SelectData[1].SelectedOptionFont)
          .selectedOptionFontColor(SelectData[1].SelectedOptionFontColor)
          .optionBgColor(SelectData[1].OptionBgColor)
          .optionFont(SelectData[1].OptionFont)
          .optionFontColor(SelectData[1].OptionFontColor)
      }
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Top)
    .justifyContent(FlexAlign.Center)
  }
}
