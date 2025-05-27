
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
import { promptAction, router } from '@kit.ArkUI' // 添加路由引入
import { HistoryData, HistoryRecord } from '../../common/constants/HistoryData';
@CustomDialog
export struct HistoryDialog {
  @State historyList: HistoryRecord[] = HistoryData
  @State showConfirmClear: boolean = false
  controller?: CustomDialogController

  // 清空历史记录
  private clearAllHistory() {
    this.historyList = []
  }

  build() {
    Column() {
      // 标题栏
      Row({ space: 12 }) {
        Text('观看历史')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .fontColor('#333')

        Blank()

        // 清空按钮
        if (this.historyList.length > 0) {
          Button('清空全部')
            .fontSize(14)
            .fontColor('#FF4444')
            .backgroundColor(Color.Transparent)
            .onClick(() => {
              promptAction.showDialog({
                message: '确认清空全部记录？',
                buttons: [
                  { text: '取消', color: '#666' },
                  { text: '清空', color: '#FF4444' }
                ]
              }).then(result => {
                if (result.index === 1) this.clearAllHistory()
              })
            })
        }

        // 关闭按钮改进
        Button() {
          Image($r('app.media.close'))
            .width(20)
            .height(20)
            .interpolation(ImageInterpolation.High) // 高质量缩放
        }
        .width(40)
        .height(40)
        .backgroundColor('#F0F0F0')
        .border({ color: '#FF4D4F', width: 1 })
        .borderRadius(20)
        .shadow({ radius: 2, color: '#20000000', offsetY: 1 })
        .onClick(() => this.controller?.close())
      }
      .padding({ bottom: 16 })
      .width('100%')

      // 内容区域
      Scroll() {
        Column() {
          if (this.historyList.length === 0) {
            // 空状态
            Column() {
              Image($r('app.media.empty'))
                .width(100)
                .margin({ bottom: 16 })
              Text('还没有任何观看记录哦～')
                .fontSize(16)
                .fontColor('#999')
            }
            .padding(40)
            .width('100%')
          } else {
            // 历史记录列表
            ForEach(this.historyList, (record: HistoryRecord, index: number) => {
              Column() {
                // 记录项
                Row({ space: 24 }) {

                  Image(record.thumbnail)
                    .width(100)
                    .aspectRatio(16/9)
                    .borderRadius(12)
                    .objectFit(ImageFit.Cover) // 添加图片填充模式

                  // 内容区
                  Column() {
                    // 标题和时间
                    Row() {
                      Text(record.event)
                        .fontSize(14)
                        .fontColor('#333')
                        .textOverflow({ overflow: TextOverflow.Ellipsis })
                        .layoutWeight(1)
                        .lineHeight(20) // 增加行高


                      Text(record.duration) // 新增时长显示
                        .fontSize(12)
                        .fontColor('#666')
                        .padding(8)
                        .backgroundColor('#F0F0F0')
                        .borderRadius(6)
                        .margin({ left: 12 })
                    }
                    .height(75) // 固定高度
                    .margin({ bottom: 8 })

                    // 时间和操作
                    Row() {
                      Text(record.time)
                        .fontSize(12)
                        .fontColor('#666')
                        .margin({ top: 4 })

                      Blank()

                      Button() {
                        Image($r('app.media.delete'))
                          .width(25)
                          .height(25)

                          .interpolation(ImageInterpolation.High) // 高质量渲染
                      }
                      .width(40)
                      .height(40)
                      .backgroundColor('#F0F0F0')
                      .borderRadius(18) // 圆形按钮
                      .opacity(0.9) // 轻微不透明
                        .onClick(async () => {
                          const result = await promptAction.showDialog({
                            message: '确认删除该记录？',
                            buttons: [
                              { text: '取消', color: '#666' },
                              { text: '删除', color: '#FF4444' }
                            ]
                          })
                          if (result.index === 1) {
                            this.historyList = this.historyList.filter((_, i) => i !== index)
                            // 添加删除动画
                            animateTo({ duration: 200, curve: Curve.EaseOut }, () => {
                              this.historyList = this.historyList
                            })
                          }
                        })
                    }
                  }
                  .layoutWeight(1)

                }
                .padding({
                  top: 16,
                  bottom: 16,
                  left: 20,
                  right: 20
                }) // 优化内边距
                .backgroundColor(Color.White)
                .borderRadius(18)
                .width('100%')
                .shadow({ // 添加卡片阴影
                  radius: 8,
                  color: '#10000000',
                  offsetY: 2
                })

                .onClick(() => {
                  router.pushUrl({
                    url: 'pages/WebPage',
                    params: { url: record.link }
                  })
                  // 关闭对话框
                  this.controller?.close()
                })

                // 分割线
                if (index !== this.historyList.length - 1) {
                  Divider()
                    .strokeWidth(1)
                    .color('#EEE')
                    .padding({ top: 12, bottom: 12 })
                }
              }
              .animation({ duration: 200, curve: Curve.EaseInOut })
            })
          }
        }
      }
      .height('90%')
      .scrollBar(BarState.On)
    }
    .padding(20)
    .backgroundColor('#F5F5F5')
    .borderRadius(16)
    .width('90%')
    .height('70%')
  }
}
