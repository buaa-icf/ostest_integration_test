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
struct UIComponentPopupboxDatepickerDialogLanguageHabit0050 {
  @State changeRes: string = 'select current date is: \n'
  @State isLunar: boolean = true
  private selectedDate: Date = new Date('2024-08-08')

  build() {
    Column() {
      DatePicker({
        start: new Date('1970-1-1'),
        end: new Date('2100-1-1'),
        selected: this.selectedDate
      })
        .margin({ top: 30, bottom: 30 })
        .id('datepickerDialogLanguageHabit0050')
        .disappearTextStyle({ color: Color.Gray, font: { size: '16fp', weight: FontWeight.Bold } })
        .textStyle({ color: '#ff182431', font: { size: '18fp', weight: FontWeight.Normal } })
        .selectedTextStyle({ color: '#ff0000FF', font: { size: '26fp', weight: FontWeight.Regular } })
        .lunar(this.isLunar)
        .onDateChange((value: Date) => {
          this.selectedDate = value;
          console.info('select current date is: ' + value.toString());
          this.changeRes += value.toString()+'\n';
        })


      Button('切换公历农历').id('datepickerDialogLanguageHabit0050_btn')
        .margin({ top: 30, bottom: 30 })
        .onClick(() => {
          this.isLunar = !this.isLunar;
        })

      Text(this.changeRes)
        .fontColor(Color.Orange)
        .fontSize(16)
        .margin(20)
        .borderWidth(1)
        .width('100%')
        .textAlign(TextAlign.Start)
    }.width('100%')
  }
}
