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
struct UIAttributeFontSupportstage004 {
  aboutToAppear() {
    font.registerFont({
      familyName: 'ownfontone',
      familySrc: $rawfile('font/own.ttf')
    });
    font.registerFont({
      familyName: 'ownfonttwo',
      familySrc: $rawfile('font/own1.ttf')
    });
    font.registerFont({
      familyName: 'ownfontthree',
      familySrc: $rawfile('font/own2.TTF')
    });
  }

  build() {
    Column() {
      Text() {
        Span('hello world')
          .decoration({ type: TextDecorationType.Underline, style: TextDecorationStyle.DOTTED })
          .fontSize(12)
          .fontFamily('ownfontone')
      }

      Text() {
        Span('hello world')
          .decoration({ type: TextDecorationType.Underline, style: TextDecorationStyle.DOTTED })
          .fontSize(12)
          .fontFamily('ownfonttwo')
      }

      Text() {
        Span('hello world')
          .decoration({ type: TextDecorationType.Underline, style: TextDecorationStyle.DOTTED })
          .fontSize(12)
          .fontFamily('ownfontthree')
      }

      Text() {
        Span('hello world')
          .decoration({ type: TextDecorationType.Underline, style: TextDecorationStyle.DOTTED })
          .fontSize(12)
      }
    }
    .width('100%')
    .margin({ top: 30 })
  }
}