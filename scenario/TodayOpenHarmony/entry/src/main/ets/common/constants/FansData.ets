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
export const FansData: User[] = [
  {
    id: 5,
    name: '鸿蒙爱好者',
    avatar: $r('app.media.star'),
    bio: '鸿蒙系统忠实用户',
    followers:200,
    videos:100,
    isFollowing: false,
    activityRate:100,
    isOnline:true,
    lastActive:100,
    specialBadge:'超级铁粉'
  },
  {
    id: 6,
    name: 'Harmony开发者',
    avatar: $r('app.media.code'),
    bio: 'OpenHarmony贡献者',
    followers: 350,
    videos: 80,
    isFollowing: true,
    activityRate:85,
    isOnline:true,
    lastActive:70,
    mutualFollow:true,
    specialBadge:'官方认证'
  },
  {
    id: 7,
    name: '鸿蒙测试员',
    avatar: $r('app.media.sync'),
    bio: '系统稳定性专家',
    followers: 150,
    videos: 45,
    isFollowing: false,
    activityRate:45,
    isOnline:false,
    lastActive:5000,
    mutualFollow:true,
    specialBadge:'金V认证'
  },
  {
    id: 8,
    name: '鸿蒙UI设计师',
    avatar: $r('app.media.top'),
    bio: '鸿蒙主题设计专家',
    followers: 420,
    videos: 68,
    isFollowing: false,
    activityRate: 92,
    isOnline: true,
    lastActive:500,
    mutualFollow: true,
  },
  {
    id: 9,
    name: 'HarmonyOS布道师',
    avatar: $r('app.media.study'),
    bio: '鸿蒙开发者培训讲师',
    followers: 880,
    videos: 120,
    isFollowing: true,
    activityRate: 78,
    isOnline: false,
    lastActive:20,
    specialBadge: '金V认证'
  },
];