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
struct ChildWatchLinkStringSample {
  timeHelper: TimeHelper = new TimeHelper('WatchLinkStringSample')
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Link @Watch('watchData') childStringStr: string;
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
      this.childStringStr = index.toString()
    }
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.childStringStr}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          this.uiWrite = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
          this.childStringStr = 'child: changeUITimeTaken'
        })
      Button(`child click: @Watch监听的写@Link的耗时`)
        .id('setStateTimeTaken')
        .onClick(() => {
          this.buttonWrite = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.childStringStr = 'child: setStateTimeTaken'
        })
    }
  }
}

@Entry
@Component
struct WatchLinkStringSample {
  @State parentStr: string = 'Hello, World';

  build() {
    Column({ space: 15 }) {
      Text('WatchLinkStringSample')
        .fontSize(25)
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentStr.toString()}`)
      Button(`parent click`)
        .id('parentSetStateTimeTaken')
        .onClick(() => {
          this.parentStr = 'parent: parentSetStateTimeTaken'
        })
      ChildWatchLinkStringSample({ childStringStr: this.parentStr })
    }
  }
}