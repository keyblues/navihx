
@Component
export struct MusicView {

  build() {
    Scroll() {
      Column({ space: 20}) {
        Row({ space: 20}) {
          Image($r('app.media.ic_navidrome_192x192'))
            .size({"width": 70})
          Column({ space: 10}) {
            Text('Navidrome')
              .fontSize(25)
            Text('在线')
              .fontSize(15)
          }.alignItems(HorizontalAlign.Start)

        }
        .width('90%')
        .height('20%')
        .backgroundColor("#EEEEEE")
        .padding(20)
        .borderRadius(16)
        .shadow({
          radius: 16,
          color: Color.Gray,
          offsetX: 2,
          offsetY: 4
        })

        Flex({ justifyContent: FlexAlign.SpaceEvenly, alignItems: ItemAlign.Center}) {

          Column() {
            Image($r('app.media.ic_music'))
              .size({ width: 50})
            Text('歌曲')
          }
          .width('20%')
          .height('80%')
          //.backgroundColor('#124578')
          .borderRadius(16)
          .justifyContent(FlexAlign.Center)

          Column() {
            Image($r('app.media.ic_music'))
              .size({ width: 50})
            Text('专辑')
          }
          .width('20%')
          .height('80%')
          //.backgroundColor('#124578')
          .borderRadius(16)
          .justifyContent(FlexAlign.Center)

          Column() {
            Image($r('app.media.ic_music'))
              .size({ width: 50})
            Text('收藏')
          }
          .width('20%')
          .height('80%')
          //.backgroundColor('#124578')
          .borderRadius(16)
          .justifyContent(FlexAlign.Center)

          Column() {
            Image($r('app.media.ic_music'))
              .size({ width: 50})
            Text('本地')
          }
          .width('20%')
          .height('80%')
          //.backgroundColor('#124578')
          .borderRadius(16)
          .justifyContent(FlexAlign.Center)


        }
        .width('90%')
        .height('15%')
        .backgroundColor("#EEEEEE")
        .borderRadius(16)
        .shadow({
          radius: 16,
          color: Color.Gray,
          offsetX: 2,
          offsetY: 4
        })

        Column() {
          Row({ space: 20 }) {
            Text('全部歌单').fontSize(20)
            Text('我的歌单').fontSize(20)
          }

          
        }


      }
      .width('100%')
      .height('100%')
      .margin({ top: 20})
      .justifyContent(FlexAlign.Start)
    }
  }
}