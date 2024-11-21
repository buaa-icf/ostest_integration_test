/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { afterEach, describe, it } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Component, Driver, ON } from '@ohos.UiTest'

/*
 * UIComponentButtonSelectDivider
 *
 * Settings.createWindow(config.url)：
 *  创建窗口，更改窗口基本配置，更改方式详见model/Settings createWindow方法
 *
 * windowSnap.snapShot(globalThis.context)：
 *  窗口截屏&图片文件保存，存储在设备端
 *  存储文件固定，单挑用例执行后覆盖，用于自动化UI对比
 *  支持调试更改文件名为时间戳格式，更改model/snapShot createAndGetFile方法 注释L35，放开L32，L33
 *
 * Logger日志使用方法：
 *  import Logger form './model/Logger'
 *  Logger.info(TAG,`config = ${config}, err = ${JSON.stringify(exception)}`)
 * */

export default function UIComponentButtonSelectDivider() {

  describe('UIComponentButtonSelectDivider', () => {

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0010
     * @tc.desc   : divider设置为默认值:strokeWidth("1px"),color("#33000000")1px线条细，分割线颜色为灰色
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0010")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let isDivider: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0010_001'));
      await isDivider.click();
      await Utils.sleep(500);
      let dividerConfig: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0010_002'));
      await dividerConfig.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0010_003'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0010 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0020
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0020
     * @tc.desc   : divider为null，不显示
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0020")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let isDivider: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0020_001'));
      await isDivider.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0020_002'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0020 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0030
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0030
     * @tc.desc   : divder设置为默认值:strokeWidth("1px"),color("#33000000")且只有一个菜单项一个菜单项，没有分割线
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0030")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let isDivider: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0030_001'));
      await isDivider.click();
      await Utils.sleep(500);
      let dividerConfig: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0030_002'));
      await dividerConfig.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0030_003'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0030 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0040
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0040
     * @tc.desc   : divder设置strokeWidth/startMargin/endMargin(引用$r5vp),color(引用$r#00FFFF)
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0040")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let isDivider: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0040_001'));
      await isDivider.click();
      await Utils.sleep(500);
      let dividerConfig: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0040_002'));
      await dividerConfig.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0040_003'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0040 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0050
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0050
     * @tc.desc   : 异常值:startMargin - endMargin接近0:optionWidth为(100.1) divder设置startMargin(50)，endMargin(50)
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0050")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let isDivider: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0050_001'));
      await isDivider.click();
      await Utils.sleep(500);
      let dividerConfig: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0050_002'));
      await dividerConfig.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0050_003'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0050 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0060
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0060
     * @tc.desc   : divder设置strokeWidth("5fp"),startMargin("5fp"),endMargin("5fp"),color("#ff00ff")
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0060")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let isDivider: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0060_001'));
      await isDivider.click();
      await Utils.sleep(500);
      let dividerConfig: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0060_002'));
      await dividerConfig.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0060_003'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0060 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0070
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0070
     * @tc.desc   : divder设置strokeWidth("10LPX”), startMargin("10LPX”),endMargin("10LPX”),color(Color.Green)
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0070")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let isDivider: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0070_001'));
      await isDivider.click();
      await Utils.sleep(500);
      let dividerConfig: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0070_002'));
      await dividerConfig.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0070_003'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0070 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0080
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0080
     * @tc.desc   : divder不设置，默认显示
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0080")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let isDivider: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0080_001'));
      await isDivider.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0080_002'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0080 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0090
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0090
     * @tc.desc   : 异常值负数-10:divder设置strokeWidth("-10"),startMargin("-10"),endMargin("-10"),color(null)
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0090")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let isDivider: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0090_001'));
      await isDivider.click();
      await Utils.sleep(500);
      let dividerConfig: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0090_002'));
      await dividerConfig.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0090_003'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0090 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0100
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0100
     * @tc.desc   : 异常值startMargin - endMargin等于0:optionWidth为 (56) divder设置startMargin (28),endMargin(28)
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0100")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let isDivider: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0100_001'));
      await isDivider.click();
      await Utils.sleep(500);
      let dividerConfig: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0100_002'));
      await dividerConfig.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0100_003'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0100 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0110
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0110
     * @tc.desc   : 异常值undefined，默认显示
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0110")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let isDivider: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0110_001'));
      await isDivider.click();
      await Utils.sleep(500);
      let dividerConfig: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0110_002'));
      await dividerConfig.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0110_003'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0110 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0120
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0120
     * @tc.desc   : divder设置strokeWidth("20px")，startMargin("20px"), endMargin("10px"), color (Color.Red)
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0120")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let isDivider: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0120_001'));
      await isDivider.click();
      await Utils.sleep(500);
      let dividerConfig: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0120_002'));
      await dividerConfig.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0120_003'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0120 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0130
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0130
     * @tc.desc   : divder设置为默认值后动态切换
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0130")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0130_003'));
      await select.click();
      await Utils.sleep(1000);
      let change: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0130_001'));
      await change.click();
      await Utils.sleep(1000);
      let change130: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0130_002'));
      await change130.click();
      await Utils.sleep(500);
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0130 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0140
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0140
     * @tc.desc   : divder设置strokeWidth("5vp"),startMargin("5vp),endMargin("5vP"),color(0xffff00)
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0140")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let isDivider: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0140_001'));
      await isDivider.click();
      await Utils.sleep(500);
      let dividerConfig: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0140_002'));
      await dividerConfig.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0140_003'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0140 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0150
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0150
     * @tc.desc   : 异常值超大整数99999，分割线的strokeWidth设置过宽时，会覆盖文字，灰色
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0150")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let isDivider: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0150_001'));
      await isDivider.click();
      await Utils.sleep(500);
      let dividerConfig: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0150_002'));
      await dividerConfig.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0150_003'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0150 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0160
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0160
     * @tc.desc   : 异常值null 参数不允许null值
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectDivider/UIComponentButtonSelectDivider0160")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let isDivider: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0160_001'));
      await isDivider.click();
      await Utils.sleep(500);
      let dividerConfig: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0160_002'));
      await dividerConfig.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectDivider0160_003'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_DIVIDER_0160 finish.`);
      done();
    })

  })
}
