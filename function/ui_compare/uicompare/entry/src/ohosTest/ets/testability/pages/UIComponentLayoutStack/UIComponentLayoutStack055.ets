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
@Entry
@Component
struct UIComponentLayoutStack055{
  myXComponentController: XComponentController = new XComponentController();
  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Start }) {
      XComponent({
        id: 'xComponentId',
        type: XComponentType.NODE,
        libraryname: 'nativerender',
        controller: this.myXComponentController
      })
      Stack({ alignContent: Alignment.Top }) {
        Text('hello').width(300).height(300).align(Alignment.Top).backgroundColor(Color.Blue) .clipShape(new Circle({ width: '250', height: '250' }))
      }
      .width(200)
      .height(200)
      .backgroundImage($r('app.media.icon'))
      .backgroundColor(0xFFFF0000)
      .backgroundImageSize({ width: '50'})
      .borderWidth({top:2,right:5,bottom:2,left:5})
      .borderColor({top:0xFFFF0000,right:0xFFFF0000,bottom:0xFFFF0000,left:0xFFFF0000})
      .opacity(0.15)
      .clip(false)
    }
  }
}