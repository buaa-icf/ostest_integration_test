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
  PropA: Object[]
}

let abc: PropTypeOptions = {
  PropA: ['吴辉', '予升', 3, '晟松', 1, '晓卿', '万葵', 5, '轩宇', '少辰']
};

let storage = new LocalStorage(abc);

@Component
struct ChildLocalStoragePropObjectArrSample {
  timeHelper: TimeHelper = new TimeHelper('LocalStoragePropObjectArrSample')
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @LocalStorageProp('PropA') childObjectArrProp: Object[] = [];
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childObjectArrProp.push(index)
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childObjectArrProp
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text('ChildLocalStoragePropObjectArrSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(StateUtils.isType(this.isType, this.timeHelper) ? `child value: ${this.childObjectArrProp[this.childObjectArrProp.length - 1].toString()}` :
        `child value: ${this.childObjectArrProp[this.childObjectArrProp.length - 1].toString()}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          this.isType = false
          this.childObjectArrProp.push['chlid changeUITimeTaken']
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('读@LocalStorageProp的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          this.childObjectArrProp
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('写@LocalStorageProp的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.childObjectArrProp.push('child: setStateTimeTaken')
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry(storage)
@Component
struct LocalStoragePropObjectArrSample {
  @LocalStorageProp('PropA') parentObjectArrProp: Object[] = [];

  build() {
    Column({ space: 15 }) {
      Text('LocalStoragePropObjectArrSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentObjectArrProp[this.parentObjectArrProp.length - 1].toString()}`)
      // 父组件的数据源的修改会同步给子组件
      Button('parent click')
        .id('parentSetStateTimeTaken')
        .onClick(() => {
          this.parentObjectArrProp.push('parent: parentSetStateTimeTaken')
        })

      ChildLocalStoragePropObjectArrSample()
    }
  }
}