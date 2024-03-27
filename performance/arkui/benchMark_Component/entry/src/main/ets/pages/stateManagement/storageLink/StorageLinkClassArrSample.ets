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
AppStorage.setOrCreate('link', testData);

@Component
struct ChildStorageLinkClassArrSample {
  timeHelper: TimeHelper = new TimeHelper('StorageLinkClassArrSample')
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @StorageLink('link') childClassArrLink: ClassModel[] = [];
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true
  tmpArr: ClassModel[] = [classModel, classModel1]

  aboutToAppear(): void {
    // 不绑定UI的状态性能测试
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childClassArrLink[index] = this.tmpArr[index % 2]
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.childClassArrLink[index].value
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(this.isType, this.timeHelper) ?
        `child value: ${this.childClassArrLink[this.childClassArrLink.length - 1].value}` :
        `child value: ${this.childClassArrLink[this.childClassArrLink.length - 1].value}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          this.isType = false
          this.childClassArrLink.push(classModel2)
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      // 更改将同步至Storage中的'link'以及Parent.parentClassArrLink
      Button('child click: 读@StorageLink的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          let tmp = this.childClassArrLink[0].value
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child link: 写@StorageLink的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          let index = this.childClassArrLink.length - 1
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.childClassArrLink[index] = classModel3
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry
@Component
struct StorageLinkClassArrSample {
  @StorageLink('link') parentClassArrLink: ClassModel[] = [];

  build() {
    Column({ space: 15 }) {
      Text('StorageLinkClassArrSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentClassArrLink[this.parentClassArrLink.length - 1].value}`)
      // 父组件的数据源的修改会同步给子组件
      Button('parent click')
        .id('parentSetStateTimeTaken')
        .onClick(() => {
          this.parentClassArrLink.push(classModel1)
        })

      ChildStorageLinkClassArrSample()
    }
  }
}