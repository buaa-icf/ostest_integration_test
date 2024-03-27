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

let testData: Record<string, string> = { 'PropA': 'default' };
let storage = new LocalStorage(testData);

@Component
struct ChildWatchLocalStoragePropStringSample {
  timeHelper: TimeHelper = new TimeHelper('WatchLocalStoragePropStringSample')
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @LocalStorageProp('PropA') @Watch('watchData') childStringProp: string = "child Prop";
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
    // 不绑定UI的状态性能测试
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      if(index === ArrEntity.STATE_LOOP - 1){
        this.stateLoop = true;
      }
      this.childStringProp = index.toString()
    }
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.childStringProp}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          this.uiWrite = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
          this.childStringProp = 'child: changeUITimeTaken'
        })
      // 更改不同步
      Button('child Prop: @Watch监听的写@LocalStorageProp的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.buttonWrite = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.childStringProp = 'child: setStateTimeTaken'
        })
    }
  }
}


@Entry(storage)
@Component
struct WatchLocalStoragePropStringSample {
  @LocalStorageProp('PropA') parentStringProp: string = 'hello, world';

  build() {
    Column({ space: 15 }) {
      Text('WatchLocalStoragePropStringSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentStringProp}`)
      // 父组件的数据源的修改不会同步给子组件
      Button('parent click')
        .id('parentSetStateTimeTaken')
        .onClick(() => {
          this.parentStringProp = 'parent: parentSetStateTimeTaken'
        })

      ChildWatchLocalStoragePropStringSample()
    }
  }
}