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

import HiLog from '@ohos.hilog';
import { Component, Driver, ON } from '@ohos.UiTest';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import AbilityDelegatorRegistry from '@ohos.app.ability.abilityDelegatorRegistry';

const TAG = '[MusicPlayerOnline]';
const DOMAIN = 0xF811;
let abilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator();

export default function abilityTest() {
  describe('ActsAbilityTest', () => {
    // Defines a test suite. Two parameters are supported: test suite name and test suite function.
    beforeAll(async () => {
      try {
        await abilityDelegator.startAbility({
          bundleName: 'com.example.musicPlayerOnline',
          abilityName: 'EntryAbility'
        });
        let driver = Driver.create();
        await driver.delayMs(1000);
      } catch (exception) {
        HiLog.info(DOMAIN, TAG, `StartAbility_001 exception = ${JSON.stringify(exception)}`);
        expect().assertFail();
      }
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
     * 应用首页
     */
    it('MusicPlayerOnline_Home_001', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_001 begin');
      let driver = Driver.create();
      await driver.delayMs(1000);
      await driver.assertComponentExist(ON.text('未登录'));
      await driver.delayMs(500);
      await driver.assertComponentExist(ON.text('推荐歌单'));
      await driver.delayMs(500);
      await driver.assertComponentExist(ON.text('全部歌曲'));
      await driver.delayMs(500);
      await driver.assertComponentExist(ON.text('英文歌曲'));
      await driver.delayMs(500);
      await driver.assertComponentExist(ON.text('我的歌单'));
      await driver.delayMs(500);
      await driver.assertComponentExist(ON.text('没有播放'));
      await driver.delayMs(500);
      await driver.assertComponentExist(ON.id('playing'));
      await driver.delayMs(500);
      await driver.assertComponentExist(ON.id('playlist'));
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_001 end');
      done();
    })
    /**
     * 登录
     */
    it('MusicPlayerOnline_Home_002', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_002 begin');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let btn: Component = await driver.findComponent(ON.text('登录'));
      await driver.delayMs(500);
      await btn.click();
      await driver.delayMs(2000);
      await driver.assertComponentExist(ON.text('登出'));
      await driver.delayMs(500);
      await driver.assertComponentExist(ON.text('11'));
      await driver.delayMs(500);
      await driver.assertComponentExist(ON.text('22'));
      await driver.delayMs(500);
      await driver.assertComponentExist(ON.text('33'));
      await driver.delayMs(500);
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_002 end');
      done();
    })
    /**
     * 播放
     */
    it('MusicPlayerOnline_Home_003', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_003 begin');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let btn: Component = await driver.findComponent(ON.text('全部歌曲'));
      await driver.delayMs(500);
      await btn.click();
      await driver.delayMs(2000);
      await driver.assertComponentExist(ON.id('paused'));
      await driver.delayMs(500);
      await driver.assertComponentExist(ON.id('playlist'));
      await driver.delayMs(500);
      await driver.assertComponentExist(ON.id('songImage'));
      await driver.delayMs(500);
      let songName: Component = await driver.findComponent(ON.id('songName'));
      await driver.delayMs(500);
      let songNameText = await songName.getText();
      await driver.delayMs(500);
      expect(songNameText.trim()).assertEqual('Asal Mein - Darshan Raval');
      HiLog.info(DOMAIN, TAG, songNameText);
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_003 end');
      done();
    })

    /**
     * 播放控制：进度条、动画、暂停/播放
     */
    it('MusicPlayerOnline_Home_004', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_004 begin');
      let driver = Driver.create();
      await driver.delayMs(500);
      let btn: Component = await driver.findComponent(ON.id('paused'));
      await driver.delayMs(500);
      await btn.click();
      await driver.delayMs(500);
      await driver.assertComponentExist(ON.id('playing'));
      await driver.delayMs(500);
      let btn1: Component = await driver.findComponent(ON.id('playing'));
      await driver.delayMs(500);
      await btn1.click();
      await driver.delayMs(500);
      await driver.assertComponentExist(ON.id('paused'));
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_004 end');
      done();
    })

    /**
     * 播放详情：进度条、动画、暂停/播放、时间
     */
    it('MusicPlayerOnline_Home_005', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_005 begin');
      let driver = Driver.create();
      await driver.delayMs(500);
      let btn: Component = await driver.findComponent(ON.id('songName'));
      await driver.delayMs(500);
      await btn.click();
      await driver.delayMs(2000);
      await driver.assertComponentExist(ON.id('detail_title1'));
      await driver.delayMs(100);
      await driver.assertComponentExist(ON.id('detail_songImg'));
      await driver.delayMs(100);
      await driver.assertComponentExist(ON.id('detail_songName'));
      await driver.delayMs(100);
      await driver.assertComponentExist(ON.id('detail_artist'));
      await driver.delayMs(100);
      await driver.assertComponentExist(ON.id('detail_progress'));
      await driver.delayMs(100);
      await driver.assertComponentExist(ON.id('detail_time_current'));
      await driver.delayMs(100);
      await driver.assertComponentExist(ON.id('detail_time_duration'));
      await driver.delayMs(100);
      await driver.assertComponentExist(ON.id('detail_mode'));
      await driver.delayMs(100);
      await driver.assertComponentExist(ON.id('detail_previous'));
      await driver.delayMs(100);
      await driver.assertComponentExist(ON.id('detail_paused'));
      await driver.delayMs(100);
      await driver.assertComponentExist(ON.id('detail_next'));
      await driver.delayMs(100);
      await driver.assertComponentExist(ON.id('detail_playlist'));
      await driver.delayMs(100);
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_005 end');
      done();
    })
    /**
     * 播放详情：歌曲信息检查
     */
    it('MusicPlayerOnline_Home_006', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_006 begin');
      let driver = Driver.create();
      await driver.delayMs(500);
      let listName: Component = await driver.findComponent(ON.id('detail_title1'));
      await driver.delayMs(500);
      let listNameText = await listName.getText();
      await driver.delayMs(500);
      expect(listNameText).assertEqual('全部歌曲');
      await driver.delayMs(500);
      let songName: Component = await driver.findComponent(ON.id('detail_songName'));
      await driver.delayMs(500);
      let songNameText = await songName.getText();
      await driver.delayMs(500);
      expect(songNameText).assertEqual('Asal Mein');
      await driver.delayMs(500);
      let singerName: Component = await driver.findComponent(ON.id('detail_artist'));
      await driver.delayMs(500);
      let singerNameText = await singerName.getText();
      await driver.delayMs(500);
      expect(singerNameText).assertEqual('Darshan Raval');
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_006 end');
      done();
    })
    /**
     * 播放详情：时间更新
     */
    it('MusicPlayerOnline_Home_007', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_007 begin');
      let driver = Driver.create();
      await driver.delayMs(500);
      let timeCurrent: Component = await driver.findComponent(ON.id('detail_time_current'));
      await driver.delayMs(500);
      let timeCurrentText1 = await timeCurrent.getText();
      HiLog.info(DOMAIN, TAG, 'timeCurrentText1 = ' + timeCurrentText1);
      await driver.delayMs(1000);
      let timeCurrentText2 = await timeCurrent.getText();
      await driver.delayMs(500);
      HiLog.info(DOMAIN, TAG, 'timeCurrentText2 = ' + timeCurrentText2);
      expect(timeCurrentText1.toString() == timeCurrentText2.toString()).assertFalse();
      let timeDuration: Component = await driver.findComponent(ON.id('detail_time_duration'));
      await driver.delayMs(500);
      let timeDurationText = await timeDuration.getText();
      await driver.delayMs(500);
      HiLog.info(DOMAIN, TAG, 'timeDurationText = ' + timeDurationText);
      expect(timeDurationText).assertEqual('03:44');
      await driver.delayMs(500);
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_007 end');
      done();
    })
    /**
     * 播放详情：上一首，下一首
     */
    it('MusicPlayerOnline_Home_008', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_008 begin');
      let driver = Driver.create();
      await driver.delayMs(500);
      let btn: Component = await driver.findComponent(ON.id('detail_next'));
      await driver.delayMs(500);
      await btn.click();
      await driver.delayMs(5000);
      await driver.assertComponentExist(ON.text('Baarish'));
      await driver.delayMs(500);
      let btn1: Component = await driver.findComponent(ON.id('detail_previous'));
      await driver.delayMs(500);
      await btn1.click();
      await driver.delayMs(5000);
      await driver.assertComponentExist(ON.text('Asal Mein'));
      await driver.delayMs(500);
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_008 end');
      done();
    })
    /**
     * 播放详情：暂停/播放控制
     */
    it('MusicPlayerOnline_Home_009', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_009 begin');
      let driver = Driver.create();
      await driver.delayMs(500);
      let btn: Component = await driver.findComponent(ON.id('detail_paused'));
      await driver.delayMs(500);
      await btn.click();
      await driver.delayMs(1000);
      await driver.assertComponentExist(ON.id('detail_playing'));
      await driver.delayMs(500);
      let btn1: Component = await driver.findComponent(ON.id('detail_playing'));
      await driver.delayMs(500);
      await btn1.click();
      await driver.delayMs(1000);
      await driver.assertComponentExist(ON.id('detail_paused'));
      await driver.delayMs(500);
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_009 end');
      done();
    })
    /**
     * 播放详情：播放列表
     */
    it('MusicPlayerOnline_Home_010', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_010 begin');
      let driver = Driver.create();
      await driver.delayMs(500);
      let btn: Component = await driver.findComponent(ON.id('detail_playlist'));
      await driver.delayMs(500);
      await btn.click();
      await driver.delayMs(3000);
      await driver.assertComponentExist(ON.id('Asal Mein'));
      await driver.delayMs(100);
      await driver.assertComponentExist(ON.id('Baarish'));
      await driver.delayMs(100);
      await driver.assertComponentExist(ON.id('Soch Na Sake'));
      await driver.delayMs(500);
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_010 end');
      done();
    })

    /**
     * 播放详情->播放列表->换歌曲
     */
    it('MusicPlayerOnline_Home_011', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_011 begin');
      let driver = Driver.create();
      await driver.delayMs(500);
      let btn1: Component = await driver.findComponent(ON.id('Soch Na Sake'));
      await btn1.click();
      await driver.delayMs(3000);
      await driver.pressBack();
      await driver.delayMs(2000);
      let detailSongName: Component = await driver.findComponent(ON.id('detail_songName'));
      let detailSongNameText = await detailSongName.getText();
      await driver.delayMs(500);
      HiLog.info(DOMAIN, TAG, detailSongNameText);
      expect(detailSongNameText.trim()).assertEqual('Soch Na Sake');
      await driver.pressBack();
      await driver.delayMs(2000);
      let songName: Component = await driver.findComponent(ON.id('songName'));
      let songNameText = await songName.getText();
      await driver.delayMs(500);
      HiLog.info(DOMAIN, TAG, songNameText);
      expect(songNameText.trim()).assertEqual('Soch Na Sake - Arijit Singh, Tulsi Kumar');
      await driver.delayMs(100);
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_011 end');
      done();
    })
    /**
     * 播放列表：换列表
     */
    it('MusicPlayerOnline_Home_012', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_012 begin');
      let driver = Driver.create();
      await driver.delayMs(500);
      let btnR: Component = await driver.findComponent(ON.id('scroll_row'));
      await driver.delayMs(500);
      await btnR.click();
      await driver.delayMs(1000);
      let btn: Component = await driver.findComponent(ON.text('英文歌曲'));
      await driver.delayMs(500);
      await btn.click();
      await driver.delayMs(3000);
      let songName: Component = await driver.findComponent(ON.id('songName'));
      let songNameText = await songName.getText();
      await driver.delayMs(500);
      HiLog.info(DOMAIN, TAG, songNameText);
      expect(songNameText.trim()).assertEqual('Tie Me Down - Gryffin, Elle Duhe')
      let btn1: Component = await driver.findComponent(ON.id('playlist'));
      await btn1.click();
      await driver.delayMs(500);
      await driver.assertComponentExist(ON.id('A Sky Full of Stars'));
      await driver.delayMs(100);
      await driver.pressBack();
      await driver.delayMs(2000);
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_012 end');
      done();
    })
    /**
     * 后台播放，常驻任务
     */
    it('MusicPlayerOnline_Home_013', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_013 begin');
      let driver = Driver.create();
      await driver.delayMs(500);
      await driver.pressBack();
      await driver.delayMs(30000);
      await abilityDelegator.startAbility({
        bundleName: 'com.example.musicPlayerOnline',
        abilityName: 'EntryAbility'
      });
      await driver.delayMs(1000);
      await driver.assertComponentExist(ON.id('paused'));
      await driver.delayMs(100);
      let songName: Component = await driver.findComponent(ON.id('songName'));
      let songNameText = await songName.getText();
      await driver.delayMs(500);
      HiLog.info(DOMAIN, TAG, songNameText);
      expect(songNameText.trim()).assertEqual('Tie Me Down - Gryffin, Elle Duhe')
      await driver.delayMs(100);
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_013 end');
      done();
    })
    /**
     * 退出登录
     */
    it('MusicPlayerOnline_Home_014', 0, async (done: Function) => {
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_014 begin');
      let driver = Driver.create();
      await driver.delayMs(500);
      let list_pre: Component = await driver.findComponent(ON.id('my_list_item'));
      await driver.delayMs(500);
      HiLog.info(DOMAIN, TAG, 'list_pre = ' + list_pre);
      await driver.delayMs(500);
      let btn: Component = await driver.findComponent(ON.text('登出'));
      await driver.delayMs(500);
      await btn.click();
      await driver.delayMs(2000);
      await driver.assertComponentExist(ON.text('未登录'));
      await driver.delayMs(500);
      let list: Component = await driver.findComponent(ON.id('my_list_item'));
      await driver.delayMs(500);
      HiLog.info(DOMAIN, TAG, 'list = ' + list);
      expect(list).assertNull();
      HiLog.info(DOMAIN, TAG, 'MusicPlayerOnline_Home_014 end');
      done();
    })
  })
}