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


// model/DiscoveryModel.ts
import { CategoryItem as BaseCategoryItem } from './CategoryModel';
import { TechEvent } from './EventModel';
import { EventListData } from '../common/constants/EventListData';
export { BaseCategoryItem };
export class DiscoveryData {
  // 热门话题数据
  private _hotTopics: string[] = [
    '鸿蒙开发', 'AI前沿', '开源技术', '移动开发', '创新创业', '智能硬件'
  ];
  private liveList: TechEvent[] = [];

  updateLiveList(data: TechEvent[]): void {
    this.liveList = data;
    // 取前5个直播活动标题更新热门话题
    this._hotTopics = [
      ...data.slice(0,5).map(e => e.title),
      '创新创业', '智能硬件' // 保留原有部分内容
    ];
  }

  // 分类矩阵数据
  private readonly _categories: BaseCategoryItem[] = [
    new BaseCategoryItem({
      id: 11,
      name: '开发指南',
      icon: $r('app.media.code'),
      color: '#4A90E2',
      link: 'https://www.openharmony.cn/download'
    }),
    new BaseCategoryItem({
      id: 12,
      name: '技术峰会',
      icon: $r('app.media.event28'),
      color: '#FF4081',
     link: 'https://growing.openharmony.cn/mainPlay/sample/'
    }),
    new BaseCategoryItem({
      id: 13,
      name: '竞赛活动',
      icon: $r('app.media.event3'),
      color: '#8BC34A',
      link:' https://www.openharmony.cn/docs/zh-cn/overview'
    }),
    new BaseCategoryItem({
      id: 4,
      name: '开源项目',
      icon: $r('app.media.event4'),
      color: '#FF9800',
      link: 'https://www.openharmony.cn/contribution'
    })
  ];

  // 获取分类数据
  get categories(): BaseCategoryItem[] {
    return this._categories.map(item =>
    new BaseCategoryItem({
      id:item.id,
      name:item.name,
      icon: item.icon,
      color: item.color,
      link: item.link
    })
    );
  }

  // 获取热门话题
  get hotTopics(): string[] {
    return [...this._hotTopics];
  }

  // 推荐活动
  get recommendedEvents(): TechEvent[] {
    return [
      ...EventListData.filter(e => e.category === 'competition'), // 按分类筛选
      ...EventListData.filter(e => e.views > 10000)
    ].slice(0, 4);
  }
}
