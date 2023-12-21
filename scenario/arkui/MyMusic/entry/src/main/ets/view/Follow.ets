/*
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import { FollowHead } from './FollowHead';
import mainViewModel from '../viewmodel/MainViewModel';
import ItemData from '../viewmodel/ItemData';
import { MineActivityItem } from './MineActivityItem';
import MineActivityItemData from '../viewmodel/MineActivityItemData';
import curves from '@ohos.curves'

/**
 * Home tab content
 */
@Component
export default struct Follow {
  @State showTip: boolean = false;

  build() {
    Column() {
      FollowHead()
      Scroll() {
        Column() {
          Row() {
            Column() {
              Image($r('app.media.brand'))
                .width('64vp')
                .height('64vp')
                .borderRadius('48vp')
                .margin('12vp')
              Text('乐迷团')
                .fontSize('14fp')
                .maxLines(1)
                .textOverflow({ overflow: TextOverflow.Ellipsis })
            }.width('64vp')
            .margin({ right: '16vp' })

            Scroll() {
              Row() {
                ForEach(mainViewModel.getFollowers(), (item: ItemData) => {
                  Column() {
                    Image(item.img)
                      .width('64vp')
                      .height('64vp')
                      .borderRadius('48vp')
                      .margin('12vp')
                    Text(item.title)
                      .fontSize('14fp')
                      .maxLines(1)
                      .textOverflow({ overflow: TextOverflow.Ellipsis })
                  }.width('64vp')
                  .margin({ right: '16vp' })
                }, (item: ItemData) => JSON.stringify(item))
              }
            }
            .scrollable(ScrollDirection.Horizontal)
            .scrollBar(BarState.Off)
            .edgeEffect(EdgeEffect.Spring)
          }.width('90%')

          Row() {
            Text('我的关注')
            Blank()
            Text('全部').fontWeight(FontWeight.Bold)
            Text('|').margin({ left: '12vp', right: '12vp' })
            Text('音乐人')
            Text('|').margin({ left: '12vp', right: '12vp' })
            Text('朋友')
          }.width('90%')
          .justifyContent(FlexAlign.SpaceBetween)
          .margin({ top: '20vp' })

          Row() {
          }
          .width('100%')
          .height('10vp')
          .backgroundColor('#f5f5f5')
          .margin({ top: '12vp', bottom: '12vp' })

          //list
          List({ space: 10 }) {
            ForEach(mainViewModel.getFollowActivityItemData(), (item: MineActivityItemData) => {
              ListItem() {
                MineActivityItem({ item })
              }
              .align(Alignment.Start)
            }, (item: MineActivityItemData) => JSON.stringify(item))
          }.margin('12vp')
          .edgeEffect(EdgeEffect.Spring)
          .divider({ strokeWidth: 1, color: 0xF0F0F0 })

          Row() {
          }
          .width('100%')
          .height('10vp')
          .backgroundColor('#f5f5f5')
          .margin({ top: '12vp', bottom: '12vp' })
          .onVisibleAreaChange([0.0, 1.0],() => {
            this.showTip = false;
          })

          Row() {
            Text('推荐动态')
              .fontWeight(FontWeight.Bold)
            Blank()
            if (this.showTip) {
              Text('查看全部动态').padding('4vp')
                .borderColor('#f5f5f5')
                .borderWidth(1)
                .borderRadius('4vp')
                .transition(TransitionEffect.OPACITY
                  .animation({ curve: curves.springMotion() })
                  .combine(TransitionEffect.move(TransitionEdge.TOP)))
            }

          }.margin({ top: '12vp' })
          .width('90%')
          .justifyContent(FlexAlign.SpaceBetween)

          //list
          List({ space: 10 }) {
            ForEach(mainViewModel.getRecommendActivityItemData(), (item: MineActivityItemData) => {
              ListItem() {
                MineActivityItem({ item })
              }
              .align(Alignment.Start)
            }, (item: MineActivityItemData) => JSON.stringify(item))
          }
          .margin('12vp')
          .edgeEffect(EdgeEffect.Spring)
          .height('92%')
          .divider({ strokeWidth: 1, color: 0xF0F0F0 })
          .nestedScroll({
            scrollForward: NestedScrollMode.PARENT_FIRST,
            scrollBackward: NestedScrollMode.SELF_FIRST
          })
          .onScrollStart(() => {
            this.showTip = true;
          })
        }
      }
      .edgeEffect(EdgeEffect.Spring)
      .friction(0.6)
      .scrollBar(BarState.Off)
      .width('100%')
    }
    .alignItems(HorizontalAlign.Start)
    .width('100%')
    .height('100%')
  }
}
