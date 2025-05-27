
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
import { RecommendItem } from '../../model/RecommendModel';
export const NewsListData: RecommendItem[] = [
  {
    id: 8,
    type: 'recommend',
    title: '新手指南',
    subtitle: '快速入门OpenHarmony',
    image: $r('app.media.guide'),
    timestamp: '03-15',
    views: 6350,
    likeCount: 486,
    isLiked: false,
    types: ['入门必读', '新手教程'],
    link: 'https://www.openharmony.cn/courses/application_basic/',
  },

  {
    id: 9,
    type: 'recommend',
    title: '组件开发指南',
    subtitle: '掌握ArkUI核心组件使用方法',
    image: $r('app.media.discussing'),
    views: 4321,
    likeCount: 256,
    isLiked: false,
    timestamp: '2022-04-15',
    types: ['ArkUI', '组件开发'],
    link: 'https://mp.weixin.qq.com/s/2uvIBNjs8SLeFLD7PNS6bg'
  },
  {
    id: 10,
    type: 'recommend',
    title: 'openharmony三方库中心',
    subtitle: '提升应用流畅度的十大技巧',
    image: $r('app.media.pc'),
    views: 3890,
    likeCount: 189,
    isLiked: false,
    timestamp: '03-22',
    types: ['性能优化', '三方库'],
    link: 'https://ohpm.openharmony.cn/#/cn/home'
  }
];