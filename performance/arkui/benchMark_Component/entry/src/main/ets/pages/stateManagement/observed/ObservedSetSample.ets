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

const timeHelper: TimeHelper = new TimeHelper('ObservedSetSample');
let isType: boolean = true

@Observed
export class ClassA<T> extends Set<T> {
}

@Observed
class ClassB {
  public b: ClassA<number>;

  constructor(b: ClassA<number>) {
    this.b = b;
  }
}

@Component
struct ChildObservedSetSample {
  @ObjectLink testData: ClassA<number>

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${Array.from(this.testData.values()).toString()}` :
        `child value: ${Array.from(this.testData.values()).toString()}`)
      Button('child click')
        .onClick(() => {
          this.testData.add(1000)
        })
    }
  }
}

@Entry
@Component
struct ObservedSetSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @State testData: ClassB = new ClassB(new ClassA())
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.b.add(index)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.testData.b.clear()
    this.testData.b.add(500)
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.testData.b.values()
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text('ObservedSetSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${Array.from(this.testData.b.values()).toString()}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData.b.add(10000)
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('parent click: 读@Observed的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          let value = this.testData.b.values()
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('parent click: 写@Observed的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          isType = true
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.testData.b.add(-1)
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildObservedSetSample({ testData: this.testData.b })
    }
  }
}