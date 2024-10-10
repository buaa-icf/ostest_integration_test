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
 * SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE:onwillchange相关用例
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

export default function ComponentTextRicheditorOnWillChangeTests() {

  describe('ComponentTextRicheditorOnWillChangeTests', () => {

    /**
     * NO.SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0001
     *des:2、富文本组件输入框无法输入， onWillChange回调中的replacedSpans中的值正常, onDidChang无回调值|,验证效果
     */
    it('SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0001', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0001 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorOnWillChangeTest/ComponentTextRicheditorOnWillChange0001")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorOnWillChange0001"));
      await richeditor.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0001.`);
      done();
    })
    /**
     * NO.SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0002
     *des:1、onWillChange返回值设置为 false.
     2、从其他组件拖拽文本内容到此RichEditor组件中(考虑手动
     拖拽和鼠标拖拽),验证效果
     */
    it('SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0002', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0002 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorOnWillChangeTest/ComponentTextRicheditorOnWillChange0002")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorOnWillChange0002"));
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
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0002.`);
      done();
    })
    /**
     * NO.SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0003
     *des:1、onWillChange返回值设置为 false
     2、点击AddTextSpan输入字符,验证效果
     */
    it('SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0003', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0003 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorOnWillChangeTest/ComponentTextRicheditorOnWillChange0003")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorOnWillChange0003"));
      let changeBtn = await driver.findComponent(ON.id("changeFeature"));
      await changeBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0003.`);
      done();
    })
    /**
     * NO.SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0004
     *des:1、onWillChange返回值设置为 true
     2、输入文本内容,验证效果
     */
    it('SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0004', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0004 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorOnWillChangeTest/ComponentTextRicheditorOnWillChange0004")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorOnWillChange0004"));
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0004.`+richeditor);
      await richeditor.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0004.`);
      done();
    })
    /**
     * NO.SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0005
     *des:1、onWillChange返回值设置为 true
     2、输入文本内容,验证效果
     */
    it('SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0005', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0005start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorOnWillChangeTest/ComponentTextRicheditorOnWillChange0005")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorOnWillChange0005"));
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0005.`+richeditor);
      await richeditor.click();
      await Utils.sleep(1000);
      let deleteBtn = await driver.findComponent(ON.id("delete"));
      await deleteBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0005.`);
      done();
    })
    /**
     * NO.SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0006
     *des:1、onWillChange返回值设置为 true
     2、输入文本内容
     3、软/硬(BackSpace/ delete) 键盘删除部分文本，看预期效果
     */
    it('SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0006', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0006start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorOnWillChangeTest/ComponentTextRicheditorOnWillChange0006")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorOnWillChange0006"));
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0006.`+richeditor);
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
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0006.`);
      done();
    })
    /**
     * NO.SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0007
     *des:1、onWillChange返回值设置为 true
     2、输入文本内容
     3、软/硬(BackSpace/ delete) 键盘删除部分文本，看预期效果
     */
    it('SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0007', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0007start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorOnWillChangeTest/ComponentTextRicheditorOnWillChange0007")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorOnWillChange0007"));
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0007.`+richeditor);
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
      await driver.triggerKey(2641);
      await Utils.sleep(100);
      await driver.triggerKey(2641);
      await Utils.sleep(100);
      await driver.triggerKey(2641);
      await Utils.sleep(100);
      await driver.triggerKey(2641);
      await Utils.sleep(100);
      await driver.triggerKey(2641);
      await Utils.sleep(100);
      await driver.triggerKey(2641);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UT_COMPONENT_TEXT_RICHEDITOR_ONWILLCHANGE_0007.`);
      done();
    })
  })
}
