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
import { LanguageEnum } from '../ClassModel';
import { StateConstants, StateModel } from '../StateModel';
import { StateUtils } from '../StateUtils';

const testData: LanguageEnum[] = [LanguageEnum.English, LanguageEnum.Chinese, LanguageEnum.English,
  LanguageEnum.Chinese, LanguageEnum.English, LanguageEnum.Chinese, LanguageEnum.English, LanguageEnum.Chinese,
  LanguageEnum.English, LanguageEnum.Chinese]
AppStorage.setOrCreate('PropA', testData);

@Component
struct ChildStoragePropEnumArrSample {
  timeHelper: TimeHelper = new TimeHelper('StoragePropEnumArrSample')
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @StorageProp('PropA') childEnumArrProp: LanguageEnum[] = [];
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true
  tmpArr: LanguageEnum[] = [LanguageEnum.English, LanguageEnum.Chinese]

  aboutToAppear(): void {
    // 不绑定UI的状态性能测试
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childEnumArrProp[index] = this.tmpArr[index % 2]
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.childEnumArrProp[index]
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(this.isType, this.timeHelper) ?
        `child value: ${this.childEnumArrProp[this.childEnumArrProp.length - 1]}` :
        `child value: ${this.childEnumArrProp[this.childEnumArrProp.length - 1]}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          let index = this.childEnumArrProp.length - 1
          this.isType = false
          this.childEnumArrProp[index] = LanguageEnum.Japanese
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      // 更改不同步
      Button('child click: 读@StorageProp的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          let tmp = this.childEnumArrProp[0]
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child Prop: 写@StorageProp的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.childEnumArrProp[0] = LanguageEnum.Russian
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry
@Component
struct StoragePropEnumArrSample {
  @StorageProp('PropA') parentEnumArrProp: LanguageEnum[] = [];

  build() {
    Column({ space: 15 }) {
      Text('StoragePropEnumArrSample')
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

      ChildStoragePropEnumArrSample()
    }
  }
}