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

export default function UIComponentOtherRefreshPromptText() {

  describe('UIComponentOtherRefreshPromptText', () => {



    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0110
     * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0110
     * @tc.desc    1、创建refresh,设置自定义文本为Resource类型的混合内容
                   2、下拉刷新
     */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0110', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshPromptText/UIComponentOtherRefreshPromptText0110")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+200)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0110 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0100
     * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0100
     * @tc.desc    1、创建refresh,设置自定义文本为Resource类型的特殊字符
               2、下拉刷新
     */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0100', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshPromptText/UIComponentOtherRefreshPromptText0100")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+200)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0100 finish.`);
      done()
    })

    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0060
 * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0060
 * @tc.desc    1、创建refresh,设置自定义文本为字符串类型的混合内容
               2、下拉刷新
 */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0060', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshPromptText/UIComponentOtherRefreshPromptText0060")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+200)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0060 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0050
* @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0050
* @tc.desc    1、创建refresh,设置自定义文本为字符串类型的特殊字符
              2、下拉刷新
*/
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0050', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshPromptText/UIComponentOtherRefreshPromptText0050")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+200)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0050 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0120
* @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0120
* @tc.desc    1、创建refresh,设置自定义文本为字符串类型的超长文本
          2、下拉刷新
*/
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0120', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshPromptText/UIComponentOtherRefreshPromptText0120")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+200)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0120 finish.`);
      done()
    })
    /*
* @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0040
* @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0040
* @tc.desc    1、创建refresh,设置自定义文本为字符串类型的超长文本
          2、下拉刷新
*/
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0040', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshPromptText/UIComponentOtherRefreshPromptText0040")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+200)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_PROMPTTEXT_0040 finish.`);
      done()
    })



  })
}
