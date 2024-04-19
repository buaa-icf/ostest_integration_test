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
 * Refresh组件friction属性更新后下拉刷新
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct RefreshFrictionSample {
  timeHelper: TimeHelper = new TimeHelper('RefreshFrictionSample');
  @State refreshFriction: number = 60;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change friction 60 to 80')
            .id('change friction 60 to 80')
            .margin('5vp')
            .onClick(() => {
              this.refreshFriction = 80;
            })
        }.width('100%')


        ForEach(ArrEntity.arr, (index: number) => {
          if (this.refreshFriction != null && this.timeHelper.printTime(true)) {
          }
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          Refresh({ refreshing: false, friction: this.refreshFriction })
          if (this.refreshFriction != null && this.timeHelper.printTime(false)) {
          }
        })


      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}