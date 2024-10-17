/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import AppConstants from '../constants/AppConstants';
import PlayerManager from '../manager/PlayerManager';
import SettingItem from '../model/SettingItem';
import settingCell from './SettingCell';

/**
 * Setting tab content
 */
@Component
export default struct Setting {
  private items: SettingItem[] = [];
  private PlayerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;
  @Link loginInfo: string;

  aboutToAppear(): void {
    console.log('SettingSetting:'+AppStorage.get(AppConstants.DETAIL_DEFAULT_SETTING));
    this.items.push(new SettingItem(AppConstants.detailDefaultSetting, $r('app.media.doc_plaintext'), AppConstants.detailDefaultSettingDes,
      true));
    this.items.push(new SettingItem(AppConstants.playModeTitle, $r('app.media.shuffle'), AppConstants.playModeDes,
      true));
    this.items.push(new SettingItem(AppConstants.keepLoginTitle, $r('app.media.key_horizontal'), AppConstants.keepLoginDes, true));
    this.items.push(new SettingItem(AppConstants.aboutTitle, $r('app.media.questionmark_circle'), AppConstants.aboutDes));
  }

  build() {
    Column() {
      Row() {
        Image($r('app.media.person_filled_viewfinder'))
          .width(36)
          .height(36)
          .margin({ left: 12, right: 12 })
          .borderRadius(20)
        Text(this.loginInfo)
          .fontSize('24fp')
          .margin({ left: 12, right: 12 })
      }
      .width('100%')
      .height(64)
      .backgroundColor(Color.White)
      .borderRadius(12)
      .margin({ top: 12, bottom: 12 })
      .justifyContent(FlexAlign.SpaceBetween)

      List() {
        ForEach(this.items, (item: SettingItem) => {
          ListItem() {
            settingCell({item:item})
          }
          .height(56)
        })
      }
      .backgroundColor(Color.White)
      .divider({
        strokeWidth: 0.25,
        color: Color.Grey,
        startMargin: 24,
        endMargin: 24
      })
      .borderRadius(16)
      .padding({ top: 4, bottom: 4 })

      Blank()

      Button({ type: ButtonType.Normal }) {
        Row() {
          Image($r('app.media.power'))
            .height(32)
            .width(32)
            .margin(4)
          Text($r('app.string.exit'))
            .fontSize('28fp')
            .fontWeight(FontWeight.Lighter)
            .fontColor(Color.Red)
            .margin(4)
        }.alignItems(VerticalAlign.Center)
      }
      .width('100%')
      .height(48)
      .backgroundColor(Color.White)
      .borderRadius(12)
      .margin({ top: 12, bottom: 12 })
      .clickEffect(AppConstants.CLICK_EFFECT)
      .onClick(() => {
        this.PlayerManager.exitAPP();
      })
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('90%')
    .height('100%')
  }
}
