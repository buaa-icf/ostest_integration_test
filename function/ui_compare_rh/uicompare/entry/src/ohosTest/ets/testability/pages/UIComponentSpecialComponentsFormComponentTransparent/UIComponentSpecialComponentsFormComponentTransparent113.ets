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
struct UIComponentSpecialComponentsFormComponentTransparent113 {
  @State message: string = 'Hello';
  @State customPopup: boolean = false;

  @Builder
  popupBuilder() {
    Row({ space: 2 }) {
      Text('This is a custom popup').fontSize(10)
    }
  }

  build() {
    Row() {
      Column() {
        Button(this.message)
          .fontSize(20)
          .fontColor(Color.Blue)
          .id('UIComponentSpecialComponentsFormComponentTransparent1130')
          .onClick(() => {
            this.customPopup = !this.customPopup;
          })
          .bindPopup(this.customPopup, {
            builder: this.popupBuilder,
            enableArrow: true,
            showInSubWindow: false,
            width: (getContext().resourceManager.getNumber($r("app.integer.30")) + 'px') as PX
          })
      }
      .width('200px')
      .height('80px')
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}