@Entry
@Component
struct Index {
  @State message: string = 'Multimedia Audio Function Test';
  @State message_cn: string = '音频功能测试';
  private cases: string[] = ['模拟耳机音频测试','输入设备通知测试','输出设备通知测试','输入路由通知测试', '输出路由通知测试', '音频流断开连接测试', '音频频响曲线测试','扬声器音频频响测试',
    '麦克风音频频响测试', '音频频响未处理测试']

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