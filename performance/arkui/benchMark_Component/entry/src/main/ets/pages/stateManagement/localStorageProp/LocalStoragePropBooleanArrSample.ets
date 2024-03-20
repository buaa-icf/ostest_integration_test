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

interface PropTypeOptions {
  PropA: boolean[]
}

let abc: PropTypeOptions = {
  PropA: [true, false, true, false, true, false, true, false, true, false]
};

let storage = new LocalStorage(abc);

@Component
struct ChildLocalStoragePropBooleanArrSample {
  timeHelper: TimeHelper = new TimeHelper('LocalStoragePropBooleanArrSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @LocalStorageProp('PropA') childBooleanArrProp: boolean[] = [];
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childBooleanArrProp[0] = !this.childBooleanArrProp[0]
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childBooleanArrProp
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text('ChildLocalStoragePropBooleanArrSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`child value: ${this.childBooleanArrProp[0].toString()}`)
        .fontColor(StateUtils.isType(this.isType, this.timeHelper) ? this.childBooleanArrProp[0] ? Color.Red : Color.Blue :
          this.childBooleanArrProp[0] ? Color.Black : Color.Green)
        .id('changeUITimeTaken')
        .onClick(() => {
          this.isType = false
          this.childBooleanArrProp[0] = !this.childBooleanArrProp[0]
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('读@LocalStorageProp的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          this.childBooleanArrProp
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('写@LocalStorageProp的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.childBooleanArrProp[0] = !this.childBooleanArrProp[0]
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry(storage)
@Component
struct LocalStoragePropBooleanArrSample {
  @LocalStorageProp('PropA') parentBooleanArrProp: boolean[] = [];

  build() {
    Column({ space: 15 }) {
      Text('LocalStoragePropBooleanArrSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text('hello world')
        .visibility(this.parentBooleanArrProp[0] ? Visibility.Visible : Visibility.Hidden)
      // 父组件的数据源的修改不会同步给子组件
      Button('parent click')
        .id('parentSetStateTimeTaken')
        .onClick(() => {
          this.parentBooleanArrProp[0] = !this.parentBooleanArrProp[0]
        })
      ChildLocalStoragePropBooleanArrSample()
    }
  }
}