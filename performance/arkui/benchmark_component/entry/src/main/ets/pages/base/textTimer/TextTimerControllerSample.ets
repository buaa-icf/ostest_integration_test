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

/**
 * TextTimer组件TextTimerController更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct TextTimerControllerSample {
  timeHelper: TimeHelper = new TimeHelper('TextTimerControllerSample');
  textTimerController: TextTimerController = new TextTimerController();
  @State textTimerEvent: string = '';

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change controller to start')
            .id('change controller to start')
            .margin('5vp')
            .onClick(() => {
              this.textTimerController.start();
              this.textTimerEvent = 'start'
            })
        }.width('100%')

        Column() {
          Button('change controller to pause')
            .id('change controller to pause')
            .margin('5vp')
            .onClick(() => {
              this.textTimerController.pause();
              this.textTimerEvent = 'pause'
            })
        }.width('100%')

        Column() {
          Button('change controller to reset')
            .id('change controller to reset')
            .margin('5vp')
            .onClick(() => {
              this.textTimerController.reset();
              this.textTimerEvent = 'reset'
            })
        }.width('100%')

        ForEach(ArrEntity.arr, (index: number) => {
          if (this.textTimerEvent != null && this.timeHelper.printTime(true)) {
          }
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          TextTimer({ controller: this.textTimerController })
          if (this.textTimerEvent != null && this.timeHelper.printTime(false)) {
          }
        })

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}