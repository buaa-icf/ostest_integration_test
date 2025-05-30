
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
export interface ContextItem {
  id: number
  title: string
  content: string
  category: string
  isCompleted: boolean
  tags: string[]
  difficulty?: 'beginner' | 'intermediate' | 'advanced'
  createdTime?: string
  lastModified?: string
}
export const ContextData: ContextItem[] = [
  {
    id: 1,
    title: 'ArkTS基础语法',
    content: '学习ArkTS的基本数据类型和语法结构',
    category: '编程基础',
    isCompleted: false,
    tags: ['语法', '入门'],
    difficulty: 'beginner',
    createdTime: '2024-01-01T09:00:00Z',
    lastModified: '2024-01-05T14:30:00Z'
  },
  {
    id: 2,
    title: '状态管理实战',
    content: '掌握@State和@Link的使用场景',
    category: '高级功能',
    isCompleted: true,
    tags: ['状态管理', '响应式'],
    difficulty: 'intermediate'
  }
]
