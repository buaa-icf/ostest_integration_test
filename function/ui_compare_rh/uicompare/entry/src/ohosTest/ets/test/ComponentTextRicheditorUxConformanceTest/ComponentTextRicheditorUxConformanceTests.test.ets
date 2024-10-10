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
 * SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0006:UXCONFORMANCE相关用例
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

export default function ComponentTextRicheditorUxConformanceTests() {

  describe('ComponentTextRicheditorUxConformanceTests', () => {

    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0006
     *des:1、调用addTextSpan添加一段文本, 设定装饰
     线颜色不设定字体颜色,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0006', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0006 start.`);
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorUxConformanceTest/ComponentTextRicheditorUxConformance0006")
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0006.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0007
     *des:1、调用addTextSpan添加一段文本, 设定装饰
     线颜色为 Red, 字体颜色为 Pink,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0007', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0007 start.`);
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorUxConformanceTest/ComponentTextRicheditorUxConformance0007")
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0007.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0011
     *des:1、点击多张图片中间位置，将光标放至任意一张图片后
     2、点击虚拟键盘上的删除按钮
     3、再次点击虚拟键盘上的删除按钮,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0011', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0011 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorUxConformanceTest/ComponentTextRicheditorUxConformance0011")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorUxConformance0011'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(2014);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0011.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0012
     *des:1、 richeditor添加多张图片
     2、点击多张图片中间位置，将光标放至任意一
     张图片后
     3、点击物理键盘上的 backspace键,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0012', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0012 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorUxConformanceTest/ComponentTextRicheditorUxConformance0012")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorUxConformance0012'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(2014);
      await Utils.sleep(100);
      await driver.triggerKey(2014);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0012.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0013
     *des:1、 richeditor添加多张图片
     2、点击多张图片中间位置，将光标放至任意一
     张图片后
     3、点击物理键盘上的 delete键,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0013', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0013 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorUxConformanceTest/ComponentTextRicheditorUxConformance0013")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorUxConformance0013'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(2014);
      await Utils.sleep(100);
      await driver.triggerKey(2014);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0013.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0014
     *des:1、选中一段内容，图片在选中内容首位/末尾/
     中间
     2、点击虚拟键盘上的删除按钮,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0014', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0014 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorUxConformanceTest/ComponentTextRicheditorUxConformance0014")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorUxConformance0014'));
      await rich.click();
      let select = await driver.findComponent(ON.id('select'));
      await select.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0014.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0015
     *des:1、选中一段内容，图片在选中内容首位/末尾/
     中间
     2、点击物理键盘上的 backspace键,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0015', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0015 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorUxConformanceTest/ComponentTextRicheditorUxConformance0015")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorUxConformance0015'));
      await rich.click();
      let select = await driver.findComponent(ON.id('select'));
      await select.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0015.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0016
     *des:1、选中一段内容， 图片在选中内容首位/末尾/
     中间
     2、点击物理键盘上的 delete键,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0016', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0016 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorUxConformanceTest/ComponentTextRicheditorUxConformance0016")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorUxConformance0016'));
      await rich.click();
      let select = await driver.findComponent(ON.id('select'));
      await select.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_UXCONFORMANCE_0016.`);
      done();
    })
  })
}
