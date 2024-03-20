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
struct ChildObjectLinkInheritDateSample {
  timeHelper: TimeHelper = new TimeHelper('ObjectLinkInheritDateSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @ObjectLink test: ClassA
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.test.setTime(this.test.getTime() - 60 * 60 * 1000)
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.test
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({space: 15}) {
      Text(StateUtils.isType(this.isType, this.timeHelper) ? `child value: ${this.test}` : `child value: ${this.test}`)
        .id('changeUITimeTaken')
        .onClick(()=>{
          this.isType = false
          this.test.setTime(this.test.getTime() + 3 * 60 * 60 * 1000)
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('child clink: 读@ObjectLink的耗时')
        .id('getStateTimeTaken')
        .onClick(()=>{
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          this.test
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child clink: 写@ObjectLink的耗时')
        .id('setStateTimeTaken')
        .onClick(()=>{
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.test.setTime(this.test.getTime() + 10 * 60 * 60 * 1000)
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@Component
struct ObjectLinkInheritDateSample {
  @State testData: ClassB = new ClassB(new ClassA())

  build() {
    Column({ space: 15}) {
      Text('ObjectLinkInheritDateSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.b}`)
      Button('parent click')
        .id('parentSetStateTimeTaken')
        .onClick(() => {
          this.testData.b.setTime(this.testData.b.getTime() + 100 * 60 * 60 * 1000)
        })
      ChildObjectLinkInheritDateSample({test : this.testData.b})
    }
  }
}