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

export default function UIComponentOtherRefreshAbility() {

  describe('UIComponentOtherRefreshAbility', () => {



    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0080
 * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0080
 * @tc.desc   创建Refresh组件，设置refreshOffset(-1),编译安装
*/
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0080', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshAbility/UIComponentOtherRefreshAbility0080")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+200)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0080 finish.`);
      done()
    })
    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0070
 * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0070
 * @tc.desc   创建Refresh组件，设置refreshOffset(0),编译安装
*/
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0070', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshAbility/UIComponentOtherRefreshAbility0070")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+200)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0070 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0090
     * @tc.desc   创建Refresh组件，组件高度为499,设置refreshOffset(500),编译安装
    */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0090', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshAbility/UIComponentOtherRefreshAbility0090")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+200)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0090 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0050
     * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0050
     * @tc.desc   创建Refresh组件，设置refreshOffset(70),编译安装
    */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0050', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshAbility/UIComponentOtherRefreshAbility0050")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+200)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0050 finish.`);
      done()
    })
    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0100
     * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0100
     * @tc.desc   创建Refresh组件，设置refreshOffset(60.5)编译安装
    */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0100', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshAbility/UIComponentOtherRefreshAbility0100")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+200)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0100 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0040
     * @tc.desc   创建Refresh组件，设置pullToRefresh值可以动态修改，编译安装
    */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0040', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshAbility/UIComponentOtherRefreshAbility0040")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button:Component = await driver.findComponent(ON.id('UIComponentOtherRefreshAbility0040_001'));
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+200)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_ABILITY_0040 finish.`);
      done()
    })

  })
}
