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
struct ListEdgeEffectSample {
  timeHelper: TimeHelper = new TimeHelper('ListEdgeEffectSample');
  @State edgeEffect: EdgeEffect = EdgeEffect.None;
  index:number=0;
  nextIndex():number{
    return this.index++;
  }

  build() {
    Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Button('change edgeEffect Spring')
          .id('ListEdgeEffect_Spring')
          .margin('5vp')
          .onClick(() => {
            this.edgeEffect = EdgeEffect.Spring;
          })
        Button('change edgeEffect Fade')
          .id('ListEdgeEffect_Fade')
          .margin('5vp')
          .onClick(() => {
            this.edgeEffect = EdgeEffect.Fade;
          })
        Button('change edgeEffect None')
          .id('ListEdgeEffect_None')
          .margin('5vp')
          .onClick(() => {
            this.edgeEffect = EdgeEffect.None;
          })
      }.width('100%')


      List() {
        ForEach(ArrEntity.arr, (index: number) => {
          if (this.edgeEffect != null && this.timeHelper.printTime(true)) {
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



          if (this.edgeEffect != null && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))
      }
      .edgeEffect(this.edgeEffect)



    }
    .width('100%')
  }
}