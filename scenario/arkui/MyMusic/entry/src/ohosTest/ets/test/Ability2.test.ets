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

import HiLog from '@ohos.hilog';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { Driver, ON, MatchPattern } from '@ohos.UiTest';
import AbilityDelegatorRegistry from '@ohos.app.ability.abilityDelegatorRegistry';

const TAG = '[Scenario_MyMusic_ActsAbilityTest2]';
const BUNDLE = 'MyMusic_';
const TIME_OUT = 10000;
const DOMAIN = 0xF811;
let abilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator();

function onAbilityCreateCallback() {
  HiLog.info(DOMAIN, TAG, "onAbilityCreateCallback");
}
// 资源本地化
async function getResourceString(resource: Resource): Promise<string> {
  let manage = abilityDelegator.getAppContext().resourceManager;
  let text = await manage.getStringValue(resource);
  return text;
}

export default function abilityTest2() {
  describe('ActsAbilityTest2', () => {
    // Defines a test suite. Two parameters are supported: test suite name and test suite function.
    beforeAll(async () => {
      /*
      try {
        await abilityDelegator.startAbility({
          bundleName: 'com.example.mymusic',
          abilityName: 'EntryAbility'
        });
        let driver = Driver.create();
        await driver.delayMs(5000);
      } catch (exception) {
        HiLog.info(DOMAIN, TAG, `StartAbility_001 exception = ${JSON.stringify(exception)}`);
        expect().assertFail();
      }*/
      // Presets an action, which is performed only once before all test cases of the test suite start.
      // This API supports only one parameter: preset action function.
    })
    beforeEach(() => {
      // Presets an action, which is performed before each unit test case starts.
      // The number of execution times is the same as the number of test cases defined by **it**.
      // This API supports only one parameter: preset action function.
    })
    afterEach(() => {
      // Presets a clear action, which is performed after each unit test case ends.
      // The number of execution times is the same as the number of test cases defined by **it**.
      // This API supports only one parameter: clear action function.
    })
    afterAll(() => {
      // Presets a clear action, which is performed after all test cases of the test suite end.
      // This API supports only one parameter: clear action function.
    })
    /**
     * 打开应用
    */
    it('StartAbility_001', 0, async () => {
      HiLog.info(DOMAIN, TAG, BUNDLE + 'StartAbility_001 begin');
      try {
        await abilityDelegator.startAbility({
          bundleName: 'com.example.mymusic',
          abilityName: 'EntryAbility'
        });
        let driver = Driver.create();
        await driver.delayMs(5000);
      } catch (exception) {
        HiLog.info(DOMAIN, TAG, `StartAbility_001 exception = ${JSON.stringify(exception)}`);
        expect().assertFail();
      }
      HiLog.info(DOMAIN, TAG, BUNDLE + 'StartAbility_001 end');
    })
    it('StartAbility_002', 0, async () => {
      HiLog.info(DOMAIN, TAG, BUNDLE + 'StartAbility_002 begin');
      let driver = Driver.create();
      await driver.delayMs(5000);
      HiLog.info(DOMAIN, TAG, BUNDLE + 'StartAbility_002 end');
    })
    it('StartAbility_003', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, BUNDLE + 'StartAbility_003 begin');
      let driver = Driver.create();
      await driver.delayMs(5000);
      HiLog.info(DOMAIN, TAG, BUNDLE + 'StartAbility_003 end');
      done();
    })
    it('StartAbility_004', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, BUNDLE + 'StartAbility_004 begin');
      let driver = Driver.create();
      await driver.delayMs(5000);
      HiLog.info(DOMAIN, TAG, BUNDLE + 'StartAbility_004 end');
      done();
    })
  })
}