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

import ItemData from '../models/BasicInfoItemData';

/**
 * List item information component.
 */
@Component
export default struct BasicInfoArray {
  @State title: string = '';
  @State infoArray: ItemData[] = [];
  @State isFold: boolean = false;

  aboutToAppear() {
  }

  build() {
    Column() {
      Row() {
        Text(this.title)
          .fontSize(24)
          .padding(12)
        Image($r('app.media.chevron_down'))
          .width(36)
          .height(36)
          .rotate({ angle: this.isFold ? 0 : 180 })
      }
      .clickEffect({ level: ClickEffectLevel.LIGHT})
      .justifyContent(FlexAlign.SpaceBetween)
      .backgroundColor('#33CCCCCC')
      .width('100%')
      .onClick(() => {
        this.isFold = !this.isFold;
      })

      if (!this.isFold) {
        List() {
          ForEach(this.infoArray, (item: ItemData, index: number) => {
            ListItem() {
              Row() {
                Text(item.name)
                  .fontSize(18)
                Text(item.value)
                  .fontSize(18)
              }
              .margin({ top: 4, bottom: 4 })
              .justifyContent(FlexAlign.SpaceBetween)
              .width('100%')
            }.backgroundColor(index % 2 === 0 ? '#FFFFFF' : '#33EEEEEE')
          })
        }
        .transition(TransitionEffect.OPACITY.animation({ duration: 1000, curve: Curve.Ease }))
        .width('90%')
      }
    }
    .margin(8)
    .shadow({
      radius: 10,
      color: Color.Gray,
      offsetX: 5,
      offsetY: 5
    })
  }
}