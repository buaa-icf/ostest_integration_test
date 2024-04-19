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
import { TimeHelper } from '../../../util/TimeHelper';

@Entry
@Component
struct ListDividerSample {
  timeHelper: TimeHelper = new TimeHelper('ListDividerSample');
  @State divider: ESObject = { strokeWidth: 10 };

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Row() {
          Button('change divider')
            .id('ListDivider')
            .margin('5vp')
            .onClick(() => {
              this.divider = { strokeWidth: 30 };
            })
        }.width('100%')

        List() {
          ForEach(ArrEntity.arr, (index: number) => {
            if (this.divider != null && this.timeHelper.printTime(true)) {
            }

            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()

            if (this.divider != null && this.timeHelper.printTime(false)) {
            }
          }, (item: number) => JSON.stringify(item))
        }
        .divider(this.divider)

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}