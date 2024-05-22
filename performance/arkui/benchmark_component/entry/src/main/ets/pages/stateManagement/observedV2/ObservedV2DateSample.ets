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

const timeHelper: TimeHelper = new TimeHelper('ObservedV2DateSample');
let isType: boolean = true

@ObservedV2
class ClassA extends Date {
}

@ObservedV2
class ClassB {
  @Trace public b: ClassA;

  constructor(b: ClassA) {
    this.b = b;
  }
}

@Component
struct ChildObservedV2DateSample {
  Info : ClassA = new ClassA()
  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.Info.toTimeString()}` :
        `child value: ${this.Info.toTimeString()}`)
    }
  }
}

@Entry
@Component
struct ObservedV2DateSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  testData: ClassB = new ClassB(new ClassA())
  testData1: ClassB = new ClassB(new ClassA())
  testData2: ClassB = new ClassB(new ClassA())
  testData3: ClassB = new ClassB(new ClassA())
  testData4: ClassB = new ClassB(new ClassA())
  testData5: ClassB = new ClassB(new ClassA())
  testData6: ClassB = new ClassB(new ClassA())
  testData7: ClassB = new ClassB(new ClassA())
  testData8: ClassB = new ClassB(new ClassA())
  testData9: ClassB = new ClassB(new ClassA())
  testData10: ClassB = new ClassB(new ClassA())
  testData11: ClassB = new ClassB(new ClassA())
  testData12: ClassB = new ClassB(new ClassA())
  testData13: ClassB = new ClassB(new ClassA())
  testData14: ClassB = new ClassB(new ClassA())
  testData15: ClassB = new ClassB(new ClassA())
  testData16: ClassB = new ClassB(new ClassA())
  testData17: ClassB = new ClassB(new ClassA())
  testData18: ClassB = new ClassB(new ClassA())
  testData19: ClassB = new ClassB(new ClassA())
  testData20: ClassB = new ClassB(new ClassA())
  testData21: ClassB = new ClassB(new ClassA())
  testData22: ClassB = new ClassB(new ClassA())
  testData23: ClassB = new ClassB(new ClassA())
  testData24: ClassB = new ClassB(new ClassA())
  testData25: ClassB = new ClassB(new ClassA())
  testData26: ClassB = new ClassB(new ClassA())
  testData27: ClassB = new ClassB(new ClassA())
  testData28: ClassB = new ClassB(new ClassA())
  testData29: ClassB = new ClassB(new ClassA())
  testData30: ClassB = new ClassB(new ClassA())
  testData31: ClassB = new ClassB(new ClassA())
  testData32: ClassB = new ClassB(new ClassA())
  testData33: ClassB = new ClassB(new ClassA())
  testData34: ClassB = new ClassB(new ClassA())
  testData35: ClassB = new ClassB(new ClassA())
  testData36: ClassB = new ClassB(new ClassA())
  testData37: ClassB = new ClassB(new ClassA())
  testData38: ClassB = new ClassB(new ClassA())
  testData39: ClassB = new ClassB(new ClassA())
  testData40: ClassB = new ClassB(new ClassA())
  testData41: ClassB = new ClassB(new ClassA())
  testData42: ClassB = new ClassB(new ClassA())
  testData43: ClassB = new ClassB(new ClassA())
  testData44: ClassB = new ClassB(new ClassA())
  testData45: ClassB = new ClassB(new ClassA())
  testData46: ClassB = new ClassB(new ClassA())
  testData47: ClassB = new ClassB(new ClassA())
  testData48: ClassB = new ClassB(new ClassA())
  testData49: ClassB = new ClassB(new ClassA())
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @State isTypeState: boolean = true

  aboutToAppear(): void {
    let arr: number[] =  [this.testData.b.getTime() - 60 * 60 * 1000, this.testData.b.getTime() - 20 * 60 * 1000]
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.b.setTime(arr[index%2])
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.testData.b.getTime()
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text('ObservedV2DateSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.b.toTimeString()}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData.b.setTime(this.testData.b.getTime() + 3 * 60 * 60 * 1000)
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('parent click: 读@ObservedV2的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData.b.getTime()
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('parent click: 写@ObservedV2的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          isType = true
          this.isTypeState = !this.isTypeState
          let time: number[] = [this.testData.b.getTime() + 10 * 60 * 60 * 1000,this.testData.b.getTime() + 20 * 60 * 60 * 1000]
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            this.testData.b.setTime(time[index%2])
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildObservedV2DateSample({ Info : this.testData.b })
    }
  }
}