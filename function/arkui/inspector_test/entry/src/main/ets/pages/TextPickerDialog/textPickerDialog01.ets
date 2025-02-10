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

@Entry
@Component
struct TextPickerDialogExample {
  @State v:string = '';
  private select: number | number[] = 0
  private fruits: string[] = ['apple1', 'orange2', 'peach3', 'grape4', 'banana5']
  private apfruits: string[] = ['apple1', 'apple2', 'apple3', 'apple4']
  private orfruits: string[] = ['orange1', 'orange2', 'orange3', 'orange4']
  private pefruits: string[] = ['peach1', 'peach2', 'peach3', 'peach4']
  private multi: string[][] = [this.apfruits, this.orfruits, this.pefruits]
  private cascade: TextCascadePickerRangeContent[] = [
    {
      text: '辽宁省',
      children: [{ text: '沈阳市', children: [{ text: '沈河区' }, { text: '和平区' }, { text: '浑南区' }] },
        { text: '大连市', children: [{ text: '中山区' }, { text: '金州区' }, { text: '长海县' }] }]
    },
    {
      text: '吉林省',
      children: [{ text: '长春市', children: [{ text: '南关区' }, { text: '宽城区' }, { text: '朝阳区' }] },
        { text: '四平市', children: [{ text: '铁西区' }, { text: '铁东区' }, { text: '梨树县' }] }]
    },
    {
      text: '黑龙江省',
      children: [{ text: '哈尔滨市', children: [{ text: '道里区' }, { text: '道外区' }, { text: '南岗区' }] },
        { text: '牡丹江市', children: [{ text: '东安区' }, { text: '西安区' }, { text: '爱民区' }] }]
    }
  ]
  private rangeContent: TextPickerRangeContent[] = [
    {
      icon: $r('app.media.icon'),
      text: '01'
    },
    {
      icon: $r('app.media.icon'),
      text: '02'
    },
    {
      icon: $r('app.media.icon'),
      text: '03'
    },
    {
      icon: $r('app.media.icon'),
      text: '04'
    },
  ]

  build() {
    Scroll() {
      Column() {
        Text('TextPickerDialog')
          .fontSize(24)
          .margin({bottom: 24})
        Text('TextPickerDialog')
          .fontSize(24)
          .margin({bottom: 24})

        Text("Show TextPickerDialog01 with TextPickerDialogOptions.range\'s type: string[]")
          .fontSize(18)
          .margin({top: 24})
        Button("Show TextPickerDialog01. Selected: " + this.v)
          .margin(20)
          .onClick(() => {
            TextPickerDialog.show({
              range: this.fruits,
              selected: this.select,
              disappearTextStyle: {color: Color.Red, font: {size: 15, weight: FontWeight.Lighter}},
              textStyle: {color: Color.Black, font: {size: 20, weight: FontWeight.Normal}},
              selectedTextStyle: {color: Color.Blue, font: {size: 30, weight: FontWeight.Bolder}},
              acceptButtonStyle: { type: ButtonType.Normal, style: ButtonStyleMode.NORMAL, role: ButtonRole.NORMAL, fontColor: Color.Red,
                fontSize: '26fp', fontWeight: FontWeight.Bolder, fontStyle: FontStyle.Normal, fontFamily: 'sans-serif', backgroundColor:'#80834511',
                borderRadius: 20 },
              cancelButtonStyle: { type: ButtonType.Normal, style: ButtonStyleMode.NORMAL, role: ButtonRole.NORMAL, fontColor: Color.Blue,
                fontSize: '16fp', fontWeight: FontWeight.Normal, fontStyle: FontStyle.Italic, fontFamily: 'sans-serif', backgroundColor:'#50182431',
                borderRadius: 10 },
              onAccept: (value: TextPickerResult) => {
                this.select = value.index
                console.log(this.select + '')
                this.v = value.value as string
                console.info("TextPickerDialog:onAccept()" + JSON.stringify(value))
              },
              onCancel: () => {
                console.info("TextPickerDialog:onCancel()")
              },
              onChange: (value: TextPickerResult) => {
                console.info("TextPickerDialog:onChange()" + JSON.stringify(value))
              },
              onDidAppear: () => {
                console.info("TextPickerDialog:onDidAppear()")
              },
              onDidDisappear: () => {
                console.info("TextPickerDialog:onDidDisappear()")
              },
              onWillAppear: () => {
                console.info("TextPickerDialog:onWillAppear()")
              },
              onWillDisappear: () => {
                console.info("TextPickerDialog:onWillDisappear()")
              }
            })
          })

        Text("Show TextPickerDialog02 with TextPickerDialogOptions.range\'s type: string[][]")
          .fontSize(18)
          .margin({top: 24})
        Button("Show TextPickerDialog02")
          .margin(20)
          .onClick(() => {
            TextPickerDialog.show({
              range: this.multi,
              selected: [0, 3, 2],
            })
          })

        Text("Show TextPickerDialog03 with TextPickerDialogOptions.range\'s type: TextCascadePickerRangeContent[]")
          .fontSize(18)
          .margin({top: 24})
        Button("Show TextPickerDialog03")
          .margin(20)
          .onClick(() => {
            TextPickerDialog.show({
              range: this.cascade,
              value: ['吉林省', '四平市', '梨树县'],
            })
          })

        Text("Show TextPickerDialog04 with TextPickerDialogOptions.range\'s type: TextPickerRangeContent[]")
          .fontSize(18)
          .margin({top: 24})
        Button("Show TextPickerDialog04")
          .margin(20)
          .onClick(() => {
            TextPickerDialog.show({
              range: this.rangeContent,
              selected: this.select,
            })
          })

        Text("Show TextPickerDialog05 with TextPickerDialogOptions.range\'s type: Resource")
          .fontSize(18)
          .margin({top: 24})
        Button("Show TextPickerDialog05")
          .margin(20)
          .onClick(() => {
            TextPickerDialog.show({
              range: $r('app.strarray.textPicker_ResourceRange'),
              selected: this.select,
            })
          })

      }.width('100%')
    }.height('100%')
  }
}
