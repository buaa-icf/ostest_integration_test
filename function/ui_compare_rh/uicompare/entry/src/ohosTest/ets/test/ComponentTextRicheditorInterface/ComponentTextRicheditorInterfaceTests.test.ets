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
 * SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0340:INTERFACE相关用例
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

export default function ComponentTextRicheditorInterfaceTests() {

  describe('ComponentTextRicheditorInterfaceTests', () => {

    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0340
     *des:1、启动应用
     2、输入多段10字符以上的文本，输入纯文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0340.`);
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0340");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0340.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0350
     *des:1、启动成功
     2、【1，10】所在段落呈现居中对齐以及缩进
     200,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0350.`);
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0350");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0350.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0360
     *des:1、启动成功
     2、【1，10】范围所在段落居中对齐以及列表效
     果,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0360.`);
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0360");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0360.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0410
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0410.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0410");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0410'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0410.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0420
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入图片以及文字,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0420.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0420");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0420'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0420.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0430
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0430.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0430");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0430'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0430"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0430.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0440
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0440.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0440");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0440'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      await driver.triggerKey(2014);
      await Utils.sleep(100);
      await driver.triggerKey(2014);
      await Utils.sleep(100);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0440"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0440.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0450
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0450.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0450");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0450'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0450"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0450.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0460
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0460.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0460");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0460'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0460.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0470
     *des:1、启动成果
     3、文本颜色显示绿色,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0470.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0470");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0470'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_F);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0470.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0480
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0480.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0480");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0480'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0480"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0480.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0490
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0490.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0490");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0490'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0490"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0490.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0500
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0500.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0500");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0500'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0500"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0500.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0510
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0510.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0510");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0510'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0510.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0520
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0520.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0520");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0520'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0520.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0530
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0530.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0530");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0530'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0530"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0530.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0540
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0540.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0540");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0540'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0540"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0540.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0550
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0550.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0550");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0550'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0550"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0550.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0560
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0560.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0560");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0560'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0560.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0570
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0570.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0570");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0570'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0570.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0580
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0580.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0580");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0580'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0580"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0580.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0590
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0590.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0590");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0590'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0590"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0590.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0600
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0600.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0600");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0600'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0600"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0600.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0610
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0610.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0610");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0610'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0610.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0620
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0620.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0620");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0620'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0620.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0630
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0630.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0630");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0630'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0630"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0630.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0640
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0640.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0640");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0640'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0640"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0640.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0650
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0650.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0650");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0650'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0650"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0650.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0660
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0660.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0660");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0660'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0660.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0670
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0670.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0670");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0670'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0670.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0680
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0680.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0680");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0680'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0680"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0680.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0690
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0690.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0690");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0690'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0690"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0690.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0700
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0700.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0700");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0700'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0700"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0700.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0710
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0710.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0710");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0710'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0710"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0710.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0720
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0720.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0720");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0720'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0720.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0730
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0730', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0730.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0730");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0730'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0730.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0740
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0740.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0740");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0740'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0740"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0740.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0750
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0750.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0750");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0750'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0750"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0750.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0760
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0760.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0760");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0760'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0760"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0760.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0770
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0770.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0770");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0770'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0770.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0780
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0780.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0780");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0780'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0780.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0790
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0790.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0790");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0790'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0790"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0790.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0800
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0800', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0800.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0800");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0800'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0800"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0800.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0810
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0810', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0810.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0810");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0810'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0810"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0810.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0820
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0820', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0820.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0820");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0820'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0820.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0830
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0830.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0830");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0830'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0830.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0840
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0840', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0840.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0840");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0840'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0840"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0840.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0850
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0850', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0850.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0850");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0850'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0850"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0850.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0860
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0860', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0860.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0860");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0860'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0860.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0870
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0870', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0870.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0870");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0870'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0870.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0880
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0880', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0880.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0880");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0880'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0880"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0880.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0890
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0890', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0890.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0890");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0890'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0890"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0890.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0900
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0900', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0900.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0900");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0900'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0900"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0900.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0910
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0910', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0910.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0910");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0910'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0910.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0920
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0920', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0920.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0920");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0920'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0920.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0930
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0930', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0930.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0930");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0930'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0930"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0930.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0940
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0940', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0940.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0940");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0940'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0940"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0940.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0950
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0950', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0950.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0950");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0950'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0950"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0950.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0960
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0960', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0960.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0960");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0960'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0960.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0970
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0970', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0970.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0970");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0970'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0970.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0980
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0980', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0980.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0980");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0980'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0980"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0980.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0990
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0990', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0990.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface0990");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface0990'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface0990"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0990.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1000
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1000', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1000.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1000");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1000'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1000"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1000.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1010
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1010.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1010");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1010'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1010.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1020
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1020.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1020");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1020'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1020.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1030
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1030.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1030");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1030'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1030"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1030.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1040
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1040.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1040");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1040'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1040"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1040.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1050
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1050.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1050");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1050'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1050"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1050.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1060
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1060.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1060");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1060'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1060.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1070
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1070.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1070");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1070'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1070.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1080
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1080.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1080");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1080'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1080"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1080.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1090
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1090.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1090");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1090'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1090"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1090.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1100
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1100.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1100");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1100'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1100"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1100.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1110
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1110.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1110");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1110'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1110.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1120
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1120.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1120");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1120'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1120.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1130
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1130.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1130");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1130'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1130"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1130.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1140
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1140.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1140");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1140'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1140"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1140.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1150
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1150.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1150");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1150'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1150"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1150.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1160
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1160.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1160");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1160'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1160.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1170
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1170.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1170");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1170'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1170.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1180
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1180.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1180");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1180'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1180"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1180.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1190
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1190.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1190");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1190'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1190"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1190.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1200
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1200.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1200");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1200'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1200"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1200.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1210
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1210.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1210");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1210'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1210.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1220
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1220.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1220");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1220'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1220.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1230
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1230.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1230");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1230'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1230"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1230.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1240
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1240.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1240");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1240'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1240"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1240.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1250
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1250.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1250");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1250'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1250"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1250.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1260
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1260.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1260");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1260'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1260.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1270
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1270.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1270");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1270'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1270.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1280
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1280.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1280");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1280'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1280"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1280.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1290
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1290.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1290");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1290'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1290"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1290.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1300
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1300.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1300");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1300'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1300"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1300.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1310
     *des:1、启动应用
     2、清空输入框内容
     3、重新输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1310.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1310");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1310'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1310.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1320
     *des:1、启动应用
     2、清空输入框内容
     4、重新输入图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1320.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1320");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1320'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1320.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1330
     *des:1、启动应用
     2、复制文本后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1330.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1330");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1330'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1330"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1330.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1340
     *des:1、启动应用
     2、复制图文后粘贴到不同字体的文字中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1340.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1340");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1340'));
      await rich.click();
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(500);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(500);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1340"));
      await richEditor2?.click();
      await Utils.sleep(500);
      await richEditor2?.click();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1340.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1350
     *des:1、启动应用
     2、复制原本不同字体的文本后粘贴到其他内容
     中,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1350.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1350");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1350'));
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorInterface1350"));
      await richEditor2?.click();
      await Utils.sleep(1000);
      await richEditor2?.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1350.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1360
     *des:1、启动应用
     2、输入图文内容
     3、长按选择部分文字内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1360.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1360");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1360'));
      await rich.longClick();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1360.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1380
     *des:1、启动应用
     2、输入一段图文内容
     3、长按图片位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1380.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1380");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1380'));
      await rich.longClick();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1380.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1400
     *des:1、启动应用
     2、输入一段图文内容
     3、长按选中图文内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1400.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorInterface/ComponentTextRicheditorInterface1400");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorInterface1400'));
      await rich.click();
      await Utils.sleep(500);
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_1400.`);
      done();
    })
  })
}
