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
struct ListListDirectionSample {
  timeHelper: TimeHelper = new TimeHelper('ListListDirectionSample');
  @State listListDirection: Axis = Axis.Vertical;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Row() {
          Button('change listDirection')
            .id('ListListDirection')
            .margin('5vp')
            .onClick(() => {
              this.listListDirection = Axis.Horizontal;
            })
        }.width('100%')

        List() {
          ForEach(ArrEntity.arr, (index: number) => {
            if (this.listListDirection != null && this.timeHelper.printTime(true)) {
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

            if (this.listListDirection != null && this.timeHelper.printTime(false)) {
            }
          }, (item: number) => JSON.stringify(item))
        }
        .listDirection(this.listListDirection)

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}