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

export default function UIComponentNavTabsSubTabbarStyle() {

  describe('UIComponentNavTabsSubTabbarStyle', () => {

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_SUBTABBARSTYLE_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_SUBTABBARSTYLE_0010
     * @tc.desc    1、创建tabs组件
                   2、页签为SubTabbarStyle样式，页签设置为svg图片+文本
                   3、切换页面
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_SUBTABBARSTYLE_0010', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_SUBTABBARSTYLE_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsSubTabbarStyle/UIComponentNavTabsSubTabbarStyle0010")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('Pink'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('Yellow'));
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_SUBTABBARSTYLE_0010 finish.`);
      done()
    })


  })
}
