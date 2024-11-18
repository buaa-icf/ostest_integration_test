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

import { afterEach, describe, expect, it } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON } from '@ohos.UiTest'

/*
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

export default function UIComponentPopupBoxPromptToastSequence() {

  describe('UIComponentPopupBoxPromptToastSequence', () => {


    /*
     * @tc.number    SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0020
     * @tc.name      SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0020
     * @tc.desc      The custom popup set is the generic showInSubWindow=false
     */
    it('SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxPromptToastSequence/UIComponentPopupBoxPromptToastSequence002");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxPromptToastSequence0020"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0020 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0150
     * @tc.name      SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0150
     * @tc.desc      The custom popup set is the generic showInSubWindow=false
     */
    it('SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxPromptToastSequence/UIComponentPopupBoxPromptToastSequence015");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxPromptToastSequence0151"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      let ButtonCom1 = await driver.findComponent(ON.id("UIComponentPopupBoxPromptToastSequence0150"));
      let pointButtonCenter1 = await ButtonCom1.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      await driver.click(pointButtonCenter1.x, pointButtonCenter1.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0150 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0080
     * @tc.name      SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0080
     * @tc.desc      The custom popup set is the generic showInSubWindow=false
     */
    it('SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxPromptToastSequence/UIComponentPopupBoxPromptToastSequence008");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxPromptToastSequence0080"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(4000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0080 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0140
     * @tc.name      SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0140
     * @tc.desc      The custom popup set is the generic showInSubWindow=false
     */
    it('SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxPromptToastSequence/UIComponentPopupBoxPromptToastSequence014");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxPromptToastSequence0140"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      let ButtonCom1 = await driver.findComponent(ON.id("UIComponentPopupBoxPromptToastSequence0141"));
      let pointButtonCenter1 = await ButtonCom1.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      await driver.click(pointButtonCenter1.x, pointButtonCenter1.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0140 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0030
     * @tc.name      SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0030
     * @tc.desc      The custom popup set is the generic showInSubWindow=false
     */
    it('SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxPromptToastSequence/UIComponentPopupBoxPromptToastSequence003");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxPromptToastSequence0030"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0030 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0040
     * @tc.name      SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0040
     * @tc.desc      The custom popup set is the generic showInSubWindow=false
     */
    it('SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxPromptToastSequence/UIComponentPopupBoxPromptToastSequence004");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxPromptToastSequence0040"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0040 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0070
     * @tc.name      SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0070
     * @tc.desc      The custom popup set is the generic showInSubWindow=false
     */
    it('SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxPromptToastSequence/UIComponentPopupBoxPromptToastSequence007");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxPromptToastSequence0070"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0070 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0090
     * @tc.name      SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0090
     * @tc.desc      The custom popup set is the generic showInSubWindow=false
     */
    it('SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxPromptToastSequence/UIComponentPopupBoxPromptToastSequence009");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxPromptToastSequence0091"));
      let ButtonCom1 = await driver.findComponent(ON.id("UIComponentPopupBoxPromptToastSequence0090"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      let pointButtonCenter1 = await ButtonCom1.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      await driver.click(pointButtonCenter1.x, pointButtonCenter1.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0090 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0050
     * @tc.name      SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0050
     * @tc.desc      The custom popup set is the generic showInSubWindow=false
     */
    it('SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxPromptToastSequence/UIComponentPopupBoxPromptToastSequence005");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxPromptToastSequence0050"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0050 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0060
     * @tc.name      SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0060
     * @tc.desc      The custom popup set is the generic showInSubWindow=false
     */
    it('SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxPromptToastSequence/UIComponentPopupBoxPromptToastSequence006");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxPromptToastSequence0060"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSEQUENCE_0060 finish.`);
      done();
    })
  })
}
