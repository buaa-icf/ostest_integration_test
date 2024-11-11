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

export default function UIComponentNavTabsImproTrace() {

  describe('UIComponentNavTabsImproTrace', () => {


    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0150
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0150
     * @tc.desc    1、tabs组件，设置2000个子组件，TabBar设置为Scrollable
                   2、使用index切换页面
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0150', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsImproTrace/UIComponentNavTabsImproTrace0150")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0150_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0150_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0150 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0140
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0140
     * @tc.desc    1、tabs组件，设置2000个子组件，TabBar设置为Scrollable
                   2、使用changeindex切换页面
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0140', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsImproTrace/UIComponentNavTabsImproTrace0140")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0140_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0140_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0140 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0120
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0120
     * @tc.desc    1、tabs组件，设置2000个子组件，TabBar设置为Scrollable
                   2、更改tabscontent宽高
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0120', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsImproTrace/UIComponentNavTabsImproTrace0120")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0120_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0120_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0120 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0080
     * @tc.desc    1、tabs组件，设置2000个子组件，TabBar设置为Scrollable
                   2、横竖屏旋转
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0080', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsImproTrace/UIComponentNavTabsImproTrace0080")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0080_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0080_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0080 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0040
     * @tc.desc    1、tabs组件，设置2000个子组件，TabBar设置为Scrollable
                   2、滑动页签
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0040', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsImproTrace/UIComponentNavTabsImproTrace0040")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0040_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let tabsCenter:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0040_002'));
      let pos = await tabsCenter.getBoundsCenter()
      await driver.swipe(pos.x,pos.y+250,pos.x-350,pos.y+250)
      await Utils.sleep(1000)
      await driver.swipe(pos.x,pos.y+250,pos.x+350,pos.y+250)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0040 finish.`);
      done()
    })

    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0060
 * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0060
 * @tc.desc    1、tabs组件，设置2000个子组件，TabBar设置为Scrollable
               2、滑动页签边缘, 触发边缘回弹效果
 */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0060', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsImproTrace/UIComponentNavTabsImproTrace0060")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0060_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let tabsCenter:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0060_002'));
      let pos = await tabsCenter.getBoundsCenter()
      await driver.swipe(pos.x,pos.y+250,pos.x+200,pos.y+250)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0060 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0070
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0070
     * @tc.desc    1、tabs组件，设置2000个子组件，TabBar设置为Scrollable
               2、滑动页面切换页签
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0070', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsImproTrace/UIComponentNavTabsImproTrace0070")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0070_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let tabsCenter:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0070_002'));
      let pos = await tabsCenter.getBoundsCenter()
      await driver.swipe(pos.x+300,pos.y,pos.x-300,pos.y)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0070 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0030
     * @tc.desc    1、tabs组件，设置2000个子组件，TabBar设置为Scrollable
                   2、点击不同页签切换页面
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0030', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsImproTrace/UIComponentNavTabsImproTrace0030")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0030_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let tabBar:Component = await driver.findComponent(ON.id('2'));
      await Utils.sleep(1000)
      await tabBar.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0030 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0020
     * @tc.desc    1、tabs组件，设置2000个子组件，TabBar设置为Scrollable
               2、自定义页签
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0020', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsImproTrace/UIComponentNavTabsImproTrace0020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0020 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0160
       * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0160
       * @tc.desc    1、设置不同初始index值
                     2、设置不同的vertical(排列方向)、barMode(布局模式)、barHeight(页签高度)、barGridAlign(栅格)、direction(镜像)等属性
                     3、设置不同的页签样式，包括子页签、底部页签(image、svg、symbol格式)、自定义页签等，设置不同页签属性，如selectedMode、layoutMode、symmetricExtensible等
                     4、进入页面查看
      */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0160', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsImproTrace/UIComponentNavTabsImproTrace0160")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0160_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0160_002'));
      await Utils.sleep(500)
      await button2.click()
      await Utils.sleep(100)
      let button3:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0160_003'));
      await Utils.sleep(500)
      await button3.click()
      await Utils.sleep(100)
      let button4:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0160_004'));
      await Utils.sleep(500)
      await button4.click()
      await Utils.sleep(100)
      let button5:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0160_005'));
      await Utils.sleep(500)
      await button5.click()
      await Utils.sleep(100)
      let button6:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0160_006'));
      await Utils.sleep(500)
      await button6.click()
      await Utils.sleep(100)
      let button7:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0160_007'));
      await Utils.sleep(500)
      await button7.click()
      await Utils.sleep(100)
      let button8:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0160_008'));
      await Utils.sleep(500)
      await button8.click()
      await Utils.sleep(100)
      let button9:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0160_009'));
      await Utils.sleep(500)
      await button9.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0160 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0130
       * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0130
       * @tc.desc    1、tabs组件，设置2000个子组件，TabBar设置为Scrollable
                     2、镜像测试
      */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0130', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsImproTrace/UIComponentNavTabsImproTrace0130")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0130_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentNavTabsImproTrace0130_002'));
      await Utils.sleep(500)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0130 finish.`);
      done()
    })

    /*
   * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0010
   * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0010
   * @tc.desc    1、tabs组件，设置2000个子组件，TabBar设置为Scrollable
                 2、首次进入页面
  */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0010', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsImproTrace/UIComponentNavTabsImproTrace0010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_IMPROTRACE_0010 finish.`);
      done()
    })


  })
}
