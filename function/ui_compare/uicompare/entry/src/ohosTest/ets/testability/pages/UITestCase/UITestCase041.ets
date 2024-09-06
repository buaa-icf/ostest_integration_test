/**
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import { CommonModifier, SideBarContainerModifier} from '@ohos.arkui.modifier';
class MySideBarContainerModifier extends SideBarContainerModifier {
  isDark: boolean = false
  applyNormalAttribute(instance: MySideBarContainerModifier): void {
    if (this.isDark) {
      instance.sideBarWidth(5)
      instance.minSideBarWidth(5)
      instance.maxSideBarWidth(20)
      instance.divider({ strokeWidth: '5vp', color: Color.Gray, startMargin: '4vp', endMargin: '4vp' })
    } else {
      instance.sideBarWidth(20)
      instance.minSideBarWidth(20)
      instance.maxSideBarWidth(20)
    }
  }
  public set():void{
    this.isDark =!this.isDark;
  }
}
@Entry
@Component
struct UITestCase041 {
  normalIcon: Resource = $r("app.media.icon")
  selectedIcon: Resource = $r("app.media.icon")
  @State mySideBarContainerModifier: CommonModifier = new MySideBarContainerModifier()
  @State arr: number[] = [1, 2, 3]
  @State current: number = 1
  build() {
    SideBarContainer(SideBarContainerType.Embed) {
      Column() {
        ForEach(this.arr, (item: number) => {
          Column({ space: 5 }) {
            Image(this.current === item ? this.selectedIcon : this.normalIcon).width(64).height(64)
            Text("Index0" + item)
              .fontSize(25)
              .fontColor(this.current === item ? '#ffced9ea' : '#999')
              .fontFamily('source-sans-pro,cursive,sans-serif')
          }
          .onClick(() => {
            this.current = item
          })
        }, (item: string) => item)
      }
      .justifyContent(FlexAlign.SpaceEvenly)
      .backgroundColor('#1966f6f6')
      Column() {
        Text('SideBarContainer content text1').fontSize(25)
        Text('SideBarContainer content text2').fontSize(25)
        Button('change')
          .onClick(() =>{
            (this.mySideBarContainerModifier as MySideBarContainerModifier).set()
          })
          .id('sibarcontain041')
      }
      .margin({ top: 50, left: 20, right: 30 })
    }
    .attributeModifier(this.mySideBarContainerModifier as MySideBarContainerModifier)
    .height('80%')
    .controlButton({
      icons: {
        hidden: $r('app.media.icon'),
        shown: $r('app.media.icon'),
        switching: $r('app.media.icon')
      }
    })
    .onChange((value: boolean) => {
      console.info('status:' + value)
    })

  }
}