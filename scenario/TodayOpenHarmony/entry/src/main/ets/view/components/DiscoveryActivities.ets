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


// view/components/DiscoveryActivities.ets
import { TechEvent } from '../../model/EventModel';
import router from '@ohos.router';

@Component
export struct DiscoveryActivities {
  @Prop events: TechEvent[] = [];
  // 添加 @State 控制动画重新触发
  @State animationTrigger: boolean = false;

  aboutToAppear() {
    // 模拟数据加载完成
    setTimeout(() => {
      this.animationTrigger = !this.animationTrigger; // 触发动画
    }, 100);
  }

  // 倒计时计算函数
  private getCountDown(startTime: number): string {
    const diff = startTime - Date.now();
    const days = Math.ceil(diff / (1000 * 60 * 60 * 24));
    return days > 0 ? `剩余 ${days} 天报名` : '报名已开始';
  }

  // 新增日历视图构建器
  @Builder
  CalendarView(date: string) {
    Column() {
      // 简易日历视图
      Stack() {
        // 日历背景
        Column()
          .width(60)
          .height(70)
          .backgroundColor('#f0f4f9')
          .borderRadius(8)
          .border({ width: 1, color: '#d0d7de' })

        // 日历内容
        Column({ space: 2 }) {
          // 月份
          Text(date.split('-')[1] + '月')
            .fontSize(12)
            .fontColor('#ffffff')
            .backgroundColor('#2a6db3')
            .width('100%')
            .textAlign(TextAlign.Center)
            .padding(2)

          // 日期
          Text(date.split('-')[2])
            .fontSize(24)
            .fontWeight(FontWeight.Bold)
            .fontColor('#333333')
            .margin({ top: 8 })

          // 年份
          Text(date.split('-')[0])
            .fontSize(10)
            .fontColor('#666666')
        }
        .width(60)
        .height(70)
        .justifyContent(FlexAlign.Center)
      }
    }
  }

  build() {
    Column() {
      // 标题栏
      Row() {
        Text('近期活动 📅')
          .fontSize(20)
          .fontColor('#000000')

        Image($r('app.media.calendar'))
          .width(28)
          .height(28)
          .margin({ left: 8 })
      }
      .margin({ left: 16, top: 24, bottom: 12 })

      Column() {
        Scroll() {
          Column({ space: 12 }) {
            ForEach(this.events, (event: TechEvent, index: number) => {
              Column() {
                Column() {
                    // 添加事件图片
                    Image(event.image)
                      .width('90%')
                      .height(100)
                      .borderRadius({ topLeft: 12, topRight: 12 })
                      .objectFit(ImageFit.Cover)
                    Row() {
                    Column() {
                      this.CalendarView(event.timestamp)
                    }
                    .margin({ right: 12 })

                    Column() {
                      Text(event.title)
                        .fontSize(18)
                        .fontColor('#000000')
                        .maxLines(2)
                        .lineHeight(20)
                        .textOverflow({ overflow: TextOverflow.Ellipsis })
                        .margin({ bottom: 4 })

                      Text(event.subtitle)
                        .fontSize(14)
                        .fontColor('#666666')
                        .margin({ bottom: 4 })

                      Column() {
                        Row() {
                          ForEach(event.types, (type: string) => {
                            Text(type)
                              .fontSize(12)
                              .backgroundColor('#2a6db3')
                              .fontColor('#ffffff')
                              .padding({
                                left: 8,
                                right: 8,
                                top: 4,
                                bottom: 4
                              })
                              .borderRadius(20)
                              .margin({ right: 4 })
                          })
                        }
                      }
                      .margin({ bottom: 4 })

                      // 添加倒计时显示
                      Text(this.getCountDown(event.startTime || Date.now() + 86400000))
                        .fontSize(14)
                        .fontWeight(FontWeight.Bold)
                        .fontColor('#e74c3c')
                        .margin({ top: 4, bottom: 4 })

                      Column() {
                        Progress({ value: event.progress, total: 100 })
                          .color('#2a6db3')  // 设置进度条颜色
                          .style({ strokeWidth: 4 })
                          .height(4)
                          .margin({top:4})

                        Row() {
                          Text(event.timestamp)
                            .padding({left:8, right:8, top:2, bottom:2})
                            .backgroundColor('#f8f9fa')
                            .fontColor('#2d4275')
                            .borderRadius(4)

                          // 添加进度百分比显示
                          Text(`${event.progress}%`)
                            .fontSize(12)
                            .fontColor('#2d4275')
                            .margin({ left: 8 })
                        }
                        .margin({ top:6 })
                        .width('100%')
                        .justifyContent(FlexAlign.SpaceBetween)
                      }
                      .width('100%')
                      .margin({ top:8 })

                      Row() {
                        Image($r('app.media.local'))
                          .width(12)
                          .height(12)
                          .margin({ right: 2 })

                        Text(event.location)
                          .fontSize(12)
                          .fontColor('#2d4275')
                          .margin({ left: 4 })
                      }
                      .margin({ top:8 })
                    }
                    .layoutWeight(1)
                  }
                  .padding(10)
                  .backgroundColor('#ffffff')
                  .borderRadius(12)
                  .onClick(() => {
                    router.pushUrl({
                      url: 'pages/WebPage',
                      params: { url: event.link }
                    })
                  })
                }
                .margin({ bottom : 8 })
                .shadow({ radius: 12, color: '#20000000', offsetY: 4 })
                .opacity(this.animationTrigger ? 1 : 0) // 动态绑定
                .translate({ y: this.animationTrigger ? 0 : 30 })
                .animation({
                  duration: 600,
                  delay: index * 100,
                  curve: Curve.EaseOut,
                  iterations: 1, // 明确动画次数
                })
              }
            }, (event: TechEvent) => event.id.toString()) //  添加键生成器
          }
          .padding({ bottom: '80vp', left: 16, right: 16 })
          .width('100%')
        }
        .scrollBar(BarState.Off)
        .height('100%')
        .margin({ bottom: 8 })
      }
      .flexGrow(1)    // 确保内容区域扩展
    }
    .backgroundColor('#f5f5f5')
    .height('100%')  //继承完整高度
    .padding({
      bottom: '80vp',// 外层安全区
      left: 8,
      right: 8
    })
    .width('100%')
    .padding(6)
    .margin({ bottom: 16 }) // 增加纵向间距
    .shadow({ radius: 12, color: '#20000000', offsetY: 4 }) // 加强投影
  }
}