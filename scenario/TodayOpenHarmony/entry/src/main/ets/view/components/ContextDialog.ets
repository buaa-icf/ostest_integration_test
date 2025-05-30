
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
import { ContextItem } from '../../common/constants/ContextData'

@CustomDialog
export struct ContextDialog {
  @Prop categoryTitle: string = '详细内容'
  controller: CustomDialogController
  @Prop contextList: ContextItem[] = []

  // 添加学习进度状态
  @State totalItems: number = 0
  @State completedItems: number = 0
  @State showCompletion: boolean = false
  @State progressWidth: string = '0%' // 进度条宽度状态
  // 状态变量用于动画
  @State opacityValue: number = 1

  aboutToAppear() {
    this.totalItems = this.contextList.length;
    this.completedItems = this.contextList.filter(item => item.isCompleted).length;
    this.updateProgress(); // 初始化进度条
  }

  // 更新进度条宽度
  updateProgress() {
    const targetWidth = `${(this.completedItems / this.totalItems) * 100}%`;

    // 使用动画更新进度条
    animateTo({
      duration: 300,
      curve: Curve.EaseOut
    }, () => {
      this.progressWidth = targetWidth;
    });
  }

  build() {
    Column() {
      // 标题区域
      Row() {
        Text(this.categoryTitle)
          .fontSize(22)
          .fontColor('#333')
          .fontWeight(FontWeight.Bold)
          .layoutWeight(1)

        Button() {
          Image($r('app.media.close'))
            .width(20)
            .height(20)
        }
        .type(ButtonType.Normal)
        .backgroundColor(Color.Transparent)
        .width(32)
        .height(32)
        .borderRadius(16)
        .onClick(() => this.controller.close())
      }
      .width('100%')
      .padding({ bottom: 20 })
      .border({ width: 1, color: '#EEE' })
      .margin({ bottom: 16 })

      // 进度条和完成状态
      Column() {
        Row() {
          Stack() {
            // 背景条
            Row()
              .width('100%')
              .height(6)
              .backgroundColor('#F0F0F0')
              .borderRadius(3)

            // 进度条
            Row()
              .width(this.progressWidth)
              .height(6)
              .backgroundColor('#1890FF')
              .borderRadius(3)
          }
          .height(6)
          .width('100%')
        }

        // 进度文本
        Text(`${this.completedItems}/${this.totalItems} 已完成`)
          .fontSize(14)
          .fontColor('#666')
          .margin({ top: 8 })
      }
      .padding({ bottom: 16 })

      // 内容滚动区
      Scroll() {
        Column() {
          ForEach(this.contextList, (item: ContextItem, index) => {
            Column() {
              Row() {
                // 序号显示
                Text(`${index + 1}.`)
                  .fontSize(18)
                  .fontColor('#1890FF')
                  .margin({ right: 8 })

                Column() {
                  // 标题区域
                  Text(item.title)
                    .fontSize(18)
                    .fontColor('#444')
                    .textAlign(TextAlign.Start)

                  // 标签区域
                  if (item.tags && item.tags.length > 0) {
                    Row() {
                      ForEach(item.tags, (tag: string) => {
                        Text(tag)
                          .fontSize(12)
                          .padding({ top: 2, bottom: 2, left: 6, right: 6 })
                          .backgroundColor('#1890FF')
                          .fontColor(Color.White)
                          .borderRadius(4)
                          .margin({ right: 4, top: 4 })
                      })
                    }
                  }
                }
                .layoutWeight(1)

                // 完成状态按钮
                Button() {
                  Image(item.isCompleted ? $r('app.media.checked') : $r('app.media.check'))
                    .width(24)
                    .height(24)
                }
                .type(ButtonType.Normal)
                .backgroundColor(Color.Transparent)
                .onClick(() => {
                  // 切换完成状态
                  item.isCompleted = !item.isCompleted;
                  this.contextList = [...this.contextList];

                  // 更新完成计数
                  const newCompleted = this.contextList.filter(i => i.isCompleted).length;

                  // 检查变化
                  if (newCompleted !== this.completedItems) {
                    this.completedItems = newCompleted;
                    this.updateProgress(); // 更新进度条
                  }

                  // 检查是否全部完成
                  if (this.completedItems === this.totalItems && !this.showCompletion) {
                    this.showCompletion = true;
                  }
                })
              }
              .width('100%')

              // 内容区域
              Text(item.content)
                .fontSize(14)
                .fontColor('#666')
                .margin({ top: 12 })
                .width('100%')
                .textAlign(TextAlign.Start)
                .lineHeight(20)

              // 分割线
              if (index < this.contextList.length - 1) {
                Divider()
                  .strokeWidth(1)
                  .color('#EEE')
                  .margin({ top: 16, bottom: 16 })
              }
            }
            .padding({ bottom: index === this.contextList.length - 1 ? 0 : 8 })
          })
        }
      }
      .height('60%')

      // 完成学习区域
      if (this.showCompletion) {
        Column() {
          // 庆祝动画
          Row() {
            Text('🎉')
              .fontSize(36)
              .margin({ right: 8 })
            Text('恭喜完成学习！')
              .fontSize(18)
              .fontColor('#1890FF')
              .fontWeight(FontWeight.Bold)
          }
          .margin({ bottom: 16 })
          .opacity(0)
          .onAppear(() => {
            animateTo({
              duration: 500,
              curve: Curve.EaseInOut
            }, () => {
              this.opacityValue = 1;
            })
          })
          .opacity(this.opacityValue)

          // 完成学习按钮
          Button('完成学习')
            .width('80%')
            .height(44)
            .backgroundColor('#1890FF')
            .fontColor(Color.White)
            .fontSize(16)
            .margin({ top: 12 })
            .shadow({ radius: 4, color: '#40007DFF' })
            .onClick(() => {
              // 添加完成回调
              this.onComplete?.();
              this.controller.close()
            })
        }
        .transition({ type: TransitionType.Insert, opacity: 0 })
        .transition({ type: TransitionType.Delete, opacity: 0 })
      }
    }
    .padding(24)
    .backgroundColor(Color.White)
    .borderRadius(16)
    .width('85%')
    .shadow({ radius: 24, color: '#40000000', offsetX: 4, offsetY: 8 })
  }
  // 添加完成回调接口
  onComplete?: () => void;
}