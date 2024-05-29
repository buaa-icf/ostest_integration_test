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

const timeHelper: TimeHelper = new TimeHelper('ProviderObjectSample');

@ComponentV2
struct ChildProviderObjectSample {
  @Consumer('Object') testData: Object = 'default';

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.testData}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderObjectSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider('Object') testData: Object = 'default';
  @Provider('Object1') testData1: Object = 'default';
  @Provider('Object2') testData2: Object = 'default';
  @Provider('Object3') testData3: Object = 'default';
  @Provider('Object4') testData4: Object = 'default';
  @Provider('Object5') testData5: Object = 'default';
  @Provider('Object6') testData6: Object = 'default';
  @Provider('Object7') testData7: Object = 'default';
  @Provider('Object8') testData8: Object = 'default';
  @Provider('Object9') testData9: Object = 'default';
  @Provider('Object10') testData10: Object = 'default';
  @Provider('Object11') testData11: Object = 'default';
  @Provider('Object12') testData12: Object = 'default';
  @Provider('Object13') testData13: Object = 'default';
  @Provider('Object14') testData14: Object = 'default';
  @Provider('Object15') testData15: Object = 'default';
  @Provider('Object16') testData16: Object = 'default';
  @Provider('Object17') testData17: Object = 'default';
  @Provider('Object18') testData18: Object = 'default';
  @Provider('Object19') testData19: Object = 'default';
  @Provider('Object20') testData20: Object = 'default';
  @Provider('Object21') testData21: Object = 'default';
  @Provider('Object22') testData22: Object = 'default';
  @Provider('Object23') testData23: Object = 'default';
  @Provider('Object24') testData24: Object = 'default';
  @Provider('Object25') testData25: Object = 'default';
  @Provider('Object26') testData26: Object = 'default';
  @Provider('Object27') testData27: Object = 'default';
  @Provider('Object28') testData28: Object = 'default';
  @Provider('Object29') testData29: Object = 'default';
  @Provider('Object30') testData30: Object = 'default';
  @Provider('Object31') testData31: Object = 'default';
  @Provider('Object32') testData32: Object = 'default';
  @Provider('Object33') testData33: Object = 'default';
  @Provider('Object34') testData34: Object = 'default';
  @Provider('Object35') testData35: Object = 'default';
  @Provider('Object36') testData36: Object = 'default';
  @Provider('Object37') testData37: Object = 'default';
  @Provider('Object38') testData38: Object = 'default';
  @Provider('Object39') testData39: Object = 'default';
  @Provider('Object40') testData40: Object = 'default';
  @Provider('Object41') testData41: Object = 'default';
  @Provider('Object42') testData42: Object = 'default';
  @Provider('Object43') testData43: Object = 'default';
  @Provider('Object44') testData44: Object = 'default';
  @Provider('Object45') testData45: Object = 'default';
  @Provider('Object46') testData46: Object = 'default';
  @Provider('Object47') testData47: Object = 'default';
  @Provider('Object48') testData48: Object = 'default';
  @Provider('Object49') testData49: Object = 'default';
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
      Text('ProviderObjectSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.toString()}`)
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
            this.testData = index
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProviderObjectSample()
    }
  }
}
