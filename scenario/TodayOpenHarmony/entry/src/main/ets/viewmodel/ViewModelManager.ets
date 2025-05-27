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

// ViewModelManager.ets
import { NewsViewModel } from './NewsVM'
import { RecommendViewModel } from './RecommendVM'
import { DiscoveryViewModel } from './DiscoveryVM'
import { UserViewModel } from './UserVM'
import common from '@ohos.app.ability.common';

type TabIndex = 0 | 1 | 2 | 3;

// 定义基础ViewModel接口
export interface BaseViewModel {
  onInit: () => void;
  onDestroy?: () => void;
}

export class ViewModelManager {
  private static _instance: ViewModelManager;
  private currentVM: BaseViewModel | null = null;
  private lastIndex: number = 0;

  // 单例模式获取实例
  static getInstance(): ViewModelManager {
    if (!ViewModelManager._instance) {
      ViewModelManager._instance = new ViewModelManager();
    }
    return ViewModelManager._instance;
  }

  // 切换业务逻辑控制器
  switchViewModel(index: TabIndex): void {
    if (this.lastIndex === index) return;

    this.destroyCurrentVM();

    switch(index) {
      case 0:
        this.currentVM = new NewsViewModel();
        break;
      case 1:
        this.currentVM = new RecommendViewModel();
        break;
      case 2:
        this.currentVM = new DiscoveryViewModel();
        break;

      case 3:
        // 使用单例方法获取实例
        this.currentVM = UserViewModel.getInstance(getContext() as common.UIAbilityContext);
        break;
      default:
        console.error('Invalid tab index');
        return;
    }
    if (this.currentVM) {
      this.currentVM.onInit();
      this.lastIndex = index;
    }
  }

  // 获取当前视图模型
  getCurrentVM<T>(): T | null {
    return this.currentVM as T ?? null;
  }

  // 清理资源
  private destroyCurrentVM(): void {
    if (this.currentVM && typeof this.currentVM.onDestroy === 'function') {
      this.currentVM.onDestroy();
    }
    this.currentVM = null;
  }
}