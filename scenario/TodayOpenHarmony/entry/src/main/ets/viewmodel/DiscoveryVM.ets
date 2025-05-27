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
import { TechEvent } from '../model/EventModel';
import { EventListData } from '../common/constants/EventListData';
import { DiscoveryData, BaseCategoryItem } from '../model/DiscoveryModel';
import { BaseViewModel } from './ViewModelManager';

@Observed
export class DiscoveryViewModel implements BaseViewModel {
  private discoveryData: DiscoveryData = new DiscoveryData();
  private allEvents: TechEvent[] = EventListData; // 重命名为原始数据源
  @Track displayEvents: TechEvent[] = [...this.allEvents]; // 使用拷贝初始化

async  onInit() {
   await this.loadDiscoveryData(); // 自动执行初始加载
  }

 private  async loadDiscoveryData() {
    try {
      // 模拟异步数据加载（实际应替换为API调用）
      const mockLiveData = await Promise.resolve(
        this.allEvents.filter(event =>
        event.category === 'live' // 假设存在分类字段
        )
      );
      this.displayEvents = [...mockLiveData]; // 直接更新显示列表
      this.discoveryData.updateLiveList(mockLiveData); // 同步到数据模型

    } catch (error) {
      console.error('发现页数据加载失败:', error);
      this.displayEvents = []; // 清空显示
    }
  }

  // 简化更新逻辑
  updateDisplayEvents(results: TechEvent[]) {
    this.displayEvents = [...results]; // 确保触发更新
  }

  getHotTopics(): string[] {
    return this.discoveryData.hotTopics;
  }

  getCategories(): BaseCategoryItem[] {
    return this.discoveryData.categories;
  }
}