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
 * 应用底部导航栏中项的类型定义
 */
export interface IndexBottomNavItem {
  /* 图标下方文字 */
  title: string
  /* 未被选中时显示为轮廓型图标 */
  normalIcon: Resource
  /* 被选中时替换为填充型图标 */
  selectedIcon: Resource
  /* 对应的按钮id（测试用例中使用） */
  btnId: string
}
