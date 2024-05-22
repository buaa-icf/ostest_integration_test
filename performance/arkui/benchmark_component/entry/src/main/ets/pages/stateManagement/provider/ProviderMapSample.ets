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

const timeHelper: TimeHelper = new TimeHelper('ProviderMapSample');
let isType: boolean = true

@ComponentV2
struct ChildProviderMapSample {
  @Consumer() testData: Map<number, string> = new Map([]);

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData.get(3)}` :
        `child value: ${this.testData.get(3)}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderMapSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider() testData: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData1: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData2: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData3: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData4: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData5: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData6: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData7: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData8: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData9: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData10: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData11: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData12: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData13: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData14: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData15: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData16: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData17: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData18: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData19: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData20: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData21: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData22: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData23: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData24: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData25: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData26: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData27: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData28: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData29: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData30: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData31: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData32: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData33: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData34: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData35: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData36: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData37: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData38: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData39: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData40: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData41: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData42: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData43: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData44: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData45: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData46: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData47: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData48: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Provider() testData49: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
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
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData.set(3, 'bye')
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
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
          isType = true
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            this.testData.set(index, index.toString())
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProviderMapSample()
    }
  }
}
