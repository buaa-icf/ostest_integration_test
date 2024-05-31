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

const timeHelper: TimeHelper = new TimeHelper('ObservedV2ArraySample');

class StringArray<T> extends Array<T>{
}

@ObservedV2
class B {
  @Trace arr = new StringArray<string>()
}

@Component
struct ChildObservedV2ArraySample {
  Arr : StringArray<string> = new StringArray<string>()
  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.Arr[0]}`)
    }
  }
}

@Entry
@Component
struct ObservedV2ArraySample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  testData: B = new B();
  testData1: B = new B();
  testData2: B = new B();
  testData3: B = new B();
  testData4: B = new B();
  testData5: B = new B();
  testData6: B = new B();
  testData7: B = new B();
  testData8: B = new B();
  testData9: B = new B();
  testData10: B = new B();
  testData11: B = new B();
  testData12: B = new B();
  testData13: B = new B();
  testData14: B = new B();
  testData15: B = new B();
  testData16: B = new B();
  testData17: B = new B();
  testData18: B = new B();
  testData19: B = new B();
  testData20: B = new B();
  testData21: B = new B();
  testData22: B = new B();
  testData23: B = new B();
  testData24: B = new B();
  testData25: B = new B();
  testData26: B = new B();
  testData27: B = new B();
  testData28: B = new B();
  testData29: B = new B();
  testData30: B = new B();
  testData31: B = new B();
  testData32: B = new B();
  testData33: B = new B();
  testData34: B = new B();
  testData35: B = new B();
  testData36: B = new B();
  testData37: B = new B();
  testData38: B = new B();
  testData39: B = new B();
  testData40: B = new B();
  testData41: B = new B();
  testData42: B = new B();
  testData43: B = new B();
  testData44: B = new B();
  testData45: B = new B();
  testData46: B = new B();
  testData47: B = new B();
  testData48: B = new B();
  testData49: B = new B();
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    this.testData.arr.push('10000')
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.arr[0] = index.toString()
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.testData.arr[0]
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text('ObservedV2ArraySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.arr[0]}`)
      Button('parent click: 读@ObservedV2的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData.arr[0]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('parent click: 写@ObservedV2的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            this.testData.arr[0] = index.toString()
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildObservedV2ArraySample({ Arr : this.testData.arr})
    }
  }
}
