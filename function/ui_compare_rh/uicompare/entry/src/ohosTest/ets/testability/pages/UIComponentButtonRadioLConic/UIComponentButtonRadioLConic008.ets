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
struct UIComponentButtonRadioLConic008 {
  @State rating: number = 3.5;
  @State resourcePng: string = 'cat.jpg';
  @State resourceColor: Color = Color.Pink;
  @State checkedStatus: boolean = false;

  @Builder
  indicatorBuilder() {
    Image(this.resourcePng)
      .width(100)
      .height(100)
  }

  build() {
    Row() {
      Column() {
        Text('Radio不设置大小，image为100')
        Radio(
          {
            value: 'Radio',
            group: 'radioGroup',
            indicatorType: RadioIndicatorType.CUSTOM,
            indicatorBuilder: () => this.indicatorBuilder()
          })
          .checked(this.checkedStatus)
          .radioStyle(
            {
              indicatorColor: Color.Pink
            }
          )
          .id('UIComponentButtonRadioLConic0080')
      }
      .width('200px')
      .height('80px')
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .backgroundColor($r('sys.color.background_primary'))
  }
}