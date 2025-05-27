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


// model/NewsModel.ets
export interface NewsItemConfig {
  id: number
  type: string
  title: string
  subtitle?: string  // 改为可选
  image: Resource
  timestamp: string
  views?: number     // 添加可选标记
  link?: string
  likeCount?: number
  isLiked?: boolean  // 添加可选标记
  isBookmarked?: boolean
  isExpanded?: boolean
  readTime?: number
  commentCount?: number
  shareCount?: number
  tags?: string[]
  categoryId: number
  author?: string     // 添加可选声明
  isLiving?: boolean  // 添加可选声明
  content?: string
  comments?: Comment[]  // 新增评论数组
  newComment?: string    // 新增评论输入
}
// 新增评论接口
export interface Comment {
  author: string
  content: string
  timestamp: string
}
// 直播类型扩展配置
export interface LiveNewsConfig extends NewsItemConfig {
   isLiving: boolean
   author: string
}
// 直播类型扩展配置
export interface BlogNewsConfig extends NewsItemConfig {
  content:string
  author: string
}
@Observed
export class NewsItem {
  // 核心字段
  id: number
  type: string
  title: string
  subtitle: string
  image: Resource
  timestamp: string
  categoryId: number
  content: string;
  // 交互状态
  isLiked: boolean
  isBookmarked: boolean
  isExpanded: boolean
  comments: Comment[]     // 评论数据
  newComment: string     // 输入中评论

  // 内容数据
  views: number
  link: string
  likeCount: number
  readTime: number
  commentCount: number
  shareCount: number
  tags: string[]
  isLiving?: boolean;
  author?: string;

  constructor(config: NewsItemConfig) {
    // 必需字段
    this.id = config.id
    this.type = config.type
    this.title = config.title
    this.subtitle = config.subtitle || ''
    this.image = config.image
    this.timestamp = config.timestamp
    this.categoryId = config.categoryId
    this.content = config.content || '';
    // 交互状态（带默认值）
    this.isLiked = config.isLiked ?? false
    this.isBookmarked = config.isBookmarked ?? false
    this.isExpanded = config.isExpanded ?? false

    this.comments = config.comments || []
    this.newComment = config.newComment || ''

    // 内容数据（带默认值）
    this.views = config.views || 0
    this.link = config.link || ''
    this.likeCount = config.likeCount || 0
    this.readTime = config.readTime || 0
    this.commentCount = config.commentCount || 0
    this.shareCount = config.shareCount || 0
    this.tags = config.tags || []
    this.author = config.author;
  }

  addComment(): NewsItem {
    if (this.newComment.trim()) {
      return new NewsItem({
        // 显式列出所有属性
        id: this.id,
        type: this.type,
        title: this.title,
        subtitle: this.subtitle,
        image: this.image,
        timestamp: this.timestamp,
        categoryId: this.categoryId,
        content: this.content,
        isLiked: this.isLiked,
        isBookmarked: this.isBookmarked,
        isExpanded: this.isExpanded,
        views: this.views,
        link: this.link,
        likeCount: this.likeCount,
        readTime: this.readTime,
        commentCount: this.commentCount + 1, // 递增评论数
        shareCount: this.shareCount,
        tags: [...this.tags],

        comments: [...this.comments, {
          author: '用户',
          content: this.newComment,
          timestamp: new Date().toLocaleString()
        }],
        author: this.author,
        isLiving: this.isLiving,
        newComment: '',
      })
    }
    return this
  }

  toggleLike(): NewsItem {
    console.log(`切换点赞状态 ID:${this.id}`)
    return new NewsItem({
      id: this.id,
      type: this.type,
      title: this.title,
      subtitle: this.subtitle,
      image: this.image,
      timestamp: this.timestamp,
      categoryId: this.categoryId,
      views: this.views,
      link: this.link,
      isBookmarked: this.isBookmarked,
      isExpanded: this.isExpanded,
      readTime: this.readTime,
      commentCount: this.commentCount,
      shareCount: this.shareCount,
      tags: [...this.tags], // 数组展开是允许的
      likeCount: this.isLiked ? this.likeCount - 1 : this.likeCount + 1,
      isLiked: !this.isLiked
    })
  }
  toggleBookmark(): NewsItem {
    return new NewsItem({
      id: this.id,
      type: this.type,
      title: this.title,
      subtitle: this.subtitle,
      image: this.image,
      timestamp: this.timestamp,
      categoryId: this.categoryId,
      views: this.views,
      link: this.link,
      isExpanded: this.isExpanded,
      readTime: this.readTime,
      commentCount: this.commentCount,
      shareCount: this.shareCount,
      tags: [...this.tags], // 数组展开是允许的
      likeCount:this.likeCount,
      isLiked: this.isLiked,
      isBookmarked: !this.isBookmarked

    })
  }
}
@Observed
export class LiveNewsItem extends NewsItem {
  declare type: '直播'
  isLiving: boolean
  author: string

  constructor(config: LiveNewsConfig) {
    // 手动排除子类新增字段
    const baseConfig: NewsItemConfig = {
      id: config.id,
      type: '直播',
      title: config.title,
      subtitle: config.subtitle || '',
      image: config.image,
      timestamp: config.timestamp,
      categoryId: config.categoryId,
      // 补全所有父类需要的字段
      views: config.views || 0,
      link: config.link || '',
      tags: config.tags || [],
      isLiked: config.isLiked ?? false,
      isBookmarked: config.isBookmarked ?? false,
      isExpanded: config.isExpanded ?? false,
      likeCount: config.likeCount || 0,
      readTime: config.readTime || 0,
      commentCount: config.commentCount || 0,
      shareCount: config.shareCount || 0
    };
    super(baseConfig); // 严格匹配父类类型
    this.isLiving = config.isLiving;
    this.author = config.author;
  }
}
  @Observed
  export class BlogPostItem extends NewsItem {
  declare type: '博客'
   content: string
    author: string;
    constructor(config: BlogNewsConfig) {
      // 手动排除子类新增字段
      const baseConfig: NewsItemConfig = {
        id: config.id,
        type: '博客',
        author:config.author,
        title: config.title,
        subtitle: config.subtitle || '',
        image: config.image,
        timestamp: config.timestamp,
        categoryId: config.categoryId,
        // 补全所有父类需要的字段
        views: config.views || 0,
        link: config.link || '',
        tags: config.tags || [],
        isLiked: config.isLiked ?? false,
        isBookmarked: config.isBookmarked ?? false,
        isExpanded: config.isExpanded ?? false,
        likeCount: config.likeCount || 0,
        readTime: config.readTime || 0,
        commentCount: config.commentCount || 0,
        shareCount: config.shareCount || 0,
        comments: config.comments || [],  // 新增
        newComment: config.newComment || ''  // 新增
      };
      super(baseConfig); // 严格匹配父类类型
      this.content = config.content;
      this.author = config.author;
    }
}