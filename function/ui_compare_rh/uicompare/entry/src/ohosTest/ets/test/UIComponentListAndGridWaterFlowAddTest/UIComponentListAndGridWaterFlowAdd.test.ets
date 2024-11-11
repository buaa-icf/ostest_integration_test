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

export default function UIComponentListAndGridWaterFlowAdd() {

  describe('UIComponentListAndGridWaterFlowAdd', () => {



    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0270_011
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0270_011
     * @tc.desc    1、添加Waterflow组件
              2、设置Waterflow的属性：
                .columnsTemplate("1fr 1fr")
                .itemConstraintSize({minWidth:'0%',maxWidth:'50%',minHeight:'0%',maxHeight:'100%'})
              3.编译安装demo
    */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0270_011', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0270_011 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0270011")
      await Utils.sleep(1000)

      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0270_011 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0130_072
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0130_072
     * @tc.desc    1、添加Waterflow组件
                   2、设置Waterflow的属性：columnsGap(“”)
    */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0130_072', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0130_072 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0130072")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0130_072 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0140_666
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0140_666
     * @tc.desc    1、添加Waterflow组件
           2、设置Waterflow的属性：columnsGap(10)
    */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0140_666', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0140_666 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0140666")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0140_666 finish.`);
      done()
    })

    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0160_890
 * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0160_890
 * @tc.desc    1、添加Waterflow组件
               2、设置Waterflow的属性：columnsGap('5vp')
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0160_890', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0160_890 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0160890")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0160_890 finish.`);
      done()
    })
    /*
   * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0150_827
   * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0150_827
   * @tc.desc    1、添加Waterflow组件
                 2、在string.json里设置string:
                    "name":'width_20","value':“20"
                 3、设置Waterflow的属性：columnsGap($r(app.string.width_20'))
  */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0150_827', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0150_827 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0150827")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0150_827 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0170_444
* @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0170_444
* @tc.desc    1、添加Waterflow组件
              2、设置Waterflow的属性：columnsGap("abc")
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0170_444', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0170_444 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0170444")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0170_444 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0280_056
* @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0280_056
* @tc.desc   1、添加Waterflow组件
             2、设置Waterflow的属性：rowsGap(“”)
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0280_056', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0280_056 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0280056")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0280_056 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0290_223
* @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0290_223
* @tc.desc   1、添加Waterflow组件
         2、设置Waterflow的属性：rowsGap(10)
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0290_223', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0290_223 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0290223")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0290_223 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0300_414
* @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0300_414
* @tc.desc   1、添加Waterflow组件
             2、在string.json里设置string
               "name":"height_20°,"value':‘20°
                3、设置Waterflow的属性：rowsGap($r('app.string.height_20'))
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0300_414', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0300_414 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0300414")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0300_414 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0310_330
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0310_330
     * @tc.desc    1、添加Waterflow组件
                   2、设置Waterflow的属性：rowsGap('5vp')
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0310_330', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0310_330 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0310330")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0310_330 finish.`);
      done()
    })

    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0320_534
 * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0320_534
 * @tc.desc    1、添加Waterflow组件
               2、设置Waterflow的属性：rowsGap('abc')
 */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0320_534', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0320_534 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0320534")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0320_534 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0080_458
* @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0080_458
* @tc.desc    1、添加Waterflow组件
              2、设置Waterflov的属性：
               columnsTemplate("1fr 1fr")
               rowsTemplate("1fr 1fr 1fr')
               layoutDirection(FlexDirection.ColumnReverse)
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0080_458', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0080_458 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0080458")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0080_458 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0090_321
* @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0090_321
* @tc.desc    1、添加Waterflow组件
          2、设置Waterflov的属性：
           columnsTemplate("1fr 1fr")
           rowsTemplate("1fr 1fr 1fr')
           layoutDirection(FlexDirection.Column)
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0090_321', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0090_321 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0090321")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0090_321 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0100_678
* @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0100_678
* @tc.desc    1、添加Waterflow组件
              2、设置Waterflow的属性：
                 columnsTemplate(”1fr 1fr")
                 rowsTemplate(“ifr 1fr 1fr”)
                 layoutDirection(FlexDirection.RowReverse)
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0100_678', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0100_678 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0100678")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0100_678 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0110_972
* @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0110_972
* @tc.desc    1、添加Waterflow组件
          2、设置Waterflow的属性：
             columnsTemplate(”1fr 1fr")
             rowsTemplate(“ifr 1fr 1fr”)
             layoutDirection(FlexDirection.Row)
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0110_972', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0110_972 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0110972")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0110_972 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0120_725
* @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0120_725
* @tc.desc   1、添加Waterflow组件
             2、设置Waterflow的属性：
                colunnsTenplate(”1fr 1fr")
                rowsTemplate(“1fr lfr 1fr')
                不设置layoutDirection
*/
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0120_725', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0120_725 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridWaterFlowAdd/UIComponentListAndGridWaterFlowAdd0120725")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_WATERFLOW_ADD_0120_725 finish.`);
      done()
    })

  })
}
