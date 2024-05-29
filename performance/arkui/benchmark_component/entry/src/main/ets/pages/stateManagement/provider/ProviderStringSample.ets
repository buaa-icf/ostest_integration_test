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

const timeHelper: TimeHelper = new TimeHelper('ProviderStringSample');

@ComponentV2
struct ChildProviderStringSample {
  @Consumer('String') testData: string = '0'

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.testData}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderStringSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider('String') testData: string = 'hello, world';
  @Provider('String1') testData1: string = '0'
  @Provider('String2') testData2: string = '0'
  @Provider('String3') testData3: string = '0'
  @Provider('String4') testData4: string = '0'
  @Provider('String5') testData5: string = '0'
  @Provider('String6') testData6: string = '0'
  @Provider('String7') testData7: string = '0'
  @Provider('String8') testData8: string = '0'
  @Provider('String9') testData9: string = '0'
  @Provider('String10') testData10: string = '0'
  @Provider('String11') testData11: string = '0'
  @Provider('String12') testData12: string = '0'
  @Provider('String13') testData13: string = '0'
  @Provider('String14') testData14: string = '0'
  @Provider('String15') testData15: string = '0'
  @Provider('String16') testData16: string = '0'
  @Provider('String17') testData17: string = '0'
  @Provider('String18') testData18: string = '0'
  @Provider('String19') testData19: string = '0'
  @Provider('String20') testData20: string = '0'
  @Provider('String21') testData21: string = '0'
  @Provider('String22') testData22: string = '0'
  @Provider('String23') testData23: string = '0'
  @Provider('String24') testData24: string = '0'
  @Provider('String25') testData25: string = '0'
  @Provider('String26') testData26: string = '0'
  @Provider('String27') testData27: string = '0'
  @Provider('String28') testData28: string = '0'
  @Provider('String29') testData29: string = '0'
  @Provider('String30') testData30: string = '0'
  @Provider('String31') testData31: string = '0'
  @Provider('String32') testData32: string = '0'
  @Provider('String33') testData33: string = '0'
  @Provider('String34') testData34: string = '0'
  @Provider('String35') testData35: string = '0'
  @Provider('String36') testData36: string = '0'
  @Provider('String37') testData37: string = '0'
  @Provider('String38') testData38: string = '0'
  @Provider('String39') testData39: string = '0'
  @Provider('String40') testData40: string = '0'
  @Provider('String41') testData41: string = '0'
  @Provider('String42') testData42: string = '0'
  @Provider('String43') testData43: string = '0'
  @Provider('String44') testData44: string = '0'
  @Provider('String45') testData45: string = '0'
  @Provider('String46') testData46: string = '0'
  @Provider('String47') testData47: string = '0'
  @Provider('String48') testData48: string = '0'
  @Provider('String49') testData49: string = '0'
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData = index.toString()
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
      Text('ProviderStringSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData}`)
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
            this.testData = index.toString()
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProviderStringSample()
    }
  }
}
