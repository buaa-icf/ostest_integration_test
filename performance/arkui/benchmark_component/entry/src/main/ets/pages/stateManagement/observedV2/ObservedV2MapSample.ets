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

const timeHelper: TimeHelper = new TimeHelper('ObservedV2MapSample');
let isType: boolean = true

@ObservedV2
class ClassA
{
  @Trace public a: MyMap<number,string>;

  constructor(a:MyMap<number,string>) {
    this.a = a
  }
}

@ObservedV2
export class MyMap<K, V> extends Map<K, V> {
}

@Component
struct ChildObservedV2MapSample {
  Info : MyMap<number,string> = new MyMap<number,string>()
  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.Info.get(0)}` :
        `child value: ${this.Info.get(0)}`)
    }
  }
}

@Entry
@Component
struct ObservedV2MapSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  message: ClassA = new ClassA(new MyMap());
  message1: ClassA = new ClassA(new MyMap());
  message2: ClassA = new ClassA(new MyMap());
  message3: ClassA = new ClassA(new MyMap());
  message4: ClassA = new ClassA(new MyMap());
  message5: ClassA = new ClassA(new MyMap());
  message6: ClassA = new ClassA(new MyMap());
  message7: ClassA = new ClassA(new MyMap());
  message8: ClassA = new ClassA(new MyMap());
  message9: ClassA = new ClassA(new MyMap());
  message10: ClassA = new ClassA(new MyMap());
  message11: ClassA = new ClassA(new MyMap());
  message12: ClassA = new ClassA(new MyMap());
  message13: ClassA = new ClassA(new MyMap());
  message14: ClassA = new ClassA(new MyMap());
  message15: ClassA = new ClassA(new MyMap());
  message16: ClassA = new ClassA(new MyMap());
  message17: ClassA = new ClassA(new MyMap());
  message18: ClassA = new ClassA(new MyMap());
  message19: ClassA = new ClassA(new MyMap());
  message20: ClassA = new ClassA(new MyMap());
  message21: ClassA = new ClassA(new MyMap());
  message22: ClassA = new ClassA(new MyMap());
  message23: ClassA = new ClassA(new MyMap());
  message24: ClassA = new ClassA(new MyMap());
  message25: ClassA = new ClassA(new MyMap());
  message26: ClassA = new ClassA(new MyMap());
  message27: ClassA = new ClassA(new MyMap());
  message28: ClassA = new ClassA(new MyMap());
  message29: ClassA = new ClassA(new MyMap());
  message30: ClassA = new ClassA(new MyMap());
  message31: ClassA = new ClassA(new MyMap());
  message32: ClassA = new ClassA(new MyMap());
  message33: ClassA = new ClassA(new MyMap());
  message34: ClassA = new ClassA(new MyMap());
  message35: ClassA = new ClassA(new MyMap());
  message36: ClassA = new ClassA(new MyMap());
  message37: ClassA = new ClassA(new MyMap());
  message38: ClassA = new ClassA(new MyMap());
  message39: ClassA = new ClassA(new MyMap());
  message40: ClassA = new ClassA(new MyMap());
  message41: ClassA = new ClassA(new MyMap());
  message42: ClassA = new ClassA(new MyMap());
  message43: ClassA = new ClassA(new MyMap());
  message44: ClassA = new ClassA(new MyMap());
  message45: ClassA = new ClassA(new MyMap());
  message46: ClassA = new ClassA(new MyMap());
  message47: ClassA = new ClassA(new MyMap());
  message48: ClassA = new ClassA(new MyMap());
  message49: ClassA = new ClassA(new MyMap());
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @State isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.message.a.set(index,index.toString())
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.message.a.get(index)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text('ObservedV2MapSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.message.a.get(0)}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.message.a.set(0,'f')
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('parent click: 读@ObservedV2的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.message.a.get(index)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('parent click: 写@ObservedV2的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          isType = true
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            this.message.a.set(index,index.toString())
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildObservedV2MapSample({Info : this.message.a})
    }
  }
}