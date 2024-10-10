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
 * SUB_ACE_UI_RICHEDITOR_AI_0010:AI相关用例
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

export default function ComponentTextRicheditorAITests() {

  describe('ComponentTextRicheditorAITests', () => {

    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0010
     *des:1、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     2、点击蓝色识别信息,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0010 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0010");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0010'));
      await rich.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(1000);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorAI0010'));
      await rich1.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0010.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0020
     *des:1、安装测试 demo
     2、输入混合文本，包含：邮箱、地址、电话
     、网址这四个信息内容,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0020 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0020");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0020'));
      await rich.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0020.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0030
     *des:"1、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     2、点击“关闭AI分析”按钮(设置
     enableDataDetector为 false)"
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0030 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0030");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0030'));
      await rich.click();
      await Utils.sleep(1000);
      let open = await driver.findComponent(ON.id('open'));
      await open.click();
      await Utils.sleep(1000);
      let close = await driver.findComponent(ON.id('close'));
      await close.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0030.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0040
     *des:1、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     2、点击“识别： 电话号码”按钮(设置
     dataDetector{ types:
     [TextDataDetectorType. PHONE_NUMBER]})
     3、点击“识别：网址”按钮(设置
     dataDetector{ types:
     [TextDataDetectorType. URL]})
     4、点击“识别：邮箱”按钮(设置
     dataDetector{ types:
     [TextDataDetectorType. EMAIL]})
     5、点击“识别： 地址”按钮(设置
     dataDetector{ types:
     [TextDataDetectorType. ADDRESS]})
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0040 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0040");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0040'));
      await rich.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(1000);
      let tel = await driver.findComponent(ON.id('tel'));
      await tel.click();
      await Utils.sleep(1000);
      let url = await driver.findComponent(ON.id('url'));
      await url.click();
      await Utils.sleep(1000);
      let email = await driver.findComponent(ON.id('email'));
      await email.click();
      await Utils.sleep(1000);
      let addr = await driver.findComponent(ON.id('addr'));
      await addr.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0040.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0050
     *des:1、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     2、点击“识别： 电话号码、网址”按钮(设置
     dataDetector{ types:
     [ToxtDataDetectorType. PHONE_NUNBER,
     ToxtDataDetectorType. URL]})
     3、点击“识别： 电话、网址、邮箱”按钮(设
     置dataDetector{ types:
     [TextDataDetectorType. PHONE_NUMBER,
     TextDataDetectorType. URL,
     TextDataDetectorType. EMAIL]})
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0050 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0050");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0050'));
      await rich.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(1000);
      let url = await driver.findComponent(ON.id('url'));
      await url.click();
      await Utils.sleep(1000);
      let email = await driver.findComponent(ON.id('email'));
      await email.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0050.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0060
     *des:1、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     2、点击“识别： 电话、网址、邮箱、地址”按钮(设置dataDetector{ types:
     [TextDataDetectorType. PHONE_NUNBER,
     TextDataDetectorType. URL,
     TextDataDetectorType. EMAIL,
     TextDataDetectorType. ADDRESS]})
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0060 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0060");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0060'));
      await rich.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(1000);
      let url = await driver.findComponent(ON.id('url'));
      await url.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0060.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0070
     *des:1、点击“关闭AI分析”按钮(设置
     enableDataDetector为 false).
     2、点击“识别： 电话、网址、邮箱、地址”按
     钮(设置dataDetector{ types:
     [TextDataDetectorType. PHONE_NUNBER,
     TextDataDetectorType. URL,
     TextDataDetectorType. EMAIL,
     TextDataDetectorType. ADDRESS]})
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0070 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0070");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0070'));
      await rich.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(1000);
      let url = await driver.findComponent(ON.id('url'));
      await url.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0070.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0080
     *des:1、点击“识别： 电话、网址、邮箱、地址”按
     钮(设置dataDetector{ types:
     [ToxtDataDetectorType. PHONE_NUNBER,
     TextDataDetectorType. URL,
     TextDataDetectorType. EMAIL,
     TextDataDetectorType. ADDRESS]})
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0080 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0080");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0080'));
      await rich.click();
      await Utils.sleep(1000);
      let url = await driver.findComponent(ON.id('url'));
      await url.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0080.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0090
     *des:1、检查enableDataDetector和
     dataDetectorConfig接口文档说明
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0090 start.`);
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0090");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0090.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0100
     *des:1、点击“上划线”按钮(设置 decoration值为
     Overline)
     2、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0100 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0100");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0100'));
      await rich.click();
      await Utils.sleep(1000);
      let setStyle = await driver.findComponent(ON.id('setStyle'));
      await setStyle.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0100.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0110
     *des:1、点击“上划线”按钮(设置 decoration值为
     LineThrough)
     2、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0110 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0110");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0110'));
      await rich.click();
      await Utils.sleep(1000);
      let setStyle = await driver.findComponent(ON.id('setStyle'));
      await setStyle.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0110.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0120
     *des:1、点击“下划线”按钮(设置 decoration值为
     Underline)
     2、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0120 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0120");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0120'));
      await rich.click();
      await Utils.sleep(1000);
      let setStyle = await driver.findComponent(ON.id('setStyle'));
      await setStyle.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0120.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0130
     *des:1、点击“字体颜色：红色”按钮(设置
     fontColor值为 Red).
     2、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0130 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0130");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0130'));
      await rich.click();
      await Utils.sleep(1000);
      let setStyle = await driver.findComponent(ON.id('setStyle'));
      await setStyle.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0130.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0140
     *des:1、点击“字体大小:30”按钮(设置fontSize|
     值为30)
     2、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0140 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0140");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0140'));
      await rich.click();
      await Utils.sleep(1000);
      let setStyle = await driver.findComponent(ON.id('setStyle'));
      await setStyle.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0140.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0150
     *des:1、点击“字体样式：斜体”按钮(设置
     fontStyle值为 Italic)
     2、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0150 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0150");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0150'));
      await rich.click();
      await Utils.sleep(1000);
      let setStyle = await driver.findComponent(ON.id('setStyle'));
      await setStyle.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0150.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0160
     *des:1、点击“字体宽度：细”按钮(设置
     fontVeight值为 Lighter)
     2、点击“开启AI分析”按钮(设置
     enableDataDetector为 true?
     3、点击“字体宽度： 正常”按钮(设置
     fontVeight值为 Normal)
     3、点击“字体宽度：粗”按钮(设置
     fontVeight值为 Bolder)
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0160 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0160");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0160'));
      await rich.click();
      await Utils.sleep(1000);
      let setStyle = await driver.findComponent(ON.id('setStyle'));
      await setStyle.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(1000);
      let setStyle1 = await driver.findComponent(ON.id('setStyle1'));
      await setStyle1.click();
      await Utils.sleep(1000);
      let setStyle2 = await driver.findComponent(ON.id('setStyle2'));
      await setStyle2.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0160.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0170
     *des:1、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     2、输入文本
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0170 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0170");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0170'));
      await rich.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_1);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_9);
      await Utils.sleep(100);
      let close = await driver.findComponent(ON.id('close'));
      await close.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0170.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0180
     *des:1、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     2、删除文本
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0180 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0180");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0180'));
      await rich.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      let close = await driver.findComponent(ON.id('close'));
      await close.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0180.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0190
     *des:1、点击“插入 Span内容”(设置 Span内包含邮
     箱、地址、电话、网址这四个信息内容)
     2、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0190 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0190");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0190'));
      await rich.click();
      await Utils.sleep(1000);
      let insert = await driver.findComponent(ON.id('insert'));
      await insert.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0190.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0200
     *des:1、在邮箱、地址、电话、网址信息处点击“插
     入图片”(设置InageSpan)
     2、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0200 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0200");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0200'));
      await rich.click();
      await Utils.sleep(1000);
      let insert = await driver.findComponent(ON.id('insert'));
      await insert.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0200.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0210
     *des:1、点击“开启AI分析”按钮(设置
     enableDataDetector为 true?
     2、点击“减小文本框宽度”按钮(设置 vidth-
     -)
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0210 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0210");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0210'));
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(1000);
      let setWidth = await driver.findComponent(ON.id('setWidth'));
      await setWidth.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0210.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0220
     *des:1、点击“开启AI分析”按钮(设置
     enableDataDetector为 true?
     2、在邮箱、地址、电话、网址信息中手动换行
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0220 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0220");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0220'));
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(2012);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0220.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0230
     *des:1、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     2、滑动页面
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0230 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0230");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0230'));
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(1000);
      let ponit = await rich.getBoundsCenter();
      await driver.mouseScroll({x:ponit.x, y:ponit.y}, false, 10, 2072,20)
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0230.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0240
     *des:1、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     2、滑动页面，使邮箱、地址、电话、网址等信
     息在组件底部或顶部截断显示
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0240 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0240");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0240'));
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(1000);
      let ponit = await rich.getBoundsCenter();
      await driver.mouseScroll({x:ponit.x, y:ponit.y}, false, 10, 2072,20)
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0240.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0250
     *des:1、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0250 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0250");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0250'));
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0250.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0260
     *des:1、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     2、点击蓝色识别信息
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0260 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0260");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0260'));
      await rich.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      await Utils.sleep(1000);
      await driver.triggerKey(2012);
      await Utils.sleep(100);
      await driver.triggerKey(2012);
      await Utils.sleep(100);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorAI0260'));
      await rich1.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0260.`);
      done();
    })

    /**
     * NO.SUB_ACE_UI_RICHEDITOR_AI_0270
     *des:1、点击“开启AI分析”按钮(设置
     enableDataDetector为 true)
     2、点击“复制类型: NONE”按钮(设置
     CopyOptions为 None)
     ,验证效果
     */
    it('SUB_ACE_UI_RICHEDITOR_AI_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0270 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorAITest/ComponentTextRicheditorAI0270");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorAI0270'));
      await rich.click();
      await Utils.sleep(1000);
      let AI = await driver.findComponent(ON.id('AI'));
      await AI.click();
      let copy = await driver.findComponent(ON.id('copy'));
      await copy.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_RICHEDITOR_AI_0270.`);
      done();
    })
  })
}
