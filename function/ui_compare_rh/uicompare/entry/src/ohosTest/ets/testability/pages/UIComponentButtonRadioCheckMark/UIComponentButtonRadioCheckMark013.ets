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

@Entry
@Component
struct UIComponentButtonRadioCheckMark013 {
  @State isSetCheckedBackgroundColor: boolean = false;
  @State isSetUncheckedBorderColor: boolean = false;
  @State isSetIndicatorColor: boolean = false;


  build() {
    Row({space: 10}) {
      Column({space: 10}) {
        Button('checkedBackgroundColor为xx')
          .id('UIComponentButtonRadioCheckMark0130')
          .onClick(() => {
            this.isSetCheckedBackgroundColor = true;
          })
        Button('uncheckedBorderColor为xx')
          .id('UIComponentButtonRadioCheckMark0131')
          .onClick(() => {
            this.isSetUncheckedBorderColor = true;
          })
        Button('indicatorColor为xx')
          .id('UIComponentButtonRadioCheckMark0132')
          .onClick(() => {
            this.isSetIndicatorColor = true;
          })
        Row() {
          Radio({ value: 'Radio1', group: 'radioGroup1', indicatorType: RadioIndicatorType.TICK })
            .checked(true)
            .width(50)
            .height(50)
            .radioStyle({
              checkedBackgroundColor: this.isSetCheckedBackgroundColor ? 'rgba(255,100,255,0.5)' : '',
              uncheckedBorderColor: this.isSetUncheckedBorderColor ? 'rgba(255,100,255,0.5)' : '',
              indicatorColor: this.isSetIndicatorColor ? 'rgba(255,100,255,0.5)' : '',
            })
            .id('UIComponentButtonRadioCheckMark0130')
        }
        Row() {
          Radio({ value: 'Radio2', group: 'radioGroup2', indicatorType: RadioIndicatorType.TICK })
            .checked(true)
            .width(50)
            .height(50)
            .radioStyle({
              checkedBackgroundColor: this.isSetCheckedBackgroundColor ? undefined : '',
              uncheckedBorderColor: this.isSetUncheckedBorderColor ? undefined : '',
              indicatorColor: this.isSetIndicatorColor ? undefined : '',
            })
            .id('UIComponentButtonRadioCheckMark0131')
        }
        Row() {
          Radio({ value: 'Radio3', group: 'radioGroup3', indicatorType: RadioIndicatorType.TICK })
            .checked(true)
            .width(50)
            .height(50)
            .radioStyle({
              checkedBackgroundColor: this.isSetCheckedBackgroundColor ? Color.Black : '',
              uncheckedBorderColor: this.isSetUncheckedBorderColor ? Color.Black : '',
              indicatorColor: this.isSetIndicatorColor ? Color.Black : '',
            })
            .id('UIComponentButtonRadioCheckMark0132')
        }
        Row() {
          Radio({ value: 'Radio4', group: 'radioGroup4', indicatorType: RadioIndicatorType.TICK })
            .checked(true)
            .width(50)
            .height(50)
            .radioStyle({
              checkedBackgroundColor: this.isSetCheckedBackgroundColor ? 0xff00ff00 : '',
              uncheckedBorderColor: this.isSetUncheckedBorderColor ? 0xff00ff00 : '',
              indicatorColor: this.isSetIndicatorColor ? 0xff00ff00 : '',
            })
            .id('UIComponentButtonRadioCheckMark0133')
        }
        Row() {
          Radio({ value: 'Radio5', group: 'radioGroup5', indicatorType: RadioIndicatorType.TICK })
            .checked(true)
            .width(50)
            .height(50)
            .radioStyle({
              checkedBackgroundColor: this.isSetCheckedBackgroundColor ? '#ff0000ff' : '',
              uncheckedBorderColor: this.isSetUncheckedBorderColor ? '#ff0000ff' : '',
              indicatorColor: this.isSetIndicatorColor ? '#ff0000ff' : '',
            })
            .id('UIComponentButtonRadioCheckMark0134')
        }
        Row() {
          Radio({ value: 'Radio6', group: 'radioGroup6', indicatorType: RadioIndicatorType.TICK })
            .checked(true)
            .width(50)
            .height(50)
            .radioStyle({
              checkedBackgroundColor: this.isSetCheckedBackgroundColor ? 'bbbb' : '',
              uncheckedBorderColor: this.isSetUncheckedBorderColor ? 'bbbb' : '',
              indicatorColor: this.isSetIndicatorColor ? 'bbbb' : '',
            })
            .id('UIComponentButtonRadioCheckMark0135')
        }
        Row() {
          Radio({ value: 'Radio7', group: 'radioGroup7', indicatorType: RadioIndicatorType.TICK })
            .checked(true)
            .width(50)
            .height(50)
            .radioStyle({
              checkedBackgroundColor: this.isSetCheckedBackgroundColor ? getContext().resourceManager.getColorSync($r("app.color.colorRed")) : '',
              uncheckedBorderColor: this.isSetUncheckedBorderColor ? getContext().resourceManager.getColorSync($r("app.color.colorRed")) : '',
              indicatorColor: this.isSetIndicatorColor ? getContext().resourceManager.getColorSync($r("app.color.colorRed")) : '',
            })
            .id('UIComponentButtonRadioCheckMark0136')
        }
        Row() {
          Radio({ value: 'Radio8', group: 'radioGroup8', indicatorType: RadioIndicatorType.TICK })
            .checked(true)
            .width(50)
            .height(50)
            .radioStyle({
              checkedBackgroundColor: '',
              uncheckedBorderColor: '',
              indicatorColor: '',
            })
            .id('UIComponentButtonRadioCheckMark0136')
        }
      }
      .margin({
        left: 10
      })
    }
  }
}
