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

async function ensureAbilityStarted() {
  await abilityDelegatorRegistry.startAbility({
    bundleName: 'cn.openharmony.benchmarksample',
    abilityName: 'EntryAbility'
  });
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
    // 点击首页@Observed
    it('ObservedBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@Observed')
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
      //读写@Observed装饰的继承Set的class类型
      await checkButtonAndClickWithID('ObservedSetSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Observed装饰的继承Map的class类型
      await checkButtonAndClickWithID('ObservedExtendsMapSample');
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
      //读写@ObjectLink装饰的@Observed装饰的继承Set的class类型
      await checkButtonAndClickWithID('ObjectLinkSetSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@ObjectLink装饰的@Observed装饰的继承Map的class类型
      await checkButtonAndClickWithID('ObjectLinkExtendsMapSample');
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
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Watch @Link装饰的String类型
      await checkButtonAndClickWithID('WatchLinkStringSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Watch @Prop装饰的String类型
      await checkButtonAndClickWithID('WatchPropStringSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Watch @Provide装饰的String类型
      await checkButtonAndClickWithID('WatchProvideStringSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Watch @LocalStorageLink装饰的String类型
      await checkButtonAndClickWithID('WatchLocalStorageLinkStringSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Watch @StorageLink装饰的String类型
      await checkButtonAndClickWithID('WatchStorageLinkStringSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Watch @LocalStorageProp装饰的String类型
      await checkButtonAndClickWithID('WatchLocalStoragePropStringSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Watch @StorageProp装饰的String类型
      await checkButtonAndClickWithID('WatchStoragePropStringSample');
      await checkButtonAndClickWithID('parentSetStateTimeTaken');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Watch @State装饰的String类型
      await checkButtonAndClickWithID('WatchStateStringSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@Track
    it('TrackBenchMarkTest', 0, async () => {
      await ensureAbilityStarted();
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@Track')
      //读写@Track装饰的string类型
      await checkButtonAndClickWithID('TrackStringSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Track装饰的string[]类型
      await checkButtonAndClickWithID('TrackStringArrSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Track装饰的number类型
      await checkButtonAndClickWithID('TrackNumberSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Track装饰的number[]类型
      await checkButtonAndClickWithID('TrackNumberArrSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Track装饰的boolean类型
      await checkButtonAndClickWithID('TrackBooleanSample');
      await checkButtonAndClickWithID('changeUITimeTaken');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Track装饰的boolean[]类型
      await checkButtonAndClickWithID('TrackBooleanArrSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@ObservedV2
    it('ObservedV2BenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@ObservedV2')
      //读写@ObservedV2装饰的继承Array<T>的class类型
      await checkButtonAndClickWithID('ObservedV2ArraySample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@Trace
    it('TraceBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@Trace')
      //读写@Trace装饰的Date的class类型
      await checkButtonAndClickWithID('TraceDateSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Trace装饰的Array<T>的class类型
      await checkButtonAndClickWithID('TraceArraySample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Trace装饰的Set的class类型
      await checkButtonAndClickWithID('TraceSetSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Trace装饰的Map的class类型
      await checkButtonAndClickWithID('TraceMapSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Trace装饰的Boolean类型
      await checkButtonAndClickWithID('TraceBooleanSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Trace装饰的Class类型
      await checkButtonAndClickWithID('TraceClassSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Trace装饰的Number类型
      await checkButtonAndClickWithID('TraceNumberSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Trace装饰的String类型
      await checkButtonAndClickWithID('TraceStringSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Trace装饰的Object类型
      await checkButtonAndClickWithID('TraceObjectSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack();
      //读写@Trace装饰的Enum类型
      await checkButtonAndClickWithID('TraceEnumSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@Monitor
    it('MonitorBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@Monitor')
      //读@Monitor装饰的Array类型
      await checkButtonAndClickWithID('MonitorArraySample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Monitor装饰的DeepLayer类型
      await checkButtonAndClickWithID('MonitorDeepLayerSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Monitor装饰的Inherit类型
      await checkButtonAndClickWithID('MonitorInheritSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Monitor装饰的Ordinary类型
      await checkButtonAndClickWithID('MonitorOrdinarySample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@Computed
    it('ComputedBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@Computed')
      //读@Computed装饰的Array类型
      await checkButtonAndClickWithID('ComputedArraySample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Computed装饰的Boolean类型
      await checkButtonAndClickWithID('ComputedBooleanSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Computed装饰的Date类型
      await checkButtonAndClickWithID('ComputedDateSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Computed装饰的Enum类型
      await checkButtonAndClickWithID('ComputedEnumSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Computed装饰的Map类型
      await checkButtonAndClickWithID('ComputedMapSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Computed装饰的Number类型
      await checkButtonAndClickWithID('ComputedNumberSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Computed装饰的Object类型
      await checkButtonAndClickWithID('ComputedObjectSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Computed装饰的Set类型
      await checkButtonAndClickWithID('ComputedSetSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Computed装饰的String类型
      await checkButtonAndClickWithID('ComputedStringSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Computed装饰的Class类型
      await checkButtonAndClickWithID('ComputedClassSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@Param
    it('ParamBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@Param')
      //读写@Param装饰的Array类型
      await checkButtonAndClickWithID('ParamArraySample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Param装饰的Boolean类型
      await checkButtonAndClickWithID('ParamBooleanSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Param装饰的Class类型
      await checkButtonAndClickWithID('ParamClassSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Param装饰的Date类型
      await checkButtonAndClickWithID('ParamDateSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Param装饰的Enum类型
      await checkButtonAndClickWithID('ParamEnumSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Param装饰的Map类型
      await checkButtonAndClickWithID('ParamMapSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Param装饰的number类型
      await checkButtonAndClickWithID('ParamNumberSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Param装饰的Object类型
      await checkButtonAndClickWithID('ParamObjectSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Param装饰的Set类型
      await checkButtonAndClickWithID('ParamSetSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Param装饰的string类型
      await checkButtonAndClickWithID('ParamStringSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Param装饰的union类型
      await checkButtonAndClickWithID('ParamUnionSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@Once
    it('OnceBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@Once')
      //读@Once装饰的Array类型
      await checkButtonAndClickWithID('OnceArraySample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Once装饰的Boolean类型
      await checkButtonAndClickWithID('OnceBooleanSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Once装饰的Class类型
      await checkButtonAndClickWithID('OnceClassSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Once装饰的Date类型
      await checkButtonAndClickWithID('OnceDateSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Once装饰的Enum类型
      await checkButtonAndClickWithID('OnceEnumSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Once装饰的Map类型
      await checkButtonAndClickWithID('OnceMapSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Once装饰的number类型
      await checkButtonAndClickWithID('OnceNumberSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Once装饰的Object类型
      await checkButtonAndClickWithID('OnceObjectSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Once装饰的Set类型
      await checkButtonAndClickWithID('OnceSetSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Once装饰的string类型
      await checkButtonAndClickWithID('OnceStringSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      //读@Once装饰的union类型
      await checkButtonAndClickWithID('OnceUnionSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@Consumer
    it('ConsumerBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@Consumer')
      //读写@Consumer装饰的普通的Array类型
      await checkButtonAndClickWithID('ConsumerArraySample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consumer装饰的普通的Boolean类型
      await checkButtonAndClickWithID('ConsumerBooleanSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consumer装饰的普通的Class类型
      await checkButtonAndClickWithID('ConsumerClassSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consumer装饰的普通的Date类型
      await checkButtonAndClickWithID('ConsumerDateSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consumer装饰的普通的Map类型
      await checkButtonAndClickWithID('ConsumerMapSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consumer装饰的普通的Number类型
      await checkButtonAndClickWithID('ConsumerNumberSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consumer装饰的普通的Set类型
      await checkButtonAndClickWithID('ConsumerSetSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consumer装饰的普通的String类型
      await checkButtonAndClickWithID('ConsumerStringSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consumer装饰的普通的Enum类型
      await checkButtonAndClickWithID('ConsumerEnumSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Consumer装饰的普通的Object类型
      await checkButtonAndClickWithID('ConsumerObjectSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@Provider
    it('ProviderBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@Provider')
      //读写@Provider装饰的普通的Array类型
      await checkButtonAndClickWithID('ProviderArraySample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provider装饰的普通的Boolean类型
      await checkButtonAndClickWithID('ProviderBooleanSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provider装饰的普通的Class类型
      await checkButtonAndClickWithID('ProviderClassSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provider装饰的普通的Date类型
      await checkButtonAndClickWithID('ProviderDateSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provider装饰的普通的Map类型
      await checkButtonAndClickWithID('ProviderMapSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provider装饰的普通的Number类型
      await checkButtonAndClickWithID('ProviderNumberSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provider装饰的普通的Set类型
      await checkButtonAndClickWithID('ProviderSetSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provider装饰的普通的String类型
      await checkButtonAndClickWithID('ProviderStringSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provider装饰的普通的Enum类型
      await checkButtonAndClickWithID('ProviderEnumSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Provider装饰的普通的Object类型
      await checkButtonAndClickWithID('ProviderObjectSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
    // 点击首页@Local
    it('LocalBenchMarkTest', 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('@Local')
      //读写@Local装饰的普通的Union类型
      await checkButtonAndClickWithID('LocalUnionSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Local装饰的普通的Object类型
      await checkButtonAndClickWithID('LocalObjectSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Local装饰的普通的Enum类型
      await checkButtonAndClickWithID('LocalEnumSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Local装饰的普通的Array类型
      await checkButtonAndClickWithID('LocalArraySample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Local装饰的普通的Boolean类型
      await checkButtonAndClickWithID('LocalBooleanSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Local装饰的普通的Class类型
      await checkButtonAndClickWithID('LocalClassSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Local装饰的普通的Date类型
      await checkButtonAndClickWithID('LocalDateSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Local装饰的普通的Map类型
      await checkButtonAndClickWithID('LocalMapSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Local装饰的普通的Number类型
      await checkButtonAndClickWithID('LocalNumberSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Local装饰的普通的Set类型
      await checkButtonAndClickWithID('LocalSetSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      //读写@Local装饰的普通的String类型
      await checkButtonAndClickWithID('LocalStringSample');
      await checkButtonAndClickWithID('getStateTimeTaken');
      await checkButtonAndClickWithID('setStateTimeTaken');
      await pressBack();
      await pressBack(); //返回首页
    })
  })
}
