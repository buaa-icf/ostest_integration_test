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
 * Progress组件style样式中LinearStyleOptions属性更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct ProgressLinearSample {
  timeHelper: TimeHelper = new TimeHelper('ProgressLinearSample');
  @State strokeWidth: number = 4;
  @State strokeRadius: number = 0;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change strokeWidth(4-20) add strokeRadius(0-10)')
            .id('change strokeWidth(4-20) add strokeRadius(0-10)')
            .margin('5vp')
            .onClick(() => {
              this.strokeWidth = 20;
              this.strokeRadius = 10;
            })
        }.width('100%')


        ForEach(ArrEntity.arr, (index: number) => {
          if (this.strokeWidth != null && this.timeHelper.printTime(true)) {
          }
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          Progress({ value: 50, type: ProgressType.Linear })
            .style({ strokeWidth: this.strokeWidth, strokeRadius: this.strokeRadius })
          if (this.strokeWidth != null && this.timeHelper.printTime(false)) {
          }
        })


      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}