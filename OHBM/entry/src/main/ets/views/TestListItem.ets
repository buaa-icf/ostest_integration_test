/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import ItemData from '../models/TestItemData';
import { promptAction } from '@kit.ArkUI';

/**
 * List item information component.
 */
@Component
export default struct TestListItem {
  item: ItemData = new ItemData('', $r('app.media.app_icon'), '');
  active: boolean = false;

  aboutToAppear() {
  }

  build() {
    Navigator({ target: this.item.url, type: NavigationType.Push }) {
      Row() {
        Column() {
        }
        .backgroundImage(this.item.img)
        .backgroundImageSize(ImageSize.Cover)
        .width(32)
        .height(32)
        .justifyContent(FlexAlign.SpaceBetween)
        .margin(8)

        Column() {
          Text(this.item.title)
            .fontSize(20)
            .maxLines(1)
            .margin(4)
            .textOverflow({ overflow: TextOverflow.MARQUEE })
          Text(this.item.subTitle)
            .fontSize(16)
            .margin(4)
            .fontColor(Color.Gray)
        }.alignItems(HorizontalAlign.Start)

        Blank()
        Image($r('app.media.chevron_down'))
          .height(32)
          .width(32)
          .margin(8)
          .rotate({ angle: '-90' })
      }
      .width('100%')
      .alignItems(VerticalAlign.Center)
      .justifyContent(FlexAlign.SpaceBetween)
      .clickEffect({ level: ClickEffectLevel.MIDDLE, scale: 0.8 })
    }
    .active(this.active)
    .onClick(() => {
      if (this.item.url === '') {
        promptAction.showToast({
          message: '敬请期待',
          duration: 2000
        });
      } else {
        this.active = true;
      }
    })
  }
}