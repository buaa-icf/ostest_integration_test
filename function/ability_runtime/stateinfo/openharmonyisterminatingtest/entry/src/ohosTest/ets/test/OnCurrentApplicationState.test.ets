/**
 * Copyright (c) 2024 Huawei Device Co., Ltd.
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

import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, TestType, Level, Size } from '@ohos/hypium';
import { appManager, common, Want, bundleManager } from '@kit.AbilityKit';
import { abilityDelegatorRegistry } from '@kit.TestKit';
import { process } from '@kit.ArkTS';
import { rpc } from '@kit.IPCKit';
import App from '@system.app';

const TAG: string = 'StateInfo_IsTerminatingTest';
const Domain: number = 0x0000;

function sleep(time: number): Promise<void> {
  return new Promise((resolve) => setTimeout(resolve, time))
}

// 注册监听
let appStateEmpty: appManager.ApplicationStateObserver = {
  onAppStarted(appStateData: appManager.AppStateData): void {
  },
  onAppStopped(appStateData: appManager.AppStateData): void {
  },
  onForegroundApplicationChanged(appStateData: appManager.AppStateData): void {
  },
  onAbilityStateChanged(abilityStateData: appManager.AbilityStateData): void {
  },
  onProcessCreated(processData: appManager.ProcessData): void {
  },
  onProcessDied(processData: appManager.ProcessData): void {
  },
  onProcessStateChanged(processData: appManager.ProcessData): void {
  }
}

export default function onCurrentApplicationState() {
  let abilityDelegator: abilityDelegatorRegistry.AbilityDelegator = abilityDelegatorRegistry.getAbilityDelegator();
  let testOnApplicationStateAbilityWant: Want = {
    bundleName: 'com.hits.stateinfo.isterminating',
    abilityName: 'TestOnApplicationStateAbility'
  }
  let testAbility2Want: Want = {
    bundleName: 'com.hits.stateinfo.isterminating',
    abilityName: 'TestAbility2'
  }
  let testAbility3Want: Want = {
    bundleName: 'com.hits.stateinfo.isterminating',
    abilityName: 'TestAbility3'
  }
  let testAbility4Want: Want = {
    bundleName: 'com.hits.stateinfo.isterminating',
    abilityName: 'TestAbility4'
  }
  let appEmptyWant: Want = {
    bundleName: 'com.hits.stateinfo.empty',
    abilityName: 'EntryAbility'
  }
  let currentWant: Want = {
    bundleName: 'com.hits.stateinfo.isterminating',
    abilityName: 'TestAbility'
  }
  let applicationStateNumber = -1;
  describe('onCurrentApplicationState', () => {
    beforeEach(async () => {
      // Presets an action, which is performed before each unit test case starts.
      // The number of execution times is the same as the number of test cases defined by **it**.
      // This API supports only one parameter: preset action function.
      await abilityDelegator.executeShellCommand(`aa force-stop ${appEmptyWant.bundleName}`);
      try {
        applicationStateNumber = -1;
        appManager.off('applicationState', 0);
      } catch (e) {
      }
      await sleep(1000);
    })
    afterEach(async () => {
      // Presets a clear action, which is performed after each unit test case ends.
      // The number of execution times is the same as the number of test cases defined by **it**.
      // This API supports only one parameter: clear action function.
      await abilityDelegator.executeShellCommand(`aa force-stop ${appEmptyWant.bundleName}`);
      try {
        appManager.off('applicationState', applicationStateNumber);
      } catch (e) {
      }
      await sleep(1000);
    })
    afterAll(() => {
      // Presets a clear action, which is performed after all test cases of the test suite end.
      // This API supports only one parameter: clear action function.
      try {
        appManager.off('applicationState', applicationStateNumber);
      } catch (e) {
      }
    })
    /**
     * @tc.number: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_2800
     * @tc.name: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_2800
     * @tc.desc: test on applicationState
     * @tc.size: LargeTest
     * @tc.type: Function
     * @tc.level: Level0
     */
    it("SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_2800",
      TestType.FUNCTION | Size.LARGETEST | Level.LEVEL0, async (done: Function) => {

        try {
          applicationStateNumber = appManager.on('applicationState', appStateEmpty);
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_2800 start ${applicationStateNumber}`);
          // 注册监听成功
          expect(applicationStateNumber).assertLarger(-1);
          await sleep(1000);
          appManager.off('applicationState', applicationStateNumber);
          await sleep(1000);
          appManager.off('applicationState', applicationStateNumber);
          expect().assertFail();
        } catch (e) {
          hilog.error(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_2800 error,
           error code is: ${e.code}, error message is: ${e.message}`);
          expect(true).assertTrue();
        }
        done();
      });
  })
}

function getAppStateData(data: appManager.AppStateData, result: boolean, eqState: number, bundleName?: string) {
  hilog.debug(Domain, TAG, `on applicationState AppStateData ${JSON.stringify(data)}`);
  if (result) {
    return true;
  }
  if (data.bundleName != bundleName) {
    return false;
  }
  if (data.uid > 0) {
    return eqState == data.state;
  }
  return false;
}

function getAbilityStateData(data: appManager.AbilityStateData, result: boolean, eqState: number, want: Want) {
  hilog.debug(Domain, TAG, `on applicationState AbilityStateData ${JSON.stringify(data)}`);
  if (result) {
    return true;
  }
  if (data.bundleName != want.bundleName || data.abilityName != want.abilityName) {
    return false;
  }
  if (data.uid > 0 && data.pid > 0) {
    return eqState == data.state;
  }
  return false;
}

function getProcessData(data: appManager.ProcessData, result: boolean, eqState: number, bundleName?: string) {
  hilog.debug(Domain, TAG, `on applicationState ProcessData ${JSON.stringify(data)}`);
  if (result) {
    return true;
  }
  if (data.bundleName != bundleName) {
    return false;
  }
  if (data.uid > 0 && data.pid > 0) {
    return eqState == data.state;
  }
  return false;
}