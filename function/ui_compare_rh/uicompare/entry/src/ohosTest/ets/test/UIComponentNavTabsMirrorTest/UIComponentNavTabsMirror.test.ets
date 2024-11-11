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

export default function UIComponentNavTabsMirror() {

  describe('UIComponentNavTabsMirror', () => {


    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0100
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0100
     * @tc.desc    1、创建横向tabs页签位置BarPosition.Start,设置barOverlap属性
                   2、设置direction可以动态改变
                   3、动态切换镜像方向观察效果
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0100', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsMirror/UIComponentNavTabsMirror010")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror010_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0100 finish.`);
      done()
    })




    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0070
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0070
     * @tc.desc    1、创建tabs布局方向可以动态改变更新转测版本，新建ets页面
                   2、设置direction可以动态改变
                   3、动态切换属性观察效果
    */
    it('SUB_ACE_UI_0OMPONENT_NAV_TABS_MIRROR_0070', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_0OMPONENT_NAV_TABS_MIRROR_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsMirror/UIComponentNavTabsMirror0070")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror0070_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_0OMPONENT_NAV_TABS_MIRROR_0070 finish.`);
      done()
    })

    /*
         * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0030
         * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0030
         * @tc.desc    1、创建横向tabs页签位置可以动态改变
                       2、设置direction可以动态改变
                       3、动态切换镜像方向观察效果
        */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0030', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsMirror/UIComponentNavTabsMirror0030")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror0030_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0030 finish.`);
      done()
    })

    /*
         * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0090
         * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0090
         * @tc.desc    1、创建横向tabs页签位置BarPosition.Start
                       2、设置direction可以动态改变
                       3、动态切换镜像方向观察效果
        */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0090', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsMirror/UIComponentNavTabsMirror0090")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror0090_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0090 finish.`);
      done()
    })


    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0110
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0110
     * @tc.desc    1、创建tabs,设置SubTabBarStyle样式
                   2、设置镜像效果
*/
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0110', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsMirror/UIComponentNavTabsMirror0110")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror0110_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0110 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0160
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0160
     * @tc.desc    1、创建tabs,设置SubTabBarStyle样式
               2、设置镜像效果
   */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0160', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsMirror/UIComponentNavTabsMirror0160")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror0160_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0160 finish.`);
      done()
    })


    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0120
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0120
     * @tc.desc    1、创建tabs,设置BottomTabBarStyle样式
                   2、设置镜像效果
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0120', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsMirror/UIComponentNavTabsMirror0120")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror0120_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0120 finish.`);
      done()
    })



    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0140
 * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0140
 * @tc.desc    1、创建tabs,设置BottomTabBarStyle样式
               2、设置镜像效果
 */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0140', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsMirror/UIComponentNavTabsMirror0140")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror0140_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0140 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0130
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0130
     * @tc.desc    1、创建tabs,设置tabbar布局模式设为BarMode.Scrollable
                   2、设置镜像效果
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0130', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsMirror/UIComponentNavTabsMirror0130")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror0130_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0130 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0150
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0150
     * @tc.desc    1、创建tabs,tabbar设置padding动态改变
                   2、设置镜像效果
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0150', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsMirror/UIComponentNavTabsMirror0150")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror0150_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror0150_002'));
      await Utils.sleep(500)
      await button2.click()
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0150 finish.`);
      done()
    })

    /*
   * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0260
   * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0260
   * @tc.desc    1、创建tabs嵌套横向list
                 2、设置镜像效果
                 3、切换页签
   */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0260', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0260 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsMirror/UIComponentNavTabsMirror0260")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let tabBar0:Component = await driver.findComponent(ON.id('Tab0'));
      await Utils.sleep(1000)
      await tabBar0.click()
      await Utils.sleep(1000)
      let tabBar1:Component = await driver.findComponent(ON.id('Tab1'));
      await Utils.sleep(1000)
      await tabBar1.click()
      await Utils.sleep(1000)
      await tabBar0.click()
      await Utils.sleep(1000)
      let button:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror0260_001'));
      await Utils.sleep(200)
      await button.click()
      await Utils.sleep(200)
      await button.click()
      await Utils.sleep(200)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0260 finish.`);
      done()
    })


    /*
* @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0250
* @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0250
* @tc.desc    1、创建tabs嵌套web
              2、设置镜像效果
              3、切换页签
*/
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0250', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0250 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsMirror/UIComponentNavTabsMirror0250")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror0250_001'));
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0250 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0080
     * @tc.desc    1、创建tabs,设置divider的前后Margin动态改变
              2、设置direction可以动态改变
              3、动态切换属性观察效果
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0080', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsMirror/UIComponentNavTabsMirror080")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror080_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror080_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      let button3:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror080_003'));
      await Utils.sleep(1000)
      await button3.click()
      await Utils.sleep(1000)
      let button4:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror080_004'));
      await Utils.sleep(1000)
      await button4.click()
      await Utils.sleep(1000)
      let button5:Component = await driver.findComponent(ON.id('UIComponentNavTabsMirror080_005'));
      await Utils.sleep(1000)
      await button5.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_MIRROR_0080 finish.`);
      done()
    })


  })
}
