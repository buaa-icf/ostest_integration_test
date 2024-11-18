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
struct UIComponentButtonRadioCheckMark003 {
  @State textTip: string = '勾选类型的Radio选中';
  @State isChecked: boolean = true;

  build() {
    Row() {
      Column({ space: 50 }) {
        Text(this.textTip)
        Row({space: 20}) {
          Radio({ value: 'Radio', group: 'radioGroup', indicatorType: RadioIndicatorType.TICK })
            .checked(this.isChecked)
            .width(50)
            .height(50)
            .id('UIComponentButtonRadioCheckMark0030')
            .gesture(
              LongPressGesture({repeat: true})
                .onAction((event: GestureEvent) => {
                  if (event && event.repeat) {
                    if(this.isChecked) {
                      this.textTip = '勾选类型的Radio选中，press状态';
                    } else {
                      this.textTip = '勾选类型的Radio未选中，press状态';
                    }
                  }
                })
            )
        }
      }
      .width('200px')
      .height('200px')
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}
