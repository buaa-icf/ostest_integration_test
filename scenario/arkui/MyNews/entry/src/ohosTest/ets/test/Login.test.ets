/*
 * Copyright (c) 2023 Southeast University.
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

import hilog from '@ohos.hilog'
import { afterAll, afterEach, beforeAll, beforeEach, describe, expect, it } from '@ohos/hypium'
import abilityDelegatorRegistry from '@ohos.app.ability.abilityDelegatorRegistry'
import { Component, Driver, ON } from '@ohos.UiTest'
import Want from '@ohos.app.ability.Want'

const TAG: string = '[Scenario_MyNews_LoginTest]'
const DOMAIN: number = 0xF811
const BUNDLE: string = 'MyNews_'

let delegator: abilityDelegatorRegistry.AbilityDelegator = abilityDelegatorRegistry.getAbilityDelegator()
let driver: Driver = Driver.create()

enum ComponentType {
  Button = 'Button',
  TextInput = 'TextInput',
  Checkbox = 'Checkbox'
}

const checkComponentAndExecute = async (type: ComponentType, id: string, inputText?: string): Promise<void> => {
  // Check if the component exists
  await driver.assertComponentExist(ON.type(type).id(id))
  // Get the component
  let target: Component = await driver.findComponent(ON.type(type).id(id))
  if (type === ComponentType.Button) {
    // Button
    expect(await target.isClickable()).assertTrue()
    await target.click()
  } else if (type === ComponentType.TextInput) {
    // TextInput
    await target.clearText()
    await target.inputText(inputText)
  } else if (type === ComponentType.Checkbox) {
    // Checkbox
    expect(await target.isCheckable()).assertTrue()
    await target.click()
  }
}

export default function loginTest() {
  describe('LoginTest', () => {
    // Defines a test suite. Two parameters are supported: test suite name and test suite function.
    beforeAll(() => {
      // Presets an action, which is performed only once before all test cases of the test suite start.
      // This API supports only one parameter: preset action function.
    })
    beforeEach(() => {
      // Presets an action, which is performed before each unit test case starts.
      // The number of execution times is the same as the number of test cases defined by **it**.
      // This API supports only one parameter: preset action function.
    })
    afterEach(() => {
      // Presets a clear action, which is performed after each unit test case ends.
      // The number of execution times is the same as the number of test cases defined by **it**.
      // This API supports only one parameter: clear action function.
    })
    afterAll(() => {
      // Presets a clear action, which is performed after all test cases of the test suite end.
      // This API supports only one parameter: clear action function.
    })

    /**
     * Launch the app
     */
    it('scenario_myNews_login_001', 0, async (done: Function) => {
      hilog.info(DOMAIN, TAG, BUNDLE + 'scenario_myNews_login_001 begin')
      const want: Want = {
        bundleName: 'com.samples.mynews',
        abilityName: 'EntryAbility'
      }
      try {
        await delegator.startAbility(want)
        await driver.delayMs(500)
      } catch (exception) {
        hilog.info(DOMAIN, TAG, BUNDLE + `scenario_myNews_login_001 exception = ${JSON.stringify(exception)}`)
        expect().assertFail()
      }
      hilog.info(DOMAIN, TAG, BUNDLE + 'scenario_myNews_login_001 end')
      done()
    })

    /**
     * Go to the login page
     */
    it('scenario_myNews_login_002', 0, async (done: Function) => {
      hilog.info(DOMAIN, TAG, BUNDLE + 'scenario_myNews_login_002 begin')
      // The app should start in an unlogged-in state
      expect(AppStorage.get('isLoggedIn')).assertFalse()
      try {
        // Click the `ProfileTab` button
        await checkComponentAndExecute(ComponentType.Button, 'main_tabBar_button_05')
      } catch (exception) {
        hilog.info(DOMAIN, TAG, BUNDLE + `scenario_myNews_login_002 exception = ${JSON.stringify(exception)}`)
        expect().assertFail()
      }
      hilog.info(DOMAIN, TAG, BUNDLE + 'scenario_myNews_login_002 end')
      done()
    })

    /**
     * Input and login (incorrect account and password)
     */
    it('scenario_myNews_login_003', 0, async (done: Function) => {
      hilog.info(DOMAIN, TAG, BUNDLE + 'scenario_myNews_login_003 begin')
      try {
        // Input account
        await checkComponentAndExecute(ComponentType.TextInput, 'login_loginArea_textInput_01', '123')
        // Input password
        await checkComponentAndExecute(ComponentType.TextInput, 'login_loginArea_textInput_02', '123')
        // Check the agreement checkbox
        await checkComponentAndExecute(ComponentType.Checkbox, 'login_loginArea_checkbox_01')
        // Click the login button
        await checkComponentAndExecute(ComponentType.Button, 'login_loginArea_button_03')
        // Click the re-input button in the failure dialog
        await checkComponentAndExecute(ComponentType.Button, 'login_failureDialog_button_02')
      } catch (exception) {
        hilog.info(DOMAIN, TAG, BUNDLE + `scenario_myNews_login_003 exception = ${JSON.stringify(exception)}`)
        expect().assertFail()
      }
      hilog.info(DOMAIN, TAG, BUNDLE + 'scenario_myNews_login_003 end')
      done()
    })

    /**
     * Input and login (correct account and password)
     */
    it('scenario_myNews_login_003', 0, async (done: Function) => {
      hilog.info(DOMAIN, TAG, BUNDLE + 'scenario_myNews_login_004 begin')
      try {
        // Input account
        await checkComponentAndExecute(ComponentType.TextInput, 'login_loginArea_textInput_01', '12345678910')
        // Input password
        await checkComponentAndExecute(ComponentType.TextInput, 'login_loginArea_textInput_02', 'Password')
        // Check the agreement checkbox
        await checkComponentAndExecute(ComponentType.Checkbox, 'login_loginArea_checkbox_01')
        // Click the login button
        await checkComponentAndExecute(ComponentType.Button, 'login_loginArea_button_03')
        // Check if the page is redirected to the `MainPage`
        await driver.assertComponentExist(ON.type('Tabs').id('main_tabs_01'))
      } catch (exception) {
        hilog.info(DOMAIN, TAG, BUNDLE + `scenario_myNews_login_004 exception = ${JSON.stringify(exception)}`)
        expect().assertFail()
      }
      hilog.info(DOMAIN, TAG, BUNDLE + 'scenario_myNews_login_004 end')
      done()
    })
  })
}
