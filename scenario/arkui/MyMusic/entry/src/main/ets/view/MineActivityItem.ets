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

import ItemData from '../viewmodel/MineActivityItemData';
import MineListItemData from '../viewmodel/MineListItemData';
import { MineListItem } from './MineListItem';
import { MineUserItem } from './MineUserItem';

/**
 * List item information component.
 */
@Component
export struct MineActivityItem {
  private item: ItemData = new ItemData('', $r('app.media.fig21'),
    new MineListItemData('', $r('app.media.fig21'), '', Visibility.None, Visibility.None),
    0, 0, 0,[],undefined);

  build() {
    Column() {
      MineUserItem({ item: this.item.userItem })
        .margin({ top: '16vp' })
      Text(this.item.title)
        .margin({ top: '16vp' })
        .padding({ left: '64vp' })
      Image(this.item.img)
        .width('70%')
        .borderRadius('12vp')
        .margin({ top: '16vp', left: '64vp' })
      if(this.item.contentItem !== undefined){
        MineListItem({ item: this.item.contentItem })
          .margin({ left: '64vp', top: '16vp' })
          .backgroundColor('#e9e9e9')
          .padding('12vp')
          .width('80%')
          .borderRadius('12vp')
      }
      Row(){
        ForEach(this.item.topics,(topic:string)=>{
          Text(topic)
            .fontSize('12vp')
            .fontColor('#a0a0a0')
            .padding('4vp')
            .backgroundColor('#f0f0f0')
            .borderRadius('8vp')
            .margin({right:'4vp'})
        })
      }
      .margin({ left: '64vp', top: '16vp' })
      Row() {
        Row() {
          Image($r('app.media.ic_public_share'))
            .width('24vp')
            .height('24vp')
          if(this.item.comments !== 0){
            Text(this.item.share.toString()).margin({ left: '4vp' })
          }else{
            Text('分享').margin({ left: '4vp' })
          }
        }.width('25%')

        Row() {
          Image($r('app.media.ic_public_comments'))
            .width('24vp')
            .height('24vp')
          if(this.item.comments !== 0){
            Text(this.item.comments.toString()).margin({ left: '4vp' })
          }else{
            Text('评论').margin({ left: '4vp' })
          }
        }.width('25%')

        Row() {
          Image($r('app.media.ic_public_thumbsup'))
            .width('24vp')
            .height('24vp')
          if(this.item.comments !== 0){
            Text(this.item.comments.toString()).margin({ left: '4vp' })
          }else{
            Text('赞').margin({ left: '4vp' })
          }
        }.width('25%')

        Blank()
        Image($r('app.media.ic_public_more_list'))
          .width('24vp')
          .height('24vp')
      }.width('100%')
      .padding({ left: '64vp' })
      .margin({ top: '16vp' })
      .justifyContent(FlexAlign.SpaceBetween)
    }.alignItems(HorizontalAlign.Start)
    .margin({bottom:'12vp'})
  }
}