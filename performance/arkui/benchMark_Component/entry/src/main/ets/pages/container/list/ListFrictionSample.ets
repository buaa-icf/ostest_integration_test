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
struct ListFrictionSample {
  timeHelper: TimeHelper = new TimeHelper('ListFrictionSample');
  @State friction: number = 0.8;
  index:number=0;
  nextIndex():number{
    return this.index++;
  }

  build() {
    Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Button('change friction')
          .id('ListFriction')
          .margin('5vp')
          .onClick(() => {
            this.friction = 1.5;
          })
      }.width('100%')

      List() {
        ForEach(ArrEntity.arr, (index: number) => {
          if (this.friction > 0 && this.timeHelper.printTime(true)) {
          }

          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }
          ListItem() { Text(`this is text ${this.nextIndex()}`) }

          if (this.friction > 0 && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))
      }
      .friction(this.friction)

    }
    .width('100%')
  }
}