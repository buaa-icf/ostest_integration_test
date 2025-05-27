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

import  i18n  from '@ohos.i18n';
import common from '@ohos.app.ability.common';
import preferences from '@ohos.data.preferences';
import { Configuration } from '@ohos.app.ability.Configuration';

type LanguageType = 'en_US' | 'zh_CN';

export class LanguageManager {
  private static instance: LanguageManager;
  private context: common.UIAbilityContext;


  private constructor(context: common.UIAbilityContext) {
    this.context = context;
  }

  public static async getInstance(context: common.UIAbilityContext): Promise<LanguageManager> {
    if (!LanguageManager.instance) {
      LanguageManager.instance = new LanguageManager(context);
    }
    return LanguageManager.instance;
  }

  public async switchLanguage(lang: LanguageType): Promise<void> {
    try {




      // 持久化存储
      const pref = await preferences.getPreferences(this.context, 'settings');
      await pref.put('userLanguage', lang);
      await pref.flush();

      AppStorage.setOrCreate('appLanguage', lang);

    } catch (error) {
      console.error(`Language switch failed: ${JSON.stringify(error)}`);
      throw new Error('LANGUAGE_SWITCH_FAILED');
    }
  }
  public async getCurrentLanguage(): Promise<LanguageType> {
    try {
      const pref = await preferences.getPreferences(this.context, 'settings');
      return await pref.get('userLanguage', 'zh_CN') as LanguageType;
    } catch (error) {
      return 'zh_CN';
    }
  }
}