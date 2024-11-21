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
struct UIComponentButtonCommonButton0400 {
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
        .id('UIComponentButtonCommonButton0400')

        Text('modifier配置的Select')
          .margin({ top: 10 })
        Select([{
          value: 'abc',
        }, {
          value: 'def',
        }, {
          value: 'ghi',
        }])
          .id('UIComponentButtonCommonButton0401')
          .optionWidth(SelectData[0].OptionWidth)
          .optionHeight(SelectData[0].OptionHeight)
          .menuAlign(SelectData[0].MenuAlign)
          .offset({
            x: SelectData[0].Offset ? SelectData[0].Offset.dx : undefined,
            y: SelectData[0].Offset ? SelectData[0].Offset.dy : undefined
          })
          .value(SelectData[0].Value)
          .selected(SelectData[0].Selected)
          .space(SelectData[0].Space)
          .arrowPosition(SelectData[0].ArrowPosition)
          .font(SelectData[0].Font)
          .fontColor(SelectData[0].FontColor)
          .selectedOptionBgColor(SelectData[0].SelectedOptionBgColor)
          .selectedOptionFont(SelectData[0].SelectedOptionFont)
          .selectedOptionFontColor(SelectData[0].SelectedOptionFontColor)
          .optionBgColor(SelectData[0].OptionBgColor)
          .optionFont(SelectData[0].OptionFont)
          .optionFontColor(SelectData[0].OptionFontColor)
      }
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Top)
    .justifyContent(FlexAlign.Center)
  }
}

export interface SelectDataAttributes {
  OptionWidth?: Dimension | OptionWidthMode | undefined
  OptionHeight?: Dimension | undefined
  MenuAlign?: MenuAlignType | undefined
  Offset?: Offset | undefined
  Value?: ResourceStr | undefined
  Selected?: number | Resource | undefined
  Space?:Length | undefined
  ArrowPosition?: ArrowPosition | undefined
  Font?: Font | undefined
  FontColor?: ResourceColor | undefined
  SelectedOptionBgColor?: ResourceColor | undefined
  SelectedOptionFont?: Font | undefined
  SelectedOptionFontColor?:ResourceColor | undefined
  OptionBgColor?:ResourceColor | undefined
  OptionFont?: Font | undefined
  OptionFontColor?: ResourceColor | undefined
}

export const SelectData: SelectDataAttributes[] = [
  {
    OptionWidth : 20,
    OptionHeight : 30,
    MenuAlign : MenuAlignType.START,
    Offset : { dx: 30, dy: 30 },
    Value : "bbb",
    Selected : 1,
    Space : 10,
    ArrowPosition : ArrowPosition.END,
    Font : { size: 20, style: FontStyle.Italic, family: 'HarmonyHei', weight: 400 },
    FontColor : Color.Red,
    SelectedOptionBgColor : Color.Red,
    SelectedOptionFont : { size: 20, style: FontStyle.Italic, family: 'HarmonyHei', weight: 400 },
    SelectedOptionFontColor : Color.Pink,
    OptionBgColor : Color.Orange,
    OptionFont : { size: 30, style: FontStyle.Italic, family: 'HarmonyHei', weight: 500 },
    OptionFontColor : Color.Gray
  },
  {
    OptionWidth : '20px',
    OptionHeight : '30px',
    MenuAlign : MenuAlignType.CENTER,
    Offset : { dx: '30px', dy: '30px' },
    Value : "ccc",
    Selected : -1,
    Space : '10px',
    ArrowPosition : ArrowPosition.START,
    Font : { size: '20vp', style: FontStyle.Italic, family: '', weight: '500' },
    FontColor : $r('app.color.Code_color'),
    SelectedOptionBgColor : $r('app.color.tab_text_activated'),
    SelectedOptionFont : { size: '20px', style: 10, weight: 'normal' },
    SelectedOptionFontColor : '#aabbccdd',
    OptionBgColor : $r('app.color.category_background'),
    OptionFont : { size: '24px', style: 10, weight: 'normal' },
    OptionFontColor : $r('app.color.search_placeholder')
  },
  {
    OptionWidth : undefined,
    OptionHeight : undefined,
    MenuAlign : MenuAlignType.CENTER,
    Offset : undefined,
    Value : "",
    Selected : -1,
    Space : '10px',
    ArrowPosition : ArrowPosition.START,
    Font : { size: '20vp', style: FontStyle.Italic, family: '', weight: '500' },
    FontColor : $r('app.color.Code_color'),
    SelectedOptionBgColor : $r('app.color.tab_text_activated'),
    SelectedOptionFont : { size: '20px', style: 10, weight: 'normal' },
    SelectedOptionFontColor : '#aabbccdd',
    OptionBgColor : $r('app.color.category_background'),
    OptionFont : { size: '24px', style: 10, weight: 'normal' },
    OptionFontColor : $r('app.color.search_placeholder')
  }
]
