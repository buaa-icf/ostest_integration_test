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
import { KeyCode } from '@ohos.multimodalInput.keyCode'
import { MouseButton } from '@kit.TestKit'

/*
 * fontfeatures cases
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

export default function ComponentTextRicheditorFontfeatures() {

  describe('ComponentTextRicheditorFontfeatures', () => {

    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0001
     *des:设置fontStyle 属性为FontStyle.Normal,验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0001', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0001 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0001 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0002
     *des:设置fontFeature 属性为“ sups ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0002', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0002 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0002 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0003
     *des:设置fontFeature 属性为“ sups ,0"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0003', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0003 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0003 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0004
     *des:设置fontFeature 属性为“ sups ,1"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0004', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0004 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0004 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0005
     *des:设置fontFeature 属性为“ sups ,0ff"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0005', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0005 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0005 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0006
     *des:设置fontFeature 属性为“ subs ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0006', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0006 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0006 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0007
     *des:设置fontFeature 属性为“ sinf ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0007', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0007 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0007 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0008
     *des:设置fontFeature 属性为“ numr ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0008', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0008 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0008 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0009
     *des:设置fontFeature 属性为“ dnom ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0009', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0009 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0009 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0010
     *des:设置fontFeature 属性为“ locl ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0010 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0010 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0011
     *des:设置fontFeature 属性为“ tnum ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0011', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0011 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0011 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0012
     *des:设置fontFeature 属性为“ pnum ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0012', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0012 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0012 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0013
     *des:设置fontFeature 属性为“ case ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0013', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0013 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0013 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0014
     *des:设置fontFeature 属性为“ frac ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0014', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0014 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0014")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0014 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0015
     *des:设置fontFeature 属性为“ ordn ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0015', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0015 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0015")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0015 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0016
     *des:设置fontFeature 属性为“ liga ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0016', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0016 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0016")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0016 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0017
     *des:设置fontFeature 属性为“ fwid ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0017', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0017 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0017 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0018
     *des:设置fontFeature 属性为“ hwid ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0018', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0018 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0018 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0019
     *des:设置fontFeature 属性为“ vert ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0019', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0019 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0019 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0020
     *des:设置fontFeature 属性为“ ss01 ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0020 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0020 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0021
     *des:设置fontFeature 属性为“ ss02 ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0021', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0021 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0021 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0022
     *des:设置fontFeature 属性为“ ss03 ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0022', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0022 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0022 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0023
     *des:设置fontFeature 属性为“ ss04 ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0023', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0023 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0023 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0024
     *des:设置fontFeature 属性为“ ss05 ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0024', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0024 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0024 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0025
     *des:设置fontFeature 属性为“ ss06 ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0025', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0025 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0025")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0025 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0026
     *des:设置fontFeature 属性为“ ss07 ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0026', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0026 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0026")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0026 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0027
     *des:设置fontFeature 属性为“ ss08 ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0027', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0027 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0027")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0027 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0028
     *des:设置fontFeature 属性为“ ss07 ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0028', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0028 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0028")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0028 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0029
     *des:设置fontFeature 属性为“ ss09 and ss04 ,on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0029', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0029 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0029")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0029 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0030
     *des:设置fontFeature 属性为“ null"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0030 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0030 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0031
     *des:设置fontFeature 属性'\"abcdefgg&*\" on,\"ss04\" 12354hfnfn3'，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0031', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0031 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0031")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0031 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0032
     *des:设置fontFeature 属性'\"ss04\" on,\"ss04\" off'，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0032', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0032 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0032")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0032 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0033
     *des:输入纯文本，设置fontFeature 属性"\"ss04\" on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0033', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0033 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0033")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0033 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0034
     *des:输入纯文本+Symbol，设置fontFeature 属性"\"ss04\" on"，Symbol无fontFeature属性（https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V5/ts-basic-components-symbolspan-V5），验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0034', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0034 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0034")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0034 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0035
     *des:输入纯文本+Image，设置fontFeature 属性"\"ss04\" on"，Image无fontFeature属性（https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V5/ts-basic-components-imagespan-V5），验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0035', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0035 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0035")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0035 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0036
     *des:输入Emoji表情，通过updateSpanStyle设置fontFeature 属性"\"ss04\" on"，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0036', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0036 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0036")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0036 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0037
     *des:不同fontfeature效果的两个richEditor通过复制粘贴，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0037', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0037 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000)
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0037")
      await Utils.sleep(1000)
      let richEditor1 = await driver.findComponent(ON.id("ComponentTextRicheditorFontfeature003701"));
      await richEditor1?.click()
      await Utils.sleep(1000)
      await richEditor1?.click()
      await Utils.sleep(1000)
      let selectAll = await driver.findComponent(ON.text('全选'))
      await selectAll?.click()
      await Utils.sleep(500)
      let copy = await driver.findComponent(ON.text('复制'))
      await copy?.click()
      await Utils.sleep(1000)
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorFontfeature003702"));
      await richEditor2?.click()
      await Utils.sleep(1000)
      await richEditor2?.click()
      await Utils.sleep(1000)
      let paste = await driver.findComponent(ON.text('粘贴'))
      await paste?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0037 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0038
     *des:相同fontfeature效果的两个richEditor通过复制粘贴，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0038', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0038 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000)
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0038")
      await Utils.sleep(1000)
      let richEditor1 = await driver.findComponent(ON.id("ComponentTextRicheditorFontfeature003801"));
      await richEditor1?.click()
      await Utils.sleep(1000)
      await richEditor1?.click()
      await Utils.sleep(1000)
      let selectAll = await driver.findComponent(ON.text('全选'))
      await selectAll?.click()
      await Utils.sleep(500)
      let copy = await driver.findComponent(ON.text('复制'))
      await copy?.click()
      await Utils.sleep(1000)
      let richEditor2 = await driver.findComponent(ON.id("ComponentTextRicheditorFontfeature003802"));
      await richEditor2?.click()
      await Utils.sleep(1000)
      await richEditor2?.click()
      await Utils.sleep(1000)
      let paste = await driver.findComponent(ON.text('粘贴'))
      await paste?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0038 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0041
     *des:两次添加fontfeature 属性,，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0041', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0041 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0041")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0041 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0042
     *des:通过onIMEInputComplete获取fontfeature属性,，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0042', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0042 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000)
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0042")
      await Utils.sleep(1000)
      let richEditor = await driver.findComponent(ON.id("ComponentTextRicheditorFontfeature0042"));
      await richEditor?.click()
      await Utils.sleep(1000)
      await driver.triggerKey(KeyCode.KEYCODE_SPACE)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0042 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0043
     *des:添加多段span,通过aboutToDelete查询fontfearture属性,，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0043', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0043 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000)
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0043")
      await Utils.sleep(1000)
      let richEditor = await driver.findComponent(ON.id("ComponentTextRicheditorFontfeature0043"));
      await richEditor?.click()
      await Utils.sleep(1000)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(1000)
      await driver.triggerKey(KeyCode.KEYCODE_DEL)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0043 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0044
     *des:通过setTypingStyle设置fontFeature。通过getTypingStyle查询fontFeature,，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0044', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0044 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0044")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0044 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0045
     *des:通过updateSpanStyle设置部分文本fontFeature，另一部分保持原有设置，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0045', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0045 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000)
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0045")
      await Utils.sleep(1000)
      let richEditor1 = await driver.findComponent(ON.id("ComponentTextRicheditorFontfeature0045"));
      await richEditor1?.click()
      await Utils.sleep(1000)
      let select = await driver.findComponent(ON.id("select"));
      await select?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0045 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0046
     *des:通过getspans设置文本的fontFeature，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0046', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0046 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000)
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0046")
      await Utils.sleep(1000)
      let select = await driver.findComponent(ON.id("getspans"));
      await select?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0046 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0047
     *des:通过getSelection获取多段span各个的fontFeature，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0047', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0047 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000)
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0047")
      await Utils.sleep(1000)
      let select = await driver.findComponent(ON.id("getselection"));
      await select?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0047 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0048
     *des:通过模拟手指选取内容，获取fontFeature，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0048', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0048 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0048")
      await Utils.sleep(1000);
      let richEditor1 = await driver.findComponent(ON.id("ComponentTextRicheditorFontfeature0048"));
      await richEditor1.click();
      await Utils.sleep(1000);
      let selectBtn = await driver.findComponent(ON.id('select'));
      await selectBtn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0048 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0049
     *des:设置 fontColor: Color.Orange,fontFeature: '\"sups\" on,，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0049', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0049 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0049")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0049 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0050
     *des:设置 fontStyle: FontStyle.Italic,fontFeature: '\"sups\" on,，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0050 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0050")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0050 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0051
     *des:设置 fontWeight: FontWeight.Bolder,fontFeature: '\"numr\" on'，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0051', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0051 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0051")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0051 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0052
     *des:设置 fontFamily: 'HarmonyOS sans',fontFeature: '\"ss04\" on'，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0052', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0052 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0052")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0052 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0053
     *des:设置     decoration: { type: TextDecorationType.Underline, color: Color.Black },fontFeature: '\"fwid\" on'，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0053', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0053 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0053")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0053 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0054
     *des:设置    textShadow: { radius: 10, color: Color.Blue, offsetX: 10, offsetY: 0 },   fontFeature: '\"ss08\" on'，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0054', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0054 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0054")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0054 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0055
     *des:设置    lineHeight: 50,  fontFeature: '\"hwid\" on'，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0055', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0055 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0055")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0055 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0056
     *des:添加多个RichEditor组件,设置不同的fontFeature，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0056', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0056 start.`);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0056")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0056 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0057
     *des:动态调整组件宽高，不影响fontfeature效果，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0057', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0057 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0057")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorFontfeature0057"));
      await Utils.sleep(1000);
      let justBtn = await driver.findComponent(ON.id("justFeature"));
      await justBtn.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0057 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0058
     *des:动态调整组件padding和margin，不影响fontfeature效果，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0058', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0058 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0058")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorFontfeature0058"));
      await Utils.sleep(1000);
      let justBtn = await driver.findComponent(ON.id("justFeature"));
      await justBtn.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0058 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0059
     *des:动态调整组件padding和margin，不影响fontfeature效果，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0059', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0059 start.`);
      let driver = Driver.create();
      await Utils.sleep(1000);
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0059")
      await Utils.sleep(1000);
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorFontfeature0059"));
      await Utils.sleep(1000);
      let justBtn = await driver.findComponent(ON.id("justFeature"));
      await justBtn.click();
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0059 finish.`);
      done();
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0039
     *des:1、拖拽A组件内的内容至B组件内'，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0039', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0039 start.`);
      let driver = Driver.create();
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0039")
      await Utils.sleep(1000)
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorFontfeature0039"));
      let textArea = await driver.findComponent(ON.id('TextArea'));
      await textArea.click()
      await Utils.sleep(1000);
      await textArea.click()
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'))
      await selectAll?.click()
      await Utils.sleep(1000);
      await textArea.dragTo(richeditor)
      await Utils.sleep(3000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0039 finish.`);
      done()
    })
    /**
     * NO.SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0040
     *des:添加多个RichEditor组件,设置相同的fentFeature，验证效果
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0040 start.`);
      let driver = Driver.create();
      Settings.createWindow("testability/pages/ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeature0040")
      await Utils.sleep(1000)
      let richeditor = await driver.findComponent(ON.id("ComponentTextRicheditorFontfeature0040"));
      let textArea = await driver.findComponent(ON.id('TextArea'));
      await textArea.click()
      await Utils.sleep(1000);
      await textArea.click()
      await Utils.sleep(1000);
      let selectAll = await driver.findComponent(ON.text('全选'))
      await selectAll?.click()
      await Utils.sleep(1000);
      await textArea.dragTo(richeditor)
      await Utils.sleep(3000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_FONTFEATURE_0040 finish.`);
      done()
    })

  })
}
