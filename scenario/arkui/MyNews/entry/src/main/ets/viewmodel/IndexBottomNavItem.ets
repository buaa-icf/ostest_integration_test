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
 * Type definition for the items in the bottom navigation bar.
 * 应用底部导航栏中项的类型定义。
 */
export interface IndexBottomNavItem {
  /* Text under the icon. */
  title: string
  /* Display outlined icons when not clicked. */
  normalIcon: Resource
  /* Display filled icons after clicked. */
  selectedIcon: Resource
}

/**
 * All the items in the bottom navigation bar.
 * 应用底部导航栏中导航项列表。
 */
export const indexBottomNavItemList: IndexBottomNavItem[] = [{
  title: '首页',
  normalIcon: $r("app.media.ic_public_home"),
  selectedIcon: $r("app.media.ic_public_home_filled")
}, {
  title: '视频',
  normalIcon: $r("app.media.ic_public_video"),
  selectedIcon: $r("app.media.ic_public_video_filled")
}, {
  title: '任务',
  normalIcon: $r("app.media.ic_public_calendar"),
  selectedIcon: $r("app.media.ic_public_calendar_filled")
}, {
  title: '个人',
  normalIcon: $r("app.media.ic_public_contacts"),
  selectedIcon: $r("app.media.ic_public_contacts_filled")
}]
