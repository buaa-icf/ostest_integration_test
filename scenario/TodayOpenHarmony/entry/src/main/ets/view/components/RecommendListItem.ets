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

// components/recommend/RecommendListItem.ets
import { RecommendItem } from '../../model/RecommendModel';
import router from '@ohos.router';
import prompt from '@ohos.promptAction';
import pasteboard from '@ohos.pasteboard';
import { promptAction } from '@kit.ArkUI';
import{ ContextDialog }from '../../view/components/ContextDialog'
import{ ContextItem,ContextData }from'../../common/constants/ContextData'
const TAG_COLORS = ['#FF4081', '#2196F3']
interface TagInfo {
  name: string;
  color: string;
}

@Component
export struct RecommendListItem {
  @Prop item: RecommendItem
  @Prop onItemClick: () => void
  @State scaleValue: number = 1
  @State opacityValue: number = 1
  @State showLargeHeart: boolean = false
  @State recommendScale: number = 1
  @State isRecommended: boolean = false
  @State showActionSheet: boolean = false
  @State selectedTagInfo: TagInfo = { name: '', color: '#FFF' };
  @State panelOffsetY: number = 1000
  @State showCustomDialog: boolean = false;
  @State showNotShowHint: boolean = false;
  @State contextList: ContextItem[] = ContextData;

  dialogController: CustomDialogController = new CustomDialogController({
    builder: this.ContextDialogBuilder.bind(this),
    customStyle: true
  })

  @Builder
  ContextDialogBuilder() {
   ContextDialog({
     contextList: this.contextList,            // 传递内容列表
     controller: this.dialogController        // 传递控制器实例
   })
  }

  build() {
    Stack() {
      Column() {
        // 图片区域
        Stack() {
          Image(this.item.image)
            .syncLoad(true)
            .width('100%')
            .height(180)
            .objectFit(ImageFit.Cover)
            .borderRadius(12)
            .onClick(() => {
              if (this.item.link) {
                router.pushUrl({
                  url: 'pages/WebPage',
                  params: { url: this.item.link }
                })
              }
            })

          // 标签容器
          Row() {
            ForEach(this.item.types, (type: string, index: number) => {
              Text(type)
                .fontColor('#000000')
                .backgroundColor(TAG_COLORS[index % 2])
                .padding({
                  top: 4,
                  bottom: 4,
                  left: 8,
                  right: 8
                })
                .fontSize(12)
                .borderRadius(16)
                .margin({ right: 4 })
                .onClick(() => this.handleTagClick(type, index)) // 正确绑定点击事件
            })
          }
          .width('100%')
          .position({ x: '60%', y: '8%' })
          .height(40)
          .visibility(this.item.types?.length ? Visibility.Visible : Visibility.None)
        }
        .aspectRatio(1.8)
        .margin({ bottom: 6 })

        // 文本内容区
        Column() {
          Text(this.item.title)
            .fontColor('#333333')
            .fontSize(18)
            .fontWeight(FontWeight.Medium)
            .maxLines(2)
            .margin({ bottom: 8 })

          Row() {
            Button() {
              Text(this.item.subtitle)
                .fontColor('#666666')
                .fontSize(14)
                .opacity(0.8)
                .maxLines(1)
            }
            .type(ButtonType.Normal)
            .backgroundColor('#00000000')
            .onClick(async () => {
              try {
                const textToCopy = this.item.subtitle;
                await pasteboard.getSystemPasteboard().setData(
                  pasteboard.createData('text/plain', textToCopy)
                );
                prompt.showToast({ message: `已复制：${textToCopy.slice(0, 10)}...` });
              } catch (e) {
                console.error("复制失败:", e);
                prompt.showToast({ message: `复制失败: ${e.message}` });
              }
            })

            Blank()
              .width(16)

            Text('约9分钟阅读')
              .fontSize(12)
              .fontColor('#666666')
              .opacity(0.6)
              .margin({ bottom: 4 })
          }
          .margin({ bottom: 12 })

          // 交互数据区
          Row() {
            Text(`${this.item.views}次浏览`)
              .fontColor('#666666')
              .fontSize(14)
              .opacity(0.6)

            Image(this.isRecommended ? $r('app.media.fire') : $r('app.media.hand'))
              .width(24)
              .height(24)
              .margin({ left: 16 })
              .onClick(() => {
                if (!this.isRecommended) {
                  this.handleRecommend();
                  animateTo({ duration: 200 }, () => {
                    this.recommendScale = 1.5;
                  })
                  setTimeout(() => {
                    animateTo({ duration: 300 }, () => {
                      this.recommendScale = 1;
                    })
                  }, 200)
                }
              })
              .scale({ x: this.recommendScale, y: this.recommendScale })

            Row() {
              Image(this.item.isLiked ? $r('app.media.heart3') : $r('app.media.heart1'))
                .width(20).height(20)
                .onClick(() => {
                  const wasLiked = this.item.isLiked;
                  this.handleLike();
                  if (!wasLiked) {
                    animateTo({ duration: 300 }, () => {
                      this.showLargeHeart = true;
                    })
                  }
                })

              if (this.showLargeHeart) {
                Image($r('app.media.heart3'))
                  .width(60)
                  .height(60)
                  .position({ x: '-20%', y: '-20%' })
                  .scale({ x: 0, y: 0 })
                  .opacity(1)
                  .onAppear(() => {
                    animateTo({
                      duration: 800,
                      curve: Curve.EaseOut
                    }, () => {
                      this.scaleValue = 3.0;
                      this.opacityValue = 0;
                    })
                    setTimeout(() => {
                      this.showLargeHeart = false;
                      this.scaleValue = 1;
                      this.opacityValue = 1;
                    }, 800)
                  })
                  .scale({ x: this.scaleValue, y: this.scaleValue })
                  .opacity(this.opacityValue)
              }

              Text(this.item.likeCount.toString())
                .fontSize(14)
                .fontColor(this.item.isLiked ? '#FF4081' : '#666666')
            }
            .margin({ left: 16 })
          }
        }
        .padding({ left: 12, right: 12, bottom: 24 })
      }
      .width('100%')
      .margin({ top: 6, bottom: 6 })
      .backgroundColor(Color.White)
      .borderRadius(12)
      .shadow({
        radius: 8,
        color: '#10000000',
        offsetX: 0,
        offsetY: 2
      })

      // 动作面板（独立于主内容之外）
      if (this.showActionSheet) {
        Column() {
          // 半透明背景
          Rect()
            .fill('#80000000')
            .width('100%')
            .height('100%')
            .onClick(() => this.closePanel())

          // 操作面板
          Column() {
            Row() {
              Circle()
                .width(10)
                .height(10)
                .fill(this.selectedTagInfo.color)
                .margin({ right: 8 })

              Text(this.selectedTagInfo.name)
                .fontSize(18)
                .fontWeight(FontWeight.Medium)
            }
            .justifyContent(FlexAlign.Start)
            .width('100%')
            .padding({ bottom: 16 })

            Button('查看全部「' + this.selectedTagInfo.name + '」内容')
              .width('90%')
              .backgroundColor('#00000000')
              .fontColor('#333')
              .onClick(() => {
                this.closePanel();
                this.dialogController.open() // 打开弹窗
              })

            Button('不再显示此类内容')
              .width('90%')
              .margin({ top: 12 })
              .fontColor('#FF4444')
              .backgroundColor('#FFECEC')
              .onClick(() => {
                // 执行不再显示逻辑
                this.saveUserPreference(); // 你的存储偏好设置方法
                promptAction.showToast({
                  message: '将不再显示此类内容',
                  duration: 2000
                });
              })

            Button('关闭')
              .width('90%')
              .margin({ top: 24 })
              .onClick(() => this.closePanel())

          }
          .padding(24)
          .width('100%')
          .backgroundColor(Color.White)
          .borderRadius(24)
          .shadow({ radius: 24, color: '#40000000' })
          .position({ y: this.panelOffsetY })
          .onAppear(() => {
            animateTo({
              duration: 300,
              curve: Curve.EaseOut
            }, () => {
              this.panelOffsetY = 0
            })
          })
        }
        .width('100%')
        .height('100%')
        .position({ x: 0, y: 0 })
        .zIndex(999)
      }
    }
  }
  private saveUserPreference() {
    // 这里添加实际存储逻辑，如：
    // AppStorage.setOrCreate('hideCategory', true);
  }

  // 关闭面板方法
  private closePanel() {
    animateTo({ duration: 200 }, () => {
      this.panelOffsetY = 1000
    })
    setTimeout(() => this.showActionSheet = false, 200)
  }

  private handleTagClick(type: string, index: number) {
    this.selectedTagInfo = {
      name: type,
      color: TAG_COLORS[index % 2]
    }
    this.showActionSheet = true
    this.panelOffsetY = 1000
  }

  private handleRecommend() {
    this.isRecommended = true;
    prompt.showToast({ message: 'up up 已为文章增加了热度' });

    // 立即执行缩放动画
    animateTo({ duration: 200 }, () => {
      this.recommendScale = 1.5;
      this.item.likeCount += 15;
      this.item.views += 100;
    })

    setTimeout(() => {
      animateTo({ duration: 300 }, () => {
        this.recommendScale = 1;
      })
    }, 200)
  }

  private handleLike() {
    const newItem: RecommendItem = {
      id: this.item.id,
      type: this.item.type,
      title: this.item.title,
      image: this.item.image,
      types: [...this.item.types],
      subtitle: this.item.subtitle,
      timestamp: this.item.timestamp,
      views: this.item.views,
      likeCount: this.item.isLiked ? Math.max(0, this.item.likeCount - 1) : this.item.likeCount + 1,
      isLiked: !this.item.isLiked,
      link: this.item.link
    };
    this.item = newItem;
  }
}