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
 * SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING:LINEHEIGHT&LETTERSPACING相关用例
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

export default function ComponentTextRicheditorLineHeightLetterSpacingTests() {

  describe('ComponentTextRicheditorLineHeightLetterSpacingTests', () => {

    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0014
     *des:1、添加RichEditor组件
     2、设置lineHeight值为10, letter- spacing值
     为-100，输入纯文本内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHTLETTERSPACING_0014', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0014 start.`);
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLineHeightLetterSpacing/ComponentTextRicheditorLineHeightLetterSpacing0014")
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0014.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0014
     *des:1、添加RichEditor组件
     2、设置lineHeight值为30, letter- spacing
     值为30
     3、onIMEInputComplete接口调用获取
     lineHeight、 letter- spacing属性,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHTLETTERSPACING_0019', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0014 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLineHeightLetterSpacing/ComponentTextRicheditorLineHeightLetterSpacing0019")
      await Utils.sleep(2000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLineHeightLetterSpacing0019"));
      await richeditor.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_A);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0019.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0020
     *des:1、添加RichEditor组件
     2、设置lineHeight值为30, letter- spacing
     值为30
     3、aboutToDelete接口调用获取lineHeight、
     letter- spacing属性,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHTLETTERSPACING_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0020 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLineHeightLetterSpacing/ComponentTextRicheditorLineHeightLetterSpacing0020")
      await Utils.sleep(2000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLineHeightLetterSpacing0020"));
      await richeditor.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_A);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_A);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0020.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0021
     *des:1、你从\ Icnual torsent
     2、设置lineHeight值为30, letter- spacing
     值为30
     3、onSelect接口调用获取lineHeight、
     letter- spacing属性,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHTLETTERSPACING_0021', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0021 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLineHeightLetterSpacing/ComponentTextRicheditorLineHeightLetterSpacing0021")
      await Utils.sleep(2000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLineHeightLetterSpacing0021"));
      await richeditor.longClick();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0021.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0022
     *des:1、添加RichEditor组件
     2、设置lineHeight值为30, letter- spacing
     值为30
     3、getTypingStyle接口调用获取lineHeight
     、 letter- spacing属性,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHTLETTERSPACING_0022', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0022 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLineHeightLetterSpacing/ComponentTextRicheditorLineHeightLetterSpacing0022")
      await Utils.sleep(2000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLineHeightLetterSpacing0022"));
      await richeditor.click();
      await Utils.sleep(1000);
      let getStyles = await driver.findComponent(ON.id("getStyles"));
      await getStyles.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0022.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0023
     *des:1、添加RichEditor组件
     2、设置lineHeight值为30, letter- spacing
     值为30
     3、getSpans接口调用获取lineHeight、
     letter- spacing属性,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHTLETTERSPACING_0023', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0023 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLineHeightLetterSpacing/ComponentTextRicheditorLineHeightLetterSpacing0023")
      await Utils.sleep(2000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLineHeightLetterSpacing0023"));
      await richeditor.click();
      await Utils.sleep(1000);
      let getStyles = await driver.findComponent(ON.id("getStyles"));
      await getStyles.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0023.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0024
     *des:1、添加RichEditor组件
     2、设置lineHeight值为30, letter- spacing
     值为30
     3、 getsolection接口调用获取lineHeight、
     letter- spacing属性,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHTLETTERSPACING_0024', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0024 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLineHeightLetterSpacing/ComponentTextRicheditorLineHeightLetterSpacing0024")
      await Utils.sleep(2000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLineHeightLetterSpacing0024"));
      await richeditor.click();
      await Utils.sleep(1000);
      let getStyles = await driver.findComponent(ON.id("getStyles"));
      await getStyles.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0024.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0025
     *des:1、添加RichEditor组件
     2、设置lineHeight值为30, letter- spacing
     值为30
     3、setTypingStyle接口调用获取lineHeight
     、 letter- spacing属性,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHTLETTERSPACING_0025', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0025 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLineHeightLetterSpacing/ComponentTextRicheditorLineHeightLetterSpacing0025")
      await Utils.sleep(2000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLineHeightLetterSpacing0025"));
      await richeditor.click();
      await Utils.sleep(1000);
      let getStyles = await driver.findComponent(ON.id("getStyles"));
      await getStyles.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0025.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0026
     *des:1、添加RichEditor组件
     2、设置lineHeight值为30, letter- spacing
     值为30
     3、updateSpanStyle接口调用获取lineHeight|
     、 letter- spacing属性,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHTLETTERSPACING_0026', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0026 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLineHeightLetterSpacing/ComponentTextRicheditorLineHeightLetterSpacing0026")
      await Utils.sleep(2000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLineHeightLetterSpacing0026"));
      await richeditor.click();
      await Utils.sleep(1000);
      let getStyles = await driver.findComponent(ON.id("getStyles"));
      await getStyles.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0026.`);
      done();
    })

  })
}
