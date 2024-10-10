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
import { Driver, ON, On } from '@ohos.UiTest'
import { KeyCode } from '@kit.InputKit'

/*
 * SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_CUSTOMCOLORS:Colors相关自定义
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

export default function ComponentTextRicheditorCustomColors() {

  describe('ComponentTextRicheditorCustomColors', () => {

    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0001
     *des:1、添加RichEditor组件，不设置光标、手柄、文本选中背景颜色
     2、输入文本， 长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0001', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0001 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0001")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0001"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0001 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0002
     *des:1、添加RichEditor组件
     2、设置光标、手柄颜色为 Color. Orange，文本选中背景颜色为Color. Red.
     3、输入文本、长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0002', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0002 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0002")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0002"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0002 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0003
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为0x0110ff
     3、输入文本， 长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0003', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0003 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0003")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0003"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0003 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0004
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为0xffffffeeeeee
     3、输入文本， 长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0004', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0004 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0004")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0004"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0004 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0005
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为10000
     3、输入文本， 长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0005', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0005 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0005")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0005"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0005 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0006
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为10000.5
     3、输入文本， 长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0006', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0006 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0006")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0006"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0006 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0007
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为-15
     3、输入文本， 长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0007', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0007 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0007")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0007"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0007 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0008
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为'#00ffff'
     3、输入文本， 长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0008', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0008 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0008")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0008"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0008 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0009
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为'#ffffff00'
     3、输入文本， 长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0009', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0009 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0009")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0009"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0009 finish.`);
      done();
    })

    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0010
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为' rgb(255,0,255)'
     3、输入文本， 长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0010 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0010")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0010"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0010 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0011
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为" rgba(0,0,255,0.5)"
     3、输入文本， 长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0011', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0011 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0011")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0011"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0011 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0012
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为'#0ccccoo'
     3、输入文本， 长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0012', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0012 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000)
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0012")
      await Utils.sleep(1000)
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0012"));
      await richeditor.click();
      await Utils.sleep(2000)
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000)
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0012 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0013
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为' rgba(255,0,255,2)'
     3、输入文本， 长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0013', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0013 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0013")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0013"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0013 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0014
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为' rgb(255,0,300)'
     3、输入文本， 长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0014', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0014 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0014")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0014"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0014 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0015
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为'#abcdefə'
     3、输入文本， 长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0015', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0015 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0015")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0015"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0015 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0016
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为
     $r(' app. color. color')
     3、输入文本，长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0016', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0016 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0016")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0016"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0016 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0017
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为
     $r(' app. media. startIcon')
     3、输入文本， 长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0017', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0017 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0017")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0017"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0017 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0018
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为 Red
     3、输入文字、图片、表情、特殊符号混合文本，长按文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0018', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0018 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0018")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0018"));
      await richeditor.click();
      await Utils.sleep(2000);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0018 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0019
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为 Red
     3、添加textSpan\symbolSpan\inageSpan\buildSpan,长按文本
     内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0019', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0019 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0019")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0019"));
      await richeditor.click();
      await Utils.sleep(2000);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0019 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0020
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为 Red
     3、输入文本，长按文本内容
     4、改变字体大小,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0020 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0020")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0020"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0020finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0021
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为 Red
     3、输入文本， 长按文本内容
     4、改变字体样式,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0021', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0021 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0021")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0021"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot()
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0021finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0022
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为 Red
     3、输入文本， 长按文本内容
     4、改变行高和字符间距,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0022', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0022 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0022")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0022"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0022finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0023
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为 Red
     3、输入文本，长按文本内容
     4、软键盘删除选中文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0023', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0020 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0023")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0023"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0023finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0025
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为 Red
     3、输入文本，长按文本内容
     4、切换横竖屏,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0025', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0025 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0025")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0025"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0025finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0026
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为 Red
     3、输入文本,鼠标点击 richeditor,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0026', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0026 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0026")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0026"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0026finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0028
     *des:1、添加RichEditor组件
     2、设置光标、手柄、文本选中背景颜色为 Red
     3、输入文本
     4、调用setSeleotion选中文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0028', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0028 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColor0028")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomColor0028"));
      await richeditor.click();
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let select = await driver.findComponent(ON.id("set select"));
      await select.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOB_CUSTOMCOLORS_0028finish.`);
      done();
    })
  })
}
