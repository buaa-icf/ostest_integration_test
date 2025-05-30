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

// viewmodel/UserVM.ets
import { UserInfo } from '../model/UserModel';
import { BaseViewModel } from './ViewModelManager';
import common from '@ohos.app.ability.common';
import preferences from '@ohos.data.preferences';
let globalUserVM: UserViewModel | null = null;

@Observed
export class UserViewModel implements BaseViewModel {
  private readonly prefsKey: string = 'userProfile';
  @Track userInfo: UserInfo;

  private context: common.UIAbilityContext;
  private constructor(context: common.UIAbilityContext) {
    this.context = context;
    this.userInfo = this.getDefaultUserInfo();
    this.loadFromStorage();
  }

  updateUserPoints(newPoints: number) {
    // 创建新对象以触发更新
    this.userInfo = {
      avatar: this.userInfo.avatar,
      nickname: this.userInfo.nickname,
      bio: this.userInfo.bio,
      followCount: this.userInfo.followCount,
      fansCount: this.userInfo.fansCount,
      pointCount: newPoints,   // 仅更新积分
      historyCount: this.userInfo.historyCount
    };
    this.saveToStorage();     // 确保存储更新
  }

  async refreshData() {
    await this.loadFromStorage();
  }

  // 添加静态获取实例方法
  static getInstance(context: common.UIAbilityContext): UserViewModel {
    if (!globalUserVM) {
      globalUserVM = new UserViewModel(context);
    }
    return globalUserVM;
  }

  // 用户数据
  private getDefaultUserInfo(): UserInfo {
    return {
      avatar: $r('app.media.logo'),
      nickname: '开鸿开发者',
      bio: '专注鸿蒙生态开发 | 创新应用探索者',
      followCount: 128,
      fansCount: 456,
      pointCount: 1100,
      historyCount: 251
    };
  }

  updateUserInfo(updatedInfo: Partial<UserInfo>): void {
    // 手动合并对象属性
    this.userInfo = {
      avatar: updatedInfo.avatar ?? this.userInfo.avatar,
      nickname: updatedInfo.nickname ?? this.userInfo.nickname,
      bio: updatedInfo.bio ?? this.userInfo.bio,
      followCount: updatedInfo.followCount ?? this.userInfo.followCount,
      fansCount: updatedInfo.fansCount ?? this.userInfo.fansCount,
      pointCount: updatedInfo.pointCount ?? this.userInfo.pointCount,
      historyCount: updatedInfo.historyCount ?? this.userInfo.historyCount
    };
    this.saveToStorage();
  }
  // 新增存储方法实现
  private async saveToStorage(): Promise<void> {
    try {
      const prefs = await preferences.getPreferences(this.context, 'userProfile');
      await prefs.put('userData', JSON.stringify(this.userInfo));
      await prefs.flush();
    } catch (error) {
      console.error('保存用户数据失败:', error);
    }
  }

  // 从本地存储加载
public async loadFromStorage(): Promise<void> {
    try {
      const prefs = await preferences.getPreferences(this.context, this.prefsKey);
      const storedData = await prefs.get('userData', '');

      if (storedData && typeof storedData === 'string') {
        const parsedData = JSON.parse(storedData) as Partial<UserInfo>; // 关键修改点

        this.userInfo = {
          avatar: this.convertStringToResource(
            (parsedData.avatar as ResourceStr | undefined) ?? this.userInfo.avatar
          ),
          nickname: parsedData.nickname ?? this.userInfo.nickname,
          bio: parsedData.bio ?? this.userInfo.bio,
          followCount: parsedData.followCount ?? this.userInfo.followCount,
          fansCount: parsedData.fansCount ?? this.userInfo.fansCount,
          pointCount: parsedData.pointCount ?? this.userInfo.pointCount,
          historyCount: parsedData.historyCount ?? this.userInfo.historyCount
        };
      }
    } catch (error) {
      console.error('加载用户数据失败:', error);
    }
  }

  // Resource ↔ String 转换工具方法
  private convertResourceToString(res: string | Resource): string {
    return typeof res === 'string' ? res : res.id.toString();
  }

  private convertStringToResource(resStr: ResourceStr): Resource {
    return typeof resStr === 'string' ? $r(resStr) : resStr;
  }

  async fetchUserData(): Promise<void> {
    // 具体实现（如 API 请求）
  }

  async onInit(): Promise<void> {
    // 异步初始化逻辑（如 API 请求）
    await this.fetchUserData();
  }

  // 数据加载
  private loadUserData(): void {
    // 实际项目中替换为异步数据获取
    console.log('Loading user data...');
  }

  // 更新头像
  updateAvatar(newAvatar: ResourceStr): void {
    // 手动创建新对象
    this.userInfo = {
      avatar: newAvatar,
      nickname: this.userInfo.nickname,
      bio: this.userInfo.bio,
      followCount: this.userInfo.followCount,
      fansCount: this.userInfo.fansCount,
      pointCount: this.userInfo.pointCount,
      historyCount: this.userInfo.historyCount
    };
  }
}