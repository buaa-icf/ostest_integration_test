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
import hilog from '@ohos.hilog';
import UIAbility from '@ohos.app.ability.UIAbility';
import Want from '@ohos.app.ability.Want';
import window from '@ohos.window';
import PlayerManager from '../manager/PlayerManager';
import rpc from '@ohos.rpc';
import HttpManager from '../manager/HttpManager';

const TAG: string = 'EntryAbility';

export default class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    AppStorage.setOrCreate('APPContext', this.context);
    let aPlayerManager: PlayerManager = new PlayerManager();
    AppStorage.setOrCreate('PlayerManager', aPlayerManager);
    try {
      this.callee.on('play', (data: rpc.MessageSequence) => {
        aPlayerManager.resume();
        return null;
      });
      this.callee.on('pause', (data: rpc.MessageSequence) => {
        aPlayerManager.pause();
        return null;
      });
      this.callee.on('prev', (data: rpc.MessageSequence) => {
        aPlayerManager.previous();
        return null;
      });
      this.callee.on('next', (data: rpc.MessageSequence) => {
        aPlayerManager.next();
        return null;
      });
      this.callee.on('playMode', (data: rpc.MessageSequence) => {
        aPlayerManager.setPlayMode();
        return null;
      });
      this.callee.on('setFavor', (data: rpc.MessageSequence) => {
        HttpManager.getInstance().set_favourite();
        return null;
      });
      this.callee.on('formId', (data: rpc.MessageSequence) => {
        let params: Record<string, string> = JSON.parse(data.readString());
        if (params.formId !== undefined) {
          console.info(TAG, 'params.formId:' + params.formId);
          aPlayerManager.setFormId(params.formId);
        }
        return null;
      });
    } catch (error) {
      console.error('Failed to register callee on. Cause:' + JSON.stringify(error));
    }
    console.info(TAG, 'Ability onCreate');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');
    windowStage.loadContent('pages/Index', (err) => {
      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content.');
    });
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
      console.error('Failed to register callee off. Cause:' + JSON.stringify(error));
    }
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground(): void {
    // Ability has brought to foreground
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }
}
