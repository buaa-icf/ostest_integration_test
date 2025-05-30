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

// LanguageSettingItem.ets
import { LanguageManager } from '../../common/i18n/LanguageManager';
import prompt from '@ohos.promptAction';
import common from '@ohos.app.ability.common';
import preferences from '@ohos.data.preferences';
import promptAction from '@ohos.promptAction';
import router from '@ohos.router';
type LanguageType = 'en_US' | 'zh_CN';

@Component
export struct LanguageSettingItem {
  @StorageProp('appLanguage') appLanguage: LanguageType = 'zh_CN';
  private context: common.Context = getContext(this);


  async aboutToAppear() {
    // 初始化时同步语言状态
    const langManager = await LanguageManager.getInstance(this.context as common.UIAbilityContext);
    const savedLang = await langManager.getCurrentLanguage();
    this.appLanguage = savedLang;
  }

  private async switchLanguage(lang: LanguageType) {
    if (this.appLanguage === lang) return;

      const langManager = await LanguageManager.getInstance(this.context as common.UIAbilityContext);
      await langManager.switchLanguage(lang);
      // 自动触发界面更新
      this.appLanguage = lang; // @StorageProp会自动同步

      // 获取当前页面路径
      const currentPath = router.getState()?.path;

      // 重载当前页面
      if (currentPath) {
        router.replaceUrl({
          url: `pages/UserProfile?ts=${Date.now()}`
        });
      }
    }

  build() {
    Row() {
      Row() {
        Image($r('app.media.english'))
          .width(24)
          .height(24)
          .margin({ right: 16 })

        Text($r('app.string.language_setting'))
          .fontSize(16)
          .fontColor(Color.Black)
      }

      Blank()

      Text(this.appLanguage === 'zh_CN'
        ? $r('app.string.language_chinese')
        : $r('app.string.language_english'))
        .fontSize(16)
        .fontColor('#666666')

      Image($r('app.media.arrow_right'))
        .width(20)
        .height(20)
        .margin({ left: 12 })
    }
    .onClick(() => this.showLanguageSelector())
    .padding(16)
    .width('100%')
    .backgroundColor(Color.White)
    .borderRadius(16)
    .shadow({ radius: 8, color: 'rgba(0,0,0,0.1)' })
  }

  private showLanguageSelector() {
    const buttons: promptAction.Button[] = [  // 改用普通数组类型
      {
        text: $r('app.string.language_english'),
        color: this.appLanguage === 'en_US' ? '#007AFF' : '#999999'  // 直接使用HEX色值
      },
      {
        text: $r('app.string.language_chinese'),
        color: this.appLanguage === 'zh_CN' ? '#007AFF' : '#999999'
      }
    ];

    promptAction.showActionMenu({
      title: $r('app.string.select_language'),
      buttons: buttons as [promptAction.Button, promptAction.Button]  // 断言为二元组
    }).then((result) => {
      if (result.index < 2) {
        this.switchLanguage(result.index === 0 ? 'en_US' : 'zh_CN');
      }
    });
  }
}