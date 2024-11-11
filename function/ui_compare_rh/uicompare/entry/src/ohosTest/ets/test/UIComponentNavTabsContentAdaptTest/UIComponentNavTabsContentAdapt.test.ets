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

export default function UIComponentNavTabsContentAdapt() {

  describe('UIComponentNavTabsContentAdapt', () => {



    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0310
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0310
     * @tc.desc    1、创建横向tabs(BarPosition.Start),设置height为auto,设置每个页面高度不同
                   2、编译安装查看效果
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0310', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0310 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt0310")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let tabBar1:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt0310_001'));
      await Utils.sleep(1000)
      await tabBar1.click()
      await Utils.sleep(1000)
      await tabBar1.click()
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0310 finish.`);
      done()
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0010
    * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0010
    * @tc.desc    创建横向tabs(BarPosition.Start),设置width为auto,设置每个页面宽度不同
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0010', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0010 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0020
     * @tc.desc    创建横向tabs(BarPosition.Start),设置height为auto,设置每个页面高度不同
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0020', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0020 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0030
    * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0030
    * @tc.desc    创建横向tabs(BarPosition.End),设置height为auto,设置每个页面高度不同
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0030', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0030 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0040
    * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0040
    * @tc.desc    创建横向tabs(BarPosition.End),设置width为auto,设置每个页面宽度不同
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0040', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0040 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0100
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0100
     * @tc.desc    1、创建纵向tabs(BarPosition.Start),设置width为auto,设置每个页面宽度不同
              2、编译安装查看效果
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0100', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0100 finish.`);
      done()
    })
    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0110
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0110
     * @tc.desc    1、创建纵向tabs(BarPosition.Start),设置height为auto,设置每个页面高度不同
                   2、编译安装查看效果
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0110', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0110 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0120
    * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0120
    * @tc.desc    1、创建纵向tabs(BarPosition.End),设置height为auto,设置每个页面高度不同
                  2、编译安装查看效果
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0120', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0120 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0130
    * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0130
    * @tc.desc    1、创建纵向tabs(BarPosition.End),设置width为auto,设置每个页面宽度不同
                  2、编译安装查看效果
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0130', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0130 finish.`);
      done()
    })
    /*
         * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0330
         * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0330
         * @tc.desc    1、创建横向tabs(BarPosition.Start),设置height为auto,设置每个页面高度不同，设置barPosition可以动态切换
                  2、动态切换barPosition属性观察效果
        */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0330', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0330 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt033")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabs033_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0330 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0340
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0340
     * @tc.desc    1、创建纵向tabs(BarPosition.Start),设置width可以动态切换(200、‘auto'、‘100%、-100)
                   2、动态切换观察效果
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0340', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0340 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt034")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt034_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt034_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      let button3:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt034_003'));
      await Utils.sleep(1000)
      await button3.click()
      await Utils.sleep(1000)
      let button4:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt034_004'));
      await Utils.sleep(1000)
      await button4.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0340 finish.`);
      done()
    })
    /*
         * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0350
         * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0350
         * @tc.desc    1、创建横向tabs(BarPosition.Start),设置height可以动态切换入参(300、‘auto',50%’、-1)
                       2、动态切换观察效果
         */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0350', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0350 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt035")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt035_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button3:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt035_002'));
      await Utils.sleep(1000)
      await button3.click()
      await Utils.sleep(1000)
      let button4:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt035_003'));
      await Utils.sleep(1000)
      await button4.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt035_004'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0350 finish.`);
      done()
    })

    /*
         * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0070
         * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0070
         * @tc.desc    1、创建横向tabs(BarPosition.Start),设置height可以动态切换入参(300、‘auto',50%’、-1)
                       2、动态切换观察效果
         */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0070', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt007")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt007_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt007_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      let button3:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt007_003'));
      await Utils.sleep(1000)
      await button3.click()
      await Utils.sleep(1000)
      let button4:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt007_004'));
      await Utils.sleep(1000)
      await button4.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0070 finish.`);
      done()
    })
    /*
           * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0320
           * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0320
           * @tc.desc    1、创建横向tabs(BarPosition.Start),设置width和height为auto,设置每个页面高度、宽度不同，设置vertical可以动态切换
                         2、动态切换vertical属性观察效果
           */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0320', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0320 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt032")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt032_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0320 finish.`);
      done()
    })

    /*
         * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0140
         * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0140
         * @tc.desc    1、创建横向tabs(BarPosition.Start),设置height为auto,设置每个页面高度不同，scrollable属性设置为false
                       2、编译安装查看效果
         */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0140', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt014")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0140 finish.`);
      done()
    })

    /*
         * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0270
         * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0270
         * @tc.desc    1、创建横向tabs(BarPosition.Start),设置height为auto,设置每个页面高度不同，设置divider大小可以动态改变
                       2、编译安装查看效果
         */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0270', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0270 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt027")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt027_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt027_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0270 finish.`);
      done()
    })
    /*
             * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0280
             * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0280
             * @tc.desc    1、创建横向tabs(BarPosition.Start),设置height为auto,设置每个页面高度不同，
             *             设置divider可以动态改变颜色、前后Margin
                           2、编译安装查看效果
             */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0280', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0280 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt028")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt028_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt028_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      let button3:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt028_003'));
      await Utils.sleep(1000)
      await button3.click()
      await Utils.sleep(1000)
      let button4:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt028_004'));
      await Utils.sleep(1000)
      await button4.click()
      await Utils.sleep(1000)
      let button5:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt028_005'));
      await Utils.sleep(1000)
      await button5.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0280 finish.`);
      done()
    })
    /*
* @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0300
* @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0300
* @tc.desc    1、创建横向tabs(BarPosition.Start),设置height为auto,
                 设置每个页面高度不同，设置barOverlap为true
              2、编译安装查看效果
*/
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0300', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0300 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0300 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0080
     * @tc.desc    1、创建横向tabs(BarPosition.Start),设置height为auto,设置每个页面高度不同；设置border可以改变
                   2、编译安装查看效果
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0080', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt0080")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      await Utils.sleep(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt0080_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt0080_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0080 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0050
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0050
     * @tc.desc    1、创建横向tabs(BarPosition.Start),设置height为auto,设置每个页面高度不同；设置border可以改变
                   2、编译安装查看效果
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0050', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt0050")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0050 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0210
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0210
     * @tc.desc    1、创建横向tabs(BarPosition.Start),设置height为auto
                   2、页签为BottomTabbarStyle样式，动态切换barheight观察自适应情况
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0210', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0210 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt0210")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt0210_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0210 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0150
* @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0150
* @tc.desc    1、创建横向tabs(BarPosition.Start),设置height为auto
              2、页签为BottomTabbarStyle样式，动态切换barwidth观察自适应情况
*/
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0150', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt0150")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt0150_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0150 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0240
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0240
     * @tc.desc    1、创建纵向tabs(BarPosition.Start),设置width为auto
              2、页签为BottomTabbarStyle样式，动态切换barheight观察自适应情况
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0240', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0240 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt0240")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt0240_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0240 finish.`);
      done()
    })

    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0180
 * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0180
 * @tc.desc    1、创建纵向tabs(BarPosition.Start),设置width为auto
               2、页签为BottomTabbarStyle样式，动态切换barwidth观察自适应情况
*/
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0180', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0180 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt0180")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsContentAdapt0180_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0180 finish.`);
      done()
    })
    /*
            * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0220
            * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0220
            * @tc.desc    横向 tabs(BarPosition.Start), height: auto, change barheight
        */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0220 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt0220")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UIComponentNavTabsContentadapt0220_001'))
      await button.click()
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0220 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0160
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0160
        * @tc.desc    横向 tabs(BarPosition.Start), height: auto, change barwidth
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt0160")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UIComponentNavTabsContentadapt0160_001'))
      await button.click()
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0160 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0250
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0250
        * @tc.desc    纵向 tabs(BarPosition.Start), width: auto, change barheight
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0250 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt0250")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UIComponentNavTabsContentadapt0250_001'))
      await button.click()
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0250 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0190
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0190
        * @tc.desc    纵向 tabs(BarPosition.Start), width: auto, change barwidth
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0190 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt0190")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UIComponentNavTabsContentadapt0190_001'))
      await button.click()
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0190 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0170
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0170
        * @tc.desc    横向 tabs(BarPosition.Start), height: auto, change barwidth
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0170 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt0170")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UIComponentNavTabsContentadapt0170_001'))
      await button.click()
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0170 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0200
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0200
        * @tc.desc    纵向 tabs(BarPosition.Start), height: auto, change barwidth
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0200 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt0200")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UIComponentNavTabsContentadapt0200_001'))
      await button.click()
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0200 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0230
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0230
        * @tc.desc    横向 tabs(BarPosition.Start), height: auto, change barheight
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0230 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt0230")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UIComponentNavTabsContentadapt0230_001'))
      await button.click()
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0230 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0260
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0260
        * @tc.desc    纵向 tabs(BarPosition.Start), width: auto, change barheight
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0260 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsContentAdapt/UIComponentNavTabsContentAdapt0260")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UIComponentNavTabsContentadapt0260_001'))
      await button.click()
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_CONTENTADAPT_0260 finish.`);
      done()
    })

  })
}
