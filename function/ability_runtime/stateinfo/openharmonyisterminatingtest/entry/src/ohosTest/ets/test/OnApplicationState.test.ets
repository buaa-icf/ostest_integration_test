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

export default function onApplicationState() {
  let abilityDelegator: abilityDelegatorRegistry.AbilityDelegator = abilityDelegatorRegistry.getAbilityDelegator();
  let appEmptyWant: Want = {
    bundleName: 'com.hits.stateinfo.empty',
    abilityName: 'EntryAbility'
  }
  let featureAbilityWant: Want = {
    bundleName: 'com.hits.stateinfo.empty',
    abilityName: 'FeatureAbility'
  }
  let featureAbilityWant2: Want = {
    bundleName: 'com.hits.stateinfo.empty',
    abilityName: 'FeatureAbility2'
  }
  let appStartAbilityWant: Want = {
    bundleName: 'com.hits.stateinfo.startability',
    abilityName: 'EntryAbility'
  }
  let appBackAbilityWant: Want = {
    bundleName: 'com.hits.stateinfo.backability',
    abilityName: 'EntryAbility'
  }
  let appKillSelfAbilityWant: Want = {
    bundleName: 'com.hits.stateinfo.killself',
    abilityName: 'EntryAbility'
  }
  let currentWant: Want = {
    bundleName: 'com.hits.stateinfo.isterminating',
    abilityName: 'TestAbility'
  }
  let applicationStateNumber = -1;
  describe('onApplicationState', () => {
    beforeEach(async () => {
      // Presets an action, which is performed before each unit test case starts.
      // The number of execution times is the same as the number of test cases defined by **it**.
      // This API supports only one parameter: preset action function.
      await abilityDelegator.executeShellCommand(`aa force-stop ${appEmptyWant.bundleName}`);
      await abilityDelegator.executeShellCommand(`aa force-stop ${featureAbilityWant.bundleName}`);
      await abilityDelegator.executeShellCommand(`aa force-stop ${appStartAbilityWant.bundleName}`);
      await abilityDelegator.executeShellCommand(`aa force-stop ${appBackAbilityWant.bundleName}`);
      await abilityDelegator.executeShellCommand(`aa force-stop ${appKillSelfAbilityWant.bundleName}`);
      try {
        applicationStateNumber = -1;
        await abilityDelegator.startAbility(currentWant);
      } catch (e) {

      }
      try {
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
      await abilityDelegator.executeShellCommand(`aa force-stop ${featureAbilityWant.bundleName}`);
      await abilityDelegator.executeShellCommand(`aa force-stop ${appStartAbilityWant.bundleName}`);
      await abilityDelegator.executeShellCommand(`aa force-stop ${appBackAbilityWant.bundleName}`);
      await abilityDelegator.executeShellCommand(`aa force-stop ${appKillSelfAbilityWant.bundleName}`);
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
     * @tc.number: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_0400
     * @tc.name: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_0400
     * @tc.desc: test on applicationState
     * @tc.size: LargeTest
     * @tc.type: Function
     * @tc.level: Level0
     */
    it("SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_0400",
      TestType.FUNCTION | Size.LARGETEST | Level.LEVEL0, async (done: Function) => {
        let onProcessCreatedEmptyApp = false;
        let onAbilityStateChangedEmptyApp = false;
        let onAbilityStateChangedCurrentApp = false;
        let onForegroundApplicationChangedEmptyApp = false;
        let onForegroundApplicationChangedCurrentApp = false;
        // 注册监听
        let appState: appManager.ApplicationStateObserver = {
          onAppStarted(appStateData: appManager.AppStateData): void {
          },
          onAppStopped(appStateData: appManager.AppStateData): void {
          },
          onForegroundApplicationChanged(appStateData: appManager.AppStateData): void {
            onForegroundApplicationChangedEmptyApp = getAppStateData(appStateData,
              onForegroundApplicationChangedEmptyApp, 2, appEmptyWant.bundleName);

            onForegroundApplicationChangedCurrentApp = getAppStateData(appStateData,
              onForegroundApplicationChangedCurrentApp, 4, currentWant.bundleName);
          },
          onAbilityStateChanged(abilityStateData: appManager.AbilityStateData): void {
            onAbilityStateChangedEmptyApp = getAbilityStateData(abilityStateData,
              onAbilityStateChangedEmptyApp, 2, appEmptyWant);

            onAbilityStateChangedCurrentApp = getAbilityStateData(abilityStateData,
              onAbilityStateChangedCurrentApp, 4, currentWant);
          },
          onProcessCreated(processData: appManager.ProcessData): void {
            onProcessCreatedEmptyApp = getProcessData(processData,
              onProcessCreatedEmptyApp, appEmptyWant.bundleName);
          },
          onProcessDied(processData: appManager.ProcessData): void {
          },
          onProcessStateChanged(processData: appManager.ProcessData): void {
          }
        }

        try {
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_0400 start`);
          try {
            applicationStateNumber = appManager.on('applicationState', appState);
            let errorNo = appManager.on('applicationState', appStateEmpty);
            // 第二次注册监听不可以成功
            expect().assertFail();
          } catch (e) {
            hilog.info(Domain, TAG,
              `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_0400
              applicationStateNumber = ${applicationStateNumber}`);
          }
          // 注册监听成功
          await sleep(1000);
          expect(applicationStateNumber).assertLarger(-1);
          await sleep(1000);
          //启动辅助hap
          await abilityDelegator.startAbility(appEmptyWant);
          await sleep(1000);
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_0400
            onProcessCreatedEmptyApp ${onProcessCreatedEmptyApp}
            onAbilityStateChangedEmptyApp ${onAbilityStateChangedEmptyApp}
            onAbilityStateChangedCurrentApp ${onAbilityStateChangedCurrentApp}
            onForegroundApplicationChangedEmptyApp ${onForegroundApplicationChangedEmptyApp}
            onForegroundApplicationChangedCurrentApp ${onForegroundApplicationChangedCurrentApp}
            `);
          expect(onProcessCreatedEmptyApp).assertTrue();
          expect(onAbilityStateChangedEmptyApp).assertTrue();
          expect(onAbilityStateChangedCurrentApp).assertTrue();
          expect(onForegroundApplicationChangedEmptyApp).assertTrue();
          expect(onForegroundApplicationChangedCurrentApp).assertTrue();
        } catch (e) {
          hilog.error(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_0400 error,
           error code is: ${e.code}, error message is: ${e.message}`);
          expect().assertFail();
        }
        done();
      });
    /**
     * @tc.number: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1100
     * @tc.name: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1100
     * @tc.desc: test on applicationState
     * @tc.size: LargeTest
     * @tc.type: Function
     * @tc.level: Level0
     */
    it("SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1100",
      TestType.FUNCTION | Size.LARGETEST | Level.LEVEL0, async (done: Function) => {
        //第3步
        let step3OnAbilityStateChangedBackAbility = false;
        let step3OnAbilityStateChangedStartAbility = false;
        let step3OnForegroundApplicationChangedBackAbility = false;
        //第4步
        let step4OnAbilityStateChangedBackAbility = false;
        let step4OnAbilityStateChangedStartAbility = false;
        let step4OnForegroundApplicationChangedStartAbility = false;
        // 注册监听
        let appState: appManager.ApplicationStateObserver = {
          onAppStarted(appStateData: appManager.AppStateData): void {
          },
          onAppStopped(appStateData: appManager.AppStateData): void {
          },
          onForegroundApplicationChanged(appStateData: appManager.AppStateData): void {
            step3OnForegroundApplicationChangedBackAbility = getAppStateData(appStateData,
              step3OnForegroundApplicationChangedBackAbility, 2, appBackAbilityWant.bundleName);

            step4OnForegroundApplicationChangedStartAbility = getAppStateData(appStateData,
              step4OnForegroundApplicationChangedStartAbility, 2, appStartAbilityWant.bundleName);
          },
          onAbilityStateChanged(abilityStateData: appManager.AbilityStateData): void {
            step3OnAbilityStateChangedBackAbility = getAbilityStateData(abilityStateData,
              step3OnAbilityStateChangedBackAbility, 2, appBackAbilityWant);

            step4OnAbilityStateChangedBackAbility = getAbilityStateData(abilityStateData,
              step4OnAbilityStateChangedBackAbility, 4, appBackAbilityWant);

            step3OnAbilityStateChangedStartAbility = getAbilityStateData(abilityStateData,
              step3OnAbilityStateChangedStartAbility, 4, appStartAbilityWant);

            step4OnAbilityStateChangedStartAbility = getAbilityStateData(abilityStateData,
              step4OnAbilityStateChangedStartAbility, 2, appStartAbilityWant);
          },
          onProcessCreated(processData: appManager.ProcessData): void {
          },
          onProcessDied(processData: appManager.ProcessData): void {
          },
          onProcessStateChanged(processData: appManager.ProcessData): void {
          }
        }
        try {
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1100 start`);
          // 注册监听成功
          applicationStateNumber = appManager.on('applicationState', appState);
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1100 applicationStateNumber ${applicationStateNumber}`);
          expect(applicationStateNumber).assertLarger(-1);
          await sleep(1000);
          // 第2、3步
          await abilityDelegator.startAbility(appStartAbilityWant);
          await sleep(3000);
          // 判断结果
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1100
            step3OnAbilityStateChangedBackAbility ${step3OnAbilityStateChangedBackAbility}
            step3OnAbilityStateChangedStartAbility ${step3OnAbilityStateChangedStartAbility}
            step3OnForegroundApplicationChangedBackAbility ${step3OnForegroundApplicationChangedBackAbility}
            `);
          expect(step3OnAbilityStateChangedBackAbility).assertTrue();
          expect(step3OnAbilityStateChangedStartAbility).assertTrue();
          expect(step3OnForegroundApplicationChangedBackAbility).assertTrue();
          // 判断结果
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1100
            step4OnAbilityStateChangedBackAbility ${step4OnAbilityStateChangedBackAbility}
            step4OnAbilityStateChangedStartAbility ${step4OnAbilityStateChangedStartAbility}
            step4OnForegroundApplicationChangedStartAbility ${step4OnForegroundApplicationChangedStartAbility}
            `);
          expect(step4OnAbilityStateChangedBackAbility).assertTrue();
          expect(step4OnAbilityStateChangedStartAbility).assertTrue();
          expect(step4OnForegroundApplicationChangedStartAbility).assertTrue();
        } catch (e) {
          hilog.error(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1100 error,
           error code is: ${e.code}, error message is: ${e.message}`);
          expect().assertFail();
        }
        done();
      });
    /**
     * @tc.number: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1200
     * @tc.name: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1200
     * @tc.desc: test on applicationState
     * @tc.size: LargeTest
     * @tc.type: Function
     * @tc.level: Level0
     */
    it("SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1200",
      TestType.FUNCTION | Size.LARGETEST | Level.LEVEL0, async (done: Function) => {
        //第2步
        let step2onProcessCreated = false;
        let step2onAbilityStateChanged = false;
        let step2onForegroundApplicationChanged = false;
        let step2onAbilityStateChangedCurrent = false;
        let step2onForegroundApplicationChangedCurrent = false;
        //第3步
        let step3onAbilityStateChangedCurrent = false;
        let step3onForegroundApplicationChangedCurrent = false;
        let step3onAbilityStateChangedState4 = false;
        let step3onAbilityStateChangedState5 = false;
        let step3onForegroundApplicationChanged = false;
        let step3onProcessDied = false;

        // 注册监听
        let appState: appManager.ApplicationStateObserver = {
          onAppStarted(appStateData: appManager.AppStateData): void {
          },
          onAppStopped(appStateData: appManager.AppStateData): void {
          },
          onForegroundApplicationChanged(appStateData: appManager.AppStateData): void {
            step2onForegroundApplicationChanged = getAppStateData(appStateData,
              step2onForegroundApplicationChanged, 2, appKillSelfAbilityWant.bundleName);

            step2onForegroundApplicationChangedCurrent = getAppStateData(appStateData,
              step2onForegroundApplicationChangedCurrent, 4, currentWant.bundleName);

            step3onForegroundApplicationChangedCurrent = getAppStateData(appStateData,
              step3onForegroundApplicationChangedCurrent, 2, currentWant.bundleName);

            step3onForegroundApplicationChanged = getAppStateData(appStateData,
              step3onForegroundApplicationChanged, 4, appKillSelfAbilityWant.bundleName);
          },
          onAbilityStateChanged(abilityStateData: appManager.AbilityStateData): void {
            step2onAbilityStateChanged = getAbilityStateData(abilityStateData,
              step2onAbilityStateChanged, 2, appKillSelfAbilityWant);

            step2onAbilityStateChangedCurrent = getAbilityStateData(abilityStateData,
              step2onAbilityStateChangedCurrent, 4, currentWant);

            step3onAbilityStateChangedCurrent = getAbilityStateData(abilityStateData,
              step3onAbilityStateChangedCurrent, 2, currentWant);

            step3onAbilityStateChangedState4 = getAbilityStateData(abilityStateData,
              step3onAbilityStateChangedState4, 4, appKillSelfAbilityWant);

            step3onAbilityStateChangedState5 = getAbilityStateData(abilityStateData,
              step3onAbilityStateChangedState5, 5, appKillSelfAbilityWant);
          },
          onProcessCreated(processData: appManager.ProcessData): void {
            step2onProcessCreated = getProcessData(processData,
              step2onProcessCreated, appKillSelfAbilityWant.bundleName);
          },
          onProcessDied(processData: appManager.ProcessData): void {
            step3onProcessDied = getProcessData(processData,
              step3onProcessDied, appKillSelfAbilityWant.bundleName);
          },
          onProcessStateChanged(processData: appManager.ProcessData): void {
          }
        }
        try {
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1200 start`);
          await abilityDelegator.startAbility(currentWant);
          await sleep(1000);
          // 注册监听成功
          applicationStateNumber = appManager.on('applicationState', appState);
          expect(applicationStateNumber).assertLarger(-1);
          await sleep(1000);
          // 第2、3步
          let context: common.UIAbilityContext | undefined = AppStorage.get<common.UIAbilityContext>('abilityContext');
          context!.startAbility(appKillSelfAbilityWant);
          await sleep(3000);
          // 判断结果
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1200
            step2onProcessCreated ${step2onProcessCreated}
            step2onAbilityStateChanged ${step2onAbilityStateChanged}
            step2onForegroundApplicationChanged ${step2onForegroundApplicationChanged}
            step2onAbilityStateChangedCurrent ${step2onAbilityStateChangedCurrent}
            step2onForegroundApplicationChangedCurrent ${step2onForegroundApplicationChangedCurrent}
            `);
          expect(step2onProcessCreated).assertTrue();
          expect(step2onAbilityStateChanged).assertTrue();
          expect(step2onForegroundApplicationChanged).assertTrue();
          expect(step2onAbilityStateChangedCurrent).assertTrue();
          expect(step2onForegroundApplicationChangedCurrent).assertTrue();
          // 判断结果
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1200
            step3onAbilityStateChangedCurrent ${step3onAbilityStateChangedCurrent}
            step3onForegroundApplicationChangedCurrent ${step3onForegroundApplicationChangedCurrent}
            step3onAbilityStateChangedState4 ${step3onAbilityStateChangedState4}
            step3onAbilityStateChangedState5 ${step3onAbilityStateChangedState5}
            step3onForegroundApplicationChanged ${step3onForegroundApplicationChanged}
            step3onProcessDied ${step3onProcessDied}
            `);
          expect(step3onAbilityStateChangedCurrent).assertTrue();
          expect(step3onForegroundApplicationChangedCurrent).assertTrue();
          expect(step3onAbilityStateChangedState4).assertTrue();
          expect(step3onAbilityStateChangedState5).assertTrue();
          expect(step3onForegroundApplicationChanged).assertTrue();
          expect(step3onProcessDied).assertTrue();
        } catch (e) {
          hilog.error(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1200 error,
           error code is: ${e.code}, error message is: ${e.message}`);
          expect().assertFail();
        }
        done();
      });
    /**
     * @tc.number: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1400
     * @tc.name: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1400
     * @tc.desc: test on applicationState
     * @tc.size: LargeTest
     * @tc.type: Function
     * @tc.level: Level0
     */
    it("SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1400",
      TestType.FUNCTION | Size.LARGETEST | Level.LEVEL0, async (done: Function) => {
        //第2步
        let step2onProcessCreated = false;
        let step2onAbilityStateChanged = false;
        let step2onForegroundApplicationChanged = false;
        let step2onAbilityStateChangedCurrent = false;
        let step2onForegroundApplicationChangedCurrent = false;
        //第3步
        let step3onProcessCreated = false;
        let step3onAbilityStateChanged = false;
        let step3onAbilityStateChangedStep2 = false;
        let step3onAbilityStateChangedCurrent = false;
        // 注册监听
        let appState: appManager.ApplicationStateObserver = {
          onAppStarted(appStateData: appManager.AppStateData): void {
          },
          onAppStopped(appStateData: appManager.AppStateData): void {
          },
          onForegroundApplicationChanged(appStateData: appManager.AppStateData): void {
            step2onForegroundApplicationChanged = getAppStateData(appStateData,
              step2onForegroundApplicationChanged, 2, appEmptyWant.bundleName);

            step3onAbilityStateChangedCurrent = getAppStateData(appStateData,
              step3onAbilityStateChangedCurrent, 2, featureAbilityWant.bundleName);

            step2onForegroundApplicationChangedCurrent = getAppStateData(appStateData,
              step2onForegroundApplicationChangedCurrent, 4, currentWant.bundleName);

          },
          onAbilityStateChanged(abilityStateData: appManager.AbilityStateData): void {
            step2onAbilityStateChanged = getAbilityStateData(abilityStateData,
              step2onAbilityStateChanged, 2, appEmptyWant);

            step2onAbilityStateChangedCurrent = getAbilityStateData(abilityStateData,
              step2onAbilityStateChangedCurrent, 4, currentWant);

            step3onAbilityStateChanged = getAbilityStateData(abilityStateData,
              step3onAbilityStateChanged, 2, featureAbilityWant)

            step3onAbilityStateChangedStep2 = getAbilityStateData(abilityStateData,
              step3onAbilityStateChangedStep2, 4, appEmptyWant);

          },
          onProcessCreated(processData: appManager.ProcessData): void {
            if (!step2onProcessCreated) {
              step2onProcessCreated = getProcessData(processData,
                step2onProcessCreated, appEmptyWant.bundleName);
            } else {
              //再次回调
              step3onProcessCreated = getProcessData(processData,
                step3onProcessCreated, featureAbilityWant.bundleName);
            }
          },
          onProcessDied(processData: appManager.ProcessData): void {

          },
          onProcessStateChanged(processData: appManager.ProcessData): void {
          }
        }
        try {
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1400 start`);
          await sleep(1000);
          // 注册监听成功
          applicationStateNumber = appManager.on('applicationState', appState);
          expect(applicationStateNumber).assertLarger(-1);
          await sleep(1000);
          // 第2步
          await abilityDelegator.startAbility(appEmptyWant);
          await sleep(1000);
          // 判断结果
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1400
            step2onProcessCreated ${step2onProcessCreated}
            step2onAbilityStateChanged ${step2onAbilityStateChanged}
            step2onForegroundApplicationChanged ${step2onForegroundApplicationChanged}
            step2onAbilityStateChangedCurrent ${step2onAbilityStateChangedCurrent}
            step2onForegroundApplicationChangedCurrent ${step2onForegroundApplicationChangedCurrent}
            `);
          expect(step2onProcessCreated).assertTrue();
          expect(step2onAbilityStateChanged).assertTrue();
          expect(step2onForegroundApplicationChanged).assertTrue();
          expect(step2onAbilityStateChangedCurrent).assertTrue();
          expect(step2onForegroundApplicationChangedCurrent).assertTrue();
          step3onAbilityStateChangedCurrent = false;
          // 第3步
          await abilityDelegator.startAbility(featureAbilityWant);
          await sleep(1000);
          // 判断结果
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1400
            step3onProcessCreated ${step3onProcessCreated}
            step3onAbilityStateChanged ${step3onAbilityStateChanged}
            step3onAbilityStateChangedStep2 ${step3onAbilityStateChangedStep2}
            step3onAbilityStateChangedCurrent ${step3onAbilityStateChangedCurrent}
            `);
          expect(step3onProcessCreated).assertFalse();
          expect(step3onAbilityStateChanged).assertTrue();
          expect(step3onAbilityStateChangedStep2).assertTrue();
          expect(step3onAbilityStateChangedCurrent).assertTrue();
        } catch (e) {
          hilog.error(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1400 error,
           error code is: ${e.code}, error message is: ${e.message}`);
          expect().assertFail();
        }
        done();
      });

    /**
     * @tc.number: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1600
     * @tc.name: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1600
     * @tc.desc: test on applicationState
     * @tc.size: LargeTest
     * @tc.type: Function
     * @tc.level: Level0
     */
    it("SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1600",
      TestType.FUNCTION | Size.LARGETEST | Level.LEVEL0, async (done: Function) => {
        //第2步
        let step2onProcessCreated = false;
        let step2onAbilityStateChanged = false;
        let step2onForegroundApplicationChanged = false;
        let step2onAbilityStateChangedCurrent = false;
        let step2onForegroundApplicationChangedCurrent = false;
        //第3步
        let step3onAbilityStateChanged = false;
        let step3onForegroundApplicationChanged = false;
        let step3onAbilityStateChangedStep2 = false;
        // 注册监听
        let appState: appManager.ApplicationStateObserver = {
          onAppStarted(appStateData: appManager.AppStateData): void {
          },
          onAppStopped(appStateData: appManager.AppStateData): void {
          },
          onForegroundApplicationChanged(appStateData: appManager.AppStateData): void {
            step2onForegroundApplicationChanged = getAppStateData(appStateData,
              step2onForegroundApplicationChanged, 2, featureAbilityWant.bundleName);

            step3onForegroundApplicationChanged = getAppStateData(appStateData,
              step3onForegroundApplicationChanged, 2, featureAbilityWant2.bundleName);

            step2onForegroundApplicationChangedCurrent = getAppStateData(appStateData,
              step2onForegroundApplicationChangedCurrent, 4, currentWant.bundleName);

          },
          onAbilityStateChanged(abilityStateData: appManager.AbilityStateData): void {
            step2onAbilityStateChanged = getAbilityStateData(abilityStateData,
              step2onAbilityStateChanged, 2, featureAbilityWant);

            step2onAbilityStateChangedCurrent = getAbilityStateData(abilityStateData,
              step2onAbilityStateChangedCurrent, 4, currentWant);

            step3onAbilityStateChanged = getAbilityStateData(abilityStateData,
              step3onAbilityStateChanged, 2, featureAbilityWant2)

            step3onAbilityStateChangedStep2 = getAbilityStateData(abilityStateData,
              step3onAbilityStateChangedStep2, 4, featureAbilityWant);

          },
          onProcessCreated(processData: appManager.ProcessData): void {
            step2onProcessCreated = getProcessData(processData,
              step2onProcessCreated, featureAbilityWant.bundleName);
          },
          onProcessDied(processData: appManager.ProcessData): void {

          },
          onProcessStateChanged(processData: appManager.ProcessData): void {
          }
        }
        try {
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1600 start`);
          await abilityDelegator.startAbility(currentWant);
          await sleep(1000);
          // 注册监听成功
          applicationStateNumber = appManager.on('applicationState', appState);
          expect(applicationStateNumber).assertLarger(-1);
          await sleep(1000);
          // 第2步
          let context: common.UIAbilityContext | undefined = AppStorage.get<common.UIAbilityContext>('abilityContext');
          context!.startAbility(featureAbilityWant);
          await sleep(3000);
          // 判断结果
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1600
            step2onProcessCreated ${step2onProcessCreated}
            step2onAbilityStateChanged ${step2onAbilityStateChanged}
            step2onForegroundApplicationChanged ${step2onForegroundApplicationChanged}
            step2onAbilityStateChangedCurrent ${step2onAbilityStateChangedCurrent}
            step2onForegroundApplicationChangedCurrent ${step2onForegroundApplicationChangedCurrent}
            `);
          expect(step2onProcessCreated).assertTrue();
          expect(step2onAbilityStateChanged).assertTrue();
          expect(step2onForegroundApplicationChanged).assertTrue();
          expect(step2onAbilityStateChangedCurrent).assertTrue();
          expect(step2onForegroundApplicationChangedCurrent).assertTrue();

          step3onForegroundApplicationChanged = false;
          // 第3步
          context!.startAbility(featureAbilityWant2);
          await sleep(1000);
          // 判断结果
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1600
            step3onForegroundApplicationChangedCurrent ${step3onAbilityStateChanged}
            step3onForegroundApplicationChanged ${step3onForegroundApplicationChanged}
            step3onAbilityStateChangedState5 ${step3onAbilityStateChangedStep2}
            `);
          expect(step3onAbilityStateChanged).assertTrue();
          expect(step3onForegroundApplicationChanged).assertTrue();
          expect(step3onAbilityStateChangedStep2).assertTrue();
        } catch (e) {
          hilog.error(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_1600 error,
           error code is: ${e.code}, error message is: ${e.message}`);
          expect().assertFail();
        }
        done();
      });

    /**
     * @tc.number: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_3100
     * @tc.name: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_3100
     * @tc.desc: test on applicationState
     * @tc.size: LargeTest
     * @tc.type: Function
     * @tc.level: Level0
     */
    it("SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_3100",
      TestType.FUNCTION | Size.LARGETEST | Level.LEVEL0, async (done: Function) => {
        //第3步
        let onProcessDied = false;
        let onAbilityStateChanged = false;
        // 注册监听
        let appState: appManager.ApplicationStateObserver = {
          onAppStarted(appStateData: appManager.AppStateData): void {
          },
          onAppStopped(appStateData: appManager.AppStateData): void {
          },
          onForegroundApplicationChanged(appStateData: appManager.AppStateData): void {

          },
          onAbilityStateChanged(abilityStateData: appManager.AbilityStateData): void {
            onAbilityStateChanged = getAbilityStateData(abilityStateData,
              onAbilityStateChanged, 5, appEmptyWant)
          },
          onProcessCreated(processData: appManager.ProcessData): void {
          },
          onProcessDied(processData: appManager.ProcessData): void {
            onProcessDied = getProcessData(processData,
              onProcessDied, appEmptyWant.bundleName);
          },
          onProcessStateChanged(processData: appManager.ProcessData): void {
          }
        }

        try {
          applicationStateNumber = appManager.on('applicationState', appState);
        } catch (e) {
          hilog.error(Domain, TAG, `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_3100
           error,error code is: ${e.code}, error message is: ${e.message}`);
        }
        try {
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_3100 start ${applicationStateNumber}`);
          // 注册监听成功
          let context: common.UIAbilityContext | undefined = AppStorage.get<common.UIAbilityContext>('abilityContext');
          context!.startAbility(appEmptyWant);
          await sleep(2000);
          await abilityDelegator.executeShellCommand(`aa force-stop ${appEmptyWant.bundleName}`);
          await sleep(2000);
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_3100
            onProcessDied ${onProcessDied}
            onAbilityStateChanged ${onAbilityStateChanged}
            `);
          expect(onProcessDied).assertTrue();
          expect(onAbilityStateChanged).assertTrue();
        } catch (e) {
          hilog.error(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_OpenHarmonyIsTerminating_3100 error,
           error code is: ${e.code}, error message is: ${e.message}`);
          expect().assertFail();
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

function getProcessData(data: appManager.ProcessData, result: boolean, bundleName?: string) {
  hilog.debug(Domain, TAG, `on applicationState ProcessData ${JSON.stringify(data)}`);
  if (result) {
    return true;
  }
  if (data.bundleName != bundleName) {
    return false;
  }
  if (data.uid > 0 && data.pid > 0) {
    return true;
  }
  return false;
}