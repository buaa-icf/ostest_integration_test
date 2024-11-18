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
struct UIComponentPopupboxDatepickerDialogLanguageHabit0210 {
  selectedDate: Date = new Date("2024-1-1")
  @State changeRes: string = 'select current DateTime is: \n'
  @State useMilitaryTime: boolean = true
  @State showTime: boolean = true
  lunar:boolean = false

  build() {
    Column() {
      Button("DatePickerDialog").id('datepickerDialogLanguageHabit0210_btn')
        .margin(20)
        .onClick(() => {
          this.getUIContext().showDatePickerDialog({
            start: new Date("2000-1-1"),
            end: new Date("2100-12-31"),
            selected: this.selectedDate,
            showTime: this.showTime,
            useMilitaryTime: this.useMilitaryTime,
            lunar: this.lunar,
            lunarSwitch: true,
            disappearTextStyle: { color: Color.Pink, font: { size: '22fp', weight: FontWeight.Bold } },
            textStyle: { color: '#ff00ff00', font: { size: '18fp', weight: FontWeight.Normal } },
            selectedTextStyle: { color: '#ff182431', font: { size: '14fp', weight: FontWeight.Regular } },
            onDateAccept: (value: Date) => {
              // 通过Date的setFullYear方法设置按下确定按钮时的日期，这样当弹窗再次弹出时显示选中的是上一次确定的日期
              this.selectedDate = value
              console.info("DatePickerDialog:onDateAccept()" + value.toString());
              this.changeRes += 'onDateAccept: ' + value + '\n';
            },
            onCancel: () => {
              console.info("DatePickerDialog:onCancel()")
            },
            onDateChange: (value: Date) => {
              console.info("DatePickerDialog:onDateChange()" + value.toString())
              this.changeRes += 'onDateChange: ' + value + '\n';
            },
            onDidAppear: () => {
              console.info("DatePickerDialog:onDidAppear()")
            },
            onDidDisappear: () => {
              console.info("DatePickerDialog:onDidDisappear()")
            },
            onWillAppear: () => {
              console.info("DatePickerDialog:onWillAppear()")
            },
            onWillDisappear: () => {
              console.info("DatePickerDialog:onWillDisappear()")
            }
          })
        })
      Flex({ justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {
        Checkbox({ name: 'cb1', group: 'checkboxGroup' })
          .id('datepickerDialogLanguageHabit0210_cb1')
          .selectedColor(0x39a2db)
          .shape(CheckBoxShape.CIRCLE)
          .onChange((value: boolean) => {
            console.info('Checkbox change is' + value)
            this.useMilitaryTime = value;
          })
          .mark({
            strokeColor: Color.Black,
            size: 30,
            strokeWidth: 3
          })
          .select(this.useMilitaryTime)
          .unselectedColor(Color.Red)
          .margin(20)
          .height(30)
        Text('24小时制').fontSize(20)
        Checkbox({ name: 'cb2', group: 'checkboxGroup' })
          .id('datepickerDialogLanguageHabit0210_cb2')
          .selectedColor(0x39a2db)
          .shape(CheckBoxShape.CIRCLE)
          .onChange((value: boolean) => {
            console.info('Checkbox change is' + value)
            this.showTime = value;
          })
          .mark({
            strokeColor: Color.Black,
            size: 30,
            strokeWidth: 3
          })
          .select(this.showTime)
          .unselectedColor(Color.Red)
          .margin(20)
          .height(30)
        Text('显示时间').fontSize(20)
      }.width('100%')

      Text(this.changeRes)
        .fontColor(Color.Orange)
        .fontSize(16)
        .margin(20)
        .borderWidth(1)
        .width('100%')
        .textAlign(TextAlign.Start)
    }
  }
}
