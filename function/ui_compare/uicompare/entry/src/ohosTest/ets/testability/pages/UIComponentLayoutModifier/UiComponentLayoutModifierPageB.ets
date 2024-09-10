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

import router from '@ohos.router'

interface NameObject {
  name: string;
  url: string
}

@Entry
@Component
struct UiComponentLayoutModifierPageTwo {
  params: Record<string, NameObject> = router.getParams() as Record<string, NameObject>
  @State param: NameObject = this.params.text
  @State active: boolean = false

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start, justifyContent: FlexAlign.SpaceBetween }) {
      Navigator({ target:this.param.url, type: NavigationType.Push }) {
        Text('Go to back page').width('100%').height(20)
      }.active(this.active)
      .onClick(() => {
        this.active = true
      })
      Text('get param: ' + this.param.name)
        .width('100%').textAlign(TextAlign.Center)
      Text('page two')
        .width('100%').textAlign(TextAlign.Center)
    }
    .width('100%').height(200).padding({ left: 35, right: 35, top: 35 })
  }
}