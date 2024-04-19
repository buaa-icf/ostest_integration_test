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

import router from '@ohos.router';
import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct TextTextCase10CharSample {
  timeHelper: TimeHelper = new TimeHelper('TextTextCase10CharSample');
  @State textCase: TextCase = TextCase.LowerCase;
  @State textStr: string = '';

  aboutToAppear() {
    this.textStr = (router.getParams() as Record<string, Object>)['text'] as string;
  }

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Row() {
          Button('change TextCase')
            .id('TextChangeTextCase')
            .margin('5vp')
            .onClick(() => {
              this.textCase = TextCase.UpperCase;
            })
        }.width('100%')


        ForEach(ArrEntity.arr, (index: number) => {
          if (this.textCase != null && this.timeHelper.printTime(true)) {
          }
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          Text(this.textStr).textCase(this.textCase)
          if (this.textCase != null && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))


      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}