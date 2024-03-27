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

import { TimeHelper } from '../../../util/TimeHelper';
import { ClassModel, classModel, classModel1, classModel2, classModel3 } from '../ClassModel'
import { StateConstants, StateModel } from '../StateModel';
import { StateUtils } from '../StateUtils';

let testData: Record<string, ClassModel> = { 'link': classModel2 };
let storage = new LocalStorage(testData);

@Component
struct ChildLocalStorageLinkClassSample {
  timeHelper: TimeHelper = new TimeHelper('LocalStorageLinkClassSample')
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @LocalStorageLink('link') childClassLink: ClassModel = classModel3;
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true
  tmpArr: ClassModel[] = [classModel, classModel1]

  aboutToAppear(): void {
    // 不绑定UI的状态性能测试
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childClassLink = this.tmpArr[index % 2]
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.childClassLink.value
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(this.isType, this.timeHelper) ? `child value: ${this.childClassLink.value}` :
      `child value: ${this.childClassLink.value}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          this.isType = false
          this.childClassLink = classModel2
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      // 更改将同步至LocalStorage中的'link'以及Parent.parentClassLink
      Button('child click: 读@LocalStorageLink的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          let tmp = this.childClassLink.value
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child link: 写@LocalStorageLink的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.childClassLink = classModel3
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry(storage)
@Component
struct LocalStorageLinkClassSample {
  @LocalStorageLink('link') parentClassLink: ClassModel = classModel;

  build() {
    Column({ space: 15 }) {
      Text('LocalStorageLinkClassSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentClassLink.value}`)
      // 父组件的数据源的修改会同步给子组件
      Button('parent click')
        .id('parentSetStateTimeTaken')
        .onClick(() => {
          this.parentClassLink = classModel1
        })

      ChildLocalStorageLinkClassSample()
    }
  }
}