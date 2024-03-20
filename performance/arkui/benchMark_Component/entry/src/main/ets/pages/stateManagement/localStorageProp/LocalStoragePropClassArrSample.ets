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
import { ClassModel, classModel, classModel1, classModel2, classModel3 } from '../ClassModel';


interface PropTypeOptions {
  PropA: ClassModel[]
}

let abc: PropTypeOptions = {
  PropA: [classModel, classModel, classModel1, classModel2,
    classModel3, classModel, classModel, classModel, classModel, classModel]
};

let storage = new LocalStorage(abc);

@Component
struct ChildLocalStoragePropClassArrSample {
  timeHelper: TimeHelper = new TimeHelper('LocalStoragePropClassArrSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @LocalStorageProp('PropA') childClassArrProp: ClassModel[] = [];
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childClassArrProp.push(classModel1)
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childClassArrProp
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text('ChildLocalStoragePropClassArrSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(StateUtils.isType(this.isType, this.timeHelper) ? `child value: ${this.childClassArrProp[this.childClassArrProp.length - 1].value}` :
        `child value: ${this.childClassArrProp[this.childClassArrProp.length - 1].value}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          this.isType = false
          this.childClassArrProp.push(classModel2)
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('读@LocalStorageProp的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          this.childClassArrProp
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('写@LocalStorageProp的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.childClassArrProp.push(classModel3)
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry(storage)
@Component
struct LocalStoragePropClassArrSample {
  @LocalStorageProp('PropA') parentClassArrProp: ClassModel[] = [];

  build() {
    Column({ space: 15 }) {
      Text('LocalStoragePropClassArrSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentClassArrProp[this.parentClassArrProp.length - 1].value}`)
      // 父组件的数据源的修改不会同步给子组件
      Button('parent click')
        .id('parentSetStateTimeTaken')
        .onClick(() => {
          this.parentClassArrProp.push(classModel1)
        })
      ChildLocalStoragePropClassArrSample()
    }
  }
}