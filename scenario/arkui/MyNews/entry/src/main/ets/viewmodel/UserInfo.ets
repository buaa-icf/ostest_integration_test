/*
 * Copyright (c) 2023 Southeast University.
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


/**
 * Type definition for user information.
 * 用户信息的类型定义。
 */
@Observed
export class UserInfo {
  username: string
  userId: string
  brief: string
  avatar: Resource
  isFollowing: boolean // Is followed by current user?

  constructor(username: string, userId: string, brief: string, avatar: Resource, isFollowing: boolean) {
    this.username = username
    this.userId = userId
    this.brief = brief
    this.avatar = avatar
    this.isFollowing = isFollowing
  }
}
