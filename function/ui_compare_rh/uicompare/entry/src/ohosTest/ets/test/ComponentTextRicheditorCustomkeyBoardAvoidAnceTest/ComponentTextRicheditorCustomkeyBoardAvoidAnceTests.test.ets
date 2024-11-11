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
 * SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE:CustomkeyBoardAvoidAnce相关用例
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

export default function ComponentTextRicheditorCustomkeyBoardAvoidAnceTests() {

  describe('ComponentTextRicheditorCustomkeyBoardAvoidAnceTests', () => {

    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0001
     *des:1、添加RichEditor组件位于页面底部
     2、点击RichEditor组件, 激活自定义键盘,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0001', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0001 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0001")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0001"));
      await richeditor.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0001.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0002
     *des:1、设置KeyboardOptions为 false
     2、添加RichEditor组件位于页面底部
     3、点击RichEditor组件,激活自定义键盘,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0002', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0002 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0002")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0002"));
      await richeditor.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0002.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0003
     *des:1、设置KeyboardOptions为 true,设置键盘避
     让方式为OFFSET
     2、添加RichEditor组件,输入超长文本
     3、分别点击文本不同位置，调出自定义键盘,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0003', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0003 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0003")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0003"));
      await richeditor.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0003.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0004
     *des:1、设置KeyboardOptions为 true,设置键盘避
     让方式为RESIZE
     2、添加RichEditor组件,输入超长文本
     3、分别点击文本不同位置，调出自定义键盘,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0004', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0004 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0004")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0004"));
      await richeditor.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0004.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0005
     *des:1、设置KeyboardOptions为 true, 设置键盘避
     让方式为OFFSET
     2、页面添加 Row组件(固定宽高)，添加
     RichEditor组件
     3、点击RichEditor组件, 调出自定义键盘,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0005', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0005 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0005")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0005"));
      await richeditor.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0005.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0006
     *des:1、设置KeyboardOptions为 true, 设置键盘避
     让方式为OFFSET
     2、页面添加 Row组件(百分比宽高)，添加
     RichEditor组件
     2、点击RichEditor组件,调出自定义键盘,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0006', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0006 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0006")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0006"));
      await richeditor.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0006.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0007
     *des:1、设置KeyboardOptions为 true, 设置键盘避
     让方式为RESIZE
     2、页面添加 Row组件(固定宽高) ，添加
     RichEditor组件
     3、点击RichEditor组件, 调出自定义键盘,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0007', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0007 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0007")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0007"));
      await richeditor.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0007.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0008
     *des:1、设置KeyboardOptions为 true, 设置键盘避
     让方式为RESIZE
     2、页面添加 Row组件(百分比宽高)，添加
     RichEditor组件
     3、点击RichEditor组件, 调出自定义键盘,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0008', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0008 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0008")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0008"));
      await richeditor.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0008.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0009
     *des:1、添加RichEditor组件位于页面顶部
     2、点击RichEditor组件,调出自定义键盘,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0009', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0009 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0009")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0009"));
      await richeditor.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0009.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0010
     *des:1、设置KeyboardOptions为 true, 设置键盘避
     让方式为OFFSET
     2、添加RichEditor组件, 在RichEditor上下
     方添加 row组件
     3、点击RichEditor组件, 调出自定义键盘,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0010 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0010")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0010"));
      await richeditor.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0010.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0011
     *des:1、设置KeyboardOptions为 true, 设置键盘避
     让方式为RESIZE
     2、添加RichEditor组件, 在RichEditor上下
     方添加 row组件
     3、点击RichEditor组件,调出自定义键盘,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0011', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0011 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0011")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0011"));
      await richeditor.click();
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0011.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0012
     *des:1、设置KeyboardOptions为 true,设置键盘避
     让方式为OFFSET
     2、页面添加多个RichEditor组件
     3、分别点击不同RichEditor组件，调出自定义
     键盘,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0012', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0012 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0012")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0012"));
      await richeditor.click();
      await Utils.sleep(1000);
      let richeditor1 = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0012_01"));
      await richeditor1.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0012.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0013
     *des:1、设置KeyboardOptions为 true, 设置键盘避
     让方式为RESIZE
     2、添加RichEditor组件, 在RichEditor上下
     方添加 row组件
     3、点击RichEditor组件,调出自定义键盘,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0013', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0013 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0013")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0013"));
      await richeditor.click();
      await Utils.sleep(1000);
      let richeditor1 = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0013_01"));
      await richeditor1.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0013.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0016
     *des:1、设置KeyboardOptions为 true,设置键盘避
     让方式为OFFSET
     2、页面添加RichEditor组件
     3、切换横屏, 点击RichEditor组件, 调出自定
     义键盘,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0016', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0016 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0016")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0016"));
      let change = await driver.findComponent(ON.id("changeScreen"));
      await change.click();
      await Utils.sleep(2000);
      let richeditor1 = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0016"));
      await richeditor1.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0016.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0017
     *des:1、设置KeyboardOptions为 true,设置键盘避
     让方式为RESIZE
     2、页面添加RichEditor组件
     3、切换横屏, 点击RichEditor组件, 调出自定
     义键盘,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0017', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0017 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0017")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0017"));
      await Utils.sleep(1000);
      let change = await driver.findComponent(ON.id("changeScreen"));
      await change.click();
      await Utils.sleep(2000);
      let richeditor1 = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0017"));
      await richeditor1.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0017.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0019
     *des:1、设置KeyboardOptions为 true
     2、页面添加RichEditor组件
     3、点击RichEditor组件,调出自定义键盘
     4、改变自定义键盘高度,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0019', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0019 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnce0019")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorCustomkeyBoardAvoidAnce0019"));
      await richeditor.click();
      await Utils.sleep(1000);
      let change = await driver.findComponent(ON.id("changeScreen"));
      await change.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMKEYBOARDAVOIDANCE_0019.`);
      done();
    })
  })
}
