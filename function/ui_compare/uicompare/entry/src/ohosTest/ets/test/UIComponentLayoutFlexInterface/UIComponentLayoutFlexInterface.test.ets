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

export default function UIComponentLayoutFlexInterface() {

  describe('UIComponentLayoutFlexInterface', () => {
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
        * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0010
        * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0010
        * @tc.desc        Layout arrangement, spindle arrangement:
        * The parent component has a fixed layout with four subelements,
        * justifyContent attribute value is set to FlexAlign.Center for the parent component
        */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0010', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface001 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface001 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0020
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0020
            * @tc.desc        Layout arrangement, spindles arrangement: Parent component layout fixed,
            * layout four child subelements, space value non-0 positive,
            * justifyContent attribute value for the parent component was set FlexAlign.End
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0020', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface002 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface002 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0030
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0030
            * @tc.desc        Layout arrangement, spindle arrangement: The parent component layout is fixed,
            * layout four child child elements, space value is non-0 positive,
            * justifyContent attribute value is set to FlexAlign.SpaceAround for the parent component
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0030', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface003 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface003 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0040
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0040
            * @tc.desc        Layout arrangement, spindle arrangement: The parent component layout is fixed,
            * the layout of four child child elements, the space value is non-0 positive,
            * justifyContent attribute value is FlexAlign.SpaceBetween for the parent component
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0040', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface004 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface004 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0050
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0050
            * @tc.desc        Layout arrangement, spindle arrangement: The parent component layout is fixed,
            * the layout of four child child elements, the space value is non-0 positive,
            * justifyContent attribute value is set to FlexAlign.SpaceEvenly for the parent component
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0050', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface005 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface005 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0060
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0060
            * @tc.desc        Layout arrangement, spindle arrangement:
            * The parent component has a fixed layout with four child subelements,
            * justifyContent is set to FlexAlign.Start for the parent component
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0060', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface006 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface006 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0070
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0070
            * @tc.desc        The alignSelf property is set to ItemAlign.Auto.
            * The AlignSelf property is set to itemalign.auto for the child elements
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0070', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface007 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface007 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0080
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0080
            * @tc.desc        Layout arrangement, cross axis arrangement: the parent component layout is fixed,
            * layout four child elements, space value is non-0 positive,
            * set the alignSelf attribute value for the child element to itemAligne.baseline
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0080', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface008 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface008 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0090
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0090
            * @tc.desc        The alignSelf property is set to ItemAlign.Center.
            * The AlignSelf property is set to itemalign.center.
            * The AlignSelf property Alignself is set to itemalign.center
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0090', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface009 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface009 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0100
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0100
            * @tc.desc        The alignSelf property is set to ItemAlign.End.
            * The AlignSelf property is set to itemalign.end.
            * The AlignSelf property sets the AlignSelf property to itemalign.end
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0100', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface010 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface010 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0110
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0110
            * @tc.desc       The alignSelf property is set to ItemAlign.Start.
            * The AlignSelf property is set to itemalign.start.
            * The AlignSelf property sets the AlignSelf property to itemalign.start
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0110', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface011 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface011 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0120
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0120
            * @tc.desc        The alignSelf property is set to ItemAlign.Stretch.
            * The AlignSelf property is set to itemalign.stretch.
            * The AlignSelf property Alignself is set to itemalign.stretch
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0120', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface012 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface012 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0190
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0190
            * @tc.desc        The alignContent property is set to FlexAlign.Center.
            * The Aligncontent property is set to flexalign.center.
            * The AlignContent property is set to flexAlign.center
            * when the parent component is aligned with four child elements, the space value is non-zero,
            * the wrap property is FlexWrap.Wrap, there is more space in the alignContent axis
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0190', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface019 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface019 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0200
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0200
            * @tc.desc        The alignContent property is set to FlexAlign.End.
            * The Aligncontent property is set to flexalign.end.
            * The AlignContent property is aligned to flexAlign.end
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0200', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface020 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface020 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0210
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0210
            * @tc.desc        The alignContent property is aligned to FlexAlign.SpaceAround.
            * The AlignContent property is set to flexAlign.spacearound. The AlignContent property is aligned to flexAlign.spacearound
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0210', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface021 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface021 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0220
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0220
            * @tc.desc       The alignContent property is set to FlexAlign.SpaceBetween.
            * The Aligncontent property is set to flexalign.spacebetween. The AlignContent property is set to flexalign.spacebetween
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0220', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface022 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface022 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0230
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0230
            * @tc.desc        The alignContent property is set to FlexAlign.SpaceEvenly.
            * The Aligncontent property is set to flexalign.spaceevenly. The AlignContent property is set to flexalign.spaceevenly
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0230', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface023 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface023 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0240
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0240
            * @tc.desc        The alignContent property is set to FlexAlign.Start.
            * The Aligncontent property is set to flexalign.start. The AlignContent property is aligned to flexalign.start
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0240', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface024 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface024 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0250
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0250
            * @tc.desc        The parent container and four child elements are arranged.
            * The sum of the principal axes of the child elements is greater than the principal axes of the container.
            * The wrap property is FlexWrap.Wrap and the Direction property is FlexDirection.Column&& Direction.rtl
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0250', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface025 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface025")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface025 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0260
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0260
            * @tc.desc        Layout the parent container and the four child,
            * child elements spindle's size is greater than the sum of container size, wrap attributes for FlexWrap. Wrap,
            * set the direction attribute to FlexDirection. ColumnReverse && direction. The Rtl, to take effect
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0260', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface026 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface026")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface026 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0270
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0270
            * @tc.desc        Layout of the parent container and the four child, child elements spindle's size is greater than the sum of container size,
            * wrap attributes for FlexWrap. Wrap, set the direction attribute to FlexDirection. ColumnReverse, to take effect
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0270', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface027 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface027")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface027 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0280
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0280
            * @tc.desc       The parent container and four child elements are arranged.
            * The sum of the main axes of the child elements is greater than the main axes of the container.
            * The wrap property is FlexWrap.Wrap and the direction property is FlexDirection.Column
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0280', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface028 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface028")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface028 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0290
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0290
            * @tc.desc        The parent container and four child elements are arranged.
            * The sum of the principal axes of the child elements is greater than the principal axes of the container.
            * The wrap property is FlexWrap.Wrap and the Direction property is FlexDirection.Row&& Direction.rtl
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0290', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface029 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface029")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface029 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0300
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0300
            * @tc.desc        The parent container and four child elements are arranged.
            * The sum of the child element spindles is greater than the container spindles. The wrap attribute is FlexWrap.Wrap,
            * and the Direction attribute is FlexDirection.RowReverse&&Direction.Rtl
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0300', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface030 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface030 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0310
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0310
            * @tc.desc        The parent container and four child elements are arranged.
            * The sum of the child element spindles is greater than the container spindles.
            * The wrap attribute is FlexWrap.Wrap and the direction attribute is FlexDirection.RowReverse
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0310', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface031 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface031")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface031 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0320
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0320
            * @tc.desc        The parent container and four child elements are arranged.
            * The sum of the principal axes of the child elements is greater than the principal axes of the container.
            * The wrap property is FlexWrap.Wrap and the direction property is FlexDirection.Row
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0320', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface032 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface032")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface032 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0330
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0330
            * @tc.desc        Lay out the parent container with four child elements,
            * the sum of the child element spindle sizes is greater than the container spindle sizes,
            * set the wrap property to FlexWrap.NoWrap to take effect
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0330', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface033 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface033")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface033 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0340
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0340
            * @tc.desc        Layout parent container and four child elements,
            * the sum of child element spindles size is greater than the container spindles size,
            * set the wrap property to FlexWrap.WrapReverse takes effect
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0340', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface034 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface034")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface034 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0350
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0350
            * @tc.desc        Layout parent container and four child elements,
            * the sum of the child element spindle size is greater than the container spindle size,
            * set the wrap property to FlexWrap.Wrap effect
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0350', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface035 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface035")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface035 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0360
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0360
            * @tc.desc       Flexibility and layout priority, the parent container layout is fixed,
            * the layout of four child elements, and the layoutWeight setting value is between 0 and 1
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0360', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface036 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface036")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface036 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0370
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0370
            * @tc.desc       Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, four child elements do not set flexGrow
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0370', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface037 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface037")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface037 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0380
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0380
            * @tc.desc        Flexibility and layout priority, the parent container layout is fixed,
            * layout four child elements, four child elements set flexGrow 4, 3, 2, 1
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0380', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface038 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface038")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface038 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0390
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0390
            * @tc.desc        Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, four child elements set flexGrow to null
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0390', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface039 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface039")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface039 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0400
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0400
            * @tc.desc        Flexibility and layout priority, the parent container layout is fixed, layout four child elements,
            * child elements 1, 2, 3, 4 set respectively.layoutWeight(4).layoutWeight(3).layoutWeight(2).layoutWeight(1)
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0400', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface040 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface040")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface040 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0410
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0410
            * @tc.desc        Flexibility and layout priority, the parent container layout is fixed, layout four child elements,
            * child elements 1, 2, 3, 4 set respectively.layoutWeight(" 4 ").layoutWeight(" 2 ").layoutWeight(" 1 ").
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0410', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface041 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface041")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface041 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0420
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0420
            * @tc.desc        Flexibility and layout priority, the parent container layout is fixed, layout four child elements,
            * child elements 1 and 2 are set respectively.layoutWeight(3) and.Layoutweight (2), child elements 3 and 4 are not set
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0420', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface042 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface042")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface042 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0430
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0430
            * @tc.desc        Flexibility and layout priority, the parent container layout is fixed, layout four child elements,
            * child elements 1 and 2 set layoutWeight(" 3 ") and.layoutWeight(" 2 "), child elements :3, 4 are not set
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0430', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface043 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface043")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface043 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0440
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0440
            * @tc.desc        Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, child element 1 set flexBasis to 0
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0440', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface044 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface044")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface044 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0450
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0450
            * @tc.desc        Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, child element 1 set flexBasis to 100
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0450', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface045 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface045")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface045 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0460
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0460
            * @tc.desc       Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, child element 1 set flexBasis to 200fp
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0460', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface046 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface046")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface046 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0470
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0470
            * @tc.desc        Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, child element 1 set flexBasis to 200lpx
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0470', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface047 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface047")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface047 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0480
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0480
            * @tc.desc        Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, child element 1 set flexBasis to 200px
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0480', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface048 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface048")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface048 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0490
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0490
            * @tc.desc       Flexibility and layout priority, the parent container layout is fixed,
            * layout four child elements, child element 1 set flexBasis to 200vp
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0490', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface049 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface049")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface049 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0500
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0500
            * @tc.desc       Flexibility and layout priority, the parent container layout is fixed,
            * layout four child elements, child element 1 set flexBasis to auto
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0500', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface050 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface050")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface050 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0510
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0510
            * @tc.desc        Flexibility and layout priority, the parent container layout is fixed, layout four child elements,
            * child element 1 set layoutWeight (≥1), the rest of the child elements are not set
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0510', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface051 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface051")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface051 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0520
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0520
            * @tc.desc        Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, child elements 3 and 4 set flexShink value to 1
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0520', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface052 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface052")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface052 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0530
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0530
            * @tc.desc        Flexibility and layout priority, the parent container layout is fixed,
            * layout four child elements, child elements do not set flexBasis attribute
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0530', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface053 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface053")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface053 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0540
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0540
            * @tc.desc        Flexibility and layout priority, the parent container layout is fixed,
            * layout four child elements, child elements do not set flexShink attribute
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0540', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface054 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface054")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface054 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0550
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0550
            * @tc.desc        Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, child elements set both flexGrow/flexGrow and layoutWeight
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0550', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface055 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface055")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface055 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0560
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0560
            * @tc.desc       Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, child elements set flexGrow/flexShink and layoutWeight
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0560', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface056 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface056")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface056 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0570
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0570
            * @tc.desc        Flexibility and layout priority, the parent container layout is fixed,
            * layout four child elements, child elements set flexBasis to -5
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0570', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface057 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface057")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface057 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0580
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0580
            * @tc.desc        Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, child elements set flexBasis to null
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0580', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface058 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface058")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface058 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0590
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0590
            * @tc.desc       Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, child elements set flexBasis undefined
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0590', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface059 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface059")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface059 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0600
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0600
            * @tc.desc        Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, child elements set flexGrow to -5
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0600', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface060 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface060")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface060 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0610
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0610
            * @tc.desc        Elasticity and layout priority, parent container layout fixed,
            * layout four child elements, child elements set flexGrow to undefined
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0610', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface061 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface061")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface061 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0620
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0620
            * @tc.desc        Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, child elements set flexShink to -5
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0620', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface062 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface062")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface062 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0630
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0630
            * @tc.desc       Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, child elements set flexShink to null
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0630', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface063 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface063")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface063 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0640
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0640
            * @tc.desc        Elasticity and layout priority, parent container layout fixed,
            * layout four child elements, child elements set flexShink to undefined
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0640', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface064 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface064")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface064 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0650
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0650
            * @tc.desc        Flexibility and layout priority, the parent container layout is fixed,
            * layout four child elements, child elements set the layoutWeight value to -10
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0650', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface065 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface065")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface065 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0660
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0660
            * @tc.desc       Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, child elements set the layoutWeight value to null
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0660', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface066 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface066")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface066 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0670
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0670
            * @tc.desc        Elastic ability and layout priority, the parent container layout is fixed,
            * the layout of four child elements, the child element set layoutWeight value is undefined
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0670', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface067 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface067")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface067 finish.`);
      done()
    })

    /*
            * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0680
            * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0680
            * @tc.desc        Flexibility and layout priority, parent container layout fixed,
            * layout four child elements, child elements set layoutWeight value to "aaa"
            */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_FLEX_INTERFACE_0680', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentLayoutFlexInterface068 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutFlexInterface/UIComponentLayoutFlexInterface068")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentLayoutFlexInterface068 finish.`);
      done()
    })
  })
}
