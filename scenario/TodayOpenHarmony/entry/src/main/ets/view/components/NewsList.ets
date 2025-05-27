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



// view/news/NewsList.ets
import { NewsItem } from '../../model/NewsModel';
import { NewsCard } from './NewsCard';
import { NewsViewModel } from '../../viewmodel/NewsVM';

@Component
export struct NewsList {
  @Prop items: NewsItem[]
  @Consume newsVM: NewsViewModel
  @Prop onLike?: (id: number) => void // 接收点赞回调
  @Prop onBookmark?: (id: number) => void // 接收收藏回调

  build() {
    List({ space: 8 }) {
      if (this.items.length === 0) {
        ListItem() {
          Text("暂无新闻数据")
            .fontSize(16)
            .fontColor('#FF0000')
            .textAlign(TextAlign.Center)
            .height(200)
            .backgroundColor('#FFFF00')
        }
      } else {
        ForEach(this.items, (item: NewsItem) => {
          ListItem() {
            // 使用NewsCard组件并传递参数
            NewsCard({
              item: item, // 传递新闻项数据
              onLike: () => {
                // 触发点赞回调
                if (this.onLike) {
                  this.onLike(item.id);
                }
              },
              onBookmark: () => {
                // 触发收藏回调
                if (this.onBookmark) {
                  this.onBookmark(item.id);
                }
              }
            })
          }
        }, (item: NewsItem) => item.id.toString() + '_key')
      }
    }
    .width('100%')
    .height('100%')
    .padding(12)
    .divider({ strokeWidth: 0 })
    .scrollBar(BarState.Off)
  }
}