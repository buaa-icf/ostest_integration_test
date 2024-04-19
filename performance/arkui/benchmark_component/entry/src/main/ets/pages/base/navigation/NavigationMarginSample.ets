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
 * Navigation组件margin属性更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct NavigationMarginSample {
  timeHelper: TimeHelper = new TimeHelper('NavigationMarginSample');
  @State navigationMargin: number = 20;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change margin 20 to 30')
            .id('change margin 20 to 30')
            .margin('5vp')
            .onClick(() => {
              this.navigationMargin = 30;
            })
        }.width('100%')


        ForEach(ArrEntity.arr, (index: number) => {
          if (this.navigationMargin > 0 && this.timeHelper.printTime(true)) {
          }
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          Navigation().margin(this.navigationMargin)
          if (this.navigationMargin > 0 && this.timeHelper.printTime(false)) {
          }
        })


      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}