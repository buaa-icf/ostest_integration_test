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
struct UIComponentButtonRadioLConic020 {
  @State rating: number = 3.5;

  @Builder
  indicatorBuilder() {
    Image('cat.jpg')
      .width('20vp')
      .height('20vp')
  }

  build() {
    Row() {
      Column() {
        Radio(
          {
            value: 'Radio',
            group: 'radioGroup',
            indicatorType: RadioIndicatorType.CUSTOM,
            indicatorBuilder: () => this.indicatorBuilder()
          })
          .height('50vp')
          .width('50vp')
          .checked(false)
          .radioStyle(
            {
              indicatorColor: Color.Pink
            }
          )
          .id('UIComponentButtonRadioLConic0200')
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