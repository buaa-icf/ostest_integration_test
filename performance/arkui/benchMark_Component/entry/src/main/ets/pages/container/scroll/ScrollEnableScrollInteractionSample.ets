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

import router from '@ohos.router';
import { ArrEntity } from '../../../entity/ArrEntity';
import { TimeHelper } from '../../../util/TimeHelper';

@Entry
@Component
struct ScrollEnableScrollInteractionSample {
  timeHelper: TimeHelper = new TimeHelper('ScrollEnableScrollInteractionSample');
  buttonName: string = '';
  scroller: Scroller = new Scroller();
  @State changeValue: boolean = false;
  initBoolean: boolean = false;

  aboutToAppear() {
    this.buttonName = (router.getParams() as Record<string, string>)['buttonName'];
    this.changeValue = (router.getParams() as Record<string, string>)['text'] == 'true';
    this.initBoolean = this.changeValue;
    this.timeHelper = new TimeHelper(this.buttonName + 'Sample');
  }

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
          Button('false to true')
            .id('ScrollEnableScrollInteractionFalseToTrue')
            .margin('5vp')
            .onClick(() => {
              this.initBoolean = false;
              this.changeValue = true;
              this.scroller.scrollBy(200, 200);
            })
          Button('true to false')
            .id('ScrollEnableScrollInteractionTrueToFalse')
            .margin('5vp')
            .onClick(() => {
              this.initBoolean = true;
              this.changeValue = false;
              this.scroller.scrollBy(200, 200);
            })
        }.width('100%')

        Scroll(this.scroller) {
          ForEach(ArrEntity.arr, (index: number) => {
            if (this.initBoolean !== this.changeValue && this.timeHelper.printTime(true, 1)) {
            }

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)

            Column()
              .width('100%')
              .height(20)
              .margin(5)
              .backgroundColor(Color.Blue)
            if (this.initBoolean !== this.changeValue && this.timeHelper.printTime(false, 1)) {
            }
          }, (item: number) => JSON.stringify(item))
        }
        .scrollable(ScrollDirection.Vertical)
        .width('100%')
        .height('100%')
        .backgroundColor(Color.Red)
        .enableScrollInteraction(this.changeValue)

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}