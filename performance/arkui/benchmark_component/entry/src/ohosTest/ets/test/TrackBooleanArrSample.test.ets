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

import { describe, it } from '@ohos/hypium';
import AbilityDelegatorRegistry from '@ohos.app.ability.abilityDelegatorRegistry';
import { Driver, ON } from '@ohos.UiTest';

const driver = Driver.create();
let abilityDelegatorRegistry = AbilityDelegatorRegistry.getAbilityDelegator();

async function findById(idName: string) {
  let component = await driver.waitForComponent(ON.id(idName), 5000);
  if (component === null) {
    throw new Error(`Unable to find id: ${idName}`);
  }
  return component;
}

async function assertTextVisible(text: string) {
  let component = await driver.waitForComponent(ON.text(text), 5000);
  if (component === null) {
    throw new Error(`Unable to find text: ${text}`);
  }
}

async function clickById(idName: string, delayTime: number = 500) {
  let component = await findById(idName);
  await component.click();
  if (delayTime > 0) {
    await driver.delayMs(delayTime);
  }
}

async function pressBack(delayTime: number = 500) {
  await driver.pressBack();
  await driver.delayMs(delayTime);
}

async function startEntryAbility() {
  await abilityDelegatorRegistry.startAbility({
    bundleName: 'cn.openharmony.benchmarksample',
    abilityName: 'EntryAbility'
  });
  await driver.delayMs(1500);
}

async function enterTrackBooleanArrSample() {
  await clickById('@Track', 800);
  await clickById('TrackBooleanArrSample', 800);
  await findById('trackBooleanArrValue');
}

export default function trackBooleanArrSampleTest() {
  describe('TrackBooleanArrSampleTest', () => {
    it('TrackBooleanArrSample_read_write_state_001', 0, async () => {
      await startEntryAbility();
      await enterTrackBooleanArrSample();

      await assertTextVisible('TrackBooleanArrSample');
      await assertTextVisible('track value: false');

      await clickById('getStateTimeTaken');
      await assertTextVisible('track value: false');

      await clickById('setStateTimeTaken');
      await assertTextVisible('track value: false');

      await pressBack();
      await pressBack();
    });
  });
}
