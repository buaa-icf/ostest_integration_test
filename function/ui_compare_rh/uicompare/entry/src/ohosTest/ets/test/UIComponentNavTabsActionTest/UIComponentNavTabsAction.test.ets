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

export default function UIComponentNavTabsAction() {

  describe('UIComponentNavTabsAction', () => {

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_ACTION_0011
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_ACTION_0011
     * @tc.desc    1、添加Tabs组件
                   2、设置多个TabContent
                   3、多次改变窗口大小，切换前后台
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_ACTION_0011', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_ACTION_0011 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsAction/UIComponentNavTabsAction0011")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button:Component = await driver.findComponent(ON.id('UIComponentNavTabsAction0011_002'));
      await Utils.sleep(200)
      await button.click()
      await Utils.sleep(200)
      await button.click()
      await Utils.sleep(1000)
      let tabsCenter:Component = await driver.findComponent(ON.id('UIComponentNavTabsAction0011_001'));
      await Utils.sleep(1000)
      let pos = await tabsCenter.getBoundsCenter()
      await driver.swipe(pos.x+100,pos.y,pos.x-300,pos.y)
      await Utils.sleep(1000)
      let pos1 = await tabsCenter.getBoundsCenter()
      await driver.swipe(pos1.x-100,pos1.y,pos1.x+300,pos1.y)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_ACTION_0011 finish.`);
      done()
    })


    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_ACTION_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_ACTION_0030
     * @tc.desc    1、在pink页面点击
                   2、点击页签切换页面
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_ACTION_0030', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_ACTION_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsAction/UIComponentNavTabsAction0030")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let tabBar1:Component = await driver.findComponent(ON.id('Pink'));
      await Utils.sleep(100)
      await tabBar1.click()
      await Utils.sleep(100)
      let tabBar2:Component = await driver.findComponent(ON.id('Yellow'));
      await Utils.sleep(100)
      await tabBar2.click()
      await Utils.sleep(100)
      await tabBar1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_ACTION_0030 finish.`);
      done()
    })


    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_ACTION_0012
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_ACTION_0012
     * @tc.desc    1、添加tabs组件设置100个子组件
                   2、点击页签切换页面
                    3、滑动页面切换
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_ACTION_0012', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_ACTION_0012 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsAction/UIComponentNavTabsAction0012")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let tabBar:Component = await driver.findComponent(ON.id('tab1'));
      await Utils.sleep(1000)
      await tabBar.click()
      await Utils.sleep(1000)
      let tabsCenter :Component = await driver.findComponent(ON.id('UIComponentNavTabsAction0012_001'))
      await Utils.sleep(1000)
      let pos = await tabsCenter.getBoundsCenter()
      await Utils.sleep(100)

      await driver.swipe(pos.x-100,pos.y,pos.x+356,pos.y)
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_ACTION_0012 finish.`);
      done()
    })
  })
}
