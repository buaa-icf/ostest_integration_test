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

export interface User {
  id: number;
  name: string;
  avatar: Resource;
  bio: string;
  followers?: number;
  videos?: number;
  mutualFollow?: boolean;
  isOnline?:boolean;
  isFollowing?: boolean;
  lastActive?: number;
  tags?:string[];
  activityRate?:number;
  isNew?: boolean;
  specialBadge?: '官方认证' | '金V认证' | '超级铁粉';
}
// 扩展关注数据类型
export interface FollowData {
  total: number;
  list: User[];
}