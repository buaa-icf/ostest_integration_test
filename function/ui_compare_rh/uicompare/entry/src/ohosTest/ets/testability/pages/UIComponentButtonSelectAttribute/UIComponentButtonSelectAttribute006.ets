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
struct UIComponentButtonSelectAttribute006 {
  build() {
    Row() {
      Column({ space: 20 }) {
        Text("默认值: 'HarmonyOS Sans', selected为0")
        Select([{
          value: 'abc',
        }, {
          value: 'def',
        }, {
          value: 'ghi',
        }])
          .width('100%')
          .id('UIComponentButtonSelectAttribute0060')
          .font({
            size: '5'
          })
          .menuItemContentModifier(new FontSizeContentModifier(0))
          .value(getContext().resourceManager.getStringSync($r("app.string.popup_font_family")))
          .selected(0)

        Text("默认值: 'HarmonyOS Sans'")
        Select([{
          value: 'abc',
        }, {
          value: 'def',
        }, {
          value: 'ghi',
        }])
          .width('100%')
          .id('UIComponentButtonSelectAttribute0061')
          .font({
            size: '0'
          })
          .menuItemContentModifier(new FontSizeContentModifier(1))
          .selected(0)
          .value(getContext().resourceManager.getStringSync($r("app.string.popup_font_family")))
          .font({
            size: getContext().resourceManager.getNumber($r("app.integer.negative30"))
          })

        Text("默认值: 'HarmonyOS Sans'")
        Select([{
          value: 'abc',
        }, {
          value: 'def',
        }, {
          value: 'ghi',
        }])
          .width('100%')
          .id('UIComponentButtonSelectAttribute0062')
          .font({
            size: '-5'
          })
          .menuItemContentModifier(new FontSizeContentModifier(2))
          .selected(0)
          .value(getContext().resourceManager.getStringSync($r("app.string.popup_font_family")))
          .font({
            size: getContext().resourceManager.getNumber($r("app.integer.negative30"))
          })
      }
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}

class FontSizeContentModifier implements ContentModifier<MenuItemConfiguration> {
  selectNum: number = 0;

  constructor(selectNumber: number) {
    this.selectNum = selectNumber;
  }

  applyContent(): WrappedBuilder<[MenuItemConfiguration]> {
    return wrapBuilder(FontSizeMenuItemBuilder);
  }
}

@Builder
function FontSizeMenuItemBuilder(configuration: MenuItemConfiguration) {
  Row() {
    Image(configuration.icon).size({ width: 40, height: 40 })
    Text(configuration.value)
      .id(`UIComponentButtonSelectAttribute006${(configuration.contentModifier as FontSizeContentModifier).selectNum}_${configuration.value}`)
      .fontColor(configuration.selected ? Color.Blue : Color.Black)
      .fontSize(getMenuItemFontSize((configuration.contentModifier as FontSizeContentModifier).selectNum))
  }
  .width('100%')
  .backgroundColor(configuration.selected ? '#CBE6FD' : Color.White)
  .onClick(() => {
    configuration.triggerSelect(configuration.index, configuration.value.valueOf().toString());
  })
}

function getMenuItemFontSize(itemIndex: number) {
  switch (itemIndex) {
    case 0:
      return '5';
    case 1:
      return '0';
    case 2:
      return '-5';
    default:
      return '0';
  }
}
