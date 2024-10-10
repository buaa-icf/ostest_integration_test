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
import { MouseButton } from '@kit.TestKit'

/*
 * SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0010:SHORTKCUTKEYS相关用例
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

export default function ComponentTextRicheditorShortKcutKeysTests() {

  describe('ComponentTextRicheditorShortKcutKeysTests', () => {

    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0010
     *des:1、第一个输入框中输入长文本，设置字体样式为红色、料体、较粗；使用快捷键ctrl+c复制ctrl+v粘贴到另一个输入框中
     2、查看第二个输入框中文本显示,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0010 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0010")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0010'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_C);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0010_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0010.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0020
     *des:1、第一个输入框中输入三张图片，使用ctrl+A全选后快捷键ctrl+c夏制ctrl+v粘贴到另一个输入框中
     2、查看第二个输入框中的显示,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0020 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0020")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0020'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_C);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0020_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0020.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0030
     *des:1、第一个输入框中输入三张图片，选中一张图片后快捷键ctrl+c复制ctrl+v粘贴到另一个输入框中
     2、查看第二个输入框中的显示,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0030 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0030")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0030'));
      await rich.longClick();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_C);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0030_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0030.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0040
     *des:1、在第一个输入框中添加长文本，使用ctrl+A,全选；ctrl+a进行复制
     2、在第二个输入框中ctrl+V连续十次进行粘贴,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0040 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0040")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0040'));
      await rich.click();
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_C);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0040_01'));
      await rich1.click();
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0040.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0050
     *des:1、添加两个输入框，在第一个输入枉中添加长文本，在文本中间按回车进行换行(长文本变成两个自然段),右键点击菜单中复制选项
     2、在第二个输入框中点击粘贴，粘贴的文本仍未两个自然段保留手动换行,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0050 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0050")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0050'));
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
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0050_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await rich1.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0050.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0060
     *des:1、添加两个输入框，在第一个输入框中添加长文本和图片，使用快捷键ctrl+c进行复制，文本内容，再用快捷键复制图片
     2、在第二个输入框中ctrl+v粘贴,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0060 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0060")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0060'));
      await rich.longClick();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_C);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0060_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0060.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0070
     *des:1、在第一个输入框中选中文本进行复制
     2、在第二个输入框中选中一段文本/图片
     3、ctrl+v进行粘贴操作,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0070 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0070")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0070'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_C);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0070_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0070.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0080
     *des:1、在第一个输入框中输入长本文，手势长按文本弹出菜单栏，点击”复制
     2、在第二个输入框中手势长按进行粘贴,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0080 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0080")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0080'));
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
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0080_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await rich1.click();
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0080.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0090
     *des:1、在第一个输入框中输入长本文，使用 ctrl+c夏制文本内容
     2、在第二个输入框中使用快捷键ctrl+v进行粘贴,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0090 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0090")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0090'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_C);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0090_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0090.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0100
     *des:1、在第一个输入框中输入长本文，使用 ctrl+c夏制文本内容
     2、在第二个输入框中使用快捷键ctrl+v进行粘贴,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0100 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0100")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0100'));
      await rich.longClick();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_C);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0100_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0100.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0110
     *des:1、在第一个输入框中输入长本文，鼠标右键弹出菜单栏，点击复制
     2、在第二个输入框中使用快捷键ctrl+v进行粘贴,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0110 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0110")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0110'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      let ponit = await rich.getBoundsCenter();
      await Utils.sleep(1000);
      await driver.mouseClick(ponit, MouseButton.MOUSE_BUTTON_RIGHT);
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0110_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0110.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0120
     *des:1、在第一个输入框中输入长本文，使用ctrl+c复制文本内容
     2、在第二个输入框中右键粘贴,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0120 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0120")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0120'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_C);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0120_01'));
      await rich1.click();
      await Utils.sleep(1000);
      let ponit = await rich1.getBoundsCenter();
      await Utils.sleep(1000);
      await driver.mouseClick(ponit, MouseButton.MOUSE_BUTTON_RIGHT);
      await Utils.sleep(1000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0120.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0130
     *des:1、在第一个输入框中输入图片，鼠标右键弹出菜单栏，点击”复制
     2、第二个输入框中使用快捷键ctrl+v进行拈贴,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0130 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0130")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0130'));
      await rich.click();
      await Utils.sleep(1000);
      let ponit = await rich.getBounds();
      await Utils.sleep(500);
      await driver.mouseClick({x:ponit.left+57,y:ponit.top+57}, MouseButton.MOUSE_BUTTON_RIGHT);
      await Utils.sleep(500);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy?.click();
      await Utils.sleep(1000);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0130_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0130.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0140
     *des:1、在第一个输入框中长文本，选中一段文字后，使用ctrl+x剪切
     2、第二个输入框中使用快捷键ctrl+v进行粘贴,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0140 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0140")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0140'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0140_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0140.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0150
     *des:1、在第一个输入框中输入长文本，选中一段文字后，使用ctrl+x剪切
     2、再在第一个输入框中选中一段文字，使用ctrl+c复制一段文本
     3、在第二个输入框中使用ctrl+v粘贴一段文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0150 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0150")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0150'));
      await rich.longClick();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_C);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0150_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0150.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0160
     *des:1、在第一个输入框中输入长文本，选中一段文字后，使用ctrl+x剪切
     2、再在第一个输入框中选中一段文字，使用ctrl+c复制一段文本
     3、在第二个输入框中使用ctrl+v粘贴一投文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0160 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0160")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0160'));
      await rich.longClick();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_C);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0160_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0160.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0170
     *des:1、在第一个输入框中输入长文本，选中一段文字后，使用ctrl+x剪切
     2、再使用ctrl+z撒销剪切的文本
     3、在第二个输入框中使用ctrl+v粘贴一段文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0170 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0170")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0170'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_Z);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0170_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0170.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0180
     *des:1、在第一个输入框中3张图片，选中一张图片后，使用ctrl+x剪切
     2、在第二个输入框中使用ctrl+v粘贴图片,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0180 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0180")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0180'));
      await rich.longClick();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0180_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0180.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0190
     *des:1、在第一个输入框中3张图片，选中一张图片后，使用ctrl+x剪切
     2、再选中另一张图片，使用ctrl+x剪切
     3、在第二个输入框中使用ctrl+v粘贴图片,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0190 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0190")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0190'));
      await rich.longClick();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(500);
      await rich.longClick();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0190_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0190.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0200
     *des:1、在第一个输入框中输入图片和文字，选中一段文字后，使用ctrl+x剪切
     2、再选中另一张图片，使用ctrl+x剪切
     3、在第二个输入框中使用ctrl+v粘贴,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0200 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0200")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0200'));
      await rich.click();
      await Utils.sleep(1000);
      let select = await driver.findComponent(ON.id('select'));
      await select.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(1000);
      let select1 = await driver.findComponent(ON.id('select1'));
      await select1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0200_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0200.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0210
     *des:1、在第一个输入框中输入图片和文字，选中一张图片后，使用ctrl+x剪切
     2、再选中一段文字，使用ctrl+x剪切
     3、在第二个输入框中使用ctrl+v,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0210 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0210")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0210'));
      await rich.click();
      await Utils.sleep(1000);
      let select = await driver.findComponent(ON.id('select'));
      await select.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(1000);
      let select1 = await driver.findComponent(ON.id('select1'));
      await select1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0210_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0210.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0220
     *des:1、在第一个输入框中输入文字，使用手势长按一段文本选中
     再弹出的菜单栏中，点击”剪切"
     2、在第二个输入框中使用ctrl+v,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0220 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0220")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0220'));
      await rich.longClick();
      await Utils.sleep(1000);
      let cut = await driver.findComponent(ON.text('剪切'));
      await cut.click();
      await Utils.sleep(1000);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0220_01'));
      await rich1.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0220.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0230
     *des:1、在第一个输入框中输入文字，选中一段文本后，使用ctrl+x剪切文本内容
     2、在第二个输入框中使用手势长按，点击”粘贴按钮,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0230 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0230")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0230'));
      await rich.click();
      await Utils.sleep(1000);
      let select = await driver.findComponent(ON.id('select'));
      await select.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(1000);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0230_01'));
      await rich1.click();
      await Utils.sleep(500);
      await rich1.longClick();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0230.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0240
     *des:1、在第一个输入框中输入图片，选中一张图片后，使用手势长
     按 ·弹出菜单，点击”剪切"，剪切图片
     2、在第二个输入框中使用 ctrl+y,粘贴图片内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0240 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0240")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0240'));
      await rich.longClick();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(1000);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0240_01'));
      await rich1.click();
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0240.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0260
     *des:1、在第一个输入框中输入长文本内容，选中一段文字，ctrl+c剪切
     2、在第二个输入框中手势长按，弹出菜单，点击粘贴,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0260 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0260")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0260'));
      await rich.longClick();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(1000);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0260_01'));
      await rich1.click();
      await Utils.sleep(500);
      await rich1.longClick();
      await Utils.sleep(500);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0260.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0270
     *des:1、在第一个输入框中输入图片内容，选中一张图片，手势长
     按，点击的切图片
     2、在第二个输入框中使用ctrl+v,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0270 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0270")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0270'));
      await rich.longClick();
      await Utils.sleep(1000);
      let cut = await driver.findComponent(ON.text('剪切'));
      await cut.click();
      await Utils.sleep(1000);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0270_01'));
      await rich1.click();
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0270.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0280
     *des:1、在第一个输入框中输入长文本内容，使用ctrl+c复制文本内容
     2、在第二个输入框中使用ctrl+v粘贴文本内容
     3、ctrl+z散销粘贴操作
     4、ctrl+y或ctrl+shift+z,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0280 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0280")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0280'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(500);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0280_01'));
      await rich1.click();
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(500);
      await rich1.click();
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_Z);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_Y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0280.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0290
     *des:1、在第一个输入框中输入长文本内容，对文本内容进行删除
     2、ctrl+z撤销删除操作
     3、ctrl+y或ctrl+shift+z,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0290 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0290")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0290'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_Z);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_Y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0290.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0300
     *des:1、在第一个输入框中输入长文本内容，使用ctrl+c夏制文本内容
     2、 ctrl+v粘贴文本内容
     3、ctrl+y或ctrl+shift+z,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0300 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0300")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0300'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_C);
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_V);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_Y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0300.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0310
     *des:1、在第一个输入框中输入长文本内容，使用ctrl+剪切文本内
     容
     2、再次选中一段文本内容
     3、ctrl+y或ctrl+shift+z,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0310 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0310")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0310'));
      await rich.longClick();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_X);
      await Utils.sleep(500);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_A);
      await Utils.sleep(500);
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_Y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0310.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0320
     *des:1、在第一个输入框中输入长文本内容，分成3个自然段
     2、光标位于第一自然段段首
     3、按ctrl+↓,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0320 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0320")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0320'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_MOVE_HOME);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DPAD_UP);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DPAD_UP);
      await Utils.sleep(100);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_RIGHT, KeyCode.KEYCODE_DPAD_DOWN);
      await Utils.sleep(100);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_RIGHT, KeyCode.KEYCODE_DPAD_DOWN);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_MOVE_HOME);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0320.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0330
     *des:1、在第一个输入框中输入长文本内容，分成3个自然段
     2、光标位于第一自然段段尾
     3、按ctrl+↓,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0330 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0330")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0330'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DPAD_UP);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DPAD_UP);
      await Utils.sleep(100);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_DPAD_DOWN);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_MOVE_HOME);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0330.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0340
     *des:1、在第一个输入框中输入长文本内容，分成3个自然段
     2、光标位于第二自然段段首
     3、按ctrl+↑,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0340 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0340")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0340'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_MOVE_HOME);
      await Utils.sleep(500);
      await driver.triggerKey(KeyCode.KEYCODE_DPAD_UP);
      await Utils.sleep(100);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_LEFT, KeyCode.KEYCODE_DPAD_UP);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0340.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0350
     *des:1、在第一个输入框中输入长文本内容，分成3个自然段
     2、光标位于自然段段首
     3、按ctrl+↓,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0350 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0350")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0350'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_MOVE_HOME);
      await Utils.sleep(100);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_RIGHT, KeyCode.KEYCODE_DPAD_UP);
      await Utils.sleep(100);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_RIGHT, KeyCode.KEYCODE_DPAD_UP);
      await Utils.sleep(100);
      await driver.triggerCombineKeys(KeyCode.KEYCODE_CTRL_RIGHT, KeyCode.KEYCODE_DPAD_DOWN);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0350.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0360
     *des:1、输入长文本，光标位于自然段段中
     2、按ctrl+←,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0360 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0360")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0360'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey( KeyCode.KEYCODE_DPAD_LEFT);
      await Utils.sleep(100);
      await driver.triggerKey( KeyCode.KEYCODE_DPAD_LEFT);
      await Utils.sleep(100);
      await driver.triggerKey( KeyCode.KEYCODE_DPAD_LEFT);
       await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0360.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0370
     *des:1、输入长文本，光标位于自然段段中
     2、按Ctrl+→,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0370 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0370")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0370'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey( KeyCode.KEYCODE_DPAD_LEFT);
      await Utils.sleep(100);
      await driver.triggerKey( KeyCode.KEYCODE_DPAD_LEFT);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DPAD_RIGHT);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0370.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0380
     *des:1、输入长文本，光标位于自然段段中
     2、按Ctrl+home,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0380 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeys0380")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorShortKcutKeys0380'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey( KeyCode.KEYCODE_DPAD_LEFT);
      await Utils.sleep(100);
      await driver.triggerKey( KeyCode.KEYCODE_DPAD_LEFT);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_MOVE_HOME);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDIT0R_SHORTKCUTKEYS_0380.`);
      done();
    })
  })
}
