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
struct ChildWatchPropStringSample {
  timeHelper: TimeHelper = new TimeHelper('WatchPropStringSample')
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Prop @Watch('watchData') value: string = 'this is ChildWatchPropStringSample';
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  stateLoop : boolean = false
  uiWrite : boolean = false
  buttonWrite : boolean = false

  watchData(propName: string): void {
    if(this.stateLoop){
      this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
      this.stateLoop = false
    }
    if(this.uiWrite){
      this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.UI_CHANGE, true))
      this.uiWrite = false
    }
    if(this.buttonWrite){
      this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
      this.buttonWrite = false
    }
  }

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      if(index === ArrEntity.STATE_LOOP - 1){
        this.stateLoop = true;
      }
      this.value = index.toString()
    }
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.value}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          this.uiWrite = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
          this.value = '子类点击Text'
        })
      // @Prop装饰的变量会同步给父组件
      Button(`child click:@Watch监听写@Prop修饰string的耗时`)
        .id('setStateTimeTaken')
        .onClick(() => {
          this.buttonWrite = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.value = '子类点击Button'
        })
    }
  }
}


@Component
@Entry
struct WatchPropStringSample {
  @State value: string = 'Hello, World';

  build() {
    Column({ space: 15 }) {
      Text('WatchPropStringSample')
        .fontSize(25)
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.value}`)
      //父组件的修饰源的修改会同步给子组件
      Button(`parent click`)
        .id('parentSetStateTimeTaken')
        .onClick(() => {
          this.value = '父类点击Button'
        })
      ChildWatchPropStringSample({ value: this.value })
    }
  }
}