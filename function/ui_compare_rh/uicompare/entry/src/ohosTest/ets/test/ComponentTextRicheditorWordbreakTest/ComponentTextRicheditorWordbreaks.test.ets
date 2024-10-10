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
 * SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK:设置断行规则
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

export default function ComponentTextRicheditorWordbreaks() {

  describe('ComponentTextRicheditorWordbreaks', () => {
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0001
     *des:wordBreak不设置属性,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0001', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0001 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0001");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0001 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0002
     *des:wordBreak设置属性 WordBreak.NORMAL,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0002', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0002 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0002");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0002 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0003
     *des:wordBreak设置属性-1,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0003', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0003 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0003");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0003 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0004
     *des:wordBreak默认设置为 wordBreak:WordBreak.NORMAL，更新为不设置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0004', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0004 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0004");
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorWordbreak0004"));
      let justBtn = await driver.findComponent(ON.id("updateParagraphStyle"));
      await justBtn.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0004 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0005
     *des:wordBreak更新为WordBreak.BREAK_ALL，更新为不设置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0005', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0005 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0005");
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorWordbreak0005"));
      let justBtn = await driver.findComponent(ON.id("updateParagraphStyle"));
      await justBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0005 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0006
     *des:wordBreak更新为-1，更新为不设置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0006', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0006 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0006");
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorWordbreak0006"));
      let justBtn = await driver.findComponent(ON.id("updateParagraphStyle"));
      await justBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0006 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0007
     *des:wordBreak设置属性wordBreak:WordBreak.NORMAL，数字、 Non-CJK文本(如英文等) 只能在空白符处断行
     CJK(中文、日文、韩文)文本文本可以在任意2个字符间断行
     图片、 Symbol、表情、特殊符号可以在任意2个字符间断行,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0007', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0007 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0007");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0007 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0008
     *des:wordBreak设置属性wordBreak:WordBreak.BREAK_ALL，数字、 Non-CJK文本(如英文等) 只能在空白符处断行
     CJK(中文、日文、韩文)文本文本可以在任意2个字符间断行
     图片、 Symbol、表情、特殊符号可以在任意2个字符间断行,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0008', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0008 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0008");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0008 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0009
     *des:wordBreak设置属性wordBreak:WordBreak.BREAK_ALL，数字、 Non-CJK文本(如英文等) 只能在空白符处断行
     CJK(中文、日文、韩文)文本文本可以在任意2个字符间断行
     图片、 Symbol、表情、特殊符号可以在任意2个字符间断行,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0009', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0009 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0009");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0009 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0010
     *des:设置 clip属性为 false.设置wordBreak属性值为NOBMAL, 输入不包含空白符的超长英文文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0010 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0010");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0010 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0011
     *des:设置 RichEditor分别设置workBreak属性为NORMAL、BREAK_AIL、BREAK_WORD
     2、输入 Non-CJK文本(如英文等) 和CJK(中文、日文、韩文)文
     本混合文本，并使换行处为 Non-CJK文本
     3、换行处的 Non-CJK文本前为CJK文本
     4、换行处的 Non-CJK文本前为空格
     5、换行处的 Non-CJK文本前为换行符,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0011', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0011 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0011");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0011 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0012
     *des:1、添加RichEditor组件
     2、输入文本内容,通过updateParagraphStyle设置 workbreak属性为NORMAL
     3、addTextSpan不设置 workbreak属性,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0012', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0012 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0012");
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorWordbreak0012"));
      await richeditor.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(1000);
      let justBtn = await driver.findComponent(ON.id("updateParagraphStyle"));
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0012 finish.` + justBtn);
      await justBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0012 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0013
     *des:1、添加RichEditor组件
     2、输入文本内容,通过apdateParagraphStyle设置 workbreak属性为NORMAL
     3、addTextSpan设置 workbreak属性为BREAK_AIL,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0013', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0013 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0013");
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorWordbreak0013"));
      await richeditor.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(1000);
      let justBtn = await driver.findComponent(ON.id("updateParagraphStyle"));
      await justBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0013 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0014
     *des:1、添加RichEditor组件
     2、输入文本内容,通过updateParagraphStyle设置 workbreak属性为NORMAL
     3、updateParagraphStyle更新部分文本 workbreak属性为
     BREAK_ALL,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0014', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0014 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0014");
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorWordbreak0014"));
      await richeditor.click();
      await Utils.sleep(100);
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
      let justBtn = await driver.findComponent(ON.id("updateParagraphStyle"));
      await justBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0014 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0015
     *des:1、添加RichEditor组件
     2、addTextSpan设置vordBreak属性为NORMAL
     3、 update?aragraphStyle更新部分文本 workbreak属性为BREAK _ALL_,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0015', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0015 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0015");
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorWordbreak0015"));
      await Utils.sleep(1000);
      let justBtn = await driver.findComponent(ON.id("updateParagraphStyle"));
      await justBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0015 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0016
     *des:1、添加RichEditor组件
     2、设置wordBreak属性值为NORMAL,文本内容同时有 Non-CJK文本(如英文等)和CJK(中文、日文、韩文)文本以及图片、Symbol、表情、数字、特殊符号
     3、改变组件大小,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0016', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0016 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0016");
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorWordbreak0016"));
      await Utils.sleep(1000);
      let justBtn = await driver.findComponent(ON.id("updateParagraphStyle"));
      await justBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0016 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0017
     *des:1、添加RichEditor组件
     2、设置wordBreak属性值为NORMAL,文本内容同时有 Non-CJIS本(如英文等) 和CJK(中文、日文、韩文)文本以及图片、Symbol、表情、数字、特殊符号
     3、改变字体大小,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0017', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0017 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0017");
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorWordbreak0017"));
      await Utils.sleep(1000);
      let justBtn = await driver.findComponent(ON.id("updateParagraphStyle"));
      await justBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0017 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0018
     *des:1、添加RichEditor组件、
     2、addTextSpan设置wordBreak属性为NORMAL
     3、通过软件盘删除部分文本，再输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0018', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0018 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0018");
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorWordbreak0018"));
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0018 start.` + richeditor);
      await richeditor.click();
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
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
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
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0018 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0019
     *des:1、添加RichEditor组件、
     2、addTextSpan设置wordBreak属性为NORMAL
     3、通过软件盘删除全部文本，再输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0019', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0019 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0019");
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorWordbreak0019"));
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0019 start.` + richeditor);
      await richeditor.click();
      await Utils.sleep(2000);
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
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_7);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_7);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_7);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      ;
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0019 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0020
     *des:1、添加RichEditor组件
     2、addTextSpan设置wordBreak属性为NORMAL
     3、通过delSpan删除全部textSpan,再输入文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0020 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0020");
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorWordbreak0020"));
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0019 start.` + richeditor);
      await richeditor.click();
      let justBtn = await driver.findComponent(ON.id("updateParagraphStyle"));
      await justBtn.click();
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
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_7);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_7);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_7);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0020 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0021
     *des:1、添加RichEditor组件
     2、输入文本内容,设置wordBreak属性值为NORMAL
     3、长按文本内容，点击粘贴,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0021', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0021 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0021");
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorWordbreak0021"));
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0021 start.` + richeditor);
      await richeditor.longClick();
      await Utils.sleep(2000);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste?.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0021 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0022
     *des:1、添加RichEditor组件
     2、输入文本内容,设置wordBreak属性值为NORMAL
     3、从其他组件拖拽文本到RichEditor,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0022', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0022 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreak0022");
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorWordbreak0022"));
      let textArea = await driver.findComponent(ON.id('TextArea'));
      await textArea.click();
      await Utils.sleep(1000);
      await textArea.click()
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'))
      await selectAll?.click();
      await Utils.sleep(1000);
      await textArea.dragTo(richeditor)
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_WORDBREAK_0022 finish.`);
      done();
    })
  })
}
