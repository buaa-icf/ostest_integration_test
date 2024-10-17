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

import AudioData from '../model/AudioData';
import PlayerManager from '../manager/PlayerManager'
import ExploreSongItem from './ExploreSongItem';
import AppConstants from '../constants/AppConstants';
import PlayListData from '../model/PlayListData';
import prompt from '@ohos.promptAction';
import { ExploreListMore } from './ExploreListMore';
import emitter from '@ohos.events.emitter';

@Component
export default struct ExplorePlayList {
  private PlayerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;
  @State explorePlaylistItem: PlayListData = new PlayListData('', $r('app.media.icon'), '', [], '');
  @Link isShowPlayList: boolean;
  @Prop customPlayLists: PlayListData[];
  private scrollerForList: Scroller = new Scroller();
  private dialogController: CustomDialogController | null = null;

  aboutToAppear() {
    animateTo({ duration: 1000 }, () => {
      this.explorePlaylistItem = this.PlayerManager.getExploreList();
    })
    emitter.on(AppConstants.UPDATE_EXPLORE_LIST, () => {
      animateTo({ duration: 1000 }, () => {
        this.explorePlaylistItem = this.PlayerManager.getExploreList();
      })
    });
  }

  aboutToDisappear(): void {
    emitter.off(AppConstants.UPDATE_EXPLORE_LIST);
  }

  build() {
    Column() {
      Row() {
        Image($r('app.media.chevron_down'))
          .width(48)
          .height(48)
          .padding(6)
          .clickEffect(AppConstants.CLICK_EFFECT)
          .onClick(() => {
            this.isShowPlayList = false;
          })
          .id('detail_dismiss')
        Row() {
          Text(this.explorePlaylistItem.title)
            .fontSize(24)
            .maxLines(1)
            .textOverflow({ overflow: TextOverflow.MARQUEE })
          Text('(' + this.explorePlaylistItem.list.length + ')')
            .fontSize(16)
            .maxLines(1)
        }
        .margin(12)
        .alignItems(VerticalAlign.Bottom)

        Image($r('app.media.media_center'))
          .width(48)
          .height(48)
          .padding(6)
          .clickEffect(AppConstants.CLICK_EFFECT)
          .onClick(() => {
            if (this.explorePlaylistItem.list.length > 0) {
              prompt.showToast({
                message: '播放歌单：' + this.explorePlaylistItem.title
              })
              this.PlayerManager.playList(this.explorePlaylistItem.title, this.explorePlaylistItem.list,
                this.explorePlaylistItem.list[0]);
            }
          })
      }
      .width('90%')
      .margin(4)
      .justifyContent(FlexAlign.SpaceBetween)

      List({ scroller: this.scrollerForList }) {
        ForEach(this.explorePlaylistItem.list, (item: AudioData, index: number) => {
          ListItem() {
            Row() {
              ExploreSongItem({ item, index })
                .width('85%')
                .clickEffect(AppConstants.CLICK_EFFECT)
                .onClick(() => {
                  prompt.showToast({
                    message: '播放歌曲：' + item.title
                  })
                  this.PlayerManager.playList(this.explorePlaylistItem.title, this.explorePlaylistItem.list, item);
                })
              Image($r('app.media.more'))
                .height(48)
                .width(48)
                .padding(8)
                .clickEffect(AppConstants.CLICK_EFFECT)
                .onClick(() => {
                  this.dialogController = new CustomDialogController({
                    builder: ExploreListMore({
                      clickedItem: item,
                      customListTitle: (this.explorePlaylistItem.isCustom ? this.explorePlaylistItem.title : ''),
                      customPlayLists: this.customPlayLists,
                    }),
                    autoCancel: true,
                    alignment: DialogAlignment.Bottom,
                    offset: { dx: 0, dy: -20 },
                    gridCount: 4,
                    customStyle: false,
                    cornerRadius: 10,
                  })
                  this.dialogController.open();
                })
            }.justifyContent(FlexAlign.SpaceEvenly)
          }
          .backgroundColor((index % 2) === 0 ? '#fafafa' : Color.White)
          .width('100%')
          .height('84vp')
          .transition({ type: TransitionType.All, opacity: 0 })
        })
      }
      .width('100%')
      .backgroundColor(Color.White)
      .margin({ bottom: 36 })
    }
    .height('100%')
    .backgroundColor(Color.White)
    .borderRadius({ topLeft: '18vp', topRight: '18vp' })
  }
}
