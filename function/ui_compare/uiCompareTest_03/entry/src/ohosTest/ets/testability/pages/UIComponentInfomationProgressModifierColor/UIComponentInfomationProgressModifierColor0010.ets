/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

@Entry
@Component
struct UIComponentInfomationProgressModifierColor0010 {
  @State name: string = 'UIComponentInfomationProgressModifierColor0010';
  @State message: string = 'message';
  private color1: LinearGradient =
    new LinearGradient([{ color: "#65EEC9A3", offset: 0 }, { color: "#FFEF629F", offset: 1 }]);
  private color2: LinearGradient =
    new LinearGradient([{ color: "#FF67F9D4", offset: 0 }, { color: "#FFFF9554", offset: 1 }]);
  @State color: LinearGradient = this.color1;
  private flag = 1;

  build() {
    Column() {
      Row() {
        Column() {

          Progress({ value: 70, total: 100, type: ProgressType.Ring })
            .width(100).style({ strokeWidth: 20 })
            .color(this.color)

          Button('切换渐变色')
            .id(this.name + '_01')
            .onClick(() => {
              if (this.flag == 1) {
                this.color = this.color2;
                this.flag = 2;
              } else {
                this.color = this.color1;
                this.flag = 1;
              }
            })
            .margin({top: 10})

        }.margin({ right: 20 })
      }
    }.margin({
      left: 30,
      top: 50
    })
  }
}
