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
struct ListChainAnimationOptionsSample {
  timeHelper: TimeHelper = new TimeHelper('ListChainAnimationOptionsSample');
  @State chainAnimationEnable: boolean = true;
  index:number=0;
  nextIndex():number{
    return this.index++;
  }

  build() {
    Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
      Row() {
        Button('change chainAnimationOptions')
          .id('ListChainAnimationOptions')
          .margin('5vp')
          .onClick(() => {
            this.chainAnimationEnable = !this.chainAnimationEnable;
          })
      }.width('100%')

      List() {
        ForEach(ArrEntity.arr, (index: number) => {
          if (this.chainAnimationEnable && this.timeHelper.printTime(true)) {
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



          if (this.chainAnimationEnable && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))
      }
      .chainAnimation(this.chainAnimationEnable)

    }
    .width('100%')
  }
}
