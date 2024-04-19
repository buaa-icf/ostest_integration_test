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
struct ListStickySample {
  timeHelper: TimeHelper = new TimeHelper('ListStickySample');
  @State sticky: StickyStyle = StickyStyle.Header;
  index:number=0;
  nextIndex():number{
    return this.index++;
  }

  build() {
    Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Button('change listSticky None')
          .id('ListSticky_None')
          .margin('5vp')
          .onClick(() => {
            this.sticky = StickyStyle.None;
          })
        Button('change listSticky Header')
          .id('ListSticky_Header')
          .margin('5vp')
          .onClick(() => {
            this.sticky = StickyStyle.Header;
          })
        Button('change listSticky Footer')
          .id('ListSticky_Footer')
          .margin('5vp')
          .onClick(() => {
            this.sticky = StickyStyle.Footer;
          })
      }.width('100%')


      List() {
        ForEach(ArrEntity.arr, (index: number) => {
          if (this.sticky != null && this.timeHelper.printTime(true)) {
          }

          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }
          ListItemGroup() { ListItem() { Text(`this is text ${this.nextIndex()}`) } }

          if (this.sticky != null && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))
      }
      .chainAnimation(true)
      .sticky(this.sticky)



    }
    .width('100%')
  }
}