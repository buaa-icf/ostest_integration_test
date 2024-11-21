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
import { MenuItemData } from './UIComponentPopupBoxSpecificationsPopup001'

@Entry
@Component
struct UIComponentPopupBoxSpecificationsPopup006 {

  @Builder
  customDialogComponent() {
    Column() {
      Text('原有配置的MenuItem')
      Row({ space: 50 }) {
        Menu() {
          MenuItem({ content: "菜单选项" })
        }
      }
      .border({
        width: 1
      })
      Text('modifier配置的MenuItem')
        .margin({top: 20})
      Row(){
        Menu() {
          MenuItem({ content: "菜单选项" })
            .selected(MenuItemData[2].selected)
            .selectIcon(MenuItemData[2].selectIcon)
            .contentFont(MenuItemData[2].contentFont)
            .labelFontColor(MenuItemData[2].labelFontColor)
            .labelFont(MenuItemData[2].labelFont)
            .contentFontColor(MenuItemData[2].contentFontColor)
        }
      }
      .border({
        width: 1
      })
    }
  }

  build() {
    Row() {
      Column() {
        Button('show_menuItem')
          .id('UIComponentPopupBoxSpecificationsPopup0060')
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
