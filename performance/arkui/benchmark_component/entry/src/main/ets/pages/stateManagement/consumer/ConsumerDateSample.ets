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

const timeHelper: TimeHelper = new TimeHelper('ConsumerDateSample');

@ComponentV2
struct ChildConsumerDateSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consumer('Date') testData: Date = new Date()
  @Consumer('Date1') testData1: Date = new Date()
  @Consumer('Date2') testData2: Date = new Date()
  @Consumer('Date3') testData3: Date = new Date()
  @Consumer('Date4') testData4: Date = new Date()
  @Consumer('Date5') testData5: Date = new Date()
  @Consumer('Date6') testData6: Date = new Date()
  @Consumer('Date7') testData7: Date = new Date()
  @Consumer('Date8') testData8: Date = new Date()
  @Consumer('Date9') testData9: Date = new Date()
  @Consumer('Date10') testData10: Date = new Date()
  @Consumer('Date11') testData11: Date = new Date()
  @Consumer('Date12') testData12: Date = new Date()
  @Consumer('Date13') testData13: Date = new Date()
  @Consumer('Date14') testData14: Date = new Date()
  @Consumer('Date15') testData15: Date = new Date()
  @Consumer('Date16') testData16: Date = new Date()
  @Consumer('Date17') testData17: Date = new Date()
  @Consumer('Date18') testData18: Date = new Date()
  @Consumer('Date19') testData19: Date = new Date()
  @Consumer('Date20') testData20: Date = new Date()
  @Consumer('Date21') testData21: Date = new Date()
  @Consumer('Date22') testData22: Date = new Date()
  @Consumer('Date23') testData23: Date = new Date()
  @Consumer('Date24') testData24: Date = new Date()
  @Consumer('Date25') testData25: Date = new Date()
  @Consumer('Date26') testData26: Date = new Date()
  @Consumer('Date27') testData27: Date = new Date()
  @Consumer('Date28') testData28: Date = new Date()
  @Consumer('Date29') testData29: Date = new Date()
  @Consumer('Date30') testData30: Date = new Date()
  @Consumer('Date31') testData31: Date = new Date()
  @Consumer('Date32') testData32: Date = new Date()
  @Consumer('Date33') testData33: Date = new Date()
  @Consumer('Date34') testData34: Date = new Date()
  @Consumer('Date35') testData35: Date = new Date()
  @Consumer('Date36') testData36: Date = new Date()
  @Consumer('Date37') testData37: Date = new Date()
  @Consumer('Date38') testData38: Date = new Date()
  @Consumer('Date39') testData39: Date = new Date()
  @Consumer('Date40') testData40: Date = new Date()
  @Consumer('Date41') testData41: Date = new Date()
  @Consumer('Date42') testData42: Date = new Date()
  @Consumer('Date43') testData43: Date = new Date()
  @Consumer('Date44') testData44: Date = new Date()
  @Consumer('Date45') testData45: Date = new Date()
  @Consumer('Date46') testData46: Date = new Date()
  @Consumer('Date47') testData47: Date = new Date()
  @Consumer('Date48') testData48: Date = new Date()
  @Consumer('Date49') testData49: Date = new Date()
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  tmpArr: number[] = [this.testData.getTime() - 60 * 60 * 1000,this.testData.getTime() - 30 * 60 * 1000]
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
    Column({space: 15}) {
      Text('ConsumerDateSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({bottom: 50, top: 50})
      Text(`child value: ${this.testData.toTimeString()}`)
      Button('child clink: 读@Consumer的耗时')
        .id('getStateTimeTaken')
        .onClick(()=>{
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child clink: 写@Consumer的耗时')
        .id('setStateTimeTaken')
        .onClick(()=>{
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            this.testData.setTime(this.tmpArr[index % 2])
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct ConsumerDateSample {
  @Provider('Date') testData: Date = new Date();
  build() {
    Column({space: 15}) {
      ChildConsumerDateSample()
      Text(`parent value: ${this.testData.toTimeString()}`)
    }
  }
}
