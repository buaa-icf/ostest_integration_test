/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import Settings from '../../../test/model/Settings';

@Entry
@Component
struct UIComponentPopupboxCalendarpickerInterface0330 {
  private selectedDate: Date | null = null
  @State changeRes: string = 'CalendarPicker onChange callBack:\n'
  controller: CalendarController = new CalendarController();

  build() {
    Column() {
      Text('月历日期选择器').fontSize(30)
      Column() {
        CalendarPicker({ hintRadius: 10, selected: this.selectedDate })
          .id('calendarpickerInterface0330')
          .edgeAlign(CalendarAlign.END)
          .textStyle({ color: "#ff182431", font: { size: 20, weight: FontWeight.Normal } })
          .margin(10)
          .onChange((value) => {
            console.info("CalendarPicker onChange:" + JSON.stringify(value));
            this.changeRes += (value.valueOf()) + '\n';
          })
      }.alignItems(HorizontalAlign.Center).width("100%").height('60%')

      Button('System Date')
        .id('calendarpickerInterface0330_btn')
        .fontColor(Color.Orange)
        .fontSize(16)
        .margin(20)
        .onClick(() => {
          let sysDate: Date = Settings.getSysDateTime();
          console.info("CalendarPicker sysDate:" + JSON.stringify(sysDate));
          this.selectedDate = sysDate;
        })
    }.width('100%').margin({ top: 20 })
  }
}
