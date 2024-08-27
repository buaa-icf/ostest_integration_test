/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import { LengthMetrics } from '@ohos.arkui.node';
let linespacing = [LengthMetrics.px(undefined),LengthMetrics.px(-10)]
@Entry
@Component
struct UIComponentTextCommonLinespace011 {
  @State m: number = 0;
  build() {
    Column() {
      TextArea({
        placeholder: 'Enter your password... 123456'+ '\n'+'123456'+ '\n'+'123456',
      })
        .lineSpacing(linespacing[this.m])
        .width('80%')
        .height('50%')
        .margin(20)
        .fontSize(18)
        .fontColor(Color.Black)
      Button('linespacing')
        .onClick(()=>{
          this.m+=1
        })
        .id('linespacing1')
    }
  }
}

