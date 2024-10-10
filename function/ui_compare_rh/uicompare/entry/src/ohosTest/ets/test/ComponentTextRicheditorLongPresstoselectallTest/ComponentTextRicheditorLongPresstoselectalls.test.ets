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
 * SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0001:长按选中相关用例
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

export default function ComponentTextRicheditorLongPresstoselectalls() {

  describe('ComponentTextRicheditorLongPresstoselectalls', () => {

    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0001
     *des:1、设置onLongPress回调函数里setSelection(1,2,{menuPolicy: MenuPolicy.SHOW })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0001', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0001 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0001")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0001"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0001.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0002
     *des:1、设置onLongPress回调函数里setSelection(1,2,{menuPolicy: MenuPolicy.HIDE })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0002', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0002 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0002")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0002"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0002.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0003
     *des:1、设置onLongPress回调函数里setSelection(1,2,{menuPolicy: MenuPolicy.DEFAULT })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0003', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0003 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0003")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0003"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0003.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0004
     *des:1、设置onLongPress回调函数里setSeleotion(1,2,{menuPolicy: SHOW })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0004', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0004 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0004")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0004"));
      await richeditor.click();
      await Utils.sleep(1000)
      await richeditor.click();
      await Utils.sleep(1000)
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0004.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0005
     *des:1、设置onLongPress回调函数里setSelection(1,2,{menvuPolicy: SHOW })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0005', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0005 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0005")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0005"));
      await richeditor.click();
      await Utils.sleep(1000)
      await richeditor.click();
      await Utils.sleep(1000)
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0005.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0006
     *des:1、设置onLongPress回调函数里setSelection(1, 2,{menuPolicy: SHOW })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0006', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0006 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0006")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0006"));
      await richeditor.click();
      await Utils.sleep(1000)
      await richeditor.click();
      await Utils.sleep(1000)
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0006.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0007
     *des:1、设置onLongPress回调函数里setSelection(1, 2,{menuPolicy: SHOW })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0007', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0006 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0007")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0007"));
      await richeditor.click();
      await Utils.sleep(1000)
      await richeditor.click();
      await Utils.sleep(1000)
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0007.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0008
     *des:1、设置onLongPress回调函数里setSelection(1,2,{menuPolicy: MenuPolicy.HIDE })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0008', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0008 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0008")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0008"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0008.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0009
     *des:1、设置onLongPress回调函数里setSelection(-1,0,{menuPolicy: MenuPolicy.SHOW })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0009', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0009 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0009")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0009"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0009.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0010
     *des:1、设置onLongPress回调函数里setSelection(2,1,{menuPolicy: MenuPolicy.SHOW })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0010', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0010 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0010")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0010"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0010.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0011
     *des:1、设置onLongPress回调函数里setSelection(1, 1,(menuPolicy: SHOW ))
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0011', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0011 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0011")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0011"));
      await richeditor.click();
      await Utils.sleep(1000)
      await richeditor.click();
      await Utils.sleep(1000)
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0011.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0012
     *des:1、设置onLongPress回调函数里setSelection(1, 1,{menuPolicy: HIDE })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0012', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0012 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0012")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0012"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0012.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0013
     *des:1、设置onLongPress回调函数里setSelection(1,2,
     {menuPolicy:-1 })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0013', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0013 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0013")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0013"));
      await richeditor.click();
      await Utils.sleep(1000)
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0012.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0014
     *des:1、设置onLongPress回调函数里setSelection(1, 2,
     (menuPolicy: 3 })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0014', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0014 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0014")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0014"));
      await richeditor.click();
      await Utils.sleep(1000)
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0014.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0015
     *des:1、设置onLongPress回调函数里setSelection(1, 2,
     (menyPolicy: undefined })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0015', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0015 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0015")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0015"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0015.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0016
     *des:1、设置onLongPress回调函数里setSelection(-1,1000,
     {menvaPolicy: HIDE })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0016', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0016 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0016")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0016"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0016.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0017
     *des:1、设置onLongPress回调函数里setSelection(-1, 1000,
     {menuPolicy: NEVER })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0017', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0017 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0017")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0017"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0017.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0017_157
     *des:1、设置onLongPress回调函数里setSelection(-1, 0.
     {menuPolicy: SHOW })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0017_157', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0017_157 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0017_157")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0017_157"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await richeditor.click();
      await Utils.sleep(1000)
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0017_157.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0017_157_029
     *des:1、设置onLongPress回调函数里setSeleotion(2, 1,
     {menuPolicy: HIDE})
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0017_157_029', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0017_157_029 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0017_157_029")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0017_157_029"));
      await richeditor.click();
      await Utils.sleep(1000)
      await richeditor.click();
      await Utils.sleep(1000)
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0017_157_029.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0017_429
     *des:1、设置onLongPress回调函数里setSelection(-1, -1,
     {menuPolicy: default })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0017_429', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0017_429 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0017_429")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0017_429"));
      await richeditor.click();
      await Utils.sleep(1000)
      await richeditor.click();
      await Utils.sleep(1000)
      let selectAll = await driver.findComponent(ON.text('全选'))
      await selectAll?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0017_429.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0017_429_005
     *des:1、设置onLongPress回调函数里setSelection(-1, -1,
     {menuPolicy: default })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0017_429_005', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0017_429_005 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0017_429_005")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0017_429_005"));
      await richeditor.click();
      await Utils.sleep(1000)
      await richeditor.click();
      await Utils.sleep(1000)
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0017_429_005.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0018
     *des:1、设置onLongPress回调函数里setSelection(-1, -1,
     {menuPolicy: SHOW })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0018', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0018 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0018")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0018"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0018.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0019
     *des:1、设置onLongPress回调函数里setSelection(-1, -1,
     {menuPolicy: SHOW })
     2、长按富文本内任意位置,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0019', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0019 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0019")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0019"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0019.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0020
     *des:1、设置onLongPress回调函数里setSelection(-1, -1,
     {menuPolicy: ALWAYS })
     2、长按富文本内任意位置，再拖动手柄,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0020', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0020 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0020")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0020"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(1000);
      await richeditor.dragTo(richeditor);
      await Utils.sleep(2000)
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0020.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0021
     *des:1、设置onLongPress回调函数里setSelection(1,2,
     {menuPolicy: never })
     2、长按富文本内任意位置触发接口调用
     3、双击选区外其他文字内容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0021', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0021 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0021")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0021"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(1000);
      await richeditor.dragTo(richeditor);
      let richeditor1 = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0021"));
      await richeditor1.click();
      await Utils.sleep(1000);
      await richeditor1.click();
      await Utils.sleep(1000);
      await richeditor1.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0021.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0022
     *des:1、设置onLongPress回调函数里setSelection(-1, -1,
     {menuPolicy: default })
     2、长按富文本内任意位置，再拖动手柄容,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LONGPRESSTOSELECTAIL_0022', 0, async (done: Function) => {
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0022 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectall0022")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0022"));
      await richeditor.click();
      await Utils.sleep(1000)
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(1000);
      let richeditor1 = await driver.findComponent(ON.id("ComponentTextRicheditorLongPresstoselectall0022"));
      await richeditor1.click();
      await Utils.sleep(1000)
      await richeditor1.click();
      await Utils.sleep(1000)
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ComponentTextRicheditorLongPresstoselectall0022.`);
      done();
    })
  })
}
