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
 * SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0001:KEYBOARDREINFORCING相关用例
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

export default function ComponentTextRicheditorKeyboardReinForcingTests() {

  describe('ComponentTextRicheditorKeyboardReinForcingTests', () => {

    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0001
     *des:1、点击RichEditor组件,激活软键盘
     2、观察软键盘右下角回车键,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0001', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0001 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorKeyboardReinForcingTest/ComponentTextRicheditorKeyboardReinForcing0001")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorKeyboardReinForcing0001'));
      await rich.click()
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0001.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0002
     *des:1、点击RichEditor组件,激活软键盘
     2、观察软键盘右下角回车键,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0002', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0002 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorKeyboardReinForcingTest/ComponentTextRicheditorKeyboardReinForcing0002")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorKeyboardReinForcing0002'));
      await rich.click()
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0002.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0003
     *des:1、点击RichEditor组件,激活软键盘
     2、观察软键盘右下角回车键,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0003', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0003 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorKeyboardReinForcingTest/ComponentTextRicheditorKeyboardReinForcing0003")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorKeyboardReinForcing0003'));
      await rich.click()
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0003.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0004
     *des:1、点击RichEditor组件,激活软键盘
     2、观察软键盘右下角回车键,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0004', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0004 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorKeyboardReinForcingTest/ComponentTextRicheditorKeyboardReinForcing0004")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorKeyboardReinForcing0004'));
      await rich.click()
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0004.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0012
     *des:1、设置onSubmit回调
     2、点击RichEditor组件,拉起软键盘
     3、动态切换EnterKeyType
     4、点击软键盘回车键,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0012', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0012 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorKeyboardReinForcingTest/ComponentTextRicheditorKeyboardReinForcing0012")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorKeyboardReinForcing0012'));
      await rich.click();
      await Utils.sleep(1000);
      let  switchType = await driver.findComponent(ON.id('switchType'));
      await switchType.click();
      await Utils.sleep(1000);
      let rich2 = await driver.findComponent(ON.id('ComponentTextRicheditorKeyboardReinForcing0012'));
      await rich2.click();
      await Utils.sleep(1000);
      await driver.triggerKey(2054);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0012.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0013
     *des:1、设置onSubmit回调
     2、收起软键盘
     3、动态切换EnterKeyTypo
     4、拉起软键盘
     5、点击软键盘回车键,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0013', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0013 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorKeyboardReinForcingTest/ComponentTextRicheditorKeyboardReinForcing0013")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorKeyboardReinForcing0013'));
      await rich.click();
      await Utils.sleep(1000);
      let  switchType = await driver.findComponent(ON.id('switchType'));
      await switchType.click();
      await Utils.sleep(1000);
      let rich2 = await driver.findComponent(ON.id('ComponentTextRicheditorKeyboardReinForcing0013'));
      await rich2.click();
      await Utils.sleep(1000);
      await driver.triggerKey(2054);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0013.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0015
     *des:1、设置 onsubmit回调
     2、动态切换EnterKeyType类型
     3、点击键盘 Enter键,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0015', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0015start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorKeyboardReinForcingTest/ComponentTextRicheditorKeyboardReinForcing0015")
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorKeyboardReinForcing0015'));
      await rich.click();
      await Utils.sleep(1000);
      let  switchType = await driver.findComponent(ON.id('switchType'));
      await switchType.click();
      await Utils.sleep(1000);
      let rich2 = await driver.findComponent(ON.id('ComponentTextRicheditorKeyboardReinForcing0015'));
      await rich2.click();
      await Utils.sleep(1000);
      await driver.triggerKey(2054);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KEYBOARDREINFORCING_0015.`);
      done();
    })

  })
}
