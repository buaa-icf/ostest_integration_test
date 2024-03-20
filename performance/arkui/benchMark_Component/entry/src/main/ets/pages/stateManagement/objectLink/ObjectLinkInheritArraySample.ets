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
class ClassA<T> extends Array<T> {
  public a: T;

  constructor(a: T) {
    super()
    this.a = a;
  }
}

@Observed
class ClassB {
  public b: ClassA<number>;

  constructor(b: ClassA<number>) {
    this.b = b;
  }
}

@Component
struct ChildObjectLinkInheritArraySample {
  timeHelper: TimeHelper = new TimeHelper('ObjectLinkInheritArraySample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @ObjectLink test: ClassA<number>;
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.test.a = index
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.test.a
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({space: 15}) {
      Text(StateUtils.isType(this.isType, this.timeHelper) ? `child value: ${this.test.a}` : `child value: ${this.test.a}`)
        .id('changeUITimeTaken')
        .onClick(()=>{
          this.isType = false
          this.test.a += 1
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
          this.test.a -=1
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@Component
struct ObjectLinkInheritArraySample {
  @State testData: ClassB = new ClassB(new ClassA<number>(1))

  build() {
    Column({space: 15}) {
      Text('ObjectLinkOrdinarySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.b.a}`)
      Button('parent click')
        .id('parentSetStateTimeTaken')
        .onClick(() => {
          this.testData.b.a += 1
        })
      ChildObjectLinkInheritArraySample({test : this.testData.b})
    }
  }
}