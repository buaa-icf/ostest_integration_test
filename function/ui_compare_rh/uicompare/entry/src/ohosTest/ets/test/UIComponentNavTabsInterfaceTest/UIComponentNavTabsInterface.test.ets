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

export default function UIComponentNavTabsInterface() {

  describe('UIComponentNavTabsInterface', () => {


    /*
   * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_INTERFACE_0120
   * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_INTERFACE_0120
   * @tc.desc    1、添加Tabs组件
                 2、设置index:0
                 3、设置TabContent数量为4
                 4、设置barwidth超过容器宽度
                 6、不设置属性fadingEdge
                 7、编译安装
*/
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_INTERFACE_0120', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERFACE_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsInterface/UIComponentNavTabsInterface012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERFACE_0120 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_INTERFACE_1190
    * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_INTERFACE_1190
    * @tc.desc    1、添加Tabs组件
              2、添加TabContent
              3、设置选中位置为新添加的位置
              4、编译安装
              5、动态增加tab页签个数
              6、观察选中状态的位置
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_INTERFACE_1190', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERFACE_1190 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsInterface/UIComponentNavTabsInterface1190")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsInterface1190_001'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERFACE_1190 finish.`);
      done()
    })

    /*
   * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_INTERFACE_1220
   * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_INTERFACE_1220
   * @tc.desc    1、添加Tabs组件
                 2、添加TabContent
                 3、第一个tabcontent右滑
                 4、边缘效果未结束前点击返回
   */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_INTERFACE_1220', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERFACE_1220 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsInterface/UIComponentNavTabsInterface1220")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      await Utils.sleep(1000)
      let tabsCenter :Component = await driver.findComponent(ON.id('UIComponentNavTabsInterface1220_001'))
      await Utils.sleep(1000)
      let pos = await tabsCenter.getBoundsCenter()
      await driver.swipe(pos.x,pos.y,pos.x-100,pos.y)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERFACE_1220 finish.`);
      done()
    })

  })
}
