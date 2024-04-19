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
struct ListEnableScrollInteractionSample {
  timeHelper: TimeHelper = new TimeHelper('ListEnableScrollInteractionSample');
  @State enableScrollInteraction: boolean = false;
  private scrollerForList: Scroller = new Scroller();
  @State xOffset: number = -1;
  @State yOffset: number = -1;
  index:number=0;
  nextIndex():number{
    return this.index++;
  }

  build() {
    Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Button('change enableScrollInteraction true')
          .id('ListEnableScrollInteraction_true')
          .margin('5vp')
          .onClick(() => {
            this.enableScrollInteraction = true;
            this.xOffset = 0;
            this.yOffset = 1200;
          })
        Button('change enableScrollInteraction false')
          .id('ListEnableScrollInteraction_false')
          .margin('5vp')
          .onClick(() => {
            this.enableScrollInteraction = false;
            this.xOffset = 0;
            this.yOffset = 0;
          })
        Button('change Scroller controller')
          .id('ListEnableScrollInteraction_Scroller')
          .margin('5vp')
          .onClick(() => {
            this.scrollerForList.scrollTo({ xOffset: this.xOffset, yOffset: this.yOffset });
          })
      }.width('100%')

      List({ scroller: this.scrollerForList }) {
        ForEach(ArrEntity.arr, (index: number) => {
          if (this.enableScrollInteraction != null && this.timeHelper.printTime(true)) {
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

          if (this.enableScrollInteraction != null && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))
      }
      .enableScrollInteraction(this.enableScrollInteraction)

    }
    .width('100%')
  }
}