/*
 * Copyright (c) 2023-2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import abilityDelegatorRegistry from '@ohos.app.ability.abilityDelegatorRegistry';
import { Component, Driver, ON } from '@ohos.UiTest';
import Want from '@ohos.app.ability.Want';

let delegator: abilityDelegatorRegistry.AbilityDelegator = abilityDelegatorRegistry.getAbilityDelegator()
let driver: Driver = Driver.create()

export default function homePageTest() {
  let tag = '[scenario_myShops_home]'

  describe('homePageTest', ()=> {

    beforeAll(async (done: Function) => {
      console.log(`${tag}homePageTest begin`)
      const want: Want = {
        bundleName: 'com.samples.myshopping',
        abilityName: 'EntryAbility'
      }
      try {
        await delegator.startAbility(want)
        await driver.delayMs(1000)
        done()
      } catch (exception) {
        expect().assertFail()
        done()
      }
    })

    /**
     * 拉起应用，进入首页
     */
    it('startAbility_001', 0, async (done: Function) => {
      try {
        //判断是否存在以下组件
        await driver.assertComponentExist(ON.id('home_image_01'))

        done()
      } catch (err) {
        console.log(`${tag}startAbility_001 catch err,err is: ${err.message}`)
        expect().assertFail()
        done()
      }
    })
  })
}