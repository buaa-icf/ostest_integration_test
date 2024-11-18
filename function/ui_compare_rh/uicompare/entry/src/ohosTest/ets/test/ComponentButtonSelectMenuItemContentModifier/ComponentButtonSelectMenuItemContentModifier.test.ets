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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Component, Driver , On, ON } from '@ohos.UiTest'

/*
 * ComponentButtonSelectMenuItemContentModifier
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

export default function ComponentButtonSelectMenuItemContentModifier() {

  describe('ComponentButtonSelectMenuItemContentModifier', () => {


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0010
     * @tc.desc   : Value is set to normal text.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0010 start.`);
      Settings.createWindow("testability/pages/ComponentButtonSelectMenuItemContentModifier/" +
        "ComponentButtonSelectMenuItemContentModifier0010")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('ComponentButtonSelectMenuItemContentModifier0010_001'));
      await button.click();
      await Utils.sleep(1000);
      let selectBuilder: Component = await driver.findComponent(ON.id('' +
        'ComponentButtonSelectMenuItemContentModifier0010_002'));
      await selectBuilder.click();
      await Utils.sleep(1000);
      await driver.fling({x: 100, y: 1000}, {x: 100, y: 500}, 5, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0011
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0011
     * @tc.desc   : Icon is set JPG type image.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0011', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0011 start.`);
      Settings.createWindow("testability/pages/ComponentButtonSelectMenuItemContentModifier/" +
        "ComponentButtonSelectMenuItemContentModifier0011")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('ComponentButtonSelectMenuItemContentModifier0011_001'));
      await button.click();
      await Utils.sleep(1000);
      let selectBuilder: Component = await driver.findComponent(ON.id('' +
        'ComponentButtonSelectMenuItemContentModifier0011_002'));
      await selectBuilder.click();
      await Utils.sleep(1000);
      await driver.fling({x: 100, y: 1000}, {x: 100, y: 500}, 5, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0011 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0013
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0013
     * @tc.desc   : Selected is set to number:1.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0013', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0013 start.`);
      Settings.createWindow("testability/pages/ComponentButtonSelectMenuItemContentModifier/" +
        "ComponentButtonSelectMenuItemContentModifier0013")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('ComponentButtonSelectMenuItemContentModifier0013_001'));
      await button.click();
      await Utils.sleep(1000);
      let selectBuilder: Component = await driver.findComponent(ON.id('' +
        'ComponentButtonSelectMenuItemContentModifier0013_002'));
      await selectBuilder.click();
      await Utils.sleep(1000);
      await driver.fling({x: 100, y: 1000}, {x: 100, y: 500}, 5, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0013 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0015
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0015
     * @tc.desc   : Value is set to very long text.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0015', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0015 start.`);
      Settings.createWindow("testability/pages/ComponentButtonSelectMenuItemContentModifier/" +
        "ComponentButtonSelectMenuItemContentModifier0015")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('ComponentButtonSelectMenuItemContentModifier0015_001'));
      await button.click();
      await Utils.sleep(1000);
      let selectBuilder: Component = await driver.findComponent(ON.id('' +
        'ComponentButtonSelectMenuItemContentModifier0015_002'));
      await selectBuilder.click();
      await Utils.sleep(1000);
      await driver.fling({x: 100, y: 1000}, {x: 100, y: 500}, 5, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0015 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0016
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0016
     * @tc.desc   : Does Builder take precedence over Select in property conflicts.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0016', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0016 start.`);
      Settings.createWindow("testability/pages/ComponentButtonSelectMenuItemContentModifier/" +
        "ComponentButtonSelectMenuItemContentModifier0016")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('ComponentButtonSelectMenuItemContentModifier0016_001'));
      await button.click();
      await Utils.sleep(1000);
      let selectBuilder: Component = await driver.findComponent(ON.id('' +
        'ComponentButtonSelectMenuItemContentModifier0016_002'));
      await selectBuilder.click();
      await Utils.sleep(1000);
      await driver.fling({x: 100, y: 1000}, {x: 100, y: 500}, 5, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0016 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0017
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0017
     * @tc.desc   : Verify if builder respects Select's min-width limit when optionWidth < 56vp.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0017', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0017 start.`);
      Settings.createWindow("testability/pages/ComponentButtonSelectMenuItemContentModifier/" +
        "ComponentButtonSelectMenuItemContentModifier0017")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('ComponentButtonSelectMenuItemContentModifier0017_001'));
      await button.click();
      await Utils.sleep(1000);
      let selectBuilder: Component = await driver.findComponent(ON.id('' +
        'ComponentButtonSelectMenuItemContentModifier0017_002'));
      await selectBuilder.click();
      await Utils.sleep(1000);
      await driver.fling({x: 500, y: 300}, {x: 500, y: 100}, 5, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0017 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0018
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0018
     * @tc.desc   : Value is set to empty text.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0018', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0018 start.`);
      Settings.createWindow("testability/pages/ComponentButtonSelectMenuItemContentModifier/" +
        "ComponentButtonSelectMenuItemContentModifier0018")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('ComponentButtonSelectMenuItemContentModifier0018_001'));
      await button.click();
      await Utils.sleep(1000);
      let selectBuilder: Component = await driver.findComponent(ON.id('' +
        'ComponentButtonSelectMenuItemContentModifier0018_002'));
      await selectBuilder.click();
      await Utils.sleep(1000);
      await driver.fling({x: 100, y: 1000}, {x: 100, y: 500}, 5, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0018 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0023
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0023
     * @tc.desc   : Test scrolling with 20 SelectOption items.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0023', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0023 start.`);
      Settings.createWindow("testability/pages/ComponentButtonSelectMenuItemContentModifier/" +
        "ComponentButtonSelectMenuItemContentModifier0023")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('ComponentButtonSelectMenuItemContentModifier0023_001'));
      await button.click();
      await Utils.sleep(1000);
      let selectBuilder: Component = await driver.findComponent(ON.id('' +
        'ComponentButtonSelectMenuItemContentModifier0023_002'));
      await selectBuilder.click();
      await Utils.sleep(1000);
      await driver.fling({x: 100, y: 1000}, {x: 100, y: 500}, 5, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0023 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0025
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0025
     * @tc.desc   : Icon is set GIF type image.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0025', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0025 start.`);
      Settings.createWindow("testability/pages/ComponentButtonSelectMenuItemContentModifier/" +
        "ComponentButtonSelectMenuItemContentModifier0025")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('ComponentButtonSelectMenuItemContentModifier0025_001'));
      await button.click();
      await Utils.sleep(1000);
      let selectBuilder: Component = await driver.findComponent(ON.id('' +
        'ComponentButtonSelectMenuItemContentModifier0025_002'));
      await selectBuilder.click();
      await Utils.sleep(1000);
      await driver.fling({x: 100, y: 1000}, {x: 100, y: 500}, 5, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0025 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0026
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0026
     * @tc.desc   : Icon is set SVG type image.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0026', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0026 start.`);
      Settings.createWindow("testability/pages/ComponentButtonSelectMenuItemContentModifier/" +
        "ComponentButtonSelectMenuItemContentModifier0026")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('ComponentButtonSelectMenuItemContentModifier0026_001'));
      await button.click();
      await Utils.sleep(1000);
      let selectBuilder: Component = await driver.findComponent(ON.id('' +
        'ComponentButtonSelectMenuItemContentModifier0026_002'));
      await selectBuilder.click();
      await Utils.sleep(1000);
      await driver.fling({x: 100, y: 1000}, {x: 100, y: 500}, 5, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0026 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0027
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0027
     * @tc.desc   : builder里放置多个节点共存，验证自定义内容是否可以正常显示
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0027', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0027 start.`);
      Settings.createWindow("testability/pages/ComponentButtonSelectMenuItemContentModifier/" +
        "ComponentButtonSelectMenuItemContentModifier0027")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('ComponentButtonSelectMenuItemContentModifier0027_001'));
      await button.click();
      await Utils.sleep(1000);
      let selectBuilder: Component = await driver.findComponent(ON.id('' +
        'ComponentButtonSelectMenuItemContentModifier0027_002'));
      await selectBuilder.click();
      await Utils.sleep(1000);
      await driver.fling({x: 100, y: 1000}, {x: 100, y: 500}, 5, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_MENUITEMCONTENTMODIFIER_0027 finish.`);
      done()
    })
  })
}
