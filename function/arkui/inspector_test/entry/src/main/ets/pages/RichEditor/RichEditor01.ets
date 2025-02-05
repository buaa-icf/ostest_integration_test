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

import router from '@ohos.router'
@Entry
@Component
struct RichEditor01 {
  @Builder
  placeholderBuilder4() {
    Column() {
      Column({ space: 5 }) {
        Text('direction:Row').fontSize(9).fontColor(0xCCCCCC).width('90%')
        Flex({ direction: FlexDirection.Row }) {
          Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
          Text('1').width('20%').height(50).backgroundColor(0xD2B48C)
          Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
          Text('1').width('20%').height(50).backgroundColor(0xD2B48C)
        }
        .height(70)
        .width('90%')
        .padding(10)
        .backgroundColor(0xAFEEEE)

        Text('direction:RowReverse').fontSize(9).fontColor(0xCCCCCC).width('90%')
        Flex({ direction: FlexDirection.RowReverse }) {
          Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
          Text('1').width('20%').height(50).backgroundColor(0xD2B48C)
          Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
          Text('1').width('20%').height(50).backgroundColor(0xD2B48C)
        }
        .height(70)
        .width('90%')
        .padding(10)
        .backgroundColor(0xAFEEEE)

        Text('direction:Column').fontSize(9).fontColor(0xCCCCCC).width('90%')
        Flex({ direction: FlexDirection.Column }) {
          Text('1').width('20%').height(40).backgroundColor(0xF5DEB3)
          Text('1').width('20%').height(40).backgroundColor(0xD2B48C)
          Text('1').width('20%').height(40).backgroundColor(0xF5DEB3)
          Text('1').width('20%').height(40).backgroundColor(0xD2B48C)
        }
        .height(160)
        .width('90%')
        .padding(10)
        .backgroundColor(0xAFEEEE)

        Text('direction:ColumnReverse').fontSize(9).fontColor(0xCCCCCC).width('90%')
        Flex({ direction: FlexDirection.ColumnReverse }) {
          Text('1').width('20%').height(40).backgroundColor(0xF5DEB3)
          Text('1').width('20%').height(40).backgroundColor(0xD2B48C)
          Text('1').width('20%').height(40).backgroundColor(0xF5DEB3)
          Text('1').width('20%').height(40).backgroundColor(0xD2B48C)
        }
        .height(160)
        .width('90%')
        .padding(10)
        .backgroundColor(0xAFEEEE)
      }.width('100%').margin({ top: 5 })
    }.width('100%')
  }
  @Builder
  placeholderBuilder() {
    Row({ space: 2 }) {
      Image($r("app.media.icon")).width(24).height(24).margin({ left: -5 })
      Text('Custom Popup').fontSize(10)
    }.width(100).height(50).padding(5)
  }
  controller: RichEditorController = new RichEditorController()
  private spanParagraphs: RichEditorParagraphResult[] = [];
  private start: number = -1;
  private end: number = -1;
  private my_offset: number | undefined = undefined
  private my_builder: CustomBuilder = undefined
  @State message: string = "[-1, -1]"
  // 自定义键盘组件
  @Builder
  CustomKeyboardBuilder() {
    Column() {
      Grid() {
        ForEach([1, 2, 3, 4, 5, 6, 7, 8, 9, '*', 0, '#'], (item: number | string) => {
          GridItem() {
            Button(item + "")
              .width(110).onClick(() => {
              this.controller.addTextSpan(item + '', {
                offset: this.controller.getCaretOffset(),
                style:
                {
                  fontColor: Color.Orange,
                  fontSize: 30
                }
              })
              this.controller.setCaretOffset(this.controller.getCaretOffset() + item.toString().length)
            })
          }
        })
      }.maxCount(3).columnsGap(10).rowsGap(10).padding(5)
    }.backgroundColor(Color.Gray)
  }
  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['qzq_RichEditor_id', ''],
    ['', 'qzq_RichEditor_key'],
    ['qzq_RichEditor_id', 'qzq_RichEditor_key'],
  ];
  build() {
    Column() {
      Text("RichEditor")
        .fontSize(18)
      List({ space: 70 }) {
        ForEach(this.idOrKeyArray, (item: Array<string>) => {
          ListItem() {
            Column() {
              RichEditor({ controller: this.controller })
                .id(item[0])
                .key(item[1])
                .customKeyboard(this.CustomKeyboardBuilder())
                .margin(10)
                .border({ width: 1 })
                .height(200)
                .borderWidth(2)
                .borderColor(Color.Black)
                .width("100%")
                .onReady(() => {
                  this.controller.addTextSpan("012345",
                    {
                      style:
                      {
                        fontColor: Color.Orange,
                        fontSize: 30
                      }
                    })
                  this.controller.addSymbolSpan($r("sys.symbol.ohos_trash"),
                    {
                      style:
                      {
                        fontSize: 30
                      }
                    })
                })
                .onReady(() => {
                  console.log("isready")
                })
                .onSelect((value: RichEditorSelection) => {
                  this.start = value.selection[0];
                  this.end = value.selection[1];
                  this.message = "[" + this.start + ", " + this.end + "]"
                })
                .aboutToIMEInput((value: RichEditorInsertValue) => {
                  console.log("---------------------- aboutToIMEInput ----------------------")
                  console.log("insertOffset:" + value.insertOffset)
                  console.log("insertValue:" + value.insertValue)
                  return true;
                })
                .onIMEInputComplete((value: RichEditorTextSpanResult) => {
                  console.log("---------------------- onIMEInputComplete ---------------------")
                  console.log("spanIndex:" + value.spanPosition.spanIndex)
                  console.log("spanRange:[" + value.spanPosition.spanRange[0] + "," + value.spanPosition.spanRange[1] +
                    "]")
                  console.log("offsetInSpan:[" + value.offsetInSpan[0] + "," + value.offsetInSpan[1] + "]")
                  console.log("value:" + value.value)
                })
                .aboutToDelete((value: RichEditorDeleteValue) => {
                  console.log("---------------------- aboutToDelete --------------------------")
                  console.log("offset:" + value.offset)
                  console.log("direction:" + value.direction)
                  console.log("length:" + value.length)
                  value.richEditorDeleteSpans.forEach(item => {
                    console.log("---------------------- item --------------------------")
                    console.log("spanIndex:" + item.spanPosition.spanIndex)
                    console.log("spanRange:[" + item.spanPosition.spanRange[0] + "," + item.spanPosition.spanRange[1] +
                      "]")
                    console.log("offsetInSpan:[" + item.offsetInSpan[0] + "," + item.offsetInSpan[1] + "]")
                    if (typeof (item as RichEditorImageSpanResult)['imageStyle'] != 'undefined') {
                      console.log("image:" + (item as RichEditorImageSpanResult).valueResourceStr)
                    } else {
                      console.log("text:" + (item as RichEditorTextSpanResult).value)
                    }
                  })
                  return true;
                })
                .onDeleteComplete(() => {
                  console.log("---------------------- onDeleteComplete ------------------------")
                })
              Column({ space: 5 }) {
                Row() {
                  Button("删除选择内容").onClick(() => {
                    this.controller.deleteSpans({
                      start: this.start,
                      end: this.end
                    })
                    this.start = -1;
                    this.end = -1;
                    this.message = "[" + this.start + ", " + this.end + "]"
                  })
                  Button('builder1').onClick(() => {
                    this.my_builder = () => {
                      this.placeholderBuilder()
                    }
                  })
                  Button("add span")
                    .onClick(() => {
                      let num = this.controller.addBuilderSpan(this.my_builder, { offset: this.my_offset })
                      console.info('addBuilderSpan return ' + num)
                    })
                }

                Row() {
                  Button("add image")
                    .onClick(() => {
                      let num = this.controller.addImageSpan($r("app.media.icon"), {
                        imageStyle: {
                          size: ["50px", "50px"],
                          verticalAlign: ImageSpanAlignment.BOTTOM,
                          layoutStyle: {
                            borderRadius: undefined,
                            margin: undefined
                          }
                        }
                      })
                    })
                  Button('builder4').onClick(() => {
                    this.my_builder = () => {
                      this.placeholderBuilder4()
                    }
                  })
                }
              }
            }
          }
        })
      }
    }
  }
}
