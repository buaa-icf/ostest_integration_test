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
 * "SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0001":placeholder相关用例
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

export default function ComponentTextRicheditorPlaceholderTests() {

  describe('ComponentTextRicheditorPlaceholderTests', () => {

    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0001
     *des:1、添加RichEditor组件.
     2、接口中设置 placeholder的 value为‘’这是提示文本,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0001', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0001 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0001");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0001.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0002
     *des:"1、添加RichEditor组件,设置较小长宽
     2、接口中设置 placeholder的 value为‘前面章节介绍了如何创
     建一个自定义组件。该自定义组件内部红结构固定，仅与使用方
     进行数据传递。 Ark UI还提供了一种更轻量的VI元素复用机制
     ④vilder,④vilder所装饰的函数遵循 build()函数语法规则,
     开发者可以将重复使用的UI元素抽象成一个方法，在build方法
     里调用。’"
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0002', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0002 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0002");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0002.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0003
     *des:"1、添加RichEditor组件
     2、接口中设置 placeholder的 value为“”"
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0003', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0003 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0003");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0003.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0004
     *des:"1、添加RichEditor组件
     2、接口中设置 placeholder的 value为“”"
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0004', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0004 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0004");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0004.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0005
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 value为“回头看了附近的
     hfkdshf \ nhfkdf& ldfkklf \n^7#@32345 () --#999@“
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0005', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0005 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0005");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0005.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0006
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 value为正确资源类型例:
     $r( app.string.common)
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0006', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0006 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0006");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0006.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0007
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 value为正确资源类型例: $x(“
     app. media. startIcon)
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0007', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0007 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0007");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0007.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0008
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为“20gx”
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0008', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0008 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0008");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0008.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0009
     *des:1、添加RichEditor组件,设置较小长宽
     2、接口中设置 placeholder的 size为“100px“
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0009', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0009 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0009");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0009.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0010
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为‘10’
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0010 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0010");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0010`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0011
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为“23.40”
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0011', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0011 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0011");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0011`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0012
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为‘50fp’
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0012', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0012 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0012");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0012`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0013
     *des:1、添加RichEditor组件。
     2、接口中设置 placeholder的 size为‘50abedefg’
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0013', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0013 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0013");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0013`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0014
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为“50dp”
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0014', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0014 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0014");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0014`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0015
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为‘100%’
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0015', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0015 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0015");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0015`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0016
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为“上班 qwer$k\n”
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0016', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0016 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0016");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0016`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0017
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为“-1px“
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0017', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0017 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0017");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0017`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0018
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为“ Opx“
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0018', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0018 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0018");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0018`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0019
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为“0b1010”
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0019', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0019 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0019");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0019`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0020
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为20
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0020 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0020");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0020`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0021
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为-10
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0021', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0021 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0021");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0021`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0022
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为0b1010
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0022', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0022 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0022");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0022`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0023
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为23.40
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0023', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0023 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0023");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0023`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0024
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为0x22
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0024', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0024 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0024");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0024`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0025
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为0
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0025', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0025 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0025");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0025`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0026
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为$r(
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0026', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0026 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0026");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0026`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0027
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 size为$r(“ app. media. startIcon
     “)
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0027', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0027 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0027");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0027`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0028
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的FontStyle为FontStyle. Italic
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0028', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0028 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0028");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0028`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0029
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的FontStyle为FontStyle. Normal
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0029', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0029 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0029");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0029`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0030
     *des:1、添加RichEditor组件.
     2、接口中设置 placeholder的 weight为“900”
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0030 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0030");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0030`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0031
     *des:1、添加RichEditor组件.
     2、接口中设置 placeholder的 weight为“400”
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0031', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0031 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0031");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0031`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0032
     *des:1、添加RichEditor组件.
     2、接口中设置 placeholder的 weight为“100”
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0032', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0032 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0032");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0032`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0033
     *des:1、添加RichEditor组件.
     2、接口中设置 placeholder的 weight为“-1”
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0033', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0033 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0033");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0033`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0034
     *des:1、添加RichEditor组件.
     2、接口中设置 placeholder的 weight为“0”
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0034', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0034 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0034");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0034`);
      done();
    })

    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0035
     *des:1、添加RichEditor组件.
     2、接口中设置 placeholder的 weight为“1000”
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0035', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0035 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0035");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0035`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0036
     *des:1、添加RichEditor组件.
     2、接口中设置 placeholder的 weight为“901”
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0036', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0036 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0036");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0036`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0037
     *des:1、添加RichEditor组件.
     2、接口中设置 placeholder的 weight为“100.6”
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0037', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0037 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0037");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0037`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0038
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为“0b1100100“
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0038', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0038 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0038");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0038`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0039
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为“ abedefg”
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0039', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0039 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0039");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0039`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0040
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为900
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0040 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0040");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0040`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0041
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为400
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0041', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0041 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0041");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0041`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0042
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为100
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0042', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0042 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0042");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0042`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0043
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为0b1100100
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0043', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0043 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0043");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0043`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0044
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为-100
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0044', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0044 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0044");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0044`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0045
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为0
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0045', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0045 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0045");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0045`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0046
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为1000
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0046', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0046 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0046");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0046`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0047
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为99
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0047', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0047 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0047");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0047`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0048
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为901
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0048', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0048 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0048");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0048`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0049
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为900.6
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0049', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0049 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0049");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0049`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0050
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为100.6
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0050 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0050");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0050`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0051
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为101
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0051', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0051 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0051");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0051`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0052
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为499.9
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0052', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0052 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0052");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0052`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0053
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为FontWeight. Lighter
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0053', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0053 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0053");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0053`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0054
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为FontWeight. Normal
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0054', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0054 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0054");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0054`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0055
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为FontWeight.Regular
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0055', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0055 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0055");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0055`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0056
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为FontWeight. Medium
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0056', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0056 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0056");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0056`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0057
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为FontWeight. Bold
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0057', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0057 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0057");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0057`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0058
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 weight为FontWeight. Bolder
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0058', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0058 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0058");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0058`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0059
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 family为“HarmonyOS Sans“
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0059', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0059 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0059");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0059`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0060
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 family为‘ abedefg’
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0060 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0060");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0060`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0061
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 family为$r(“
     app. string mediunFanilyNane“)
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0061', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0061 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0061");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0061`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0062
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 family为$r(“
     app. media startIcon“)
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0062', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0062 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0062");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0062`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0063
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的fontColor为 Color. Orange
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0063', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0063 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0063");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0063`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0064
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的fontColor为0x0000ff
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0064', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0064 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0064");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0064`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0065
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的fontColor为 Oxffffffeeeee
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0065', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0065 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0065");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0065`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0066
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的fontColor为10000
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0066', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0066 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0066");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0066`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0067
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的fontColor为10000.5
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0067', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0067 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0067");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0067`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0068
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的fontColor为-15
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0068', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0068 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0068");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0068`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0069
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的fontColor为“#00ffff“
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0069', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0069 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0069");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0069`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0070
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的fontColor为“#ffffff00“
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0070 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0070");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0070`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0071
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的fontColor为“ rgb(255.0.255)“
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0071', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0071 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0071");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0071`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0072
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的fontColor为“ rgba(0,0,255,0.5)
     “
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0072', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0072 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0072");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0072`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0073
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的fontColor为‘#0cccccc“
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0073', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0073 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0073");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0073`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0074
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的fontColor为“ rgba(255,0,255,2)
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0074', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0074 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0074");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0074`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0075
     *des:1、添加RichEditor组件.
     2、接口中设置 placeholder的fontColor为“ rgb(255,0,300)“
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0075', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0075 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0075");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0075`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0076
     *des:1、添加RichEditor组件
     2、接口中设置 placeholdar的fontColor为“# abcdefg“
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0076', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0076 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0076");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0076`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0077
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的fontColor为$r(“
     app. color. color“)
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0077', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0077 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0077");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0077`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0078
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的fontColor为$r(“
     app. media. startIcon“)
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0078', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0078 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0078");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0078`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0079
     *des:"1、添加RichEditor组件
     2、添加 button动态改变 font- size, font- weight, font-
     style. font- family, fontcolor, value
     3、单次点击 button"
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0079', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0079 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0079");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0079'))
      await Utils.sleep(1000);
      let changeBtn = await driver.findComponent(ON.id('changeFeature'))
      await changeBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0079`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0079_932
     *des:"1、添加RichEditor组件
     2、添加 button动态改变 font- size, font- weight, font-
     style. font- family, fontcolor, value
     3、单次点击 button"
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0079_932', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0079 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0079_932");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0079_932'))
      await Utils.sleep(1000);
      let changeBtn = await driver.findComponent(ON.id('changeFeature'))
      await changeBtn.click();
      await Utils.sleep(1000);
      await rich.longClick();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0079_932`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0080
     *des:1、添加RichEditor组件
     2、添加 button动态改变 font- size: font- weight, font-
     style. font- family, fontcolor, value
     3、多次连续点击 button
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0080 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0080");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0080'))
      await Utils.sleep(1000);
      let changeBtn = await driver.findComponent(ON.id('changeFeature'))
      await changeBtn.click();
      await Utils.sleep(1000);
      await changeBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0080`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0081
     *des:1、添加RichEditor组件
     2、设置 value为“这是提示”,不设置 font
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0081', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0081 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0081");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0081`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0082
     *des:1、添加RichEditor组件
     2、自定义水印内容
     3:点击输入框，使输入框获焦
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0082', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0082 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0082");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0082'));
      await Utils.sleep(1000);
      let changeText = await driver.findComponent(ON.id('change'));
      changeText.click();
      await Utils.sleep(1000);
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
      await rich.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0082`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0083
     *des:1、添加RichEditor组件
     2、自定义水印内容
     3、使用鼠标， 使输入框获焦
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0083', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0083 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0083");
      await Utils.sleep(1000);
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0083'));
      await Utils.sleep(1000);
      let changeText = await driver.findComponent(ON.id('change'));
      await changeText.click();
      await Utils.sleep(1000);
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
      let ponit = await rich.getBoundsCenter();
      await driver.click( ponit.x, ponit.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0083`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0084
     *des:1、添加RichEditor组件
     2、自定义水印内容
     3、使用键盘输入内容
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0084', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0084 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0084");
      await Utils.sleep(1000);
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0084'));
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
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
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0084`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0085
     *des:1、添加RichEditor组件
     2、自定义水印内容
     3、长按光标粘贴输入内容
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0085', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0085 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0085");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0085'));
      let changeText = await driver.findComponent(ON.id('change'));
      await changeText.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await changeText.click();
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(1000);
      let copy = await driver.findComponent(ON.text('复制'));
      await copy.click();
      await Utils.sleep(1000);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0085'));
      let ponit = await rich1.getBoundsCenter();
      await driver.click( ponit.x, ponit.y);
      await Utils.sleep(100);
      await driver.longClick( ponit.x, ponit.y);
      await Utils.sleep(100);
      let paste = await driver.findComponent(ON.text('粘贴'));
      await paste.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0085`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0086
     *des:1、添加RichEditor组件
     2、自定义水印内容
     3、拖拽输入内容
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0086', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0086 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0086");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0086'));
      let changeText = await driver.findComponent(ON.id('change'));
      await changeText.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await changeText.click();
      await Utils.sleep(100);
      let selectAll = await driver.findComponent(ON.text('全选'));
      await selectAll?.click();
      await Utils.sleep(100);
      await changeText.dragTo(rich);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(2000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0086`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0087
     *des:1、添加RichEditor组件
     2、自定义水印内容
     3、输入内容后键盘清除全部
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0087', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0087 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0087");
      await Utils.sleep(1000);
      let changeText = await driver.findComponent(ON.id('change'));
      await changeText.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0087'));
      let ponit = await rich1.getBoundsCenter();
      await driver.click( ponit.x, ponit.y);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_F);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_F);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0087`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0088
     *des:1、添加RichEditor组件
     2、自定义水印内容
     3、输入内容
     4、键盘改变光标位置后再清除光标前内容
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0088', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0088 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0088");
      await Utils.sleep(1000);
      let changeText = await driver.findComponent(ON.id('change'));
      await changeText.click();
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_V);
      await Utils.sleep(100);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0088'));
      let ponit = await rich1.getBoundsCenter();
      await driver.click( ponit.x, ponit.y);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_F);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_F);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_F);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_F);
      await Utils.sleep(100);
      await driver.triggerKey(2014);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_DEL);
      await Utils.sleep(100);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0088`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0089
     *des:1、添加RichEditor组件
     2、自定义水印内容
     3、输入内容后键盘清除全部
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0089', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0089 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0089");
      await Utils.sleep(1000);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0089'));
      let ponit = await rich1.getBoundsCenter();
      await driver.doubleClick( ponit.x, ponit.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0089`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0090
     *des:1、添加RichEditor组件
     2、自定义水印内容
     3、长按水印
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0090 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0090");
      await Utils.sleep(1000);
      let rich1 = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0090'));
      let ponit = await rich1.getBoundsCenter();
      await driver.longClick( ponit.x, ponit.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0090`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0091
     *des:1、添加RichEditor组件
     2、RichEditor( this. options)
     . onReady(() =>{}中预置addTextSpan,
     addImageSpan, addSymbolSpan, addBuilderSpan
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0091', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0091 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0091");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0091`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0092
     *des:1、添加RichEditor组件
     2、自定义水印内容
     3、RichEditor( this. options)
     . onReady(()=>{}中预置addTextSpan,
     addInageSpan, addSymbolSpan, addBuilderSpan
     3、键盘删除预置 span
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0092', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0092 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0092");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0092'));
      let ponit = await rich.getBoundsCenter();
      await driver.click( ponit.x, ponit.y);
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
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0092`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0093
     *des:1、添加RichEditor组件
     2、自定义水印内容
     3、RichEditor( this. options)
     . onReady(() =>{}中预置addTextSpan,
     addImageSpan, addSymbolSpan, addBuilderSpan
     4、按钮删除全部预置 span(deleteSpans())
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0093', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0093 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0093");
      await Utils.sleep(1000);
      let deleteBtn = await driver.findComponent(ON.id('delete'));
      await deleteBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0093`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0094
     *des:1、添加RichEditor组件
     2、自定义水印内容
     3、通过按钮添加、删除addTextSpan, addImageSpan,
     addSymbolSpan, addBuilderSpan
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0094', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0094 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0094");
      await Utils.sleep(1000);
      let addBtn = await driver.findComponent(ON.id('add'));
      await addBtn.click();
      await Utils.sleep(1000);
      let deleteBtn = await driver.findComponent(ON.id('delete'));
      await deleteBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0094`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0095
     *des:1、添加RichEditor组件,设置百分比宽高
     2、自定义水印内容，设置长文本
     3、切换横竖屏
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0095', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0095 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0095");
      await Utils.sleep(1000);
      let addBtn = await driver.findComponent(ON.id('setContent'));
      await addBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0095`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0097
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 value为“’这是提示文本”
     3、设置 update Paragraph Style中 textAlim: TextAlim. End
     4、预置 span，内容水平对齐尾部，删除 span观察水印位置
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0097', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0097 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0097");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0097'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(2015);
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
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0097`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0098
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 value为“”这是提示文本
     3、设置. align( Aligment. BottomStart)
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0098', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0098 start.`);
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0098");
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0098`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0099
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 value为‘’这是提示文本
     3、设置输入内容向右空白缩进
     4、输入内容后，删除
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0099', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0099 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder0099");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder0099'));
      await rich.click();
      await Utils.sleep(1000);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(2050);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_F);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_F);
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
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_0099`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00100
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 value为‘’这是提示文本
     3、设置 button增加/减小文本宽/高度
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00100 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder00100");
      await Utils.sleep(1000);
      let changeBtn = await driver.findComponent(ON.id('changeFeature'));
      await changeBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00100`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00101
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 value为‘’这是提示文本
     3、设置 button增加/减小内边距属性 padding
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00101', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00101 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder00101");
      await Utils.sleep(1000);
      let changeBtn = await driver.findComponent(ON.id('changeFeature'));
      await changeBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00101`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00102
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 value为‘’这是提示文本
     3、设置 button增加/减小外边距属性 margin
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00102', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00102 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder00102");
      await Utils.sleep(1000);
      let changeBtn = await driver.findComponent(ON.id('changeFeature'));
      await changeBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00102`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00103
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 value为‘’这是提示文本。
     3、设置 button增加/减小在父容器主轴方向上的基准尺寸
     flexBasis
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00103', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00103 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder00103");
      await Utils.sleep(1000);
      let changeBtn = await driver.findComponent(ON.id('changeFeature'));
      await changeBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00103`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00104
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 value为‘’这是提示文本
     3、设置 button增加/减小水印文本 size大小
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00104', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00104 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder00104");
      await Utils.sleep(1000);
      let changeBtn = await driver.findComponent(ON.id('changeFeature'));
      await changeBtn.click();
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder00104'));
      await rich.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00104`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00105
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 value为‘’这是提示文本
     3、设置 button改变水印文本位置
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00105', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00105 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder00105");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder00105'));
      await rich.click();
      await Utils.sleep(1000);
      let changeBtn = await driver.findComponent(ON.id('changeFeature'));
      await changeBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00105`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00103_040
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 value为‘’这是提示文本_
     3、输入多行文本后，上划文本至底部， 使用 deletespan清空内
     容
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00103_040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00103_040 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder00103_040");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder00103_040'));
      await rich.click();
      await Utils.sleep(1000);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_F);
      await Utils.sleep(100);
      await driver.triggerKey(KeyCode.KEYCODE_F);
      await Utils.sleep(100);
      let changeBtn = await driver.findComponent(ON.id('change'));
      await changeBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00103_040`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00103_040_934
     *des:1、添加RichEditor组件
     2、接口中设置 placeholder的 value为。”这是提示文本_
     3、从其他组件拖拽文本，至水印内容处，移动拖拽文本不松手
     ,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00103_040_934', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00103_040_934 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholder00103_040_934");
      await Utils.sleep(1000);
      let rich = await driver.findComponent(ON.id('ComponentTextRicheditorPlaceholder00103_040_934'));
      let textArea = await driver.findComponent(ON.id('TextArea'));
      await textArea.click();
      await Utils.sleep(1000);
      await textArea.click()
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'))
      await selectAll?.click();
      await Utils.sleep(1000);
      await textArea.dragTo(textArea)
      await Utils.sleep(1000);
      await rich.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PLACEHOLDER_00103_040_934`);
      done();
    })
  })
}
