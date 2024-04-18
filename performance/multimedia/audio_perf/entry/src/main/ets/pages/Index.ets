@Entry
@Component
struct Index {
  @State message: string = 'Multimedia Audio Performance Test';
  @State message_cn: string = '音频性能测试';
  private cases: string[] = ['冷启动输入延迟测试','冷启动输出延迟测试','音频点按与发声间测试','音频环回延迟测试', '专业音频测试', '验证乐器数字接口 (MIDI) ']

  build() {
    Row() {
      Column() {
        Text(this.message_cn)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .margin(20)
        Text(this.message)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
        Button('执行全部用例')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .width('50%')
          .margin(20)
        List({ space: 20, initialIndex: 0 }) {
          ForEach(this.cases, (item: string) => {
            ListItem() {
              Text(item)
                .width('100%')
                .height(30)
                .fontSize(16)
                .textAlign(TextAlign.Center)
                .borderRadius(10)
                .borderWidth(1)
                .borderColor(Color.Blue)
                .backgroundColor(0xFFFFFF)
            }
          }, (item: string) => item)
        }.width('90%')
        .height('80%')
        .scrollBar(BarState.Off)
      }
      .width('100%')
    }
    .height('100%')
  }
}