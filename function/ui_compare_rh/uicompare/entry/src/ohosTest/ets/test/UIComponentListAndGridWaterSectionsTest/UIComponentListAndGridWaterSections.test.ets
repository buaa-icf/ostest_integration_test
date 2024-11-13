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

export default function UIComponentListAndGridWaterSections() {

  describe('UIComponentListAndGridWaterSections', () => {



    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0560
        * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0560
        * @tc.desc    1、创建分组瀑布流
                      2、splice方法中替换的分组不设置返回高
    */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0560', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0560 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterSections/UIComponentListAndGridWaterSections0560")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentListAndGridWaterSections0560_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0560 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0380
    * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0380
    * @tc.desc    1、创建分组瀑布流
                  2、push进一个分组
                  3、改变分组的columnsGap
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0380', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0380 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterSections/UIComponentListAndGridWaterSections0380")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentListAndGridWaterSections0380_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentListAndGridWaterSections0380_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0380 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0370
* @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0370
* @tc.desc    1、创建分组瀑布流
              2、push进一个分组
              3、改变分组的crossCount
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0370', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0370 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterSections/UIComponentListAndGridWaterSections0370")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentListAndGridWaterSections0370_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentListAndGridWaterSections0370_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0370 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0390
* @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0390
* @tc.desc    1、创建分组瀑布流
          2、push进一个分组
          3、改变分组的crossCount
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0390', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0390 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterSections/UIComponentListAndGridWaterSections0390")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentListAndGridWaterSections0390_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentListAndGridWaterSections0390_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0390 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0410
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0410
     * @tc.desc    1、创建分组瀑布流
                   2、push进一个分组
                   3、改变分组的margin
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0410', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0410 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterSections/UIComponentListAndGridWaterSections0410")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentListAndGridWaterSections0410_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentListAndGridWaterSections0410_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0410 finish.`);
      done()
    })

    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0400
 * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0400
 * @tc.desc    1、创建分组瀑布流
               2、push进一个分组
               3、改变分组的rowsGap
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0400', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0400 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterSections/UIComponentListAndGridWaterSections0400")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentListAndGridWaterSections0400_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentListAndGridWaterSections0400_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0400 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0420
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0420
     * @tc.desc    1、创建分组瀑布流
                   2、push进一个分组
                   3、改变分组的返回高度
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0420', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0420 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterSections/UIComponentListAndGridWaterSections0420")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentListAndGridWaterSections0420_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('UIComponentListAndGridWaterSections0420_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0420 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0500
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0500
     * @tc.desc    1、创建分组瀑布流，不设置crossCount
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0500', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0500 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterSections/UIComponentListAndGridWaterSections0500")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0500 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0510
       * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0510
       * @tc.desc    创建分组瀑布流，不设置columnsGap
       */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0510', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0510 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterSections/UIComponentListAndGridWaterSections0510")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0510 finish.`);
      done()
    })

    /*
   * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0520
   * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0520
   * @tc.desc    创建分组瀑布流，不设置rowsGap
   */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0520', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0520 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterSections/UIComponentListAndGridWaterSections0520")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0520 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0530
* @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0530
* @tc.desc    创建分组瀑布流，不设置margin
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0530', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0530 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterSections/UIComponentListAndGridWaterSections0530")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0530 finish.`);
      done()
    })


    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0540
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0540
     * @tc.desc    1、创建分组瀑布流
                   2、push进一个分组
                   3、改变分组的返回高度
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0540', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0540 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterSections/UIComponentListAndGridWaterSections0540")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentListAndGridWaterSections0540_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_SECTIONS_0540 finish.`);
      done()
    })
  })
}
