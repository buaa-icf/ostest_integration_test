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
import {TestType} from '@ohos/hypium';

let inputtext1: string = '你好helloこんにちは안녕하세요你好helloこんにちは안녕하세요你好helloこんにちは안녕하세요';
let inputtext2: string = '你好こんにちは안녕하세요你好こんにちは안녕하세요你好こんにちは안녕하세요你好你好你好你好你好你好你好你好你好你好';
let enginputtext:string = 'The text component is used to display a piece of textual information.Support universal attributes and universal text attributes.'
let engwordinputtext:string = 'This is set wordBreak to WordBreak text Taumatawhakatangihangakoauauotamateaturipukakapikimaungahoronukupokaiwhenuakitanatahu.'
let numstring:string = '1234858993928058120039302094290850823091231321489958298 1231321313133 121312314192848124891489148918418129489184 89958298'
let emailstring:string = '123456789@abc.com 123453789@abc.com 123426789@abc.com 1234567489@abc.com'
let phonestring:string = '13344345555 13344445445 13344425555 13344445855'

export default function UiComponentWordbreak() {
  describe('UiComponentWordbreak', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }

      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0010
        * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0010
        * @tc.desc    if default no wordbreak
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak001")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      await Utils.sleep(1000)
      let button1:Component = await driver.findComponent(ON.id('style1'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('input1'));
      await input.inputText(inputtext1);
      await driver.delayMs(1000);
      let button2:Component = await driver.findComponent(ON.id('wordbreak1'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      for(let i=1;i<=3;i++){
        await button2.click()
        await Utils.sleep(100)
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0010 finish.`);
      done()
    })

    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0020
        * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0020
        * @tc.desc    if inline wordbreak change
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0020',0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0020 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak002")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      await Utils.sleep(1000)
      let button1:Component = await driver.findComponent(ON.id('style2'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('input2'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await input.inputText(inputtext2);
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('wordbreak2'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      for(let i=1;i<=3;i++){
        await button2.click()
        await Utils.sleep(100)
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0020 finish.`);
      done()
    })

    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0030
        * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0030
        * @tc.desc    if inline wordbreak breakall
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0030 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak003")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      await Utils.sleep(1000)
      let button1:Component = await driver.findComponent(ON.id('style3'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('input3'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await input.inputText(enginputtext);
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('break3'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0030 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0040
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0040
       * @tc.desc    if inline wordbreak breakword
   */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0040 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak004")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      await Utils.sleep(1000)
      let button1:Component = await driver.findComponent(ON.id('style4'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('input4'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await input.inputText(enginputtext);
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('wordbreak4'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0040 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0050
        * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0050
        * @tc.desc    clip true and false
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0050 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak005")
      await Utils.sleep(100)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      await Utils.sleep(100)
      let button1:Component = await driver.findComponent(ON.id('style5'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('input5'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await input.inputText(enginputtext);
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('wordbreak5'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      let button3:Component = await driver.findComponent(ON.id('clip5'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0050 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0060
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0060
       * @tc.desc    no clip
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0060 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak006")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      await Utils.sleep(100)
      let button1:Component = await driver.findComponent(ON.id('style6'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('input6'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await input.inputText(enginputtext);
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('break6'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      let button3:Component = await driver.findComponent(ON.id('changetextclip6'));
      await driver.delayMs(100)
      await button3.click()
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0060 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0070
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0070
       * @tc.desc    width
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak007")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      await Utils.sleep(100)
      let buttonstyle7:Component = await driver.findComponent(ON.id('style7'));
      await buttonstyle7.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('input7'));
      await input.inputText(enginputtext)
      await Utils.sleep(100)
      let buttonbreak7:Component = await driver.findComponent(ON.id('wordbreak7'));
      await buttonbreak7.click()
      await Utils.sleep(100)
      let buttonwidth7:Component = await driver.findComponent(ON.id('texttextwidth7'));
      await buttonwidth7.click()
      await Utils.sleep(100)
      let widbutton7:Component = await driver.findComponent(ON.id('plustextwidth'));
      await widbutton7.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0070 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0080
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0080
       * @tc.desc    wordbreak undefined
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0080 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak008")
      await Utils.sleep(100)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      await Utils.sleep(100)
      let button1:Component = await driver.findComponent(ON.id('style8'));
      await driver.delayMs(100)
      await button1.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('input8'));
      await driver.delayMs(100)
      await input.inputText(enginputtext);
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('wordbreak8'));
      await driver.delayMs(100)
      await button2.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0080 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0090
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0090
       * @tc.desc    num clip
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak009")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      await Utils.sleep(100)
      let button1:Component = await driver.findComponent(ON.id('style9'));
      await driver.delayMs(100)
      await button1.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('input9'));
      await driver.delayMs(100)
      await input.inputText(numstring);
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('wordbreak9'));
      await driver.delayMs(100)
      await button2.click()
      await Utils.sleep(100)
      let button3:Component = await driver.findComponent(ON.id('clip9'));
      await driver.delayMs(100)
      await button3.click()
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0090 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0100
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0100
       * @tc.desc    cjk word break
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak010")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      await Utils.sleep(100)
      let button1:Component = await driver.findComponent(ON.id('style10'));
      await driver.delayMs(100)
      await button1.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('area10'));
      await driver.delayMs(100)
      await input.inputText(inputtext2);
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('wordbreak10'));
      await driver.delayMs(100)
      for(let i=1;i<=3;i++){
        await button2.click()
        await Utils.sleep(100)
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0100 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0110
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0110
       * @tc.desc    break all
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0110 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak011")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      await Utils.sleep(100)
      let button1:Component = await driver.findComponent(ON.id('style11'));
      await driver.delayMs(100)
      await button1.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('area11'));
      await driver.delayMs(100)
      await input.inputText(engwordinputtext);
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('wordbreak11'));
      await driver.delayMs(100)
      await button2.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0110 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0120
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0120
       * @tc.desc    break word
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0120 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak012")
      await Utils.sleep(100)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      await Utils.sleep(100)
      let button1:Component = await driver.findComponent(ON.id('style12'));
      await driver.delayMs(100)
      await button1.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('area12'));
      await driver.delayMs(100)
      await input.inputText(engwordinputtext);
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('wordbreak12'));
      await driver.delayMs(100)
      await button2.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0120 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0130
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0130
       * @tc.desc    clip change no matter what wordbreak is
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0130 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak013")
      await Utils.sleep(100)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      await Utils.sleep(100)
      let button1:Component = await driver.findComponent(ON.id('style13'));
      await driver.delayMs(100)
      await button1.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('area13'));
      await driver.delayMs(100)
      await input.inputText(engwordinputtext);
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('wordbreak13'));
      await driver.delayMs(100)
      await button2.click()
      await Utils.sleep(100)
      let button3:Component = await driver.findComponent(ON.id('clip13'));
      await driver.delayMs(100)
      await button3.click()
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0130 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0140
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0140
       * @tc.desc    width
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0140 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak014")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      await Utils.sleep(100)
      let buttonstyle7:Component = await driver.findComponent(ON.id('style14'));
      await buttonstyle7.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('area14'));
      await input.inputText(engwordinputtext)
      await Utils.sleep(100)
      let buttonbreak7:Component = await driver.findComponent(ON.id('wordbreak14'));
      await buttonbreak7.click()
      await Utils.sleep(100)
      let buttonwidth7:Component = await driver.findComponent(ON.id('textwidth14'));
      await buttonwidth7.click()
      await Utils.sleep(100)
      let widbutton7:Component = await driver.findComponent(ON.id('plustextwidth14'));
      await widbutton7.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0140 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0150
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0150
       * @tc.desc    wordbreak undefined
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0150 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak015")
      await Utils.sleep(100)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      await Utils.sleep(100)
      let buttonstyle:Component = await driver.findComponent(ON.id('style15'));
      await buttonstyle.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('area15'));
      await driver.delayMs(100)
      await input.inputText(engwordinputtext)
      await Utils.sleep(100)
      let buttonbreak:Component = await driver.findComponent(ON.id('wordbreak15'));
      await driver.delayMs(100)
      await buttonbreak.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0150 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0160
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0160
       * @tc.desc    inline wordbreak
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0160 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak016")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      await Utils.sleep(100)
      let buttonstyle:Component = await driver.findComponent(ON.id('style16'));
      await buttonstyle.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('area16'));
      await driver.delayMs(100)
      await input.inputText(inputtext2)
      await Utils.sleep(100)
      let buttonbreak:Component = await driver.findComponent(ON.id('wordbreak16'));
      await driver.delayMs(100)
      for(let i=1;i<=3;i++){
        await buttonbreak.click()
        await Utils.sleep(100)
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0160 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0170
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0170
       * @tc.desc    inline wordbreak breakall
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0170 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak017")
      await Utils.sleep(100)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      await Utils.sleep(100)
      let buttonstyle:Component = await driver.findComponent(ON.id('style17'));
      await buttonstyle.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('area17'));
      await driver.delayMs(100)
      await input.inputText(engwordinputtext)
      await Utils.sleep(100)
      let buttonbreak:Component = await driver.findComponent(ON.id('wordbreak17'));
      await driver.delayMs(100)
      await buttonbreak.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0170 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0180
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0180
       * @tc.desc    inline wordbreak breakall
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0180 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak018")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      await Utils.sleep(100)
      let buttonstyle:Component = await driver.findComponent(ON.id('style18'));
      await buttonstyle.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('area18'));
      await driver.delayMs(100)
      await input.inputText(engwordinputtext)
      await Utils.sleep(100)
      let buttonbreak:Component = await driver.findComponent(ON.id('wordbreak18'));
      await driver.delayMs(100)
      await buttonbreak.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0180 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0190
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0190
       * @tc.desc    inline wordbreak clip
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0190 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak019")
      await Utils.sleep(100)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      await Utils.sleep(100)
      let buttonstyle:Component = await driver.findComponent(ON.id('style19'));
      await buttonstyle.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('area19'));
      await driver.delayMs(100)
      await input.inputText(engwordinputtext)
      await Utils.sleep(100)
      let buttonbreak:Component = await driver.findComponent(ON.id('wordbreak19'));
      await driver.delayMs(100)
      await buttonbreak.click()
      await Utils.sleep(100)
      let button3:Component = await driver.findComponent(ON.id('clip19'));
      await driver.delayMs(100)
      await button3.click()
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0190 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0200
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0200
       * @tc.desc    inline wordbreak undefined
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0200 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak020")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      await Utils.sleep(100)
      let buttonstyle:Component = await driver.findComponent(ON.id('style20'));
      await buttonstyle.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('area20'));
      await driver.delayMs(100)
      await input.inputText(engwordinputtext)
      await Utils.sleep(100)
      let buttonbreak:Component = await driver.findComponent(ON.id('wordbreak20'));
      await driver.delayMs(100)
      await buttonbreak.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0200 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0210
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0210
       * @tc.desc    width
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0210 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak021")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      await Utils.sleep(100)
      let buttonstyle7:Component = await driver.findComponent(ON.id('style21'));
      await buttonstyle7.click()
      await Utils.sleep(100)
      let input = await driver.findComponent(ON.id('area21'));
      await input.inputText(engwordinputtext)
      await Utils.sleep(100)
      let buttonbreak7:Component = await driver.findComponent(ON.id('wordbreak21'));
      await buttonbreak7.click()
      await Utils.sleep(100)
      let buttonwidth7:Component = await driver.findComponent(ON.id('textwidth21'));
      await buttonwidth7.click()
      await Utils.sleep(100)
      let widbutton7:Component = await driver.findComponent(ON.id('plustextwidth21'));
      await widbutton7.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0210 finish.`);
      done()
    })
    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_WORDBREAK_0220
       * @tc.name    SUB_ACE_UI_COMPONENT_WORDBREAK_0220
       * @tc.desc    textareatype wordbreak
    */
    it('SUB_ACE_UI_COMPONENT_WORDBREAK_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0220 start.`);
      Settings.createWindow("testability/pages/UiComponentWordbreak/UiComponentWordbreak022")
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      let buttontype:Component = await driver.findComponent(ON.id('areatype22'));
      await driver.delayMs(100)
      let input = await driver.findComponent(ON.id('area22'));
      await driver.delayMs(100)
      let buttonbreak:Component = await driver.findComponent(ON.id('wordbreak22'));
      await driver.delayMs(100)
      let stringinput:string[]=[emailstring,numstring,phonestring,enginputtext]
      for(let i=0;i<4;i++){
        await buttontype.click()
        await input.inputText(stringinput[i])
        for(let j=1;j<4;j++){
          await buttonbreak.click()
        }
      }
      windowSnap.snapShot()
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_WORDBREAK_0220 finish.`);
      done()
    })
  })
}
