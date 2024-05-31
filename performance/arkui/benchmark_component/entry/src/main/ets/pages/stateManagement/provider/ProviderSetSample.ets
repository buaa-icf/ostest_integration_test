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

const timeHelper: TimeHelper = new TimeHelper('ProviderSetSample');

@ComponentV2
struct ChildProviderSetSample {
  @Consumer('Set') testData: Set<number> = new Set([0]);

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${Array.from(this.testData.values()).toString()}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderSetSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider('Set') testData: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set1') testData1: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set2') testData2: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set3') testData3: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set4') testData4: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set5') testData5: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set6') testData6: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set7') testData7: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set8') testData8: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set9') testData9: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set10') testData10: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set11') testData11: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set12') testData12: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set13') testData13: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set14') testData14: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set15') testData15: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set16') testData16: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set17') testData17: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set18') testData18: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set19') testData19: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set20') testData20: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set21') testData21: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set22') testData22: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set23') testData23: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set24') testData24: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set25') testData25: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set26') testData26: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set27') testData27: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set28') testData28: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set29') testData29: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set30') testData30: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set31') testData31: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set32') testData32: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set33') testData33: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set34') testData34: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set35') testData35: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set36') testData36: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set37') testData37: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set38') testData38: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set39') testData39: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set40') testData40: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set41') testData41: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set42') testData42: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set43') testData43: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set44') testData44: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set45') testData45: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set46') testData46: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set47') testData47: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set48') testData48: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider('Set49') testData49: Set<number> = new Set([0, 1, 2, 3, 4]);
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.add(index)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.testData.clear()
    this.testData.add(500)
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.testData
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text('ProviderSetSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${Array.from(this.testData.values()).toString()}`)
      Button('parent click: 读@Provider的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('parent click: 写@Provider的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            this.testData.add(index)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProviderSetSample()
    }
  }
}
