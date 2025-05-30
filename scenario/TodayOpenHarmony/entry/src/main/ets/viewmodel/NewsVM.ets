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

import { NewsItem,LiveNewsItem,BlogPostItem} from '../model/NewsModel';
import { NewsListData } from '../common/constants/NewsData';
import { BaseViewModel } from './ViewModelManager';

@Observed
export class NewsViewModel implements BaseViewModel { // 显式实现接口
  @Track newsList: NewsItem[] = [];
  private currentCategory: number = 0;
  // 必须实现的生命周期方法
  public onInit(): void {
    this.loadNews(this.currentCategory).catch((e: Error) => console.error('加载失败:', e.message));
  }
  // 可选清理方法
  public onDestroy(): void {
    this.newsList = [];
  }

  async loadNews(category: number): Promise<void> {
    return new Promise((resolve) => {
      setTimeout(() => {
        this.newsList = NewsListData
          .filter(item => {
            const isCorrectCategory = item.categoryId === category;
            if (category === 2) return isCorrectCategory && item.type === '直播';
            if (category === 3) return isCorrectCategory && item.type === '博客';
            return isCorrectCategory && item.type !== '直播';
          })
          .map(item => {
            // 处理直播类型
            if (item.type === '直播') {
              return new LiveNewsItem({
                id: item.id,
                type: '直播',
                title: item.title,
                subtitle: item.subtitle || '',
                image: item.image || $r('app.media.star2'),
                timestamp: item.timestamp,
                categoryId: item.categoryId,
                views: item.views || 0,
                link: item.link || '',
                tags: item.tags ? [...item.tags] : [],
                isLiked: item.isLiked ?? false,
                isBookmarked: item.isBookmarked ?? false,
                isExpanded: item.isExpanded ?? false,
                likeCount: item.likeCount || 0,
                readTime: item.readTime || 0,
                commentCount: item.commentCount || 0,
                shareCount: item.shareCount || 0,
                isLiving: item.isLiving ?? false,
                author: item.author || '未知主播'
              });
            }

            // 处理博客类型
            if (item.type === '博客') {
              return new BlogPostItem({
                id: item.id,
                type: '博客',
                title: item.title,
                subtitle: item.subtitle || '',
                image: item.image || $r('app.media.star2'),
                timestamp: item.timestamp,
                categoryId: item.categoryId,
                views: item.views || 0,
                link: item.link || '',
                tags: item.tags ? [...item.tags] : [],
                isLiked: item.isLiked ?? false,
                isBookmarked: item.isBookmarked ?? false,
                isExpanded: item.isExpanded ?? false,
                likeCount: item.likeCount || 0,
                readTime: item.readTime || 0,
                commentCount: item.commentCount || 0,
                shareCount: item.shareCount || 0,
                content: item.content || '',
                author: item.author || '匿名作者'
              });
            }

            // 处理普通新闻类型（显式转换配置）
            return new NewsItem({
              id: item.id,
              type: item.type,
              title: item.title,
              subtitle: item.subtitle || '',
              image: item.image || $r('app.media.star2'),
              timestamp: item.timestamp,
              categoryId: item.categoryId,
              views: item.views || 0,
              link: item.link || '',
              tags: item.tags ? [...item.tags] : [],
              isLiked: item.isLiked ?? false,
              isBookmarked: item.isBookmarked ?? false,
              isExpanded: item.isExpanded ?? false,
              likeCount: item.likeCount || 0,
              readTime: item.readTime || 0,
              commentCount: item.commentCount || 0,
              shareCount: item.shareCount || 0
            });
          });
        resolve();
      }, 100);
    });
  }

  handleLike(id: number) {
    this.newsList = this.newsList.map(item => {
      if (item.id === id) {
        // 显式创建新对象而非使用展开运算符
        return new NewsItem({
          id: item.id,
          type: item.type,
          title: item.title,
          subtitle: item.subtitle,
          image: item.image || $r('app.media.star2'),
          timestamp: item.timestamp,
          categoryId: item.categoryId,
          views: item.views,
          link: item.link,
          isBookmarked: item.isBookmarked,
          isExpanded: item.isExpanded,
          readTime: item.readTime,
          commentCount: item.commentCount,
          shareCount: item.shareCount,
          tags: item.tags,
          isLiked: !item.isLiked,
          likeCount: item.isLiked ? item.likeCount - 1 : item.likeCount + 1
        });
      }
      return item; // 保持非修改项直接引用
    });
  }
  handleBookmark(id: number) {
    this.newsList = this.newsList.map(item => {
      return item.id === id ? item.toggleBookmark() : item;
    });
  }
}