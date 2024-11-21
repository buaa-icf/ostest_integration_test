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
struct UiComponentButtonSelectInterface0240 {
  @State text: string = ""
  @State index: number = 2

  build() {
    Row() {
      Column() {
        Select([{
          value: '111',
        }, {
          value: '222',
        }, {
          value: '333',
        }, {
          value: '444',
        }, {
          value: '555',
        }])
          .width('100%')
          .selected(this.index)
          .menuItemContentModifier(new InterfaceMenuItemContentModifier())
          .onSelect((index:number, text?: string | undefined)=>{
            console.info('Select:' + index)
            this.index = index;
            if(text){
              this.text = text;
            }
          })
          .id("UiComponentButtonSelectInterface0240_001")
        Row() {
          Text('Index: ' + this.index)
          Text('Value: ' + this.text)
        }
      }
      .width('100%')
      .height('100%')
    }
  }
}

class InterfaceMenuItemContentModifier implements ContentModifier<MenuItemConfiguration> {
  applyContent(): WrappedBuilder<[MenuItemConfiguration]> {
    return wrapBuilder(InterfaceMenuItemBuilder);
  }
}

@Builder
function InterfaceMenuItemBuilder(configuration: MenuItemConfiguration) {
  Row() {
    Image(configuration.icon).size({ width: 40, height: 40 })
    Text(configuration.value)
      .fontColor(configuration.selected ? Color.Blue : Color.Black)
      .id(`UiComponentButtonSelectInterface0240_${configuration.value}`)
  }
  .width('100%')
  .backgroundColor(configuration.selected ? '#CBE6FD' : Color.White)
  .onClick(() => {
    configuration.triggerSelect(configuration.index, configuration.value.valueOf().toString());
  })
}