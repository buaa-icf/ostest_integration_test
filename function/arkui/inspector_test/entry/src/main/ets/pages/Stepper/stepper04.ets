/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
struct StepperExample04 {
  @State currentIndex: number = 0
  @State firstState: ItemState = ItemState.Normal
  @State secondState: ItemState = ItemState.Normal
  @State thirdState: ItemState = ItemState.Normal
  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['qzq_Stepper_id', ''],
    ['', 'qzq_Stepper_key'],
    ['qzq_Stepper_id', 'qzq_Stepper_key'],
  ];
  build() {
    Column(){
      Text("Stepper")
        .fontSize(18)
        Column(){
          Stepper({
            index: this.currentIndex
          }) {
            StepperItem() {
              Column() {
                Text('Page One')
                  .itemTextStyle()
                Button('change status:' + this.firstState)
                  .backgroundColor('#007dFF')
                  .onClick(() => {
                    this.firstState = this.firstState === ItemState.Skip ? ItemState.Normal : ItemState.Skip
                  })
              }.itemStyle()
            }
            .nextLabel('Next')
            .status(this.firstState)

            StepperItem() {
              Column() {
                Text('Page Two')
                  .itemTextStyle()
                Button('change status:' + this.secondState)
                  .backgroundColor('#007dFF')
                  .onClick(() => {
                    this.secondState = this.secondState === ItemState.Disabled ? ItemState.Normal : ItemState.Disabled
                  })
              }.itemStyle()
            }
            .nextLabel('Next')
            .prevLabel('Previous')
            .status(this.secondState)

            StepperItem() {
              Column() {
                Text('Page Three')
                  .itemTextStyle()
                Button('change status:' + this.thirdState)
                  .backgroundColor('#007dFF')
                  .onClick(() => {
                    this.thirdState = this.thirdState === ItemState.Waiting ? ItemState.Normal : ItemState.Waiting
                  })
              }.itemStyle()
            }
            .status(this.thirdState)

            StepperItem() {
              Column() {
                Text('Page Four')
                  .itemTextStyle()
              }.itemStyle()
            }
          }
          .id(this.idOrKeyArray[3][0])
          .key(this.idOrKeyArray[3][1])
          .backgroundColor('#F1F3F5')
      }
    }
  }
}