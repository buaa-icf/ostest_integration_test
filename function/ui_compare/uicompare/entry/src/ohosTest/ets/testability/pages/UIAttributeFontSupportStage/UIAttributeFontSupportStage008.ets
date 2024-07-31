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
import font from '@ohos.font';

@Entry
@Component
struct UIAttributeFontSupportStage008 {
  @State message: string = 'Hello'

  aboutToAppear() {
    font.registerFont({
      familyName:'pristina',
      familySrc:'/font/pristina.ttf'
    })
  }

  build() {
    Column() {
      Text(this.message)
        .align(Alignment.Center)
        .fontColor('#FFD700')
        .fontFamily('pristina')
    }.width('100%')
  }
}