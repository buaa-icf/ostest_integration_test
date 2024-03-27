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

let testData: Record<string, LanguageEnum[]> = { 'link': [LanguageEnum.English, LanguageEnum.Chinese, LanguageEnum.English,
  LanguageEnum.Chinese, LanguageEnum.English, LanguageEnum.Chinese, LanguageEnum.English, LanguageEnum.Chinese,
  LanguageEnum.English, LanguageEnum.Chinese] };
let storage = new LocalStorage(testData);

@Component
struct ChildLocalStorageLinkEnumArrSample {
  timeHelper: TimeHelper = new TimeHelper('LocalStorageLinkEnumArrSample')
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @LocalStorageLink('link') childEnumArrLink: LanguageEnum[] = [];
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true
  tmpArr: LanguageEnum[] = [LanguageEnum.English, LanguageEnum.Chinese]

  aboutToAppear(): void {
    // 不绑定UI的状态性能测试
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childEnumArrLink[index] = this.tmpArr[index % 2]
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.childEnumArrLink[index]
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(this.isType, this.timeHelper) ?
        `child value: ${this.childEnumArrLink[this.childEnumArrLink.length - 1]}` :
        `child value: ${this.childEnumArrLink[this.childEnumArrLink.length - 1]}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          this.isType = false
          this.childEnumArrLink.push(LanguageEnum.Japanese)
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      // 更改将同步至LocalStorage中的'link'以及Parent.parentEnumArrLink
      Button('child click: 读@LocalStorageLink的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          let tmp = this.childEnumArrLink[0]
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child link: 写@LocalStorageLink的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          let index = this.childEnumArrLink.length - 1
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.childEnumArrLink[index] = LanguageEnum.Russian
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry(storage)
@Component
struct LocalStorageLinkEnumArrSample {
  @LocalStorageLink('link') parentEnumArrLink: LanguageEnum[] = [];

  build() {
    Column({ space: 15 }) {
      Text('LocalStorageLinkEnumArrSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentEnumArrLink[this.parentEnumArrLink.length - 1]}`)
      // 父组件的数据源的修改会同步给子组件
      Button('parent click')
        .id('parentSetStateTimeTaken')
        .onClick(() => {
          this.parentEnumArrLink.push(LanguageEnum.Korea)
        })

      ChildLocalStorageLinkEnumArrSample()
    }
  }
}