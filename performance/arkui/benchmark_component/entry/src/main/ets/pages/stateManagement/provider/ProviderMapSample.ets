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

const timeHelper: TimeHelper = new TimeHelper('ProviderMapSample');

@ComponentV2
struct ChildProviderMapSample {
  @Consumer('Map') testData: Map<number, string> = new Map([]);

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.testData.get(3)}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderMapSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider('Map') testData: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map1') testData1: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map2') testData2: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map3') testData3: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map4') testData4: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map5') testData5: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map6') testData6: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map7') testData7: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map8') testData8: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map9') testData9: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map10') testData10: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map11') testData11: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map12') testData12: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map13') testData13: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map14') testData14: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map15') testData15: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map16') testData16: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map17') testData17: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map18') testData18: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map19') testData19: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map20') testData20: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map21') testData21: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map22') testData22: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map23') testData23: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map24') testData24: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map25') testData25: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map26') testData26: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map27') testData27: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map28') testData28: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map29') testData29: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map30') testData30: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map31') testData31: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map32') testData32: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map33') testData33: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map34') testData34: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map35') testData35: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map36') testData36: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map37') testData37: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map38') testData38: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map39') testData39: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map40') testData40: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map41') testData41: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map42') testData42: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map43') testData43: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map44') testData44: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map45') testData45: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map46') testData46: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map47') testData47: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map48') testData48: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider('Map49') testData49: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.set(index, index.toString())
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.testData.get(index)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text('ProviderMapSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.get(3)}`)
      Button('parent click: 读@Provider的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData.get(index)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('parent click: 写@Provider的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            this.testData.set(index, index.toString())
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProviderMapSample()
    }
  }
}
