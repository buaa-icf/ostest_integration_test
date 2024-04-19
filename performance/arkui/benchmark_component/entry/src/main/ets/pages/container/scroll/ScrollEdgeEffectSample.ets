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
struct ScrollEdgeEffectSample {
  timeHelper: TimeHelper = new TimeHelper('ScrollEdgeEffectSample');
  buttonName: string = '';
  scroller: Scroller = new Scroller();
  edgeEffect: EdgeEffect = EdgeEffect.None;
  @State initEdgeEffect: EdgeEffect = EdgeEffect.None;
  isToEnd: boolean = false;

  aboutToAppear() {
    this.buttonName = (router.getParams() as Record<string, string>)['buttonName'];
    this.timeHelper = new TimeHelper(this.buttonName + 'Sample');
  }

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
          Button('ScrollEdgeEffectSpring')
            .id('ScrollEdgeEffectSpring')
            .margin('5vp')
            .onClick(() => {
              this.edgeEffect = EdgeEffect.Fade
              this.initEdgeEffect = EdgeEffect.Spring
              this.scroller.scrollEdge(Edge.End)
            })
          Button('ScrollEdgeEffectFade')
            .id('ScrollEdgeEffectFade')
            .margin('5vp')
            .onClick(() => {
              this.edgeEffect = EdgeEffect.None
              this.initEdgeEffect = EdgeEffect.Fade
              this.scroller.scrollEdge(Edge.Top)
            })
          Button('ScrollEdgeEffectNone')
            .id('ScrollEdgeEffectNone')
            .margin('5vp')
            .onClick(() => {
              this.edgeEffect = EdgeEffect.Spring
              this.initEdgeEffect = EdgeEffect.None
              this.scroller.scrollEdge(Edge.End)
            })
        }.width('100%')

        Scroll(this.scroller) {
          Column() {
            ForEach(ArrEntity.arr, (index: number) => {
              if (this.edgeEffect != this.initEdgeEffect && this.timeHelper.printTime(true, 1)) {
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
              if (this.edgeEffect != this.initEdgeEffect && this.timeHelper.printTime(false, 1)) {
              }
            }, (item: number) => JSON.stringify(item))

          }
        }
        .scrollable(ScrollDirection.Vertical)
        .width('100%')
        .height('100%')
        .backgroundColor(Color.Red)
        .edgeEffect(this.edgeEffect)

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}