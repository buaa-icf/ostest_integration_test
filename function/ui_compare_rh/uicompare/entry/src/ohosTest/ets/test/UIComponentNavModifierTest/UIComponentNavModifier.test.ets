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
import { Component, Driver, ON } from '@ohos.UiTest'

export default function UIComponentNavModifier() {

  describe('UIComponentNavModifier', () => {
    /*
           * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0460
           * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0460
           * @tc.desc    1、添加Tabs组件
                         2、分割线设置为0xFF0000
           */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0460', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0460 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier046")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0460 finish.`);
      done()
    })


    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0530
       * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0530
       * @tc.desc    1、添加Tabs组件
                     2、设置endMargin(-10)
       */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0530', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0530 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier053")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavModifier053_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0530 finish.`);
      done()
    })

    /*
   * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0560
   * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0560
   * @tc.desc    1、添加Tabs组件
                 2、设置endMargin(-10)
   */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0560', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0560 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier056")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavModifier056_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0560 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0580
       * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0580
       * @tc.desc    1、添加Tabs组件
                     2、设置endMargin(-10)
       */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0580', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0580 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier058")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavModifier058_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0580 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0830
       * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0830
       * @tc.desc    1、添加Tabs组件
                     2、barWidth设置为Resource
       */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0830', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0830 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier083")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavModifier083_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0830 finish.`);
      done()
    })


    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0480
    * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0480
    * @tc.desc    1、添加Tabs组件
                  2、分割线设置为0xffc0cb
    */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0480', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0480 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier048")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0480 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0450
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0450
     * @tc.desc    1、添加Tabs组件
                   2、分割线设置为Color.Blue
     */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0450', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0450 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier045")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0450 finish.`);
      done()
    })

    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0410
 * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0410
 * @tc.desc    1、添加Tabs组件
               2、strokeWidth设置为string类型
 */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0410', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0410 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier041")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavModifier041_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0410 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0440
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0440
     * @tc.desc    1、添加Tabs组件
           2、strokeWidth设置为Resource类
  */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0440', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0440 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier044")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavModifier044_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0440 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0430
* @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0430
* @tc.desc    1、添加Tabs组件
           2、分割线设置为Color.Blue
*/
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0430', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0430 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier043")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavModifier043_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0430 finish.`);
      done()
    })


    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0600
       * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0600
       * @tc.desc    1、添加Tabs组件
                     2、fadingEdge设置为false
    */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0600', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0600 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier060")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0600 finish.`);
      done()
    })


    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0650
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0650
     * @tc.desc    1、添加Tabs组件
               2、背景色设置为’#ffffff’
     */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0650', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0650 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier065")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavModifier065_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0650 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0630
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0630
     * @tc.desc    1、添加Tabs组件
           2、背景色设置为’#ffffff’
    */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0630', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0630 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier063")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavModifier063_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0630 finish.`);
      done()
    })

    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0660
 * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0660
 * @tc.desc    1、添加Tabs组件
       2、背景色设置为’#ffffff’
*/
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0660', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0660 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier066")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavModifier066_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0660 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0810
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0810
     * @tc.desc    1、添加Tabs组件
              2、设置barWidth为'100%
    */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0810', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0810 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier0810")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0810 finish.`);
      done()
    })

    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0770
 * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0770
 * @tc.desc    1、添加Tabs组件
          2、设置barWidth为负值
*/
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0770', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0770 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier0770")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0770 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0860
* @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0860
* @tc.desc    1、添加Tabs组件
      2、设置barHeight为250
*/
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0860', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0860 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier0860")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0860 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0840
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0840
     * @tc.desc    1、添加Tabs组件
                   2、设置barHeight为小于0的数
   */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0840', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0840 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier0840")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0840 finish.`);
      done()
    })


    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0900
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0900
     * @tc.desc    1、添加Tabs组件
                   2、设置animationDuration设置为小于0
   */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0900', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0900 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier0900")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('blue'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2: Component = await driver.findComponent(ON.id('green'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0900 finish.`);
      done()
    })

    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0920
 * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0920
 * @tc.desc    1、添加Tabs组件
               2、设置animationDuration设置为百分比
*/
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0920', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0920 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier0920")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('blue'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2: Component = await driver.findComponent(ON.id('green'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0920 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0370
* @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0370
* @tc.desc    1、添加Tabs组件
              2、barGridAlign设置为gutter
*/
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0370', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0370 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier0370")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavModifier0370_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2: Component = await driver.findComponent(ON.id('UIComponentNavModifier0370_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0370 finish.`);
      done()
    })
    /*
            * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0380
            * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0380
            * @tc.desc    barGridAlign设置为sm
        */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0380 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier0380")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0380 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0130
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0130
        * @tc.desc    barGridAlign设置为lg
    */
    it('SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0400 start.`);
      Settings.createWindow("testability/pages/UIComponentNavModifier/UIComponentNavModifier0400")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_MODIFIER_0400 finish.`);
      done()
    })
  })
}
