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

import {StepperItemModifier} from "@ohos.arkui.modifier"

class MyModifier extends StepperItemModifier {
  applyNormalAttribute(instance: StepperItemAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.nextLabel('Next')
  }
  public setGroup1() : void {
    this.nextLabel(undefined)
  }
  public setGroup2() : void {
    this.nextLabel('下一页')
  }
}

@Styles function itemStyle () {
  .width(336)
  .height(621)
  .margin({ top: 48, left: 12 })
  .borderRadius(24)
  .backgroundColor('#FFFFFF')
}

@Extend(Text) function itemTextStyle () {
  .fontColor('#182431')
  .fontSize(36)
  .fontWeight(500)
  .opacity(0.4)
  .margin({ top: 82, bottom: 40 })
}

@Entry
@Component
struct UiComponentLayoutModifier032 {
  @State myModifier: StepperItemModifier = new MyModifier().width(300).height(300)
  @State currentIndex: number = 0
  @State firstState: ItemState = ItemState.Normal
  @State secondState: ItemState = ItemState.Normal
  @State thirdState: ItemState = ItemState.Normal

  build() {
    Stepper({
      index: this.currentIndex
    }) {
      StepperItem() {
        Column() {
          Text('Page One')
            .itemTextStyle()
          Button('nextLabel' + this.firstState)
            .backgroundColor('#007dFF')
            .onClick(() => {
              (this.myModifier as MyModifier).setGroup0()
              this.firstState = this.firstState === ItemState.Skip ? ItemState.Normal : ItemState.Skip
            })
            .id('UiComponentLayoutModifier032')
        }.itemStyle()
      }
      .attributeModifier(this.myModifier as MyModifier)
      .status(this.firstState)
      StepperItem() {
        Column() {
          Text('Page Two')
            .itemTextStyle()
          Button('nextLabel' + this.secondState)
            .backgroundColor('#007dFF')
            .onClick(() => {
              (this.myModifier as MyModifier).setGroup1()
              this.secondState = this.secondState === ItemState.Disabled ? ItemState.Normal : ItemState.Disabled
            })
        }.itemStyle()
      }
      .attributeModifier(this.myModifier as MyModifier)
      .prevLabel('Previous')
      .status(this.secondState)
      StepperItem() {
        Column() {
          Text('Page Three')
            .itemTextStyle()
          Button('nextLabel' + this.thirdState)
            .backgroundColor('#007dFF')
            .onClick(() => {
              (this.myModifier as MyModifier).setGroup2()
              this.thirdState = this.thirdState === ItemState.Waiting ? ItemState.Normal : ItemState.Waiting
            })
        }.itemStyle()
      }
      .attributeModifier(this.myModifier as MyModifier)
      .status(this.thirdState)
    }
    .backgroundColor('#F1F3F5')
    .onFinish(() => {
      console.info('onFinish')
    })
    .onSkip(() => {
      console.info('onSkip')
    })
    .onChange((prevIndex?: number, index?: number) => {
      if(index){
        this.currentIndex = index
      }
    })
  }
}