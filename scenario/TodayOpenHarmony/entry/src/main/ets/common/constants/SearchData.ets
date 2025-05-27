
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

// data/SearchData.ts
import { SearchResultItem } from '../../model/SearchModel';
import { NewsListData } from './NewsData';

export const searchData: Record<string, SearchResultItem[]> = {
  "openharmony": [
    { id: 3, title: 'OpenHarmony', desc: '开源操作系统...' },
    { id: 4, title: '系统架构', desc: '层次化设计...' }
  ],
  "arkui": [
    { id: 1, title: 'ArkUI框架', desc: '声明式UI开发...' }
  ],
  "huodong": [
    {
      id: 3,
      title: '解决方案学生挑战赛',
      desc: '线上',
    } as SearchResultItem,
    {
      id: 4,
      title: 'OpenHarmony技术大会',
      desc: '上海世博中心',
    } as SearchResultItem
  ],
  "hot": [
    {
      id: 8,
      title: '新手指南',
      desc: '快速入门OpenHarmony',
    } as SearchResultItem,
    {
      id: 9,
      title: '组件开发指南',
      desc: '掌握ArkUI核心组件使用方法',
    } as SearchResultItem,
    {
      id: 10,
      title: 'openharmony三方库中心',
      desc: '提升应用流畅度的十大技巧',
    } as SearchResultItem
  ],

  "wenzhang": NewsListData.map(news => ({
    id: news.id,
    title: news.title,
    desc: news.subtitle,
    tags: news.tags
  } as SearchResultItem)),
};