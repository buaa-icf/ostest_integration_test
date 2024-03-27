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

const testData: Object[] = ['吴辉', '予升', 3, '晟松', 1, '晓卿', '万葵', 5, '轩宇', '少辰']
AppStorage.setOrCreate('PropA', testData);

@Component
struct ChildStoragePropObjectArrSample {
  timeHelper: TimeHelper = new TimeHelper('StoragePropObjectArrSample')
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @StorageProp('PropA') childObjectArrProp: Object[] = [];
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true

  aboutToAppear(): void {
    // 不绑定UI的状态性能测试
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childObjectArrProp[index] = index
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.childObjectArrProp[index]
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(this.isType, this.timeHelper) ?
        `child value: ${this.childObjectArrProp[this.childObjectArrProp.length - 1].toString()}` :
        `child value: ${this.childObjectArrProp[this.childObjectArrProp.length - 1].toString()}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          let index = this.childObjectArrProp.length - 1
          this.isType = false
          this.childObjectArrProp[index] = 'child: changeUITimeTaken'
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      // 更改不同步
      Button('child click: 读@StorageProp的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          let tmp = this.childObjectArrProp[0]
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child Prop: 写@StorageProp的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.childObjectArrProp[0] = 'child: setStateTimeTaken'
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry
@Component
struct StoragePropObjectArrSample {
  @StorageProp('PropA') parentObjectArrProp: Object[] = [];

  build() {
    Column({ space: 15 }) {
      Text('StoragePropObjectArrSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentObjectArrProp[this.parentObjectArrProp.length - 1].toString()}`)
      // 父组件的数据源的修改不会同步给子组件
      Button('parent click')
        .id('parentSetStateTimeTaken')
        .onClick(() => {
          this.parentObjectArrProp.push('parent: parentSetStateTimeTaken')
        })

      ChildStoragePropObjectArrSample()
    }
  }
}