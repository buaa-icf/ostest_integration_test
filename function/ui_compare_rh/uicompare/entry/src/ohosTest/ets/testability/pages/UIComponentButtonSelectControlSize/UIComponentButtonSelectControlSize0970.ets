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
struct UIComponentButtonSelectControlSize0970 {
  @State fontSize: Length = -1
  @State control: ControlSize = ControlSize.NORMAL
  @State text: string = "TTTTT"
  build() {
    Row() {
      Column() {
        Button("文本高度<small高度：font-size：20")
          .onClick(() => {
            this.fontSize = 20
          })
          .id("UIComponentButtonSelectControlSize0970_001")
        Button("点击切换controlSize类型")
          .onClick(() => {
            this.control = this.control === ControlSize.NORMAL ? ControlSize.SMALL : ControlSize.NORMAL
          })
          .id("UIComponentButtonSelectControlSize0970_002")
        Select(this.getOptions())
          .controlSize(this.control)
          .value(this.text)
          .font({ size: this.fontSize })
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