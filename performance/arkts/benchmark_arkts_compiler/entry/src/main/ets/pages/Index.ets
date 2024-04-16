@Entry
@Component
struct Index {
  @State message: string = 'ArkTS Compiler Benchmark';
  private cases: string[] = ['Octane:box2d', 'Octane:deltablue', 'Octane:raytrace', 'Octane:navier-stokes', 'Octane:richards',
    'SunSpider:base64', 'SunSpider:crypto-aes', 'SunSpider:crypto-md5', 'SunSpider:crypto-sha1']

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
        .scrollBar(BarState.Off)
      }
      .width('100%')
    }
    .height('100%')
  }
}