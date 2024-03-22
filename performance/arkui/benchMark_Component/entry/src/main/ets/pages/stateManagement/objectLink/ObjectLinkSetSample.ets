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

let isType: boolean = true
const timeHelper: TimeHelper = new TimeHelper('ObjectLinkSetSample');

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
struct ChildObjectLinkSetSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @ObjectLink testData: ClassA<number>;
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.add(index)
    }
    this.testData.clear()
    this.testData.add(500)
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.testData.values()
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${Array.from(this.testData.values()).toString()}` :
        `child value: ${Array.from(this.testData.values()).toString()}`)
      Button('child click: 读@ObjectLink的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          let value = this.testData.values()
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@ObjectLink的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          isType = true
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.testData.add(-1)
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@Component
struct ObjectLinkSetSample {
  @State testData: ClassB = new ClassB(new ClassA());

  build() {
    Column({ space: 15 }) {
      Text('ObjectLinkSetSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${Array.from(this.testData.b.values()).toString()}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData.b.add(10000)
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildObjectLinkSetSample({ testData: this.testData.b })
    }
  }
}