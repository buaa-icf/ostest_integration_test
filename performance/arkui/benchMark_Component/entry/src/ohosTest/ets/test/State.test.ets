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

//通过id验证有没有这个组件 有的话点击一下
async function checkButtonAndClickWithID(text: string, delayTime: number = 3000) {
  let idName = text;
  await driver.assertComponentExist(ON.id(idName));
  let button = await driver.findComponent(ON.id(idName));
  await button.click();
  if (delayTime > 0) {
    await driver.delayMs(delayTime);
  }
}

async function pressBack() {
  await driver.pressBack();
  await driver.delayMs(3000);
}

export default function stateTest() {
  describe('StateTest', () => {
    beforeAll(() => {

    })
    beforeEach(() => {

    })
    afterEach(() => {

    })
    afterAll(() => {

    })
    /**
     * 拉起应用
     */
    it('Benchmark_StartAbility_001', 0, async (done: Function) => {
      hilog.info(0xF811, 'testTag', 'StartAbility_001 begin');
      try {
        await abilityDelegatorRegistry.startAbility({
          bundleName: 'cn.openharmony.benchmarksample',
          abilityName: 'EntryAbility'
        });
        done();
      } catch (err) {
        done();
      }
      hilog.info(0xF811, 'testTag', 'StartAbility_001 end');
    })
    // 点击首页@LocalStorageLink
    it('LocalStorageLinkBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@LocalStorageLink')
      //读写@LocalStorageLink装饰的Object类型
      await checkButtonAndClickWithID('LocalStorageLinkObjectSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageLink装饰的class类型
      await checkButtonAndClickWithID('LocalStorageLinkClassSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageLink装饰的string类型
      await checkButtonAndClickWithID('LocalStorageLinkStringSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageLink装饰的number类型
      await checkButtonAndClickWithID('LocalStorageLinkNumberSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageLink装饰的boolean类型
      await checkButtonAndClickWithID('LocalStorageLinkBooleanSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageLink装饰的enum类型
      await checkButtonAndClickWithID('LocalStorageLinkEnumSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageLink装饰的Object[]类型
      await checkButtonAndClickWithID('LocalStorageLinkObjectArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageLink装饰的class[]类型
      await checkButtonAndClickWithID('LocalStorageLinkClassArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageLink装饰的string[]类型
      await checkButtonAndClickWithID('LocalStorageLinkStringArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageLink装饰的number[]类型
      await checkButtonAndClickWithID('LocalStorageLinkNumberArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageLink装饰的boolean[]类型
      await checkButtonAndClickWithID('LocalStorageLinkBooleanArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageLink装饰的enum[]类型
      await checkButtonAndClickWithID('LocalStorageLinkEnumArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@StorageLink
    it('StorageLinkBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@StorageLink')
      //读写@StorageLink装饰的Object类型
      await checkButtonAndClickWithID('StorageLinkObjectSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageLink装饰的class类型
      await checkButtonAndClickWithID('StorageLinkClassSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageLink装饰的class类型
      await checkButtonAndClickWithID('StorageLinkStringSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageLink装饰的number类型
      await checkButtonAndClickWithID('StorageLinkNumberSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageLink装饰的boolean类型
      await checkButtonAndClickWithID('StorageLinkBooleanSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageLink装饰的enum类型
      await checkButtonAndClickWithID('StorageLinkEnumSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageLink装饰的Object[]类型
      await checkButtonAndClickWithID('StorageLinkObjectArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageLink装饰的class[]类型
      await checkButtonAndClickWithID('StorageLinkClassArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageLink装饰的string[]类型
      await checkButtonAndClickWithID('StorageLinkStringArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageLink装饰的number[]类型
      await checkButtonAndClickWithID('StorageLinkNumberArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageLink装饰的boolean[]类型
      await checkButtonAndClickWithID('StorageLinkBooleanArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageLink装饰的enum[]类型
      await checkButtonAndClickWithID('StorageLinkEnumArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@LocalStorageProp
    it('LocalStoragePropBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@LocalStorageProp')
      //读写@LocalStorageProp装饰的Object类型
      await checkButtonAndClickWithID('LocalStoragePropObjectSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageProp装饰的class类型
      await checkButtonAndClickWithID('LocalStoragePropClassSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageProp装饰的string类型
      await checkButtonAndClickWithID('LocalStoragePropStringSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageProp装饰的number类型
      await checkButtonAndClickWithID('LocalStoragePropNumberSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageProp装饰的boolean类型
      await checkButtonAndClickWithID('LocalStoragePropBooleanSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageProp装饰的enum类型
      await checkButtonAndClickWithID('LocalStoragePropEnumSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageProp装饰的Object[]类型
      await checkButtonAndClickWithID('LocalStoragePropObjectArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageProp装饰的class[]类型
      await checkButtonAndClickWithID('LocalStoragePropClassArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageProp装饰的string[]类型
      await checkButtonAndClickWithID('LocalStoragePropStringArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageProp装饰的number[]类型
      await checkButtonAndClickWithID('LocalStoragePropNumberArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageProp装饰的boolean[]类型
      await checkButtonAndClickWithID('LocalStoragePropBooleanArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@LocalStorageProp装饰的enum[]类型
      await checkButtonAndClickWithID('LocalStoragePropEnumArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@StorageProp
    it('StoragePropBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@StorageProp')
      //读写@StorageProp装饰的Object类型
      await checkButtonAndClickWithID('StoragePropObjectSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageProp装饰的class类型
      await checkButtonAndClickWithID('StoragePropClassSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageProp装饰的class类型
      await checkButtonAndClickWithID('StoragePropStringSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageProp装饰的number类型
      await checkButtonAndClickWithID('StoragePropNumberSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageProp装饰的boolean类型
      await checkButtonAndClickWithID('StoragePropBooleanSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageProp装饰的enum类型
      await checkButtonAndClickWithID('StoragePropEnumSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageProp装饰的Object[]类型
      await checkButtonAndClickWithID('StoragePropObjectArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageProp装饰的class[]类型
      await checkButtonAndClickWithID('StoragePropClassArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageProp装饰的string[]类型
      await checkButtonAndClickWithID('StoragePropStringArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageProp装饰的number[]类型
      await checkButtonAndClickWithID('StoragePropNumberArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageProp装饰的boolean[]类型
      await checkButtonAndClickWithID('StoragePropBooleanArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@StorageProp装饰的enum[]类型
      await checkButtonAndClickWithID('StoragePropEnumArrSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@Consume
    it('ConsumeBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@Consume')
      //读写@Consume装饰的Object类型
      await checkButtonAndClickWithID('ConsumeObjectSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consume装饰的Class类型
      await checkButtonAndClickWithID('ConsumeClassSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consume装饰的String类型
      await checkButtonAndClickWithID('ConsumeStringSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consume装饰的Number类型
      await checkButtonAndClickWithID('ConsumeNumberSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consume装饰的Boolean类型
      await checkButtonAndClickWithID('ConsumeBooleanSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consume装饰的Enum类型
      await checkButtonAndClickWithID('ConsumeEnumSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consume装饰的Date类型
      await checkButtonAndClickWithID('ConsumeDateSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consume装饰的ObjectArr类型
      await checkButtonAndClickWithID('ConsumeObjectArrSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consume装饰的ClassArr类型
      await checkButtonAndClickWithID('ConsumeClassArrSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consume装饰的StringArr类型
      await checkButtonAndClickWithID('ConsumeStringArrSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consume装饰的NumberArr类型
      await checkButtonAndClickWithID('ConsumeNumberArrSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consume装饰的BooleanArr类型
      await checkButtonAndClickWithID('ConsumeBooleanArrSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consume装饰的EnumArr类型
      await checkButtonAndClickWithID('ConsumeEnumArrSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@Provide
    it('ProvideBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@Provide')
      //读写@Provide装饰的Object类型
      await checkButtonAndClickWithID('ProvideObjectSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provide装饰的Class类型
      await checkButtonAndClickWithID('ProvideClassSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provide装饰的String类型
      await checkButtonAndClickWithID('ProvideStringSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provide装饰的Number类型
      await checkButtonAndClickWithID('ProvideNumberSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provide装饰的Boolean类型
      await checkButtonAndClickWithID('ProvideBooleanSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provide装饰的Enum类型
      await checkButtonAndClickWithID('ProvideEnumSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provide装饰的Date类型
      await checkButtonAndClickWithID('ProvideDateSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provide装饰的ObjectArr类型
      await checkButtonAndClickWithID('ProvideObjectArrSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provide装饰的ClassArr类型
      await checkButtonAndClickWithID('ProvideClassArrSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provide装饰的StringArr类型
      await checkButtonAndClickWithID('ProvideStringArrSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provide装饰的NumberArr类型
      await checkButtonAndClickWithID('ProvideNumberArrSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provide装饰的BooleanArr类型
      await checkButtonAndClickWithID('ProvideBooleanArrSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provide装饰的EnumArr类型
      await checkButtonAndClickWithID('ProvideEnumArrSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      // TODO

      await pressBack(); //返回首页
    })
    // 点击首页@Observed
    it('ObservedBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@Observed')
      //读写@Observed装饰的Class类型
      await checkButtonAndClickWithID('ObservedOrdinarySample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Observed装饰的继承Date的class类型
      await checkButtonAndClickWithID('ObservedInheritDateSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Observed装饰的继承Array<T>的class类型
      await checkButtonAndClickWithID('ObservedInheritArraySample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@ObjectLink
    it('ObjectLinkBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@ObjectLink')
      //读写@ObjectLink装饰的@Observed装饰的普通Class类型
      await checkButtonAndClickWithID('ObjectLinkOrdinarySample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@ObjectLink装饰的@Observed装饰的继承Date的class类型
      await checkButtonAndClickWithID('ObjectLinkInheritDateSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@ObjectLink装饰的@Observed装饰的继承Array<T>的class类型
      await checkButtonAndClickWithID('ObjectLinkInheritArraySample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })

    // 点击首页@Watch
    it('WatchBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@Watch')
      //读写@Watch @Consume装饰的String类型
      await checkButtonAndClickWithID('WatchConsumeStringSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Watch @Link装饰的String类型
      await checkButtonAndClickWithID('WatchLinkStringSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await pressBack();
      //读写@Watch @Prop装饰的String类型
      await checkButtonAndClickWithID('WatchPropStringSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await pressBack();
      //读写@Watch @Provide装饰的String类型
      await checkButtonAndClickWithID('WatchProvideStringSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Watch @LocalStorageLink装饰的String类型
      await checkButtonAndClickWithID('WatchLocalStorageLinkStringSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await pressBack();
      //读写@Watch @StorageLink装饰的String类型
      await checkButtonAndClickWithID('WatchStorageLinkStringSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await pressBack();
      //读写@Watch @LocalStorageProp装饰的String类型
      await checkButtonAndClickWithID('WatchLocalStoragePropStringSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await pressBack();
      //读写@Watch @StorageProp装饰的String类型
      await checkButtonAndClickWithID('WatchStoragePropStringSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await pressBack();
      //读写@Watch @ObjectLink装饰的Class
      await checkButtonAndClickWithID('WatchObjectLinkOrdinarySample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await pressBack();
      //读写@Watch @Observed装饰的Class
      await checkButtonAndClickWithID('WatchObservedOrdinarySample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await pressBack();
      //读写@Watch @State装饰的String类型
      await checkButtonAndClickWithID('WatchStateStringSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
  })
}