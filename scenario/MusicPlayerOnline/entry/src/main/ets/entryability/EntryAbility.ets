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

import AbilityConstant from '@ohos.app.ability.AbilityConstant';
import UIAbility from '@ohos.app.ability.UIAbility';
import Want from '@ohos.app.ability.Want';
import window from '@ohos.window';
import {formInfo } from '@kit.FormKit';
import PlayerManager from '../manager/PlayerManager';
import rpc from '@ohos.rpc';
import HttpManager from '../manager/HttpManager';
import Logger from '../utils/Logger';
import AppConstants from '../constants/AppConstants';

const TAG: string = 'EntryAbility';

export default class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    AppStorage.setOrCreate('APPContext', this.context);
    let aPlayerManager: PlayerManager = new PlayerManager();
    AppStorage.setOrCreate('PlayerManager', aPlayerManager);
    try {
      this.callee.on(AppConstants.CARD_CALL_METHOD_PLAY, (data: rpc.MessageSequence) => {
        aPlayerManager.resume();
        return null;
      });
      this.callee.on(AppConstants.CARD_CALL_METHOD_PAUSE, (data: rpc.MessageSequence) => {
        aPlayerManager.pause();
        return null;
      });
      this.callee.on(AppConstants.CARD_CALL_METHOD_PREV, (data: rpc.MessageSequence) => {
        aPlayerManager.previous();
        return null;
      });
      this.callee.on(AppConstants.CARD_CALL_METHOD_NEXT, (data: rpc.MessageSequence) => {
        aPlayerManager.next();
        return null;
      });
      this.callee.on(AppConstants.CARD_CALL_METHOD_SET_MODE, (data: rpc.MessageSequence) => {
        aPlayerManager.setPlayMode();
        return null;
      });
      this.callee.on(AppConstants.CARD_CALL_METHOD_SET_FAVOR, (data: rpc.MessageSequence) => {
        HttpManager.getInstance().set_favourite();
        return null;
      });
      this.callee.on(AppConstants.CARD_CALL_METHOD_FORM_ID, (data: rpc.MessageSequence) => {
        let params: Record<string, string> = JSON.parse(data.readString());
        if (params.formId !== undefined) {
          Logger.info(TAG, 'params.formId:' + params.formId);
          aPlayerManager.setFormId(params.formId);
        }
        return null;
      });
    } catch (error) {
      Logger.error(TAG, 'Failed to register callee on. Cause:' + JSON.stringify(error));
    }
    Logger.info(TAG, 'Ability onCreate');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    Logger.info(TAG, 'Ability onWindowStageCreate');
    windowStage.loadContent('pages/Index', (err) => {
      if (err.code) {
        Logger.error(TAG, 'Failed to load the content. Cause: ' + JSON.stringify(err) ?? '');
        return;
      }
      Logger.info(TAG, 'Succeeded in loading the content.');
    });
  }

  onNewWant(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    Logger.info(TAG, 'onNewWant Want:'+JSON.stringify(want));
    if (want.parameters && want.parameters[formInfo.FormParam.IDENTITY_KEY] !== undefined) {
      let curFormId = want.parameters[formInfo.FormParam.IDENTITY_KEY].toString();
      let message: string = (JSON.parse(want.parameters?.params as string))?.method;
      Logger.info(TAG, `onNewWant curFormId:${curFormId} ,message:${message}.`);
    }
  }

  onDestroy(): void {
    try {
      this.callee.off('play');
      this.callee.off('pause');
      this.callee.off('prev');
      this.callee.off('next');
      this.callee.off('formId');
      this.callee.off('playMode');
    } catch (error) {
      Logger.error(TAG, 'Failed to register callee off. Cause:' + JSON.stringify(error));
    }
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    Logger.info(TAG, 'Ability onWindowStageDestroy');
  }

  onForeground(): void {
    // Ability has brought to foreground
    Logger.info(TAG, 'Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background
    Logger.info(TAG, 'Ability onBackground');
  }
}
