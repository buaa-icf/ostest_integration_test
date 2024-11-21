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
struct UIComponentPopupPromptInterface004 {
  @State selectContent: string = 'select内容为：';

  build() {
    Row() {
      Column() {
        Text(this.selectContent)
        Button('Show ActionMenu')
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            this.getUIContext().getPromptAction().showActionMenu({
              title: 'showActionMenu Title Info',
              buttons: [
                {
                  text: 'item1',
                  color: '#666666'
                },
                {
                  text: 'item2',
                  color: '#000000'
                },
              ]
            })
              .then(data => {
                this.selectContent = this.selectContent + data.index;
              })
              .catch((err:Error) => {
                console.info('showActionMenu error: ' + err);
              })
          }).key('UIComponentPopupPromptInterface004_button_001')
      }
      .width('100%')
    }
    .height('100%')
  }
}
