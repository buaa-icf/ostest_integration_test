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
import { LanguageEnum } from '../ClassModel'

interface PropTypeOptions {
  PropA: LanguageEnum[]
}

let abc: PropTypeOptions = {
  PropA: [LanguageEnum.Korea]
};

let storage = new LocalStorage(abc);

@Component
struct ChildLocalStoragePropEnumArrSample {
  timeHelper: TimeHelper = new TimeHelper('LocalStoragePropEnumArrSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @LocalStorageProp('PropA') childEnumArrProp: LanguageEnum[] = [];
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childEnumArrProp.push(LanguageEnum.Chinese)
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childEnumArrProp
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text('ChildLocalStoragePropEnumArrSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(StateUtils.isType(this.isType, this.timeHelper) ? `child value: ${this.childEnumArrProp[this.childEnumArrProp.length - 1]}` :
        `child value: ${this.childEnumArrProp[this.childEnumArrProp.length - 1]}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          this.isType = false
          this.childEnumArrProp.push(LanguageEnum.Japanese)
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('读@LocalStorageProp的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          this.childEnumArrProp
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('写@LocalStorageProp的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.childEnumArrProp.push(LanguageEnum.Russian)
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry(storage)
@Component
struct LocalStoragePropEnumArrSample {
  @LocalStorageProp('PropA') parentEnumArrProp: LanguageEnum[] = [];

  build() {
    Column({ space: 15 }) {
      Text('LocalStoragePropEnumArrSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentEnumArrProp[this.parentEnumArrProp.length - 1]}`)
      // 父组件的数据源的修改不会同步给子组件
      Button('parent click')
        .id('parentSetStateTimeTaken')
        .onClick(() => {
          this.parentEnumArrProp.push(LanguageEnum.Korea)
        })

      ChildLocalStoragePropEnumArrSample()
    }
  }
}