/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
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
import { AbilityConstant, appManager, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';


export default class TestAbility1 extends UIAbility {
  private applicationStateNumber = -1;

  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam) {
    hilog.info(0x0000, 'testTag', '%{public}s', 'TestAbility onCreate');
    hilog.info(0x0000, 'testTag', '%{public}s', 'want param:' + JSON.stringify(want) ?? '');
    hilog.info(0x0000, 'testTag', '%{public}s', 'launchParam:' + JSON.stringify(launchParam) ?? '');
    let appState: appManager.ApplicationStateObserver = {
      onAppStarted(appStateData: appManager.AppStateData): void {
        hilog.info(0x0000, 'testTag', '%{public}s', 'applicationState onAppStarted');
      },
      onAppStopped(appStateData: appManager.AppStateData): void {
        hilog.info(0x0000, 'testTag', '%{public}s', 'applicationState onAppStopped');
      },
      onForegroundApplicationChanged(appStateData: appManager.AppStateData): void {
        hilog.info(0x0000, 'testTag', '%{public}s', 'applicationState onForegroundApplicationChanged');
      },
      onAbilityStateChanged(abilityStateData: appManager.AbilityStateData): void {
        hilog.info(0x0000, 'testTag', '%{public}s', 'applicationState onAbilityStateChanged');
      },
      onProcessCreated(processData: appManager.ProcessData): void {
        hilog.info(0x0000, 'testTag', '%{public}s', 'applicationState onProcessCreated');
      },
      onProcessDied(processData: appManager.ProcessData): void {
        hilog.info(0x0000, 'testTag', '%{public}s', 'applicationState onProcessDied');
      },
      onProcessStateChanged(processData: appManager.ProcessData): void {
        hilog.info(0x0000, 'testTag', '%{public}s', 'applicationState onProcessStateChanged');
      }
    }
    try {
      this.applicationStateNumber = appManager.on('applicationState', appState);
      AppStorage.setOrCreate<number>('test1OnApplicationStateResult', this.applicationStateNumber);
    } catch (error) {
      AppStorage.setOrCreate<number>('test1OnApplicationStateResult', -123);
      hilog.error(0x0000, 'testTag', 'Failed to on applicationState. Cause: %{public}s', JSON.stringify(error));
    }
    try {
      appManager.off('applicationState', this.applicationStateNumber);
    } catch (error) {
    }
  }


  onDestroy() {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
    try {
      appManager.off('applicationState', this.applicationStateNumber);
    } catch (error) {
    }
  }

  onWindowStageCreate(windowStage: window.WindowStage) {
    hilog.info(0x0000, 'testTag', '%{public}s', 'TestAbility onWindowStageCreate');
    windowStage.loadContent('testability/pages/Index', (err, data) => {
      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content. Data: %{public}s',
        JSON.stringify(data) ?? '');
    });
  }

  onWindowStageDestroy() {
    hilog.info(0x0000, 'testTag', '%{public}s', 'TestAbility onWindowStageDestroy');
  }

  onForeground() {
    hilog.info(0x0000, 'testTag', '%{public}s', 'TestAbility onForeground');
  }

  onBackground() {
    hilog.info(0x0000, 'testTag', '%{public}s', 'TestAbility onBackground');
  }
}