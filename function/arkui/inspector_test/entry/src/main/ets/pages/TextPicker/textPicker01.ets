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

class bottom {
  bottom:number = 50
}
let bott:bottom = new bottom()
@Entry
@Component
struct TextPickerExample {
  private select: number = 1
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
  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['jz_textPicker_id', ''],
    ['', 'jz_textPicker_key'],
    ['jz_textPicker_id', 'jz_textPicker_key'],
  ];

  build() {
    Scroll() {
      Column() {
        ForEach(this.idOrKeyArray, (item: Array<string>) => {
          Text('TextPicker with TextPickerOptions.range\'s type: string[]')
            .fontSize(18)
            .margin({bottom: 24})
          TextPicker({ range: this.apfruits, selected: this.select }) //range类型: string[]
            .onChange((value: string | string[], index: number | number[]) => {
              console.info('Picker item changed, value: ' + value + ', index: ' + index)
            })
            .disappearTextStyle({color: Color.Red, font: {size: 15, weight: FontWeight.Lighter}})
            .textStyle({color: Color.Black, font: {size: 20, weight: FontWeight.Normal}})
            .selectedTextStyle({color: Color.Blue, font: {size: 30, weight: FontWeight.Bolder}})
            .divider({
              strokeWidth: 10,
              color: Color.Red,
              startMargin: 10,
              endMargin: 20
            } as DividerOptions)
            .id(item[0])
            .key(item[1])

          Text('TextPicker with TextPickerOptions.range\'s type: string[][]')
            .fontSize(18)
            .margin({bottom: 24})
          TextPicker({ range: this.multi, selected: [0, 3, 2] }) //range类型: string[][]
            .onChange((value: string | string[], index: number | number[]) => {
              console.info('TextPicker 多列:onChange ' + JSON.stringify(value) + ', ' + 'index: ' + JSON.stringify(index))
            }).margin(bott)
            .id(item[0])
            .key(item[1])

          Text('TextPicker with TextPickerOptions.range\'s type: TextCascadePickerRangeContent[]')
            .fontSize(18)
            .margin({bottom: 24})
          TextPicker({ range: this.cascade, value: ['吉林省', '四平市', '梨树县'] }) //range类型: TextCascadePickerRangeContent[]
            .onChange((value: string | string[], index: number | number[]) => {
              console.info('TextPicker 多列联动:onChange ' + JSON.stringify(value) + ', ' + 'index: ' + JSON.stringify(index))
            })
            .id(item[0])
            .key(item[1])

          Text('TextPicker with TextPickerOptions.range\'s type: TextPickerRangeContent[]')
            .fontSize(18)
            .margin({bottom: 24})
          TextPicker({ range: this.rangeContent, selected: this.select })  //range类型: TextPickerRangeContent[]
            .onChange((value: string | string[], index: number | number[]) => {
              console.info('TextPicker 单列TextPickerRangeContent:onChange ' + JSON.stringify(value) + ', ' + 'index: ' + JSON.stringify(index))
            })
            .id(item[0])
            .key(item[1])

          Text('TextPicker with TextPickerOptions.range\'s type: Resource')
            .fontSize(18)
            .margin({bottom: 24})
          TextPicker({ range: $r('app.strarray.textPicker_ResourceRange'), selected: this.select })  //range类型: resource
            .onChange((value: string | string[], index: number | number[]) => {
              console.info('TextPicker 单列resource:onChange ' + JSON.stringify(value) + ', ' + 'index: ' + JSON.stringify(index))
            })
            .id(item[0])
            .key(item[1])
        })
      }
    }
  }
}
