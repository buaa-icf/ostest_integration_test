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


import { NewsItem, LiveNewsItem, BlogPostItem } from '../../model/NewsModel'; // 添加子类导入

export const NewsListData: NewsItem[] = [
  new NewsItem({
    id: 1,
    type: '新闻',
    title: '基于OpenHarmony的团结引擎应用开发赛',
    subtitle: '促进万物互联产业的繁荣发展',
    image: $r('app.media.edu'),
    timestamp: '2024-03-11',
    views: 22500,
    link: 'https://www.openharmony.cn/unityEngine/illustrate',
    isLiked: false,
    likeCount: 806,
    isBookmarked: false,
    isExpanded: false,
    readTime: 5,
    commentCount: 0,
    shareCount: 0,
    tags: ['开发大赛', '物联网'],
    categoryId: 0
  }),

  new NewsItem({
    id: 2,
    type: '新闻',
    title: '开发者2025大会',
    subtitle: '鸿心聚力，智引未来',
    image: $r('app.media.New'),
    timestamp: '2025-05-24',
    views: 23500,
    link: 'https://www.openharmony.cn/developer/',
    isLiked: false,
    likeCount: 7000,
    isBookmarked: false,
    isExpanded: false,
    readTime: 10,
    commentCount: 0,  // 补充缺失字段
    shareCount: 0,    // 补充缺失字段
    tags:['HarmonyOS'],         // 补充默认值
    categoryId: 0,
  }),

  new NewsItem({
    id: 3,
    type: '活动',
    title: '解决方案学生挑战赛',
    subtitle: '线上',
    image: $r('app.media.student2'),
    timestamp: '2022-06-08',
    views: 2560,
    link: 'https://www.openharmony.cn/growthPlan/',
    isLiked: false,
    likeCount: 2560,
    isBookmarked: false,
    isExpanded: false,
    readTime: 15,
    tags: ['大赛', 'openharmony'],
    commentCount: 0,  // 补充缺失字段
    shareCount: 0,    // 补充缺失字段
    categoryId: 1,
  }),
  new NewsItem({
    id: 4,
    type: '活动',
    title: 'OpenHarmony技术大会',
    subtitle: '上海世博中心',
    image: $r('app.media.study'),
    views: 2200,
    likeCount: 4560,
    isLiked: false,
    timestamp: '2024-10-12',
    link: 'https://www.openharmony.cn/technology/',
    isBookmarked: false,
    readTime: 5,
    commentCount: 0,
    shareCount: 0,
    tags: ['大会', 'openharmony'],
    isExpanded: false,
    categoryId: 1,
  }),
  new LiveNewsItem({
    id: 5,
    type: '直播',
    title: '创新赛赋能直播',
    subtitle: '如何开发APP',
    author: '王工程师',
    views: 33500,
    isLiving: true,
    image: $r('app.media.lives'),
    timestamp: '03-16 20:00',
    link: 'https://www.bilibili.com/video/BV18G411i7bR/?spm_id_from=333.999.0.0&vd_source=791e4b558742fd98bce5bd7f4a0d2120',
    tags: ['直播视频', 'openharmony'],
    categoryId: 2,
    isLiked: false,
    isBookmarked: false,
    isExpanded: false,
    likeCount: 0,
    readTime: 0,
    commentCount: 0,
    shareCount: 0
  }),

  new BlogPostItem({
    id: 6,
    type: '博客',
    title: '分布式菜单创建点餐神器',
    subtitle: '节省顾客时间',
    author: '张工程师',
    content: '本文详细讲解如何利用分布式能力...',
    image: $r('app.media.bo'),
    views: 27500,
    likeCount: 3000,
    isLiked: false,
    timestamp: '2022-02-16',
    link: 'https://mp.weixin.qq.com/s/WHN75mnzJ0NtbAwySlEDJw',
    isBookmarked: false,
    readTime: 15,
    commentCount: 12,
    shareCount: 0,
    tags: ['文章', '应用'],
    isExpanded: false,
    categoryId: 3,
  }),

  new NewsItem({
    id: 7,
    type: '新闻',
    title: '第二届创新应用挑战赛',
    subtitle: '技术交锋创意迸发',
    image: $r('app.media.sai'),
    views: 2370,
    likeCount: 479,
    isLiked: false,
    timestamp: '2024-10-21',
    link:'https://www.openharmony.cn/innovationcompete/compete',
    isBookmarked: false,
    readTime: 15,
    commentCount: 0,
    shareCount: 0,
    tags: ['大赛'],
    isExpanded: false,
    categoryId: 0,
  }),
];