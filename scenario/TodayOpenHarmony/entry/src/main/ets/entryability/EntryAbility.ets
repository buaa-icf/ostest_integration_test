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

import { AbilityConstant, ConfigurationConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';
import { Configuration } from '@ohos.app.ability.Configuration';
import { LanguageManager } from '../common/i18n/LanguageManager';
const DOMAIN = 0x0000;

export default class EntryAbility extends UIAbility {
  private langManager?: LanguageManager;

  async onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): Promise<void> {
    try {
      // 修正初始化代码
      this.langManager = await  LanguageManager.getInstance(this.context); // 使用静态工厂方法
      const savedLang = await this.langManager.getCurrentLanguage(); // 移除非空断言

      //  直接设置全局配置
      this.context.config = {
        language: savedLang,
        direction: ConfigurationConstant.Direction.DIRECTION_HORIZONTAL
      };

      //  正确更新窗口配置
      const win = await window.getLastWindow(this.context);
      if (win) {
        // 使用标准窗口属性设置方式
        win.setWindowSystemBarEnable(['status', 'navigation']);
        win.setWindowBackgroundColor('#F5F5F5');
      }

      hilog.info(DOMAIN, 'EntryAbility', 'Language initialized: %{public}s', savedLang);
    } catch (err) {
      hilog.error(DOMAIN, 'EntryAbility', 'Init failed: %{public}s', JSON.stringify(err));
    }

    this.context.getApplicationContext().setColorMode(
      ConfigurationConstant.ColorMode.COLOR_MODE_DARK
    );
  }

 async  onConfigurationUpdate(newConfig: Configuration): Promise <void> {
    if (this.langManager) {
      // 4. 使用正确方式更新配置
      const currentLang = await this.langManager.getCurrentLanguage();
      this.context.config = {
        language: currentLang as string,
        direction: this.context.config?.direction ??
        ConfigurationConstant.Direction.DIRECTION_HORIZONTAL
      };
    }
  }

  onDestroy(): void {
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onWindowStageCreate');

    windowStage.loadContent('pages/HomePage', (err) => {
      if (err.code) {
        hilog.error(DOMAIN, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err));
        return;
      }
      hilog.info(DOMAIN, 'testTag', 'Succeeded in loading the content.');
    });
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground(): void {
    // Ability has brought to foreground
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onBackground');
  }
}