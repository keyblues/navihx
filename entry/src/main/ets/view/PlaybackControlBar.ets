
@Component
export struct PlaybackControlBar {
  build() {
    Row({ space: 10 }) {
      Image($r('app.media.ic_music'))
        .size({ width: 40})
        //.margin({ right: 12 })

      Column() {
        Text('未播放')
          .fontSize(14)
          .fontColor('#333333')
        Text('歌曲名称 - 艺术家')
          .fontSize(12)
          .fontColor('#666666')
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)

      Row({ space: 10 }) {
        Image($r('app.media.ic_play_fill'))
          .size({ width: 28})
        Image($r('app.media.ic_forward_end_fill'))
          .size({ width: 28})
      }
    }
    .width('90%')
    .height(60)
    .padding(12)
    .backgroundColor('#FFFFFF')
    .borderRadius(16)
    .shadow({
      radius: 16,
      color: Color.Gray,
      offsetX: 2,
      offsetY: 4
    })

    .position({
      bottom: '0.5%',
      left: '5%'
    })
    .justifyContent(FlexAlign.Center)
    .zIndex(999)
  }
}