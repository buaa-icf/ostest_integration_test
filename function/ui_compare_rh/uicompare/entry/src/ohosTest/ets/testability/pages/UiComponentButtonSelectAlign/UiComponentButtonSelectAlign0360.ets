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
struct UiComponentButtonSelectAlign0360 {
  text: string = "TTTTT"
  build() {
    Row() {
      Column() {
        Select(this.getOptions())
          .value(this.text)
          .optionHeight('-50000vp')
          .id("UiComponentButtonSelectAlign0360_001")
      }
      .width('100%')
      .height('100%')
    }
  }

  getOptions(): Array<SelectOption> {
    const options: Array<SelectOption> = [];
    options.push({
      value: '早上好中午好晚上好',
    }, {
      value: '你好我的朋友上午好早上好中午好晚上好晚安',
    }, {
      value: '你好我的朋友上午好早上好中午好晚上好晚安上午好早上好中午好晚上好晚安',
    });
    for (let i = 4; i <= 30; i++) {
      options.push({ value: `item${i}` });
    }
    return options;
  }
}