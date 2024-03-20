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


@Component
struct ChildProvideStringArrSample {
  @Consume testData: string[]

  build() {
    Column({space: 15}) {
      Text(`child value: ${this.testData[this.testData.length - 1]}`)
    }
  }
}

@Entry
@Component
struct ProvideStringArrSample {
  timeHelper: TimeHelper = new TimeHelper('ProvideStringArrSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provide testData: string[] = ['点击text'];
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.push(index.toString())
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({space: 15}) {
      Text('ProvideStringArrSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({bottom: 50, top: 50})
      Text(StateUtils.isType(this.isType, this.timeHelper) ? `parent value: ${this.testData[this.testData.length - 1]}` : `parent value: ${this.testData[this.testData.length - 1]}`)
        .id('changeUITimeTaken')
        .onClick(()=>{
          this.isType = false
          this.testData.push('你好世界')
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      // 父组件的数据源的修改会同步给子组件
      Button('读@Provide的耗时')
        .id('getStateTimeTaken')
        .onClick(()=>{
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          this.testData
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('写@Provide的耗时')
        .id('setStateTimeTaken')
        .onClick(()=>{
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.testData.push('世界你好')
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProvideStringArrSample()
    }
  }
}