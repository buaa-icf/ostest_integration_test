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
import { StateUtils } from '../StateUtils';

const timeHelper: TimeHelper = new TimeHelper('ProviderDateSample');
let isType: boolean = true

@ComponentV2
struct ChildProviderDateSample {
  @Consumer() testData: Date = new Date()

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData.toTimeString()}` :
        `child value: ${this.testData.toTimeString()}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderDateSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider() testData: Date = new Date();
  @Provider() testData1: Date = new Date()
  @Provider() testData2: Date = new Date()
  @Provider() testData3: Date = new Date()
  @Provider() testData4: Date = new Date()
  @Provider() testData5: Date = new Date()
  @Provider() testData6: Date = new Date()
  @Provider() testData7: Date = new Date()
  @Provider() testData8: Date = new Date()
  @Provider() testData9: Date = new Date()
  @Provider() testData10: Date = new Date()
  @Provider() testData11: Date = new Date()
  @Provider() testData12: Date = new Date()
  @Provider() testData13: Date = new Date()
  @Provider() testData14: Date = new Date()
  @Provider() testData15: Date = new Date()
  @Provider() testData16: Date = new Date()
  @Provider() testData17: Date = new Date()
  @Provider() testData18: Date = new Date()
  @Provider() testData19: Date = new Date()
  @Provider() testData20: Date = new Date()
  @Provider() testData21: Date = new Date()
  @Provider() testData22: Date = new Date()
  @Provider() testData23: Date = new Date()
  @Provider() testData24: Date = new Date()
  @Provider() testData25: Date = new Date()
  @Provider() testData26: Date = new Date()
  @Provider() testData27: Date = new Date()
  @Provider() testData28: Date = new Date()
  @Provider() testData29: Date = new Date()
  @Provider() testData30: Date = new Date()
  @Provider() testData31: Date = new Date()
  @Provider() testData32: Date = new Date()
  @Provider() testData33: Date = new Date()
  @Provider() testData34: Date = new Date()
  @Provider() testData35: Date = new Date()
  @Provider() testData36: Date = new Date()
  @Provider() testData37: Date = new Date()
  @Provider() testData38: Date = new Date()
  @Provider() testData39: Date = new Date()
  @Provider() testData40: Date = new Date()
  @Provider() testData41: Date = new Date()
  @Provider() testData42: Date = new Date()
  @Provider() testData43: Date = new Date()
  @Provider() testData44: Date = new Date()
  @Provider() testData45: Date = new Date()
  @Provider() testData46: Date = new Date()
  @Provider() testData47: Date = new Date()
  @Provider() testData48: Date = new Date()
  @Provider() testData49: Date = new Date()
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  tmpArr: number[] = [this.testData.getTime() - 60 * 60 * 1000, this.testData.getTime() - 30 * 60 * 1000]
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.setTime(this.tmpArr[index % 2])
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.testData
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text('ProviderDateSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.toTimeString()}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData.setTime(this.testData.getTime() + 3 * 60 * 60 * 1000)
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('parent click: 读@Provide的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('parent click: 写@Provide的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          isType = true
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            this.testData.setTime(this.tmpArr[index % 2])
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProviderDateSample()
    }
  }
}
