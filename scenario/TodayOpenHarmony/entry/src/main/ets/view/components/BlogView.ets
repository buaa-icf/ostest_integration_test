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


// BlogView.ets
import { BlogPostItem, Comment } from '../../model/NewsModel';
import router from '@ohos.router';
import { promptAction } from '@kit.ArkUI';

@Component
export struct BlogView {
  @Prop item: BlogPostItem
  @State newComment: string = ''
  @State showSuccess: boolean = false
  @State keyboardHeight: number = 0


  private handleSubmit() {
    if (this.newComment.trim()) {
      // 创建新对象触发更新
      this.item = new BlogPostItem({
        id: this.item.id,
        type: this.item.type,
        title: this.item.title,
        subtitle: this.item.subtitle,
        image: this.item.image,
        timestamp: this.item.timestamp,
        categoryId: this.item.categoryId,
        isLiked: this.item.isLiked,
        isBookmarked: this.item.isBookmarked,
        isExpanded: this.item.isExpanded,
        views: this.item.views,
        link: this.item.link,
        likeCount: this.item.likeCount,
        readTime: this.item.readTime,
        shareCount: this.item.shareCount,
        tags: [...this.item.tags],
        comments: [...this.item.comments, {
          author: '评论内容',
          content: this.newComment,
          timestamp: new Date().toLocaleString()
        }],
        newComment: '',
        author: this.item.author,
        content: this.item.content,
        commentCount: this.item.commentCount + 1
      });

      this.newComment = '';
      this.showSuccess = true;
      setTimeout(() => this.showSuccess = false, 2000);
    } else {
      promptAction.showToast({ message: '评论内容不能为空' });
    }
  }

  build() {
    Column({ space: 10 }) {
      // 作者信息
      Text(this.item.author)
        .fontSize(14)
        .fontColor('#2196F3')

      // 博客内容
      Text(this.item.content)
        .fontSize(14)
        .fontColor('#666')
        .margin({ bottom: 8 })

      Row({ space: 12 }) {
        Text(`阅读时长：${this.item.readTime}分钟`)
          .fontColor('#666')
        Text(`发布时间：${this.item.timestamp}`)
          .fontColor('#666')
      }
      .width('100%')
      .margin({ bottom: 12 })

      // 阅读全文按钮
      Button('阅读全文')
        .width(120)
        .height(36)
        .backgroundColor('#FFA500')
        .fontColor('#FFF')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/WebPage',
            params: { url: encodeURIComponent(this.item.link) }
          })
        })

      // 评论输入区
      TextArea({ text: this.newComment, placeholder: '输入评论...' })
        .placeholderColor('#999999')
        .fontSize(16)
        .fontColor('#999')
        .height(80)
        .width('100%')
        .margin({ top: 16 })

        .enterKeyType(EnterKeyType.Send)
        .onChange((value: string) => {
          this.newComment = value;
        })

      // 提交按钮
      Button('提交')
        .width(120)
        .height(36)
        .margin({ top: 8 })
        .backgroundColor('#4CAF50')
        .onClick(() => this.handleSubmit())

      // 提交成功提示
      if (this.showSuccess) {
        Text('提交成功！')
          .fontColor('#4CAF50')
          .opacity(this.showSuccess ? 1 : 0)
          .transition(TransitionEffect.OPACITY.animation({ duration: 300 }))
          .margin({ top: 8 })
      }

      // 评论列表
      ForEach(this.item.comments, (comment: Comment) => {
        Column({ space: 4 }) {
          Text(`${comment.author}: ${comment.content}`)
            .fontSize(14)
            .fontColor('#666')
          Text(comment.timestamp)
            .fontSize(12)
            .fontColor('#666')
        }
        .width('100%')
        .padding(8)
        .margin({ top: 8 })
        .backgroundColor('#F5F5F5')
        .borderRadius(8)
      })
    }
    .width('100%')
    .padding(16)
  }
}
