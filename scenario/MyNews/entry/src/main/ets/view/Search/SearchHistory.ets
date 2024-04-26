/*
 * Copyright (c) 2023 Southeast University.
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


// Divide the list into pairs
function groupInPairs<T>(list: T[]): T[][] {
  const pairs: T[][] = [];

  for (let i = 0; i < list.length; i += 2) {
    let pair: T[] = []
    if (i + 1 === list.length) {
      pair = [list[i]]
    } else {
      pair = [list[i], list[i + 1]];
    }
    pairs.push(pair);
  }
  return pairs;
}

// Dialog to delete all search history
@CustomDialog
struct DeleteAllDialog {
  @Link searchHistoryList: string[]
  cancel?: () => void
  confirm?: () => void
  controller: CustomDialogController

  build() {
    Column() {
      Text($r('app.string.search_deleteAll_dialogPrompt'))
        .fontSize(16)
        .margin({ top: 20, bottom: 10 })

      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Button($r('app.string.search_deleteAll_dialogCancel'), { type: ButtonType.Normal })
          .width('50%')
          .fontSize(15)
          .backgroundColor(Color.Transparent)
          .fontColor($r('app.color.light_fg_shallow'))
          .border({ width: { right: 1 }, color: $r('app.color.light_border') })
          .onClick(() => {
            this.controller.close()
            if (this.cancel) {
              this.cancel()
            }
          })
        Button($r('app.string.search_deleteAll_dialogConfirm'))
          .width('50%')
          .fontSize(15)
          .backgroundColor(Color.Transparent)
          .fontColor($r('app.color.primary'))
          .onClick(() => {
            this.controller.close()
            if (this.confirm) {
              this.confirm()
            }
          })
      }.border({ width: { top: 1 }, color: $r('app.color.light_border') })
    }.backgroundColor($r('app.color.light_bg')).borderRadius(10).width('70%')
  }
}

/**
 * Search History
 */
@Component
export default struct SearchHistory {
  @Link searchHistoryList: string[]
  @Prop trendingTopicList: string[]
  @Link searchInput: string
  @State isDeleting: Boolean = false
  dialogController: CustomDialogController = new CustomDialogController({
    builder: DeleteAllDialog({
      confirm: () => {
        this.onDeleteAllHistory()
      },
      searchHistoryList: this.searchHistoryList,
    }),
    alignment: DialogAlignment.Center,
    cornerRadius: 10,
    customStyle: true
  })

  onDeleteAllHistory() {
    this.searchHistoryList = []
  }

  build() {
    Column({ space: 10 }) {
      Row() {
        Text($r('app.string.search_searchHistory'))
          .fontSize(13)
          .fontColor($r('app.color.light_fg_shallow'))
        if (this.isDeleting) {
          Row({ space: 10 }) {
            Button() {
              Text($r('app.string.search_deleteAll'))
                .fontSize(13)
                .fontColor($r('app.color.light_fg_shallow'))
            }.backgroundColor(Color.Transparent)
            .onClick(() => {
              this.dialogController.open()
            })

            Button() {
              Text($r('app.string.search_deleteAll_finish'))
                .fontSize(13)
                .fontColor($r('app.color.light_fg_shallow'))
            }.backgroundColor(Color.Transparent)
            .onClick(() => {
              this.isDeleting = false
            })
          }
        } else {
          Button() {
            Image($r('app.media.ic_public_delete'))
              .size({ width: 15, height: 15 })
              .fillColor($r('app.color.light_fg_shallow'))
          }.backgroundColor(Color.Transparent)
          .onClick(() => {
            this.isDeleting = true
          })
        }

      }.width('100%').justifyContent(FlexAlign.SpaceBetween)

      ForEach(groupInPairs<string>(this.searchHistoryList), (item: string[]) => {
        Row() {
          if (this.isDeleting) {
            Text(item[0])
              .width('43%')
              .fontSize(14)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
              .maxLines(1)
              .onClick(() => {
                this.searchInput = item[0]
                // TODO(ljj): search result content
              })
            Button() {
              Image($r('app.media.ic_public_cancel'))
                .width('10')
                .fillColor($r('app.color.light_fg_shallow'))
            }
            .width('2%')
            .backgroundColor(Color.Transparent)
            .onClick(() => {
              let index = this.searchHistoryList.indexOf(item[0]);
              if (index !== -1) {
                this.searchHistoryList.splice(index, 1)
              }
            })
          } else {
            Text(item[0])
              .width('45%')
              .fontSize(14)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
              .maxLines(1)
              .onClick(() => {
                this.searchInput = item[0]
                // TODO(ljj): search result content
              })
          }


          Divider()
            .width('10%')
            .height(14)
            .vertical(true)
            .color($r('app.color.light_border'))
            .strokeWidth(1)

          if (this.isDeleting) {
            if (item.length > 1) {
              Text(item[1])
                .width('43%')
                .fontSize(14)
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .maxLines(1)
                .onClick(() => {
                  this.searchInput = item[1]
                  // TODO(ljj): search result content
                })
              Button() {
                Image($r('app.media.ic_public_cancel'))
                  .width('10')
                  .fillColor($r('app.color.light_fg_shallow'))
              }
              .width('2%')
              .backgroundColor(Color.Transparent)
              .onClick(() => {
                let index = this.searchHistoryList.indexOf(item[1]);
                if (index !== -1) {
                  this.searchHistoryList.splice(index, 1)
                }
              })
            }
          } else {
            if (item.length > 1) {
              Text(item[1])
                .width('45%')
                .fontSize(14)
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .maxLines(1)
                .onClick(() => {
                  this.searchInput = item[1]
                  // TODO(ljj): search result content
                })
            }
          }
        }.width('100%')
      })

    }

  }
}