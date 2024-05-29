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
struct LocalObjectSample {
  timeHelper: TimeHelper = new TimeHelper('LocalObjectSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local testData: Object = 'default';
  @Local testData1: Object = 'default';
  @Local testData2: Object = 'default';
  @Local testData3: Object = 'default';
  @Local testData4: Object = 'default';
  @Local testData5: Object = 'default';
  @Local testData6: Object = 'default';
  @Local testData7: Object = 'default';
  @Local testData8: Object = 'default';
  @Local testData9: Object = 'default';
  @Local testData10: Object = 'default';
  @Local testData11: Object = 'default';
  @Local testData12: Object = 'default';
  @Local testData13: Object = 'default';
  @Local testData14: Object = 'default';
  @Local testData15: Object = 'default';
  @Local testData16: Object = 'default';
  @Local testData17: Object = 'default';
  @Local testData18: Object = 'default';
  @Local testData19: Object = 'default';
  @Local testData20: Object = 'default';
  @Local testData21: Object = 'default';
  @Local testData22: Object = 'default';
  @Local testData23: Object = 'default';
  @Local testData24: Object = 'default';
  @Local testData25: Object = 'default';
  @Local testData26: Object = 'default';
  @Local testData27: Object = 'default';
  @Local testData28: Object = 'default';
  @Local testData29: Object = 'default';
  @Local testData30: Object = 'default';
  @Local testData31: Object = 'default';
  @Local testData32: Object = 'default';
  @Local testData33: Object = 'default';
  @Local testData34: Object = 'default';
  @Local testData35: Object = 'default';
  @Local testData36: Object = 'default';
  @Local testData37: Object = 'default';
  @Local testData38: Object = 'default';
  @Local testData39: Object = 'default';
  @Local testData40: Object = 'default';
  @Local testData41: Object = 'default';
  @Local testData42: Object = 'default';
  @Local testData43: Object = 'default';
  @Local testData44: Object = 'default';
  @Local testData45: Object = 'default';
  @Local testData46: Object = 'default';
  @Local testData47: Object = 'default';
  @Local testData48: Object = 'default';
  @Local testData49: Object = 'default';
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData = index
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
        Text('LocalObjectSample')
          .fontSize('25')
          .textAlign(TextAlign.Center)
          .margin({ bottom: 50, top: 50 })
        Text(`parent value: ${this.testData.toString()}`)
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
              this.testData = index
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
          })
      }
    }
  }
}