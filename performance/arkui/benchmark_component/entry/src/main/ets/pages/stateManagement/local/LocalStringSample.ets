/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
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

import { ArrEntity } from '../../../entity/ArrEntity';
import { TimeHelper } from '../../../util/TimeHelper'
import { StateConstants, StateModel } from '../StateModel';

@Entry
@ComponentV2
struct LocalStringSample {
  timeHelper: TimeHelper = new TimeHelper('LocalStringSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local testData: string = "hi";
  @Local testData1: string = "hi";
  @Local testData2: string = "hi";
  @Local testData3: string = "hi";
  @Local testData4: string = "hi";
  @Local testData5: string = "hi";
  @Local testData6: string = "hi";
  @Local testData7: string = "hi";
  @Local testData8: string = "hi";
  @Local testData9: string = "hi";
  @Local testData10: string = "hi";
  @Local testData11: string = "hi";
  @Local testData12: string = "hi";
  @Local testData13: string = "hi";
  @Local testData14: string = "hi";
  @Local testData15: string = "hi";
  @Local testData16: string = "hi";
  @Local testData17: string = "hi";
  @Local testData18: string = "hi";
  @Local testData19: string = "hi";
  @Local testData20: string = "hi";
  @Local testData21: string = "hi";
  @Local testData22: string = "hi";
  @Local testData23: string = "hi";
  @Local testData24: string = "hi";
  @Local testData25: string = "hi";
  @Local testData26: string = "hi";
  @Local testData27: string = "hi";
  @Local testData28: string = "hi";
  @Local testData29: string = "hi";
  @Local testData30: string = "hi";
  @Local testData31: string = "hi";
  @Local testData32: string = "hi";
  @Local testData33: string = "hi";
  @Local testData34: string = "hi";
  @Local testData35: string = "hi";
  @Local testData36: string = "hi";
  @Local testData37: string = "hi";
  @Local testData38: string = "hi";
  @Local testData39: string = "hi";
  @Local testData40: string = "hi";
  @Local testData41: string = "hi";
  @Local testData42: string = "hi";
  @Local testData43: string = "hi";
  @Local testData44: string = "hi";
  @Local testData45: string = "hi";
  @Local testData46: string = "hi";
  @Local testData47: string = "hi";
  @Local testData48: string = "hi";
  @Local testData49: string = "hi";
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData = `not bind UI:世界，你好` + (index + 1)
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.testData
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Row() {
      Column({ space: 10 }) {
        Text('LocalStringSample')
          .fontSize('25')
          .textAlign(TextAlign.Center)
          .margin({ bottom: 50, top: 50 })
        Text(`parent value: ${this.testData}`)
        Button('parent click: 读@Local的耗时')
          .id('getStateTimeTaken')
          .onClick(() => {
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
            for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
              let tmp = this.testData
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
          })
        Button('parent click: 写@Local的耗时')
          .id('setStateTimeTaken')
          .onClick(() => {
            this.isTypeState = !this.isTypeState
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
            for (let index = ArrEntity.STATE_LOOP; index > 0 ; index--) {
              this.testData = `not bind UI:世界，你好` + (index + 1)
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
          })
      }
    }
  }
}