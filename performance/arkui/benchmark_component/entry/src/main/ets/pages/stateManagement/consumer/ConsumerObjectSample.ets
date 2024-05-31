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

const timeHelper: TimeHelper = new TimeHelper('ConsumerObjectSample');

@ComponentV2
struct ChildConsumerObjectSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consumer('Object') testData: Object = 'default';
  @Consumer('Object1') testData1: Object = 'default';
  @Consumer('Object2') testData2: Object = 'default';
  @Consumer('Object3') testData3: Object = 'default';
  @Consumer('Object4') testData4: Object = 'default';
  @Consumer('Object5') testData5: Object = 'default';
  @Consumer('Object6') testData6: Object = 'default';
  @Consumer('Object7') testData7: Object = 'default';
  @Consumer('Object8') testData8: Object = 'default';
  @Consumer('Object9') testData9: Object = 'default';
  @Consumer('Object10') testData10: Object = 'default';
  @Consumer('Object11') testData11: Object = 'default';
  @Consumer('Object12') testData12: Object = 'default';
  @Consumer('Object13') testData13: Object = 'default';
  @Consumer('Object14') testData14: Object = 'default';
  @Consumer('Object15') testData15: Object = 'default';
  @Consumer('Object16') testData16: Object = 'default';
  @Consumer('Object17') testData17: Object = 'default';
  @Consumer('Object18') testData18: Object = 'default';
  @Consumer('Object19') testData19: Object = 'default';
  @Consumer('Object20') testData20: Object = 'default';
  @Consumer('Object21') testData21: Object = 'default';
  @Consumer('Object22') testData22: Object = 'default';
  @Consumer('Object23') testData23: Object = 'default';
  @Consumer('Object24') testData24: Object = 'default';
  @Consumer('Object25') testData25: Object = 'default';
  @Consumer('Object26') testData26: Object = 'default';
  @Consumer('Object27') testData27: Object = 'default';
  @Consumer('Object28') testData28: Object = 'default';
  @Consumer('Object29') testData29: Object = 'default';
  @Consumer('Object30') testData30: Object = 'default';
  @Consumer('Object31') testData31: Object = 'default';
  @Consumer('Object32') testData32: Object = 'default';
  @Consumer('Object33') testData33: Object = 'default';
  @Consumer('Object34') testData34: Object = 'default';
  @Consumer('Object35') testData35: Object = 'default';
  @Consumer('Object36') testData36: Object = 'default';
  @Consumer('Object37') testData37: Object = 'default';
  @Consumer('Object38') testData38: Object = 'default';
  @Consumer('Object39') testData39: Object = 'default';
  @Consumer('Object40') testData40: Object = 'default';
  @Consumer('Object41') testData41: Object = 'default';
  @Consumer('Object42') testData42: Object = 'default';
  @Consumer('Object43') testData43: Object = 'default';
  @Consumer('Object44') testData44: Object = 'default';
  @Consumer('Object45') testData45: Object = 'default';
  @Consumer('Object46') testData46: Object = 'default';
  @Consumer('Object47') testData47: Object = 'default';
  @Consumer('Object48') testData48: Object = 'default';
  @Consumer('Object49') testData49: Object = 'default';
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData = index
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
      Text('ConsumerObjectSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`child value: ${this.testData}`)
      Button('child clink: 读@Consumer的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child clink: 写@Consumer的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            this.testData = index
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct ConsumerObjectSample {
  @Provider('Object') testData: Object = 'default';

  build() {
    Column({ space: 15 }) {
      ChildConsumerObjectSample()
      Text(`parent value: ${this.testData}`)
    }
  }
}
