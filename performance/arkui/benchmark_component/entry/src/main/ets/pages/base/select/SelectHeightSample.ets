/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct SelectHeightSample {
  timeHelper: TimeHelper = new TimeHelper('SelectHeightSample');
  @State selectHeight: number = 100;
  selectOption: SelectOption[] = [];

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Row() {
          Button('change Height 100 to 200')
            .id('SelectChangeHeight')
            .margin('5vp')
            .onClick(() => {
              this.selectHeight = 200;
            })
        }.width('100%')

        if (this.selectHeight == 200 && this.timeHelper.printTime(true,1)) {
        }

        Select(this.selectOption)
          .height(this.selectHeight)

        if (this.selectHeight == 200 && this.timeHelper.printTime(false,1)) {
        }

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}