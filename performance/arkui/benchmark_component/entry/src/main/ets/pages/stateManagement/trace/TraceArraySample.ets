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

const timeHelper: TimeHelper = new TimeHelper('TraceArraySample');
let isType: boolean = true

@ObservedV2
class Arr {
  @Trace numberArr: number[] = [];
}

@Component
struct ChildTraceArraySample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  test : Arr = new Arr()
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.test.numberArr[index] = index
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.test.numberArr[index]
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({space: 15}) {
      Text(StateUtils.isType(isType, timeHelper) ?`child value: ${this.test.numberArr[0]}`:`child value: ${this.test.numberArr[0]}`)
      Button('child clink: 读@Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(()=>{
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          let value = this.test.numberArr[0]
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child clink: 写@Trace的耗时')
        .id('setStateTimeTaken')
        .onClick(()=>{
          isType = true
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.test.numberArr[0] = 100000
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@Component
struct TraceArraySample {
  testData: Arr = new Arr();

  build() {
    Column({space: 15}) {
      Text('TraceArraySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(this.testData.numberArr[0] ? `parent value: ${this.testData.numberArr[0]}` : `parent value: 1`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(()=>{
          isType = false
          this.testData.numberArr[0] = 1000
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildTraceArraySample({ test : this.testData })
    }
  }
}