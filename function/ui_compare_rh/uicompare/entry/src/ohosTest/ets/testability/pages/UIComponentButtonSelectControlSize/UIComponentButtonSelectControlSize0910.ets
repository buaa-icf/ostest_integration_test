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
struct UIComponentButtonSelectControlSize0910 {
  @State control: ControlSize = ControlSize.NORMAL
  @State text: string = ""
  build() {
    Row() {
      Column() {
        Button("文本超长”你好我的朋友上午好早上好中午好晚上好晚安你好我的朋友上午好早上好中午好晚上好晚安”")
          .onClick(() => {
            this.text = '你好我的朋友上午好早上好中午好晚上好晚安你好我的朋友上午好早上好中午好晚上好晚安'
          })
          .id("UIComponentButtonSelectControlSize0910_001")
        Button("点击切换controlSize类型")
          .onClick(() => {
            this.control = this.control === ControlSize.NORMAL ? ControlSize.SMALL : ControlSize.NORMAL
          })
          .id("UIComponentButtonSelectControlSize0910_002")
        Select(this.getOptions())
          .controlSize(this.control)
          .value(this.text)
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