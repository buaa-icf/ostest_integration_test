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

import window from '@ohos.window';
import common from '@ohos.app.ability.common';

@Entry
@Component
struct UiComponentButtonSelectEnhancement0220 {
  @State optionWidth: Dimension = '50vp'
  @State isChange: boolean = false

  build() {
    Row() {
      Column() {
        Select([{
          value: '200vp',
        }, {
          value: '250vp',
        }, {
          value: '300vp',
        }, {
          value: '350vp',
        }, {
          value: '400vp',
        }])
          .value('切换菜单项宽度')
          .optionWidth(this.optionWidth)
          .keyboardShortcut(FunctionKey.F1, [])
          .menuItemContentModifier(new MenuItemContentModifier0220())
          .onSelect((index: number, text?: string)=>{
            this.optionWidth = text as VP
          })
      }
      .width('50%')
      Column() {
        Button("横竖切换")
          .onClick(() => {
            this.changeOrientation()
          })
          .keyboardShortcut(FunctionKey.F2, [])
      }
      .width('50%')
    }
  }

  changeOrientation() {
    let context = getContext(this) as common.UIAbilityContext;
    window.getLastWindow(context)
      .then((lastWindow) => {
        this.isChange = !this.isChange
        lastWindow.setPreferredOrientation(this.isChange ? window.Orientation.LANDSCAPE : window.Orientation.PORTRAIT)
      })
  }
}

class MenuItemContentModifier0220 implements ContentModifier<MenuItemConfiguration> {
  applyContent(): WrappedBuilder<[MenuItemConfiguration]> {
    return wrapBuilder(MyMenuItemBuilder0220);
  }
}

@Builder
function MyMenuItemBuilder0220(configuration: MenuItemConfiguration) {
  Row() {
    Image(configuration.icon).size({ width: 40, height: 40 })
    Text(configuration.value)
      .fontColor(configuration.selected ? Color.Blue : Color.Black)
  }
  .width('100%')
  .backgroundColor(configuration.selected ? '#CBE6FD' : Color.White)
  .onClick(() => {
    configuration.triggerSelect(configuration.index, configuration.value.valueOf().toString());
  })
  .tabIndex(1)
}