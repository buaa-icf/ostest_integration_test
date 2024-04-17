@Entry
@Component
struct Index {
  @State message: string = 'Communication Wi-Fi Performance Test';
  private cases: string[] = ['启动时间（平均耗时）','发现SSID（最短时间）','发现SSID（1秒内最大数量）','连接（无密码平均耗时）', '断开（平均耗时）', '重新连接（无密码平均耗时）', '连接（WEP平均耗时）','重新连接（WEP平均耗时）',
    '连接（WPA/WPA2平均耗时）', '重新连接（WPA/WPA2平均耗时）','连接（WPA-PSK平均耗时）','重新连接（WPA-PSK平均耗时）',
    '最大带宽（大文件）','延时（本地服务器平均）','自动连接（平均耗时）']

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .margin(20)
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