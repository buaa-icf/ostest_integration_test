/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
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

export default function UIComponentNavTabsExpandsafearea() {

  describe('UIComponentNavTabsExpandsafearea', () => {

    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0090
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0090
        * @tc.desc    scroller+tab
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsExpandsafearea/UIComponentNavTabsExpandsafearea0090")
      await Utils.sleep(2000)
      // let driver: Driver = Driver.create()
      // let button: Component = await driver.findComponent(ON.id('UIComponentTabTabbarTabbarsymbol0050_001'))
      // await button.click()
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0090 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0090
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0090
        * @tc.desc    scroller+tab
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsExpandsafearea/UIComponentNavTabsExpandsafearea0010")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0090 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0120
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0120
        * @tc.desc    scroller+tab
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsExpandsafearea/UIComponentNavTabsExpandsafearea0120")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0120 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0050
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0050
        * @tc.desc    scroller+tab
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsExpandsafearea/UIComponentNavTabsExpandsafearea0050")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0050 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0080
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0080
        * @tc.desc    scroller+tab
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsExpandsafearea/UIComponentNavTabsExpandsafearea0080")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0080 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0070
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0070
        * @tc.desc    scroller+tab
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsExpandsafearea/UIComponentNavTabsExpandsafearea0070")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0070 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0060
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0060
        * @tc.desc    scroller+tab
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsExpandsafearea/UIComponentNavTabsExpandsafearea0060")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0060 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0040
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0040
        * @tc.desc    scroller+tab
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsExpandsafearea/UIComponentNavTabsExpandsafearea0040")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0040 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0030
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0030
        * @tc.desc    scroller+tab
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsExpandsafearea/UIComponentNavTabsExpandsafearea0030")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0030 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0020
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0020
        * @tc.desc    scroller+tab
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsExpandsafearea/UIComponentNavTabsExpandsafearea0020")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0020 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0100
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0100
        * @tc.desc    scroller+tab
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsExpandsafearea/UIComponentNavTabsExpandsafearea0100")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0100 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0110
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0110
        * @tc.desc    scroller+tab
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsExpandsafearea/UIComponentNavTabsExpandsafearea0110")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EXPANDSAFEAREA_0110 finish.`);
      done()
    })
  })
}
