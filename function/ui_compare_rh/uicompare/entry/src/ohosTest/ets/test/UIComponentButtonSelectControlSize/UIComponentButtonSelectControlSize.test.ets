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
import { Component, Driver, ON } from '@ohos.UiTest'

/*
 * UIComponentButtonSelectControlSize
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

export default function UIComponentButtonSelectControlSize() {

  describe('UIComponentButtonSelectControlSize', () => {

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0020
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0020
     * @tc.desc   : select尺寸为NORMAL时，UX展示效果
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0020")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0020 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0030
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0030
     * @tc.desc   : select尺寸为NORMAL时，width设置大于66vp
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0030")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0030 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0040
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0040
     * @tc.desc   : select尺寸为NORMAL时，width设置小于66vp
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0040")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0040 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0050
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0050
     * @tc.desc   : select尺寸为NORMAL时，width异常值:undefined/null/-1/""
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0050")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0050 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0060
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0060
     * @tc.desc   : select尺寸为NORMAL时，width默认值是否与66vp一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0060")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0060 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0070
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0070
     * @tc.desc   : 尺寸NORMAL，Width不设置
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0070")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0070 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0080
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0080
     * @tc.desc   : select尺寸为NORMAL时，borderStyle四条边设置相同
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0080")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0080 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0090
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0090
     * @tc.desc   : select尺寸为NORMAL时，borderStyle四条边设置不同
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0090")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0090 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0100
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0100
     * @tc.desc   : select尺寸为NORMAL时borderstyle默认值是否与Solid一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0100")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0100 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0110
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0110
     * @tc.desc   : select尺寸为NORMAL时borderStyle不设置时是否和之前版本一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0110")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0110 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0120
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0120
     * @tc.desc   : select尺寸为NORMAL时,borderRadius正常值20
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0120")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0120 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0130
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0130
     * @tc.desc   : select尺寸为NORMAL时borderRadius大于高度的一半500
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0130")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0130 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0140
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0140
     * @tc.desc   : select尺寸为NORMAL时borderRadius设置异常值-1/10%
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0140")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0140 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0150
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0150
     * @tc.desc   : select尺寸为NORMAL时borderRadius设置异常值null/undefined
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0150")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0150 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0160
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0160
     * @tc.desc   : select尺寸为NORMAL，borderRadius默认值是否和20一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0160")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0160 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0170
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0170
     * @tc.desc   : select尺寸为NORMAL时,font正常值
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0170 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0170")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0170 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0180
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0180
     * @tc.desc   : select尺寸为NORMAL时，size异常值-10/null/undefined/10%
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0180 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0180")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0180 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0190
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0190
     * @tc.desc   : select尺寸为NORMAL时，size异常值10%
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0190 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0190")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0190 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0200
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0200
     * @tc.desc   : select尺寸为NORMAL时,weight异常值-10/10%
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0200 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0200")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0200 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0210
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0210
     * @tc.desc   : select尺寸为NORMAL时,weight异常值null/undefined
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0210 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0210")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0210 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0220
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0220
     * @tc.desc   : select尺寸为NORMAL时，font默认值是否与size:“16fp",weight: FontWeight.Medium一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0220 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0220")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0220 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0230
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0230
     * @tc.desc   : select尺寸为NORMAL时,number:0xffff00黄色
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0230 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0230")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0230 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0240
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0240
     * @tc.desc   : select尺寸为NORMAL时,color: pink
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0240 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0240")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0240 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0250
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0250
     * @tc.desc   : select尺寸为NORMAL时，string:#ff0000ff(蓝色)
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0250 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0250")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0250 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0260
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0260
     * @tc.desc   : select尺寸为NORMAL时，resource:#FF508131
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0260 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0260")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0260 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0270
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0270
     * @tc.desc   : select尺寸为NORMAL时fontColor异常值:undefned/null/0/""/2%
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0270 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0270")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0270 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0280
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0280
     * @tc.desc   : select尺寸为NORMAL时，fontColor异常值:-1
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0280 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0280")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0280 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0290
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0290
     * @tc.desc   : select尺寸为NORMAL时fontColor默认值是否和黑色一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0290 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0290")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0290 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0300
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0300
     * @tc.desc   : select尺寸为NORMAL时，fontColor不设置时是否和之前版本一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0300 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0300")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0300 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0310
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0310
     * @tc.desc   : select尺寸为NORMAL时,backgroundColor设为number:0xffff00黄色
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0310 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0310")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0310 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0320
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0320
     * @tc.desc   : select尺寸为NORMAL时,backgroundColor设为color:pink
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0320 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0320")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0320 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0330
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0330
     * @tc.desc   : select尺寸为NORMAL时,backgroundColor设为string:#ff0000ff(蓝色)
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0330 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0330")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0330 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0340
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0340
     * @tc.desc   : select尺寸为NORMAL时,backgroundColor设为resource:#FF508131
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0340 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0340")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0340 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0350
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0350
     * @tc.desc   : select尺寸为NORMAL时,backgroundColor设为异常值:undefned/null/-1/""/2%
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0350 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0350")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0350 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0360
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0360
     * @tc.desc   : select尺寸为NORMAL时backgroundColor设为异常值0/2%
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0360 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0360")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0360 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0370
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0370
     * @tc.desc   : select尺寸为NORMAL时.backgroundColor设为默认值是否和#E5000000一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0370 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0370")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0370 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0380
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0380
     * @tc.desc   : select尺寸为NORMAL时，backgroundColor不设置时是否和之前版本一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0380 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0380")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0380 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0390
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0390
     * @tc.desc   : select尺寸为NORMAL时.padding{ top: 8, left: 16, bottom:8, right: 16 }
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0390 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0390")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0390 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0400
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0400
     * @tc.desc   : select尺寸为NORMAL时,padding设为异常值-1
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0400 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0400")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0400 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0410
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0410
     * @tc.desc   : 尺寸为NORMAL时，padding设为异常值null
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0410 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0410")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0410 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0420
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0420
     * @tc.desc   : select尺寸为NORMAL时,padding默认值是否和padding{top: 8, left: 16, bottom: 8, right: 16}一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0420 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0420")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0420 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0430
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0430
     * @tc.desc   : select尺寸为NORMAL时.padding不设置时是否和之前版本一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0430 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0430")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0430 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0450
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0450
     * @tc.desc   : controlSize设为NORMAL时,press
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0450 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0450")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0450_001'));
      await button1.click();
      await Utils.sleep(1000);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0450_002'));
      await select.longClick();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0450 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0470
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0470
     * @tc.desc   : select尺寸为SMALL
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0470 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0470")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0470 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0480
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0480
     * @tc.desc   : select尺寸为SMALL时，width设大于66vp
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0480 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0480")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0480 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0490
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0490
     * @tc.desc   : select尺寸为SMALL时，width设置小于66vp
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0490 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0490")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0490 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0500
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0500
     * @tc.desc   : select尺寸为SMALL时，width设为异常值:undefined/null/-1/""
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0500 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0500")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0500 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0510
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0510
     * @tc.desc   : select尺寸为SMALL时，width默认值是否与66vp一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0510 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0510")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0510 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0520
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0520
     * @tc.desc   : controlSize设为small时.borderStyle四条边设置相同
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0520 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0520")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0520 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0530
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0530
     * @tc.desc   : controlSize设为small时borderStyle四条边设置不同
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0530 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0530")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0530 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0540
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0540
     * @tc.desc   : controlSize设为small时borderStyle默认值是否与Solid一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0540 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0540")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0540 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0550
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0550
     * @tc.desc   : 尺寸small时borderStyle不设置
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0550 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0550")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0550 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0560
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0560
     * @tc.desc   : controlSize设为small时borderRadius正常值20
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0560 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0560")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0560 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0570
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0570
     * @tc.desc   : controlSize设为small时,borderRadius大于高度的一半500
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0570 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0570")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0570 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0580
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0580
     * @tc.desc   : controlSize设为small时，borderRadius设置异常值-1/10%
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0580 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0580")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0580 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0590
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0590
     * @tc.desc   : controlSize设为small时borderRadius设置异常值null/undefined
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0590 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0590")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0590 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0600
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0600
     * @tc.desc   : controlSize设为small时borderRadius默认值是否和20一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0600 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0600")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0600 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0610
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0610
     * @tc.desc   : controlSize设为small时，font正常值
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0610 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0610")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0610 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0620
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0620
     * @tc.desc   : controlSize设为small时,size异常值-10/null/undefined/10%
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0620 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0620")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0620 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0630
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0630
     * @tc.desc   : controlSize设为small时，size异常值10%
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0630 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0630")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0630 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0640
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0640
     * @tc.desc   : controlSize设为smal时,weight 异常值-10/10%
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0640 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0640")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0640 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0650
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0650
     * @tc.desc   : controlSize设为small时，weight异常值null/undefined
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0650 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0650")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0650 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0660
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0660
     * @tc.desc   : controlSize设为small时font默认值是否与size:“16fp”，weight: FontWeight.Medium一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0660 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0660")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0660 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0670
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0670
     * @tc.desc   : controlSize设为small时，color设为number:#ffff00黄色
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0670 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0670")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0670 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0680
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0680
     * @tc.desc   : controlSize设为small时，color设为color: pink
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0680 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0680")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0680 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0690
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0690
     * @tc.desc   : controlSize设为small时，color设为string:#ff0000ff(蓝色)
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0690 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0690")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0690 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0700
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0700
     * @tc.desc   : controlSize设为small时，color设为resource:#FF508131
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0700 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0700")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0700 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0710
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0710
     * @tc.desc   : controlSize设为small时，color设为异常值:undefined/null/0/""/2%
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0710 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0710")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0710 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0720
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0720
     * @tc.desc   : controlsize设为small时,color设为异常值:-1
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0720 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0720")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0720 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0730
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0730
     * @tc.desc   : controlSize设为small时，color设为默认值是否和黑色一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0730', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0730 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0730")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0730 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0740
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0740
     * @tc.desc   : controlSize设为small时backgroundColor设为number:0xffff00黄色
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0740 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0740")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0740 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0750
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0750
     * @tc.desc   : controlSize设为small时,backGroundColor设为color:pink
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0750 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0750")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0750 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0760
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0760
     * @tc.desc   : backgroundColor设为string:#ff0000ff(蓝色)
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0760 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0760")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0760 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0770
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0770
     * @tc.desc   : controlSize设为small时,backGroundColor设为resource:#FF508131
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0770 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0770")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0770 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0780
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0780
     * @tc.desc   : controlSize设为small时backGroundColor设为异常值:undefined/null/-1/""/2%
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0780 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0780")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0780 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0790
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0790
     * @tc.desc   : controlSize设为small时,backGroundColor设为异常值0/2%
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0790 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0790")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0790 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0800
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0800
     * @tc.desc   : controlSize设为small时,backGroundColor不设置，默认值是否和#E5000000一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0800', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0800 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0800")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0800 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0810
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0810
     * @tc.desc   : controlSize设为small时,padding{ top: 8, left: 16, bottom:8. right: 16 }
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0810', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0810 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0810")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0810 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0820
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0820
     * @tc.desc   : controlSize设为small时padding设为异常值-1
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0820', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0820 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0820")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0820 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0830
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0830
     * @tc.desc   : controlSize设为small时padding设为异常值null/undefined
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0830 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0830")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0830 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0840
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0840
     * @tc.desc   : controlSize设为small时padding默认值是否和padding{ top: 8, left: 16, bottom: 8, right:16 }一致
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0840', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0840 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0840")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0840 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0860
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0860
     * @tc.desc   : controlSize设为small时，press
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0860', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0860 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0860")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0860_001'));
      await button1.click();
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0860_002'));
      await button2.click();
      await Utils.sleep(1000);
      let select: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0860_003'));
      await select.longClick();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0860 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0880
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0880
     * @tc.desc   : 文本长度>normal宽度:80
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0880', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0880 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0880")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0880_001'));
      await button1.click();
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0880_002'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0880 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0890
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0890
     * @tc.desc   : 文本长度大于smal小于normal:56
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0890', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0890 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0890")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0890_001'));
      await button1.click();
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0890_002'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0890 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0900
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0900
     * @tc.desc   : 文本长度小于small:20
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0900', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0900 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0900")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0900_001'));
      await button1.click();
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0900_002'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0900 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0910
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0910
     * @tc.desc   : 文本超长”你好我的朋友上午好早上好中午好晚上好晚安”
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0910', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0910 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0910")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0910_001'));
      await button1.click();
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0910_002'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0910 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0920
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0920
     * @tc.desc   : 容器宽度大于normal宽度:80
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0920', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0920 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0920")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0920_001'));
      await button1.click();
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0920_002'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0920 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0930
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0930
     * @tc.desc   : 容器宽度大于small小于normal:56
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0930', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0930 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0930")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0930_001'));
      await button1.click();
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0930_002'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0930 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0940
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0940
     * @tc.desc   : 容器宽度小于small:20
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0940', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0940 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0940")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0940_001'));
      await button1.click();
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0940_002'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0940 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0950
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0950
     * @tc.desc   : 不设置容器高度，文本高度>normal高度:font-size:100
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0950', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0950 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0950")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0950_001'));
      await button1.click();
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0950_002'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0950 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0960
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0960
     * @tc.desc   : 不设置容器高度，文本高度>normal高度:font-size:35
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0960', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0960 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0960")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0960_001'));
      await button1.click();
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0960_002'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0960 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0970
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0970
     * @tc.desc   : 不设置容器高度，文本高度<small高度:font-size:20
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0970', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0970 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0970")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0970_001'));
      await button1.click();
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0970_002'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0970 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0980
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0980
     * @tc.desc   : 容器高度大于normal高度:80
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0980', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0980 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0980")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0980_001'));
      await button1.click();
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0980_002'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0980 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0990
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0990
     * @tc.desc   : 容器高度大于small小于normal:35
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0990', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0990 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize0990")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0990_001'));
      await button1.click();
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize0990_002'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_0990 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_1000
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_1000
     * @tc.desc   : 容器高度小于small:20
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_1000', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_1000 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize1000")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize1000_001'));
      await button1.click();
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('UIComponentButtonSelectControlSize1000_002'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_1000 finish.`);
      done();
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_1010
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_1010
     * @tc.desc   : controlSize不设置
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_1010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_1010 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectControlSize/" +
        "UIComponentButtonSelectControlSize1010")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_CONTROLSIZE_1010 finish.`);
      done();
    })

  })
}
