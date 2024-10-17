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
import SettingItem from '../model/SettingItem';
import { InputServerHost } from './InputServerHost';
import prompt from '@ohos.promptAction';

/**
 * settingCell information component.
 */
@Component
export default struct settingCell {
  private item = new SettingItem('', $r('app.media.key_horizontal'), '', false);
  private toggleState = false;
  @State inputListName: string | undefined = '';
  dialogController: CustomDialogController | null = new CustomDialogController({
    builder: InputServerHost({
      cancel: () => {
        if (this.dialogController !== null) {
          this.dialogController.close();
        }
      },
      confirm: () => {
        if (this.inputListName !== undefined) {
          let regex = /^(https?:\/\/)(\d{1,3}(\.\d{1,3}){3}):(\d+)(\/)$/;
          if (regex.test(this.inputListName.trim())) {
            AppStorage.setOrCreate(AppConstants.SERVER_HOST_PROP, this.inputListName.trim())
            if (this.dialogController !== null) {
              this.dialogController.close();
            }
          } else {
            prompt.showToast({
              message: '服务器地址格式不符合：http://192.168.12.8:8000/'
            });
          }
        }
      },
      inputListName: $inputListName,
    }),
    autoCancel: true,
    alignment: DialogAlignment.Bottom,
    offset: { dx: 0, dy: -20 },
    gridCount: 4,
    customStyle: false,
    cornerRadius: 10,
  })

  aboutToAppear() {
    this.inputListName = AppStorage.get(AppConstants.SERVER_HOST_PROP);
    switch (this.item.title) {
      case AppConstants.detailDefaultSetting:
        this.toggleState = AppStorage.get(AppConstants.DETAIL_DEFAULT_SETTING) == AppConstants.TOGGLE_SETTING_ON;
        break;
      case AppConstants.playModeTitle:
        this.toggleState = AppStorage.get(AppConstants.PLAY_MODE_SETTING) == AppConstants.TOGGLE_SETTING_ON;
        break;
      case AppConstants.keepLoginTitle:
        this.toggleState = AppStorage.get(AppConstants.KEEP_LOGIN_SETTING) == AppConstants.TOGGLE_SETTING_ON;
        break;
      default:
        break;
    }
  }

  aboutToDisappear(): void {
    if (this.dialogController !== null) {
      this.dialogController.close();
      this.dialogController = null;
    }
  }

  build() {
    Row() {
      Image(this.item.img)
        .width(28)
        .height(28)
        .margin(4)

      Column() {
        Text(this.item.title)
          .maxLines(1)
          .fontSize(20)
          .fontWeight(FontWeight.Lighter)

        Text(this.item.subTitle)
          .fontSize(14)
          .fontWeight(FontWeight.Lighter)
          .fontColor(Color.Gray)
          .margin({ left: 8, right: 8 })
          .maxLines(1)
      }
      .alignItems(HorizontalAlign.Start)

      Blank()
      if (this.item.others) {
        Toggle({
          type: ToggleType.Switch,
          isOn: this.toggleState
        })
          .selectedColor(Color.Orange)
          .onChange((isOn: boolean) => {
            switch (this.item.title) {
              case AppConstants.detailDefaultSetting:
                AppStorage.setOrCreate(AppConstants.DETAIL_DEFAULT_SETTING,
                  isOn ? AppConstants.TOGGLE_SETTING_ON : AppConstants.TOGGLE_SETTING_OFF);
                break;
              case AppConstants.playModeTitle:
                AppStorage.setOrCreate(AppConstants.PLAY_MODE_SETTING,
                  isOn ? AppConstants.TOGGLE_SETTING_ON : AppConstants.TOGGLE_SETTING_OFF);
                break;
              case AppConstants.keepLoginTitle:
                AppStorage.setOrCreate(AppConstants.KEEP_LOGIN_SETTING,
                  isOn ? AppConstants.TOGGLE_SETTING_ON : AppConstants.TOGGLE_SETTING_OFF);
                break;
              default:
                break;
            }

          })
      } else {
        Image($r('app.media.chevron_right'))
          .width(12)
          .height(24)
      }
    }
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .padding({
      left: 8,
      right: 22
    })
    .clickEffect(AppConstants.CLICK_EFFECT)
    .gesture(
      TapGesture({ count: 2 })
        .onAction((event: GestureEvent) => {
          if (event && this.item.title === AppConstants.aboutTitle) {
            if (this.dialogController != null) {
              this.dialogController.open();
            }
          }
        })
    )
    .gesture(
      TapGesture({ count: 1 })
        .onAction((event: GestureEvent) => {
          if (event) {

          }
        })
    )
  }
}