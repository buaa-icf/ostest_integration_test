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
struct LocalSetSample {
  timeHelper: TimeHelper = new TimeHelper('LocalSetSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local testData: Set<number> = new Set();
  @Local testData1: Set<number> = new Set();
  @Local testData2: Set<number> = new Set();
  @Local testData3: Set<number> = new Set();
  @Local testData4: Set<number> = new Set();
  @Local testData5: Set<number> = new Set();
  @Local testData6: Set<number> = new Set();
  @Local testData7: Set<number> = new Set();
  @Local testData8: Set<number> = new Set();
  @Local testData9: Set<number> = new Set();
  @Local testData10: Set<number> = new Set();
  @Local testData11: Set<number> = new Set();
  @Local testData12: Set<number> = new Set();
  @Local testData13: Set<number> = new Set();
  @Local testData14: Set<number> = new Set();
  @Local testData15: Set<number> = new Set();
  @Local testData16: Set<number> = new Set();
  @Local testData17: Set<number> = new Set();
  @Local testData18: Set<number> = new Set();
  @Local testData19: Set<number> = new Set();
  @Local testData20: Set<number> = new Set();
  @Local testData21: Set<number> = new Set();
  @Local testData22: Set<number> = new Set();
  @Local testData23: Set<number> = new Set();
  @Local testData24: Set<number> = new Set();
  @Local testData25: Set<number> = new Set();
  @Local testData26: Set<number> = new Set();
  @Local testData27: Set<number> = new Set();
  @Local testData28: Set<number> = new Set();
  @Local testData29: Set<number> = new Set();
  @Local testData30: Set<number> = new Set();
  @Local testData31: Set<number> = new Set();
  @Local testData32: Set<number> = new Set();
  @Local testData33: Set<number> = new Set();
  @Local testData34: Set<number> = new Set();
  @Local testData35: Set<number> = new Set();
  @Local testData36: Set<number> = new Set();
  @Local testData37: Set<number> = new Set();
  @Local testData38: Set<number> = new Set();
  @Local testData39: Set<number> = new Set();
  @Local testData40: Set<number> = new Set();
  @Local testData41: Set<number> = new Set();
  @Local testData42: Set<number> = new Set();
  @Local testData43: Set<number> = new Set();
  @Local testData44: Set<number> = new Set();
  @Local testData45: Set<number> = new Set();
  @Local testData46: Set<number> = new Set();
  @Local testData47: Set<number> = new Set();
  @Local testData48: Set<number> = new Set();
  @Local testData49: Set<number> = new Set();
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.add(index)
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.testData.clear()
    this.testData.add(500)
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.testData.values()
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Row() {
      Column({ space: 10 }) {
        Text('LocalSetSample')
          .fontSize('25')
          .textAlign(TextAlign.Center)
          .margin({ bottom: 50, top: 50 })
        Text(`parent value: ${Array.from(this.testData.values()).toString()}`)
        Button('parent click: 读@Local的耗时')
          .id('getStateTimeTaken')
          .onClick(() => {
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
            for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
              let tmp = this.testData.values()
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
          })
        Button('parent click: 写@Local的耗时')
          .id('setStateTimeTaken')
          .onClick(() => {
            this.isTypeState = !this.isTypeState
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
            for (let index = ArrEntity.STATE_LOOP; index > 0 ; index--) {
              this.testData.add(index)
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
          })
      }
    }
  }
}