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
import HttpManager from "../manager/HttpManager";
import PlayerManager from "../manager/PlayerManager";
import AudioData from "../model/AudioData";
import PlayListData from "../model/PlayListData";
import { AddToListDialog } from "./AddToListDialog";
import prompt from '@ohos.promptAction';
import AppConstants from "../constants/AppConstants";

@Component
struct MoreItem {
  private img: ResourceStr = '';
  private title: string = ''
  private operate: () => void = () => {
  }

  build() {
    Row() {
      Image(this.img)
        .width(28)
        .height(28)
        .margin(8)
      Text(this.title)
        .maxLines(1)
        .fontSize(20)
        .fontWeight(FontWeight.Lighter)
      Blank()
      Image($r('app.media.chevron_right'))
        .width(12)
        .height(24)
    }
    .width('90%')
    .margin(8)
    .justifyContent(FlexAlign.SpaceBetween)
    .onClick(this.operate)
  }
}

@CustomDialog
export struct ExploreListMore {
  private clickedItem: AudioData = new AudioData('', '', '');
  private customListTitle: string = '';
  private playerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;
  controller?: CustomDialogController;
  @State listOptions: Array<SelectOption> = [];
  @State inputListName: string = '';
  @Prop customPlayLists: PlayListData[];
  private songIdToAdd: string = '';
  dialogController: CustomDialogController | null = new CustomDialogController({
    builder: AddToListDialog({
      cancel: () => {
        if (this.dialogController !== null) {
          this.dialogController.close();
        }
      },
      confirm: () => {
        if (this.inputListName.trim()) {
          if (this.songIdToAdd !== '') {
            HttpManager.getInstance().add_to_playlist(this.songIdToAdd, this.inputListName);
            this.songIdToAdd = '';
            if (this.dialogController !== null) {
              this.dialogController.close();
            }
          }
        } else {
          prompt.showToast({
            message: '歌单名不能为空'
          });
        }
      },
      inputListName: $inputListName,
      listOptions: $listOptions,
    }),
    autoCancel: true,
    alignment: DialogAlignment.Bottom,
    offset: { dx: 0, dy: -20 },
    gridCount: 4,
    customStyle: false,
    cornerRadius: 10,
  })

  aboutToDisappear(): void {
    if (this.dialogController !== null) {
      this.dialogController.close();
      this.dialogController = null;
    }
  }

  build() {
    Column() {
      Text(this.clickedItem.title + '-' + this.clickedItem.artist)
        .fontSize(20)
        .maxLines(1)
        .margin({ top: 10, bottom: 10 })

      List({ space: 10 }) {
        ListItem() {
          MoreItem({
            img: $r('app.media.order_play'),
            title: '下一首播放', operate: () => {
              this.playerManager.addSongToCurrentList(this.clickedItem);
              if (this.controller != undefined) {
                this.controller.close()
              }
            }
          })
        }

        ListItem() {
          MoreItem({
            img: $r('app.media.heart'),
            title: '加入到我的收藏', operate: () => {
              HttpManager.getInstance().set_favourite(this.clickedItem, true);
              if (this.controller != undefined) {
                this.controller.close()
              }
            }
          })
        }

        ListItem() {
          MoreItem({
            img: $r('app.media.folder_badge_plus'),
            title: '加入其他到歌单', operate: () => {
              if (this.dialogController != null) {
                this.listOptions = [];
                for (let item of this.customPlayLists) {
                  if (item.title !== AppConstants.LIST_SONG_FAVOURITE &&
                    item.title !== AppConstants.LIST_SONG_RECENT &&
                    item.title !== this.customListTitle) {
                    this.listOptions.push({ value: item.title });
                  }
                }
                this.dialogController.open();
                this.songIdToAdd = this.clickedItem.id;
              }
            }
          })
        }

        if (this.customListTitle !== '') {
          ListItem() {
            MoreItem({
              img: $r('app.media.trash'),
              title: '从歌单[' + this.customListTitle + ']删除', operate: () => {
                HttpManager.getInstance().removeSongFromList(this.clickedItem.id, this.customListTitle);
                if (this.controller != undefined) {
                  this.controller.close()
                }
              }
            })
          }
        }
      }
      .backgroundColor(Color.White)
      .divider({
        strokeWidth: 0.25,
        color: Color.Grey,
        startMargin: 24,
        endMargin: 24
      })
      .borderRadius(16)
      .padding({ top: 4, bottom: 4 })
      .alignListItem(ListItemAlign.Center)
    }
    .width('90%')
    .borderRadius(8)
    .alignItems(HorizontalAlign.Center)
  }
}