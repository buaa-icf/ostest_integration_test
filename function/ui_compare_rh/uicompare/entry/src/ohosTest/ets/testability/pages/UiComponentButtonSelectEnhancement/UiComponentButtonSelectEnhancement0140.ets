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
struct UiComponentButtonSelectEnhancement0140 {
  text: string = "测试较长文本早餐午餐晚餐"
  build() {
    Row() {
      Column() {
        Select([{ value: '较短文本' }])
          .value(this.text)
          .menuItemContentModifier(new MyMenuItemContentModifierEnhancement0140())
          .id('UiComponentButtonSelectEnhancement0140_001')
          .borderImage({
            source: {
              direction: GradientDirection.RightBottom,
              colors: [[Color.Green, 0.0], [Color.Pink, 0.3], [Color.Orange, 1.0]]
            },
            slice: { top: 10, bottom: 10, left: 10, right: 10 },
            width: { top: "10px", bottom: "10px", left: "10px", right: "10px" },
            repeat: RepeatMode.Stretch,
            fill: false
          })
          .onSelect(() => {

          })
      }
      .width('100%')
      .height('100%')
    }
  }
}

class MyMenuItemContentModifierEnhancement0140 implements ContentModifier<MenuItemConfiguration> {
  applyContent(): WrappedBuilder<[MenuItemConfiguration]> {
    return wrapBuilder(MyMenuItemBuilderEnhancement0140);
  }
}

@Builder
function MyMenuItemBuilderEnhancement0140(configuration: MenuItemConfiguration) {
  Row() {
    Image(configuration.icon).size({ width: 40, height: 40 })
    Text(configuration.value)
      .fontColor(configuration.selected ? Color.Blue : Color.Black)
      .id(`UiComponentButtonSelectEnhancement0140_${configuration.index}`)
  }
  .width('100%')
  .backgroundColor(configuration.selected ? '#CBE6FD' : Color.White)
  .onClick(() => {
    configuration.triggerSelect(configuration.index, configuration.value.valueOf().toString());
  })
}