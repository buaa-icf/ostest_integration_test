/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

const timeHelper: TimeHelper = new TimeHelper('ObservedInheritDateSample');
let isType: boolean = true

@Observed
class ClassA extends Date {
}

@Observed
class ClassB {
  public b: ClassA;

  constructor(b: ClassA) {
    this.b = b;
  }
}

@Component
struct ChildObservedInheritDateSample {
  @ObjectLink testData: ClassA

  build() {
    Column({space: 15}) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData.toTimeString()}` : `child value: ${this.testData.toTimeString()}`)
      Button('child click')
        .id('childSetStateTimeTaken')
        .onClick(() => {
          this.testData.setTime(this.testData.getTime() + 100 * 60 * 60 * 1000)
        })
    }
  }
}

@Entry
@Component
struct ObservedInheritDateSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @State testData: ClassB = new ClassB(new ClassA())
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
    let arr: number[] =  [this.testData.b.getTime() - 60 * 60 * 1000, this.testData.b.getTime() - 20 * 60 * 1000]
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.b.setTime(arr[index % 2])
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.testData.b.getTime()
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({space: 15}) {
      Text('ObservedInheritDateSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({bottom: 50, top: 50})
      Text(`parent value: ${this.testData.b.toTimeString()}`)
        .id('changeUITimeTaken')
        .onClick(()=>{
          isType = false
          this.testData.b.setTime(this.testData.b.getTime() + 3 * 60 * 60 * 1000)
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('parent clink: 读@Observed的耗时')
        .id('getStateTimeTaken')
        .onClick(()=>{
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          let value = this.testData.b
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('parent clink: 写@Observed的耗时')
        .id('setStateTimeTaken')
        .onClick(()=>{
          isType = true
          let time: number = this.testData.b.getTime() + 10 * 60 * 60 * 1000
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.testData.b.setTime(time)
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildObservedInheritDateSample({testData: this.testData.b})
    }
  }
}
