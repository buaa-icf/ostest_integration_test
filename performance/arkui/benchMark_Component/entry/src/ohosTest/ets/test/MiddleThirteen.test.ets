/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

import hilog from '@ohos.hilog';
import { afterAll, afterEach, beforeAll, beforeEach, describe, it } from '@ohos/hypium';
import AbilityDelegatorRegistry from '@ohos.app.ability.abilityDelegatorRegistry';
import { Driver, ON } from '@ohos.UiTest';
import { KeyCode } from '@ohos.multimodalInput.keyCode';

const driver = Driver.create();
let abilityDelegatorRegistry = AbilityDelegatorRegistry.getAbilityDelegator();

//通过id验证有没有这个组件 有的话点击一下
async function checkButtonAndClickWithID(text: string, delayTime: number = 1000) {
  let idName = text;
  await driver.assertComponentExist(ON.id(idName));
  let button = await driver.findComponent(ON.id(idName));
  await button.click();
  if (delayTime > 0) {
    await driver.delayMs(delayTime);
  }
}

async function pressBack() {
  await driver.pressBack();
  await driver.delayMs(1000);
}

export default function middleThirteenTest() {
  describe('ActsMiddleThirteenTest', () => {
    beforeAll(() => {

    })
    beforeEach(() => {

    })
    afterEach(() => {

    })
    afterAll(() => {

    })
    /**
     * 拉起应用
     */
    it(`Benchmark_StartAbility_001`, 0, async (done: Function) => {
      hilog.info(0xF811, 'testTag', 'StartAbility_001 begin');
      try {
        await abilityDelegatorRegistry.startAbility({
          bundleName: 'cn.openharmony.benchmarksample',
          abilityName: 'EntryAbility'
        });
        done();
      } catch (err) {
        done();
      }
      hilog.info(0xF811, 'testTag', 'StartAbility_001 end');
    })


    /**
     * 点击首页Marquee
     */
    it(`MarqueeBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Marquee');
      //创建Marquee组件
      await checkButtonAndClickWithID('MarqueeCreate');
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('MarqueeWidth');
      await checkButtonAndClickWithID('MarqueeChangeWidth');
      await pressBack();
      //改变height
      await checkButtonAndClickWithID('MarqueeHeight');
      await checkButtonAndClickWithID('MarqueeChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('MarqueePadding');
      await checkButtonAndClickWithID('MarqueeChangePadding');
      await pressBack();
      // 改变Margin
      await checkButtonAndClickWithID('MarqueeMargin');
      await checkButtonAndClickWithID('MarqueeChangeMargin');
      await pressBack();
      // 改变Src
      await checkButtonAndClickWithID('MarqueeSrc');
      await checkButtonAndClickWithID('MarqueeChangeSrc');
      await pressBack();
      // 改变Step
      await checkButtonAndClickWithID('MarqueeStep');
      await checkButtonAndClickWithID('MarqueeChangeStep');
      await pressBack();
      // 改变FromStart
      await checkButtonAndClickWithID('MarqueeFromStart');
      await checkButtonAndClickWithID('MarqueeChangeFromStart');
      await pressBack();
      await pressBack(); //返回首页
    })

    /**
     * 点击首页DataPanel
     */
    it(`DataPanelBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('DataPanel');
      //创建DataPanel组件
      await checkButtonAndClickWithID('DataPanelCreate');
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('DataPanelWidth');
      await checkButtonAndClickWithID('DataPanelChangeWidth');
      await pressBack();
      //改变height
      await checkButtonAndClickWithID('DataPanelHeight');
      await checkButtonAndClickWithID('DataPanelChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('DataPanelPadding');
      await checkButtonAndClickWithID('DataPanelChangePadding');
      await pressBack();
      // 改变Margin
      await checkButtonAndClickWithID('DataPanelMargin');
      await checkButtonAndClickWithID('DataPanelChangeMargin');
      await pressBack();
      // 改变CloseEffect
      await checkButtonAndClickWithID('DataPanelCloseEffect');
      await checkButtonAndClickWithID('DataPanelChangeCloseEffect');
      await pressBack();
      // 改变StrokeWidth
      await checkButtonAndClickWithID('DataPanelStrokeWidth');
      await checkButtonAndClickWithID('DataPanelChangeStrokeWidth');
      await pressBack();
      // 改变Radius
      await checkButtonAndClickWithID('DataPanelRadius');
      await checkButtonAndClickWithID('DataPanelChangeRadius');
      await pressBack();
      // 改变OffsetX
      await checkButtonAndClickWithID('DataPanelOffsetX');
      await checkButtonAndClickWithID('DataPanelChangeOffsetX');
      await pressBack();
      // 改变OffsetY
      await checkButtonAndClickWithID('DataPanelOffsetY');
      await checkButtonAndClickWithID('DataPanelChangeOffsetY');
      await pressBack();
      await pressBack(); //返回首页
    })

    /**
     * 点击首页Rating
     */
    it(`RatingBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Rating');
      //创建Rating组件
      await checkButtonAndClickWithID('RatingCreate');
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('RatingWidth');
      await checkButtonAndClickWithID('RatingChangeWidth');
      await pressBack();
      //改变height
      await checkButtonAndClickWithID('RatingHeight');
      await checkButtonAndClickWithID('RatingChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('RatingPadding');
      await checkButtonAndClickWithID('RatingChangePadding');
      await pressBack();
      // 改变Margin
      await checkButtonAndClickWithID('RatingMargin');
      await checkButtonAndClickWithID('RatingChangeMargin');
      await pressBack();
      // 改变Stars
      await checkButtonAndClickWithID('RatingStars');
      await checkButtonAndClickWithID('RatingChangeStars');
      await pressBack();
      // 改变StarStyle
      await checkButtonAndClickWithID('RatingStarStyle');
      await checkButtonAndClickWithID('RatingChangeStarStyle');
      await pressBack();
      // 改变OptionsRating
      await checkButtonAndClickWithID('RatingOptionsRating');
      await checkButtonAndClickWithID('RatingChangeOptionsRating');
      await pressBack();
      // Click
      await checkButtonAndClickWithID('RatingClick');
      await checkButtonAndClickWithID('RatingClickIndex6');
      await pressBack();
      // swip
      await checkButtonAndClickWithID('RatingSwip');
      await driver.swipe(50, 600, 500, 600);
      await pressBack();
      await pressBack(); //返回首页
    })

    /**
     * 点击首页TextClock
     */
    it(`TextClockBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('TextClock');
      await checkButtonAndClickWithID('TextClockCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('TextClockWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('TextClockHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('TextClockPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('TextClockMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('TextClockFormatSample');
      await checkButtonAndClickWithID('change format');
      await pressBack();
      await pressBack();
    })

    /**
     * 点击首页Hyperlink
     */
    it(`HyperlinkBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Hyperlink');
      await checkButtonAndClickWithID('HyperlinkCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('HyperlinkWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('HyperlinkHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('HyperlinkPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('HyperlinkMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await pressBack();
    })

    /**
     * 点击首页QRCode
     */
    it(`QRCodeBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('QRCode');
      await checkButtonAndClickWithID('QRCodeCreateSample');
      await driver.delayMs(1000);
      await pressBack();
      await checkButtonAndClickWithID('QRCodeWidthSample');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('QRCodeHeightSample');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('QRCodePaddingSample');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('QRCodeMarginSample');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await pressBack();
    })

    /**
     * 点击首页Gauge
     */
    it(`GaugeBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Gauge');
      await checkButtonAndClickWithID('GaugeCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('GaugeWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('GaugeHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('GaugePaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('GaugeMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('GaugeStrokeWidthSample');
      await checkButtonAndClickWithID('change strokeWidth 4 to 10');
      await pressBack();
      // await checkButtonAndClickWithID('GaugeTrackShadowSample');
      // await checkButtonAndClickWithID('change trackShadow');
      // await pressBack();
      await checkButtonAndClickWithID('GaugeAngleSample');
      await checkButtonAndClickWithID('change angle');
      await pressBack();
      await pressBack();
    })

     /**
      * 点击首页Badge
      */
    it(`BadgeBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Badge');
      //创建Badge组件
      await checkButtonAndClickWithID('BadgeCreate');
      await pressBack();
      //改变Size
      await checkButtonAndClickWithID('BadgeSize');
      await checkButtonAndClickWithID('BadgeChangeSize');
      await pressBack();
      //改变Color
      await checkButtonAndClickWithID('BadgeColor');
      await checkButtonAndClickWithID('BadgeChangeColor');
      await pressBack();
      //改变FontSize
      await checkButtonAndClickWithID('BadgeFontSize');
      await checkButtonAndClickWithID('BadgeChangeFontSize');
      await pressBack();
      //改变FontWeight
      await checkButtonAndClickWithID('BadgeFontWeight');
      await checkButtonAndClickWithID('BadgeChangeFontWeight');
      await pressBack();
      //改变BorderWidth
      await checkButtonAndClickWithID('BadgeBorderWidth');
      await checkButtonAndClickWithID('BadgeChangeBorderWidth');
      await pressBack();
      await pressBack(); //返回首页
    })

    /**
     * 点击首页AlphabetIndexer
     */
    it(`AlphabetIndexerBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('AlphabetIndexer');
      //创建AlphabetIndexerCreate组件
      await checkButtonAndClickWithID('AlphabetIndexerCreate');
      await driver.delayMs(1000);
      await pressBack();
      //改变SelectedColor
      await checkButtonAndClickWithID('AlphabetIndexerSelectedColor');
      await checkButtonAndClickWithID('AlphabetIndexerChangeSelectedColor');
      await pressBack();
      //改变PopupColor
      await checkButtonAndClickWithID('AlphabetIndexerPopupColor');
      await checkButtonAndClickWithID('AlphabetIndexerChangePopupColor');
      await pressBack();
      //改变SelectedBackgroundColor
      await checkButtonAndClickWithID('AlphabetIndexerSelectedBackgroundColor');
      await checkButtonAndClickWithID('AlphabetIndexerChangeSelectedBackgroundColor');
      await pressBack();
      // 改变PopupBackground
      await checkButtonAndClickWithID('AlphabetIndexerPopupBackground');
      await checkButtonAndClickWithID('AlphabetIndexerChangePopupBackground');
      await pressBack();
      //改变SelectedFont
      await checkButtonAndClickWithID('AlphabetIndexerSelectedFont');
      await checkButtonAndClickWithID('AlphabetIndexerChangeSelectedFont');
      await pressBack();
      //改变popupFont
      await checkButtonAndClickWithID('AlphabetIndexerPopupFont');
      await checkButtonAndClickWithID('AlphabetIndexerChangePopupFont');
      await pressBack();
      await pressBack(); //返回首页
    })

    /**
     * 点击首页Menu
     */
    it(`MenuBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Menu');
      //创建Menu组件
      await checkButtonAndClickWithID('MenuCreate');
      await pressBack();
      //改变Font
      await checkButtonAndClickWithID('MenuFont');
      await checkButtonAndClickWithID('MenuChangeFont');
      await pressBack();
      //改变FontColor
      await checkButtonAndClickWithID('MenuFontColor');
      await checkButtonAndClickWithID('MenuChangeFontColor');
      await pressBack();
      //改变Width
      await checkButtonAndClickWithID('MenuWidth');
      await checkButtonAndClickWithID('MenuChangeWidth');
      await pressBack();
      //改变Height
      await checkButtonAndClickWithID('MenuHeight');
      await checkButtonAndClickWithID('MenuChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('MenuPadding');
      await checkButtonAndClickWithID('MenuChangePadding');
      await pressBack();
      // 变Margin
      await checkButtonAndClickWithID('MenuMargin');
      await checkButtonAndClickWithID('MenuChangeMargin');
      await pressBack();
      // Menu展开菜单Expend
      await checkButtonAndClickWithID('MenuFirstExpend');
      await checkButtonAndClickWithID('MenuFirstChangeExpend');
      await checkButtonAndClickWithID('MenuFirstChangeExpendSencond');
      await checkButtonAndClickWithID('MenuFirstChangeExpendThird');
      await pressBack();
      await pressBack();
      // Menu收起后再次展开菜单Expend
      await checkButtonAndClickWithID('MenuSecondExpend');
      await checkButtonAndClickWithID('MenuSecondChangeExpend');
      await checkButtonAndClickWithID('MenuSecondChangeExpendSencond');
      await checkButtonAndClickWithID('MenuSecondChangeExpendThird');
      await pressBack();
      await checkButtonAndClickWithID('MenuSecondChangeExpend');
      await checkButtonAndClickWithID('MenuSecondChangeExpendSencond');
      await checkButtonAndClickWithID('MenuSecondChangeExpendThird');
      await pressBack();
      await pressBack();
      // Menu收起后多次关闭
      await checkButtonAndClickWithID('MenuMoreClose');
      await checkButtonAndClickWithID('MenuMoreCloseFirst');
      await checkButtonAndClickWithID('MenuMoreCloseSencond');
      await checkButtonAndClickWithID('MenuMoreCloseThird');
      await pressBack();
      await checkButtonAndClickWithID('MenuMoreCloseFirst');
      await pressBack();
      await checkButtonAndClickWithID('MenuMoreCloseFirst');
      await pressBack();
      await pressBack();
      // Group收起后再次展开
      await checkButtonAndClickWithID('MenuGroupCloseExpand');
      await checkButtonAndClickWithID('MenuChangeGroupCloseExpand');
      await pressBack();
      await checkButtonAndClickWithID('MenuChangeGroupCloseExpand');
      await pressBack();
      await pressBack();
      // Group多次关闭
      await checkButtonAndClickWithID('MenuGroupMoreClose');
      await checkButtonAndClickWithID('MenuChangeGroupMoreClose');
      await pressBack();
      await checkButtonAndClickWithID('MenuChangeGroupMoreClose');
      await pressBack();
      await checkButtonAndClickWithID('MenuChangeGroupMoreClose');
      await pressBack();
      await pressBack();

      await pressBack(); //返回首页
    })

    /**
     * 点击首页TextPicker
     */
    it(`TextPickerBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('TextPicker');
      //创建TextPicker组件
      await checkButtonAndClickWithID('TextPickerCreate');
      await pressBack();
      //改变TextStyle
      await checkButtonAndClickWithID('TextPickerTextStyle');
      await checkButtonAndClickWithID('TextPickerChangeTextStyle');
      await pressBack();
      //改变SelectedTextStyle
      await checkButtonAndClickWithID('TextPickerSelectedTextStyle');
      await checkButtonAndClickWithID('TextPickerChangeSelectedTextStyle');
      await pressBack();
      //改变DisappearTextStyle
      await checkButtonAndClickWithID('TextPickerDisappearTextStyle');
      await checkButtonAndClickWithID('TextPickerChangeDisappearTextStyle');
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('TextPickerWidth');
      await checkButtonAndClickWithID('TextPickerChangeWidth');
      await pressBack();
      //改变Height
      await checkButtonAndClickWithID('TextPickerHeight');
      await checkButtonAndClickWithID('TextPickerChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('TextPickerPadding');
      await checkButtonAndClickWithID('TextPickerChangePadding');
      await pressBack();
      //改变Margin
      await checkButtonAndClickWithID('TextPickerMargin');
      await checkButtonAndClickWithID('TextPickerChangeMargin');
      await pressBack();
      //手指滑动
      await checkButtonAndClickWithID('TextPickerFingerSwip');
      await driver.swipe(150, 300, 150, 150)
      await pressBack();
      //手指点击
      await checkButtonAndClickWithID('TextPickerClick');
      await driver.click(150, 150)
      await driver.delayMs(1000);
      await pressBack();
      //鼠标滚轮MouseScroll
      await checkButtonAndClickWithID('TextPickerMouseScroll');
      await driver.mouseScroll({ x: 150, y: 200 }, true, 5);
      await driver.delayMs(1000);
      await pressBack();
      //键盘Scroll
      await checkButtonAndClickWithID('TextPickerKeyBoardScroll');
      // await driver.triggerKey(KeyCode.KEYCODE_DPAD_DOWN);
      await driver.swipe(150, 300, 150, 150)
      await driver.delayMs(1000);
      await pressBack();
      await pressBack(); //返回首页
    })

    /**
     * 点击首页Counter
     */
    it(`CounterBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Counter');
      //创建Counter组件
      await checkButtonAndClickWithID('CounterCreate');
      await driver.delayMs(1000);
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('CounterWidth');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('CounterChangeWidth');
      await driver.delayMs(1000);
      await pressBack();
      //改变Height
      await checkButtonAndClickWithID('CounterHeight');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('CounterChangeHeight');
      await driver.delayMs(1000);
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('CounterPadding');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('CounterChangePadding');
      await driver.delayMs(1000);
      await pressBack();
      //改变Margin
      await checkButtonAndClickWithID('CounterMargin');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('CounterChangeMargin');
      await driver.delayMs(1000);
      await pressBack();
      await pressBack(); //返回首页
    })

    /**
     * 点击首页XComponent
     */
    it(`XComponentBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('XComponent');
      //创建XComponent组件
      await checkButtonAndClickWithID('XComponentCreate');
      await driver.delayMs(1000);
      await pressBack();
      await pressBack(); //返回首页
    })

  })
}