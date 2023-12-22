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


import { UserInfo } from '../ets/viewmodel/UserInfo'

export const recommendedUserList: UserInfo[] = [
  new UserInfo('用户1', '001', '用户1的个人简介，用户1的个人简介', $r('app.media.avatar_1'), false),
  new UserInfo('用户2', '002', '用户2的个人简介', $r('app.media.avatar_2'), false),
  new UserInfo('用户3', '003', '用户3的个人简介', $r('app.media.avatar_3'), false),
  new UserInfo('用户4', '004', '用户4的个人简介，用户4的个人简介', $r('app.media.avatar_4'), false),
  new UserInfo('用户5', '005', '用户5的个人简介', $r('app.media.avatar_5'), false),
  new UserInfo('用户6', '006', '用户6的个人简介', $r('app.media.avatar_6'), false)
]
