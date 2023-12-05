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
struct Sample {
  timeHelper: TimeHelper = new TimeHelper('Sample');
  buttonName: string = '';
  scroller: Scroller = new Scroller();
  edgeEffect: EdgeEffect = EdgeEffect.Spring;
  @State initEdgeEffect: EdgeEffect = EdgeEffect.Spring;
  isToEnd: boolean = false;

  aboutToAppear() {
    this.buttonName = (router.getParams() as Record<string, string>)['buttonName'];
    this.timeHelper = new TimeHelper(this.buttonName + 'Sample');
    this.edgeEffect = Number((router.getParams() as Record<string, string>)['text']);
    this.initEdgeEffect = Number((router.getParams() as Record<string, string>)['text']) + 1;
    if (this.initEdgeEffect == 3) {
      this.initEdgeEffect = 0;
    }
  }

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Row() {
          Button('Scroll EdgeEffect')
            .id(this.buttonName)
            .margin('5vp')
            .onClick(() => {
              this.initEdgeEffect = this.edgeEffect
              this.scroller.scrollEdge(Edge.End)
            })
        }.width('100%')


        Scroll(this.scroller) {
          Column() {
            ForEach(ArrEntity.arr, (index: number) => {
              if (this.edgeEffect === this.initEdgeEffect && this.timeHelper.printTime(true, 1)) {
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
              if (this.edgeEffect === this.initEdgeEffect && this.timeHelper.printTime(false, 1)) {
              }
            }, (item: number) => JSON.stringify(item))

          }
        }
        .scrollable(ScrollDirection.Vertical)
        .width('100%')
        .height('100%')
        .backgroundColor(Color.Red)
        .edgeEffect(this.initEdgeEffect)

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}