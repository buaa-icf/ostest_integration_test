/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

import hilog from '@ohos.hilog';
import { afterAll, afterEach, beforeAll, beforeEach, describe, it } from '@ohos/hypium';
import AbilityDelegatorRegistry from '@ohos.app.ability.abilityDelegatorRegistry';
import { Driver, ON } from '@ohos.UiTest';

const driver = Driver.create();
let abilityDelegatorRegistry = AbilityDelegatorRegistry.getAbilityDelegator();

async function checkButtonAndClickWithID(idName: string, delayTime: number = 3000) {
  await driver.assertComponentExist(ON.id(idName));
  let button = await driver.findComponent(ON.id(idName));
  await button.click();
  if (delayTime > 0) {
    await driver.delayMs(delayTime);
  }
}

async function pressBack() {
  await driver.pressBack();
  await driver.delayMs(1500);
}

async function enterMonitorInheritSample() {
  await checkButtonAndClickWithID('@Monitor');
  await checkButtonAndClickWithID('MonitorInheritSample');
  await driver.assertComponentExist(ON.id('getStateTimeTaken'));
}

async function leaveMonitorInheritSample() {
  await pressBack();
  await pressBack();
}

export default function monitorInheritConstructorTest() {
  describe('MonitorInheritConstructorTest', () => {
    beforeAll(() => {

    })
    beforeEach(() => {

    })
    afterEach(() => {

    })
    afterAll(() => {

    })
    it('Benchmark_StartAbility_For_MonitorInherit_001', 0, async (done: Function) => {
      hilog.info(0xF811, 'testTag', 'Benchmark_StartAbility_For_MonitorInherit_001 begin');
      try {
        await abilityDelegatorRegistry.startAbility({
          bundleName: 'cn.openharmony.benchmarksample',
          abilityName: 'EntryAbility'
        });
        done();
      } catch (err) {
        done();
      }
      hilog.info(0xF811, 'testTag', 'Benchmark_StartAbility_For_MonitorInherit_001 end');
    })
    it('MonitorInheritSample_Base_Constructor_001', 0, async () => {
      await driver.delayMs(3000);
      await enterMonitorInheritSample();

      // Derived(...) calls super(...), so Base.constructor is executed on page initialization.
      await driver.assertComponentExist(ON.id('getStateTimeTaken'));
      await checkButtonAndClickWithID('getStateTimeTaken');
      await leaveMonitorInheritSample();
    });

    it('MonitorInheritSample_Derived_Constructor_001', 0, async () => {
      await driver.delayMs(1500);
      // Each route entry creates many Derived instances declared in MonitorInheritSample/ChildMonitorInheritSample.
      await enterMonitorInheritSample();
      await checkButtonAndClickWithID('getStateTimeTaken');
      await leaveMonitorInheritSample();
    });
  });
}
