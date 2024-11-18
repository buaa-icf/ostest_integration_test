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

import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct UIComponentPopupBoxSpecificationsPopup001 {

  @Builder
  customDialogComponent() {
    Column() {
      Text('原有配置的Menu')
      Row({ space: 50 }) {
        Menu() {
          MenuItem({ content: "菜单选项1" })
          MenuItem({ content: "菜单选项2" })
        }
      }
      .border({
        width: 1
      })

      Text('modifier配置的Menu')
        .margin({top: 20})
      Row(){
        Menu() {
          MenuItem({ content: "菜单选项1" })
          MenuItem({ content: "菜单选项2" })
        }
        .font(MenuData[0].font)
        .fontColor(MenuData[0].fontColor)
        .fontSize(MenuData[0].fontSize)
        .radius(MenuData[0].radius)
      }
      .border({
        width: 1
      })
    }
  }

  build() {
    Row() {
      Column() {
        Button('show_menu')
          .id('UIComponentPopupBoxSpecificationsPopup0010')
          .onClick(() => {
            promptAction.openCustomDialog({
              builder: () => {
                this.customDialogComponent();
              },
              onWillDismiss: (dismissDialogAction: DismissDialogAction) => {
                if (dismissDialogAction.reason == DismissReason.PRESS_BACK) {
                  dismissDialogAction.dismiss();
                }
                if (dismissDialogAction.reason == DismissReason.TOUCH_OUTSIDE) {
                  dismissDialogAction.dismiss();
                }
              },
            })
          })
      }
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}

export interface MenuItemAttributes {
  selected?: boolean
  selectIcon?: boolean | ResourceStr
  contentFont?: Font
  contentFontColor?: ResourceColor
  labelFont?: Font
  labelFontColor?: ResourceColor
}

export const MenuItemData: MenuItemAttributes[] = [
  {
    selected: true,
    selectIcon: true,
    contentFont: {
      size: 20,
      weight: 8,
      family: "HarmonyOS Sans",
      style: FontStyle.Normal
    },
    labelFontColor: Color.Red,
    labelFont: {
      size: $r('app.string.20string'),
      weight: 8,
      family: $r("app.string.button_font_sans"),
      style: FontStyle.Italic
    },
    contentFontColor: Color.Pink
  },
  {
    selected: false,
    selectIcon: true,
    contentFont: {
      size: 20,
      weight: 10,
      family: "HarmonyOS Sans",
      style: FontStyle.Italic
    },
    labelFontColor: Color.Brown,
    labelFont: {
      size: $r('app.string.20string'),
      weight: 8,
      family: $r("app.string.button_font_sans"),
      style: FontStyle.Italic
    },
    contentFontColor: Color.Orange
  },
  {
    selected: false,
    selectIcon: false,
    contentFont: {
      size: 20,
      weight: 10,
      family: "HarmonyOS Sans",
      style: FontStyle.Normal
    },
    labelFontColor: Color.Blue,
    labelFont: {
      size: $r('app.string.20string'),
      weight: 8,
      family: $r("app.string.button_font_sans"),
      style: FontStyle.Normal
    },
    contentFontColor: "0xff0000"
  }

]

export interface MenuAttributes {
  font?: Font
  fontColor?: ResourceColor | null | undefined
  radius?: Dimension | BorderRadiuses
  fontSize?: Length
}

export const MenuData: MenuAttributes[] = [
  {
    font: {
      size: 10,
      weight: 5,
      family: "HarmonyOS Sans",
      style: FontStyle.Normal
    },
    radius: {
      topLeft: 10,
      topRight: 15,
      bottomLeft: 20,
      bottomRight: 25
    },
    fontColor: Color.Brown,
    fontSize: 10
  },
  {
    font: {
      size: 10,
      weight: 5,
      family: "HarmonyOS Sans",
      style: FontStyle.Normal
    },
    radius: {
      topLeft: 10,
      topRight: 0,
      bottomLeft: 0,
      bottomRight: 30
    },
    fontColor: Color.Red,
    fontSize: 20
  },
  {
    font: {
      size: 10,
      weight: 5,
      family: "HarmonyOS Sans",
      style: FontStyle.Italic
    },
    radius: {
      topLeft: 10,
      topRight: 0,
      bottomLeft: 0,
      bottomRight: 30
    },
    fontColor: Color.Pink,
    fontSize: "20"
  }
]

export interface PanelAttributes {
  type?: PanelType
  mode?: PanelMode
  dragBar?: boolean
  customHeight?: (Dimension | PanelHeight)
  fullHeight?: (string | number)
  halfHeight?: (string | number)
  miniHeight?: (string | number)
  show?: boolean
  backgroundMask?: ResourceColor | null
  showCloseIcon?: boolean
}

export const PanelData: PanelAttributes[] = [
  {
    type: PanelType.Minibar,
    mode: PanelMode.Mini,
    miniHeight: 160,
    dragBar: true,
    showCloseIcon: true,
    customHeight: PanelHeight.WRAP_CONTENT,
    backgroundMask: 'rgb(255, 100, 255)',
    show: true,
    fullHeight: 240,
    halfHeight: 120
  },
  {
    type: PanelType.Minibar,
    mode: PanelMode.Mini,
    miniHeight: 160,
    dragBar: true,
    showCloseIcon: true,
    backgroundMask: null,
    show: true,
    fullHeight: 240,
    halfHeight: 120
  },
  {
    type: PanelType.Temporary,
    mode: PanelMode.Mini,
    miniHeight: 160,
    dragBar: true,
    showCloseIcon: true,
    backgroundMask: 'rgb(255, 200, 155)',
    show: true,
    fullHeight: 240,
    halfHeight: 120
  }
]

