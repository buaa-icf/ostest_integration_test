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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Component, Driver ,ON } from '@ohos.UiTest'

export default function UIComponentNavTabsCachedCount() {

  describe('UIComponentNavTabsCachedCount', () => {


    /*
            * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CACHEDCOUNT_0140
            * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CACHEDCOUNT_0140
            * @tc.desc    1、创建tabs,设置BarPosition.Start 2、设置preloadItens[1,3]
        */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CACHEDCOUNT_0140', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CACHEDCOUNT_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsCachedCount/UIComponentNavTabsCachedCount014")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabs014_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CACHEDCOUNT_0140 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CACHEDCOUNT_0150
    * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CACHEDCOUNT_0150
    * @tc.desc    1、创建tabs,设置BarPosition.End 2、设置preloadItens[1,3]
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CACHEDCOUNT_0150', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CACHEDCOUNT_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsCachedCount/UIComponentNavTabsCachedCount015")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabs015_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CACHEDCOUNT_0150 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CACHEDCOUNT_0160
    * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CACHEDCOUNT_0160
    * @tc.desc    1、创建tabs,设置BarPosition动态改变
                  2、设置preloadItens[1,3]
                  3、动态切换BarPosition
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CACHEDCOUNT_0160', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CACHEDCOUNT_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsCachedCount/UIComponentNavTabsCachedCount016")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabs016_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CACHEDCOUNT_0160 finish.`);
      done()
    })

  })
}
