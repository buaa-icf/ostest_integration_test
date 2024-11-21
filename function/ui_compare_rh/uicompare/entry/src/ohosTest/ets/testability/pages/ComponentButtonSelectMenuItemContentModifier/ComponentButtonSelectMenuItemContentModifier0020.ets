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
struct ComponentButtonSelectMenuItemContentModifier0020 {
  @State option: Array<SelectOption> = [{value: 'aaa'}, {value: 'bbb'}]
  @State contentModifier: ContentModifier<MenuItemConfiguration> | undefined = new MyMenuItemContentModifier020();
  build() {
    Row() {
      Column() {
        Button('补充demo')
          .onClick(() => {
            this.option = this.getOptions()
          })
          .id("ComponentButtonSelectMenuItemContentModifier0020_001")
        Select([{
          value: 'undefined',
        }, {
          value: 'normal',
        }])
          .value('normal切换undefined')
          .id('ComponentButtonSelectMenuItemContentModifier0020_002')
          .menuItemContentModifier(new MyMenuItemContentModifier020())
          .selected(0)
          .onSelect((index:number, text?: string | undefined)=>{
            if (text) {
              this.contentModifier = text === 'undefined' ? undefined : new MyMenuItemContentModifier020()
            }
          })
        Select(this.option)
          .selected(1)
          .menuItemContentModifier(this.contentModifier)
          .id("ComponentButtonSelectMenuItemContentModifier0020_003")
      }
      .width('100%')
      .height('100%')
    }
  }

  getOptions(): Array<SelectOption> {
    const options:Array<SelectOption> = [];
    for (let i = 1; i <= 20; i++) {
      const value = i === 3 ? "" : (i === 4 ? '这是一个非常长的文本，可能会超过显示限制，需要截断或者滚动查看' : `item${i}`);
      options.push({ value: value });
    }
    return options;
  }
}

class MyMenuItemContentModifier020 implements ContentModifier<MenuItemConfiguration> {
  applyContent(): WrappedBuilder<[MenuItemConfiguration]> {
    return wrapBuilder(MyMenuItemBuilder020);
  }
}

@Builder
function MyMenuItemBuilder020(configuration: MenuItemConfiguration) {
  Row() {
    Image(configuration.icon).size({ width: 40, height: 40 })
    Text(configuration.value)
      .fontColor(configuration.selected ? Color.Red : Color.Black)
      .id(`ComponentButtonSelectMenuItemContentModifier0020_${configuration.value}`)
  }
  .width('100%')
  .backgroundColor(configuration.selected ? '#CBE6FD' : Color.White)
  .onClick(() => {
    configuration.triggerSelect(configuration.index, configuration.value.valueOf().toString())
  })
}