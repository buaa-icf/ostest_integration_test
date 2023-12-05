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
struct SelectSpaceSample {
  timeHelper: TimeHelper = new TimeHelper('SelectSpaceSample');
  @State selectSpace: number = 8;
  selectOption: SelectOption[] = [{ value: 'aaa', icon: $r('app.media.app_icon') },
    { value: 'bbb', icon: $r('app.media.app_icon') },
    { value: 'ccc', icon: $r('app.media.app_icon') },
    { value: 'ddd', icon: $r('app.media.app_icon') },
    { value: 'eee', icon: $r('app.media.app_icon') }];

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Row() {
          Button('change Space 8 to 200')
            .id('SelectChangeSpace')
            .margin('5vp')
            .onClick(() => {
              this.selectSpace = 200;
            })
        }.width('100%')

        if (this.selectSpace == 200 && this.timeHelper.printTime(true,1)) {
        }

        Select(this.selectOption)
          .space(this.selectSpace)

        if (this.selectSpace == 200 && this.timeHelper.printTime(false,1)) {
        }

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}