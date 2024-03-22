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
import { classModel, ClassModel, classModel1, classModel2, classModel3 } from '../ClassModel';
import { StateConstants, StateModel } from '../StateModel';
import { StateUtils } from '../StateUtils';

const testData: ClassModel[] = [classModel, classModel, classModel1, classModel2, classModel3, classModel,
  classModel, classModel, classModel, classModel]
AppStorage.setOrCreate('PropA', testData);

@Component
struct ChildStoragePropClassArrSample {
  timeHelper: TimeHelper = new TimeHelper('StoragePropClassArrSample')
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @StorageProp('PropA') childClassArrProp: ClassModel[] = [];
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true
  tmpArr: ClassModel[] = [classModel, classModel1]

  aboutToAppear(): void {
    // 不绑定UI的状态性能测试
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childClassArrProp[index] = this.tmpArr[index % 2]
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.childClassArrProp[index].value
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(this.isType, this.timeHelper) ?
        `child value: ${this.childClassArrProp[this.childClassArrProp.length - 1].value}` :
        `child value: ${this.childClassArrProp[this.childClassArrProp.length - 1].value}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          let index = this.childClassArrProp.length - 1
          this.isType = false
          this.childClassArrProp[index] = classModel2
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      // 更改不同步
      Button('child click: 读@StorageProp的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          let tmp = this.childClassArrProp[0].value
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child Prop: 写@StorageProp的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.childClassArrProp[0] = classModel3
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry
@Component
struct StoragePropClassArrSample {
  @StorageProp('PropA') parentClassArrProp: ClassModel[] = [];

  build() {
    Column({ space: 15 }) {
      Text('StoragePropClassArrSample')
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

      ChildStoragePropClassArrSample()
    }
  }
}