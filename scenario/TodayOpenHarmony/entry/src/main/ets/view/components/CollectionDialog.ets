/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import { CollectionItem }from'../../model/CollectionModel'

@CustomDialog
export struct CollectionDialog {
  @Prop collectionList: CollectionItem[]=[];
  controller?: CustomDialogController;
  @State showDelete: boolean = false;  // 删除模式状态

  // 定义关闭事件回调
  onClose: () => void = () => {};
  onItemClick: (url: string) => void = () => {};

  private formatTime(timestamp: number): string {
    const date = new Date(timestamp);
    return `${date.getFullYear()}-${(date.getMonth()+1).toString().padStart(2,'0')}-${date.getDate().toString().padStart(2,'0')}`;
  }


  // 空状态提示
  @Builder
  EmptyState() {
    Column() {
      Image($r('app.media.empty'))
        .width(100)
        .margin({ bottom: 16 })
      Text("收藏夹空空如也～")
        .fontSize(16)
        .fontColor('#999')
    }
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Column() {
      Row() {
        Image($r('app.media.star'))
          .width(32)
          .height(32)
          .margin({ left: 16, right: 12 })
        Text($r('app.string.My_collection'))
          .fontSize(18)
          .fontColor('#333')
          .fontWeight(FontWeight.Bold)

        // 编辑按钮
        Button(this.showDelete ? '完成' : '管理')
          .fontColor('#007AFF')
          .backgroundColor(Color.Transparent)
          .onClick(() => this.showDelete = !this.showDelete)
      }
      .width('100%')
      .padding({ bottom: 16 })

      Column() {
        if (this.collectionList.length === 0) {
          this.EmptyState()
        } else {
          List({ space: 8 }) {
            ForEach(this.collectionList, (item: CollectionItem) => {
              ListItem() {
                Row() {
                  // 新增网站图标
                  Image(item.favicon || $r('app.media.web'))
                    .width(40)
                    .height(40)
                    .margin({ right: 12 })

                  Column() {
                    Text(item.title)
                      .fontSize(16)
                      .fontColor('#1545A5')// 蓝色
                      .decoration({
                        type: TextDecorationType.Underline, // 下划线
                        color: '#1545A5'
                      })
                      .maxLines(1)
                      .textOverflow({ overflow: TextOverflow.Ellipsis })

                    // 新增分类标签和访问时间
                    Row() {
                      if (item.category) {
                        Text(item.category)
                          .fontSize(12)
                          .fontColor('#666')
                          .padding({ left: 6, right: 6, top: 2, bottom: 2 })
                          .backgroundColor('#F0F0F0')
                          .borderRadius(4)
                      }

                      Text(`最后访问：${this.formatTime(item.lastVisit || Date.now())}`)
                        .fontSize(12)
                        .fontColor('#999')
                    }
                    .margin({ top: 4 })
                  }
                  .layoutWeight(1)

                  // 删除按钮
                  if (this.showDelete) {
                    Button() {
                      Image($r('app.media.delete'))
                        .width(20)
                        .height(20)
                        .colorFilter('#FF4444') // 红色图标
                    }
                    .width(32)  // 增大点击区域
                    .height(32)
                    .backgroundColor('#FF444410')

                    .margin({ left: 12 })
                    .backgroundColor('#FFF')
                    .borderRadius(16)           // 圆形按钮
                    .padding(8)                 // 内边距
                    .onClick(() => {
                      // 删除逻辑
                      this.collectionList = this.collectionList.filter(i => i.id !== item.id)
                    })
                  }
                }
                .padding(12)
                .backgroundColor('#FFF')
                .borderRadius(8)
                .onClick(() => {
                  this.onItemClick(item.url)
                  this.controller?.close() // 点击后立即关闭弹窗
                })
                .transition({ type: TransitionType.All, scale: { x: 0.98, y: 0.98 } })
              }
            })
          }
        }
      }
      .height(300)
      .width('100%')

      // 操作按钮
      Button("关闭")
        .width('90%')
        .height(40)
        .backgroundColor('#007AFF')
        .fontColor('#FFF')
        .margin({ top: 16 })
        .borderRadius(8)
        .onClick(() => {
          this.controller?.close();
          this.onClose();
        })
    }
    .padding(16)
    .backgroundColor('#F3F4F6')
    .borderRadius(24)
    .width('90%')
  }
}
