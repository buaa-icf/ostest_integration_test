/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Component, Driver ,ON } from '@ohos.UiTest'

export default function ArkUITabScrollable() {

  describe('ArkUITabScrollable', () => {


    /*
* @tc.number  ArkUI_Tabs_scrollable_001
* @tc.name    ArkUI_Tabs_scrollable_001
* @tc.desc    1 、启 动 应 用
              2、 设置属性scrollable参数为正常值
              3 、 重 新 设 置 正 常 值 后 重 复 步 骤 1 和2
*/
    it('ArkUI_Tabs_scrollable_001', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_scrollable_001 start.`);
      Settings.createWindow("testability/pages/ArkUITabScrollable/ArkUITabScrollable001")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      await Utils.sleep(1000)
      let button1 :Component = await driver.findComponent(ON.id('ArkUITabScrollable001_002'))
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `ArkUI_Tabs_scrollable_001 finish.`);
      done()
    })

    /*
* @tc.number  ArkUI_Tabs_scrollable_002
* @tc.name    ArkUI_Tabs_scrollable_002
* @tc.desc    1 、启 动 应 用
          2、 设置属性scrollable参数为正常值
          3 、 重 新 设 置 正 常 值 后 重 复 步 骤 1 和2
*/
    it('ArkUI_Tabs_scrollable_002', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_scrollable_002 start.`);
      Settings.createWindow("testability/pages/ArkUITabScrollable/ArkUITabScrollable002")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      await Utils.sleep(1000)
      let button1 :Component = await driver.findComponent(ON.id('ArkUITabScrollable002_002'))
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `ArkUI_Tabs_scrollable_002 finish.`);
      done()
    })


  })
}
