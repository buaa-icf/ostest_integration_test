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

// model/CategoryModel.ts
interface CategoryItemParams {  // 定义独立接口代替对象字面量类型
  id: number;
  name: string;
  icon: Resource;
  color: ResourceColor;
  link: string;
}

export class CategoryItem {
  id: number;
  name: string;
  icon: Resource;
  color: ResourceColor;
  link: string;

  constructor(params: CategoryItemParams) {  // 使用接口类型
    this.id = params.id;
    this.name = params.name;
    this.icon = params.icon;
    this.color = params.color;
    this.link = params.link;
  }
}