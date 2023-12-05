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
 * Progress组件style样式中ProgressStyleOptions属性更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity';
import { TimeHelper } from '../../../util/TimeHelper';

@Entry
@Component
struct ProgressProgressStyleSample {
  timeHelper: TimeHelper = new TimeHelper('ProgressProgressStyleSample');
  @State strokeWidth: number = 4;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change strokeWidth 4 to 20')
            .id('change strokeWidth 4 to 20')
            .margin('5vp')
            .onClick(() => {
              this.strokeWidth = 20;
            })
        }.width('100%')


        ForEach(ArrEntity.arr, (index: number) => {
          if (this.strokeWidth != null && this.timeHelper.printTime(true)) {
          }
          Progress({ value: 50, style: ProgressStyle.Linear }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.Ring }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.Eclipse }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.ScaleRing }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.Capsule }).style({ strokeWidth: this.strokeWidth })

          Progress({ value: 50, style: ProgressStyle.Linear }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.Ring }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.Eclipse }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.ScaleRing }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.Capsule }).style({ strokeWidth: this.strokeWidth })

          Progress({ value: 50, style: ProgressStyle.Linear }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.Ring }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.Eclipse }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.ScaleRing }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.Capsule }).style({ strokeWidth: this.strokeWidth })

          Progress({ value: 50, style: ProgressStyle.Linear }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.Ring }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.Eclipse }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.ScaleRing }).style({ strokeWidth: this.strokeWidth })
          Progress({ value: 50, style: ProgressStyle.Capsule }).style({ strokeWidth: this.strokeWidth })
          if (this.strokeWidth != null && this.timeHelper.printTime(false)) {
          }
        })


      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}