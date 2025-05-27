
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
import { User } from '../../model/FollowModel';
export const followList: User[] = [
  {
    id: 1,
    name: 'OpenHarmony官方',
    avatar: $r('app.media.logo'),
    bio: '开源鸿蒙官方账号',
    lastActive: Date.now(),
    isOnline:true,
    mutualFollow:true,
  },
  {
    id: 2,
    name: '开发者wang',
    avatar: $r('app.media.person'),
    bio: '鸿蒙应用开发专家',
    lastActive: new Date("06-01").getTime(),
    isOnline:true,
    mutualFollow:true,

  },
  {
    id: 3,
    name: 'UI设计老张',
    avatar: $r('app.media.me'),
    bio: '鸿蒙主题设计师 | 3年经验',
    lastActive: Date.now() - 86400000 * 3,
    isOnline:false,
    mutualFollow:true,

  },
  {
    id: 4,
    name: '鸿蒙技术栈kaihong',
    avatar: $r('app.media.study'),
    bio: '每日分享鸿蒙开发技巧',
    lastActive: 1704067200000,
    isOnline:false,
    mutualFollow:false,
  }
];