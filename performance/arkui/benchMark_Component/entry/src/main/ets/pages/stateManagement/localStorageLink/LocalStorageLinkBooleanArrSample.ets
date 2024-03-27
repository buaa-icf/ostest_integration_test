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
import hilog from '@ohos.hilog';

let testData: Record<string, boolean[]> = { 'link': [true, false, true, false, true, false, true, false, true, false] };
let storage = new LocalStorage(testData);

@Component
struct ChildLocalStorageLinkBooleanArrSample {
  timeHelper: TimeHelper = new TimeHelper('LocalStorageLinkBooleanArrSample')
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @LocalStorageLink('link') childBooleanLink: boolean[] = [];
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true
  tmpArr: boolean[] = [false, true]

  aboutToAppear(): void {
    // 不绑定UI的状态性能测试
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childBooleanLink[index] = this.tmpArr[index % 2]
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.childBooleanLink[index]
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.childBooleanLink[0]}`)
        .id('changeUITimeTaken')
        .fontColor(StateUtils.isType(this.isType, this.timeHelper) ? this.childBooleanLink[0] ? Color.Red : Color.Blue :
          this.childBooleanLink[0] ? Color.Black : Color.Green)
        .onClick(() => {
          this.isType = false
          this.childBooleanLink[0] = !this.childBooleanLink[0]
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      // 更改将同步至LocalStorage中的'link'以及Parent.parentBooleanArrLink
      Button('child click: 读@LocalStorageLink的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          let tmp = this.childBooleanLink[0]
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child link: 写Local@StorageLink的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          let tmp = !this.childBooleanLink[0]
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.childBooleanLink[0] = tmp
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry(storage)
@Component
struct LocalStorageLinkBooleanArrSample {
  @LocalStorageLink('link') parentBooleanLink: boolean[] = [];

  aboutToAppear(): void {
    hilog.info(0xF811, 'parentBooleanLink', `${this.parentBooleanLink.length}`);
  }

  build() {
    Column({ space: 15 }) {
      Text('LocalStorageLinkBooleanArrSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`hello, world`)
        .visibility(this.parentBooleanLink[0] ? Visibility.Visible : Visibility.Hidden)
      // 父组件的数据源的修改会同步给子组件
      Button('parent click')
        .id('parentSetStateTimeTaken')
        .onClick(() => {
          this.parentBooleanLink[0] = !this.parentBooleanLink[0]
        })

      ChildLocalStorageLinkBooleanArrSample()
    }
  }
}