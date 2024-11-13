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

export default function ArkUITabsVertical() {

  describe('ArkUITabsVertical', () => {

    /*
    * @tc.number  ArkUI_Tabs_vertical_001
    * @tc.name    ArkUI_Tabs_vertical_001
    * @tc.desc    1、启动应用
                  2、设置属性vertical参数为正常值
                  3、重新设置正常值后重复步骤1和2
    */
    it('ArkUI_Tabs_vertical_001', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_vertical_001 start.`);
      Settings.createWindow("testability/pages/ArkUITabsVertical/ArkUITabsVertical001")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      await Utils.sleep(1000)
      let button1 :Component = await driver.findComponent(ON.id('ArkUITabsVertical001_001'))
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `ArkUI_Tabs_vertical_001 finish.`);
      done()
    })



  })
}
