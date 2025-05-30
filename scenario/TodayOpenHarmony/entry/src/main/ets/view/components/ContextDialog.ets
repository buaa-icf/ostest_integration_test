
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
  private categoryTitle: string = '入门指南'  // 分类标题
  controller: CustomDialogController
  private contextList: ContextItem[] = []  // 修改为正确的类型
  build() {
    Column() {
      // 标题区域
      Row() {
        Text(this.categoryTitle)
          .fontSize(22)
          .fontColor('#333')
          .fontWeight(FontWeight.Bold)

        Blank()

      Button('关闭')
        .width(24)
        .height(24)
        .onClick(() => this.controller.close())
      }
      .width('70%')
      .margin({ bottom: 20 })
      // 内容滚动区
      Scroll() {
        Column() {
          ForEach(this.contextList, (item:ContextItem, index) => {
            Column() {
              // 条目内容
              Row() {
                Text(`${index + 1}. ${item.title}`) // 显示标题
                  .fontColor('#666')
                  .fontSize(18)
                Text(item.title)
                  .fontSize(16)
                  .fontColor('#444')
                  .textAlign(TextAlign.Start)
                // 添加完成状态指示
                if (item.isCompleted) {
                  Image($r('app.media.check'))
                    .width(16)
                    .margin({ left: 8 })
                    .backgroundColor(Color.Transparent)
                }
              }
              .width('100%')

              // 显示内容详情
              Text(item.content)
                .fontSize(14)
                .fontColor('#666')
                .margin({ top: 8 })
                .width('100%')
                .textAlign(TextAlign.Start)

              // 分割线
              Divider()
                .strokeWidth(1)
                .color('#EEE')
                .margin({ top: 12, bottom: 12 })
            }
          })
        }
      }
      .height('70%')
      // 底部操作按钮
      Button('完成学习')
        .width('80%')
        .height(40)
        .backgroundColor('#007DFF')
        .fontColor(Color.White)
        .margin({ top: 20 })
        .onClick(() => {
          this.controller.close()
          // 这里可以添加完成回调
        })
    }
    .padding(24)
    .backgroundColor(Color.White)
    .borderRadius(16)
    .width('80%')
    .height(500)
    // 添加阴影和动画
    .shadow({ radius: 24, color: '#40000000', offsetX: 4, offsetY: 8 })
    .transition({ type: TransitionType.All, scale: { x: 0.9, y: 0.9 }, opacity: 0.8 })
  }
}