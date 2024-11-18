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
struct UIComponentButtonSelectAttribute032 {
  build() {
    Row() {
      Column({ space: 20 }) {
        Text('默认值: 1, selected为0')
        Select([{
          value: '1',
        }, {
          value: '2',
        }, {
          value: '3',
        }, {
          value: '4',
        }, {
          value: '5',
        }])
          .width('100%')
          .id('UIComponentButtonSelectAttribute0320')
          .menuItemContentModifier(new MyMenuItemContentModifier())
          .selected(0)
          .value('1')
          .obscured([ObscuredReasons.PLACEHOLDER])

      }
      .width('200px')
      .height('80px')
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}

class MyMenuItemContentModifier implements ContentModifier<MenuItemConfiguration> {
  applyContent(): WrappedBuilder<[MenuItemConfiguration]> {
    return wrapBuilder(MenuItemBuilder);
  }
}

@Builder
function MenuItemBuilder(configuration: MenuItemConfiguration) {
  Row() {
    Image(configuration.icon).size({ width: 40, height: 40 })
    Text(configuration.value)
      .id(`UIComponentButtonSelectAttribute032${configuration.value}`)
      .fontColor(configuration.selected ? Color.Blue : Color.Black)
  }
  .width('100%')
  .backgroundColor(configuration.selected ? '#CBE6FD' : Color.White)
  .onClick(() => {
    configuration.triggerSelect(configuration.index, configuration.value.valueOf().toString());
  })
}
