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
struct SelectSizeSample {
  timeHelper: TimeHelper = new TimeHelper('SelectSizeSample');
  @State sizeOptions: SizeOptions = { width: 10, height: 10 };
  selectOption: SelectOption[] = [];

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Row() {
          Button('change Size')
            .id('SelectChangeSize')
            .margin('5vp')
            .onClick(() => {
              this.sizeOptions = { width: 20, height: 20 };
            })
        }.width('100%')

        if (this.sizeOptions.width == 20 && this.timeHelper.printTime(true,1)) {
        }

        Select(this.selectOption)
          .size(this.sizeOptions)

        if (this.sizeOptions.height == 20 && this.timeHelper.printTime(false,1)) {
        }

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}