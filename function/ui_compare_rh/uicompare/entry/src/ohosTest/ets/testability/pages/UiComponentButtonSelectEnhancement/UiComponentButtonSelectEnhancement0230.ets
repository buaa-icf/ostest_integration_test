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
struct UiComponentButtonSelectEnhancement0230 {
  @State optionWidth: Dimension = '60vp'

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
          .keyboardShortcut(FunctionKey.DPAD_UP, [])
          .menuItemContentModifier(new MenuItemContentModifier0230())
          .onSelect((index: number, text?: string)=>{
            this.optionWidth = text as VP
          })
      }
      .width('100%')
      .height('100%')
    }
  }
}

class MenuItemContentModifier0230 implements ContentModifier<MenuItemConfiguration> {
  applyContent(): WrappedBuilder<[MenuItemConfiguration]> {
    return wrapBuilder(MyMenuItemBuilder0230);
  }
}

@Builder
function MyMenuItemBuilder0230(configuration: MenuItemConfiguration) {
  Row() {
    Image(configuration.icon).size({ width: 40, height: 40 })
    Text(configuration.value)
      .fontColor(configuration.selected ? Color.Blue : Color.Black)
  }
  .keyboardShortcut(FunctionKey.F1, [])
  .width('100%')
  .backgroundColor(configuration.selected ? '#CBE6FD' : Color.White)
  .onClick(() => {
    configuration.triggerSelect(configuration.index, configuration.value.valueOf().toString());
  })
}