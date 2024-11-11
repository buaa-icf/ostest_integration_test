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

export default function FunctionJichuWaterFlow() {

  describe('FunctionJichuWaterFlow', () => {


    /*
     * @tc.number  SUB_ACE_FUNCTION_JICHU_WATERFLOW_0350
     * @tc.name    SUB_ACE_FUNCTION_JICHU_WATERFLOW_0350
     * @tc.desc    1、安装hap包
                   2、打开应用
     */
    it('SUB_ACE_FUNCTION_JICHU_WATERFLOW_0350', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_FUNCTION_JICHU_WATERFLOW_0350 start.`);
      Settings.createWindow("testability/pages/FunctionJichuWaterFlow/FunctionJichuWaterFlow0350")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_FUNCTION_JICHU_WATERFLOW_0350 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_FUNCTION_JICHU_WATERFLOW_001806
* @tc.name    SUB_ACE_FUNCTION_JICHU_WATERFLOW_001806
* @tc.desc    1、添加Waterflow组件
           2、设置Waterflow的参数：设置参数footer
*/
    it('SUB_ACE_FUNCTION_JICHU_WATERFLOW_001806', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_FUNCTION_JICHU_WATERFLOW_001806 start.`);
      Settings.createWindow("testability/pages/FunctionJichuWaterFlow/FunctionJichuWaterFlow001806")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('FunctionJichuWaterFlow001806_001'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y-400)
      await Utils.sleep(1000)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y-400)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_FUNCTION_JICHU_WATERFLOW_001806 finish.`);
      done()
    })

  })
}
