
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

import { TechEvent } from '../../model/EventModel'; // 正确路径
export const EventListData: TechEvent[] = [
  {
    id: 20,
    type: '活动',
    title: 'OpenHarmony明星开发板',
    subtitle: '促进万物互联产业的繁荣发展',
    image: $r('app.media.one'),
    timestamp: '2024-9-15',
    views: 1500,
    location: '线上',
    deadline: '2024-10-30',
    organizer: '开放原子开源基金会',
    types: ['线上活动', '技术研讨'],
    link: 'https://www.openharmony.cn/boardOverview/',
    category: 'competition',
    progress: 75,
    startTime: Date.now() - 86400000 * 5 // 5天前（已开始）
  },
  {
    id: 21,
    type: '活动',
    title: '我为OpenHarmony写代码',
    subtitle: '战“码”先锋第二期正式开启！',
    image: $r('app.media.now2'),
    views: 2300,
    timestamp: '2022-7-18',
    deadline: '2022-9-19',
    location: '线上',
    organizer: '开放原子基金会',
    types: ['生态合作'],
    link: 'https://www.openharmony.cn/contributorPlanII/',
    category: 'course',
    progress: 85,
    startTime: Date.now() - 86400000 * 5 // 5天前（已开始）
  },
  {
    id: 22,
    type: '大赛',
    title: '“松山湖杯”第一届中国研究生操作系统开源创新大赛圆满落幕',
    subtitle: '共建人才培养基地',
    image: $r('app.media.first'),
    views: 28700,
    timestamp: '2024-10-29',
    deadline: '2024-10-30',
    location: '上海',
    organizer: '开放原子基金会',
    types: ['教育', '开源'],
    link: 'https://www.openharmony.cn/operatingSystem/osIntroduction',
    category: 'competition',
    progress: 95,
    startTime: Date.now() - 86400000 * 5 // 5天前（已开始）
  },
  {
    id: 23,
    type: '高校',
    title: 'OpenHarmony繁星计划',
    subtitle: '汇聚成高校内容的资源库',
    image: $r('app.media.ability'),
    views: 42300,
    timestamp: '2023-11-18',
    deadline: '2024-3-25',
    types: ['高校培训'],
    location: '北京站等',
    organizer: 'OpenHarmony项目群工作委员会',
    category: 'course',
    link: 'https://www.openharmony.cn/teachers/',
    progress: 75,
    startTime: Date.now() + 86400000 * 15 // 15天后
  }
]