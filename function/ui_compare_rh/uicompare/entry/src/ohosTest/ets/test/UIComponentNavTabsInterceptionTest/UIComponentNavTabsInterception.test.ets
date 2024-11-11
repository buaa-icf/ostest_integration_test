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

export default function UIComponentNavTabsInterception() {

  describe('UIComponentNavTabsInterception', () => {


    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0130
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0130
     * @tc.desc    1、创建纵向Tabs包含5个TabContent,index=0
                   2、设置onContentWil1Change接口，如果comingIndex为3,return false,编译安装
                   3、手指滑动素引2页到素引3页
                   4、手指滑动素引4页到素引3页
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0130', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsInterception/UIComponentNavTabsInterception0130")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let tabsCenter :Component = await driver.findComponent(ON.id('UIComponentNavTabsInterception0130_001'))
      await Utils.sleep(1000)
      let pos = await tabsCenter.getBoundsCenter()
      await driver.swipe(pos.x,pos.y,pos.x-56,pos.y)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0130 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0040
     * @tc.desc    1、创建Tabs包合5个TabContent,index=0
                   2、设置onContentVillChange接口，如果comingIndex为3,return false;
                     设置TabsController.changeIndex。编译安装
                   3、点击按钮切换到素引3的页签(调用changeIndex)
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0040', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsInterception/UIComponentNavTabsInterception0040")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsInterception0040_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0040 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0060
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0060
     * @tc.desc    1、创建Tabs包合5个TabContent,index=0
               2、设置onContentVillChange接口，如果comingIndex为3,return false;
                 设置TabsController.changeIndex。编译安装
               3、点击按钮切换到素引3的页签(调用changeIndex)
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0060', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsInterception/UIComponentNavTabsInterception0060")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsInterception0060_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0060 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0080
     * @tc.desc    1、创建Tabs包合5个TabContent,index=0
                   2、设置onContentVillChange接口，如果comingIndex为3,return false;
                      设置TabsController.changeIndex。编译安装
                   3、点击按钮切换到素引3的页签(调用changeIndex)
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0080', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsInterception/UIComponentNavTabsInterception0080")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let tabBar:Component = await driver.findComponent(ON.id('我的'));
      await Utils.sleep(1000)
      await tabBar.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0080 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0050
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0050
     * @tc.desc    1、创建Tabs包含5个TabContent,index=0
                   2、设置onContentWillChange接口，如果comingIndex为3,return true;
                      设置TabsController.changeIndex。编译安装
                   3、点击按钮切换到素引3的页签(调用changeIndex)
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0050', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsInterception/UIComponentNavTabsInterception0050")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button:Component = await driver.findComponent(ON.id('UIComponentNavTabsInterception0050_001'));
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0050 finish.`);
      done()
    })
    /*
         * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0070
         * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0070
         * @tc.desc    1、创建Tabs包含5个TabContent,index=0
                       2、设置onContentWillChange接口，如果comingIndex为3,return true;
                          设置TabsController.changeIndex。编译安装
                       3、点击按钮切换到素引3的页签(调用changeIndex)
         */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0070', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsInterception/UIComponentNavTabsInterception0070")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button:Component = await driver.findComponent(ON.id('UIComponentNavTabsInterception0070_001'));
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0070 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0010
     * @tc.desc    1、创建Tabs包含5个TabContent,index=0
                   2、设置onContentWillChange接口，如果currentIndex为2,coningIndex为3,return false,编译安装
                   3、手指滑动索引2页面到素引3页面
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0010', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsInterception/UIComponentNavTabsInterception0010")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      await Utils.sleep(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsInterception0010_002'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let tabsCenter :Component = await driver.findComponent(ON.id('UIComponentNavTabsInterception0010_001'))
      await Utils.sleep(1000)
      let pos = await tabsCenter.getBoundsCenter()
      await driver.swipe(pos.x+100,pos.y,pos.x-356,pos.y)
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0010 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0030
     * @tc.desc    1、创建Tabs包含5个TabContent,index=3
                   2、设置onContentVil1Change接口，如果comingIndex为3,return true,编译安装
                   3、手指滑动素引2页到素引3页
                   4、手指滑动素引4页到索引3页
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0030', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsInterception/UIComponentNavTabsInterception0030")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      await Utils.sleep(1000)

      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsInterception0030_002'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)

      let tabsCenter :Component = await driver.findComponent(ON.id('UIComponentNavTabsInterception0030_001'))
      await Utils.sleep(1000)
      let pos = await tabsCenter.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x+100,pos.y,pos.x-356,pos.y)
      await Utils.sleep(2000)

      let button4:Component = await driver.findComponent(ON.id('UIComponentNavTabsInterception0030_004'));
      await Utils.sleep(1000)
      await button4.click()
      await Utils.sleep(1000)

      await driver.swipe(pos.x-100,pos.y,pos.x+356,pos.y)
      await Utils.sleep(1000)

      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0030 finish.`);
      done()
    })


    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0150
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0150
     * @tc.desc    1、创建Tabs包含5个TabContent,index=0,设置TabContent可动态改变个数
                   2、设置onContentWil1Change接口，如果comingIndex为3,return false,编译安装
                   3、点击按钮动态减少、增加TabContent
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0150', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsInterception/UIComponentNavTabsInterception0150")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      await Utils.sleep(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsInterception0150_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabsInterception0150_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0150 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0090
     * @tc.desc    1、创建Tabs包含5个TabContent,index=0
               2、设置onContentWil1Change接口，如果comingIndex为3,return true,编译安装
               3、点击素引3页的tabbar
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0090', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsInterception/UIComponentNavTabsInterception0090")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let tabBar:Component = await driver.findComponent(ON.id('我的'));
      await Utils.sleep(1000)
      await tabBar.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_INTERCEPTION_0090 finish.`);
      done()
    })



  })
}
