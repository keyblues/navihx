
import { SearchView } from '../view/SearchView'
import { MusicView } from '../view/MusicView'
import { SettingView } from '../view/SettingView'
import { PlaybackControlBar } from '../view/PlaybackControlBar'

@Entry
@Component
struct Home {
  @State index: number = 1;
  build() {
    Column() {
      Tabs({ index: this.index }) {

        TabContent() {
          SearchView()
        }
        .tabBar({ icon: $r('app.media.ic_search') })

        TabContent() {
          MusicView()
        }
        .tabBar({ icon: $r('app.media.ic_music') })

        TabContent() {
          SettingView()
        }
        .tabBar({ icon: $r('app.media.ic_setting') })
      }
      .height('100%')
      .barBackgroundColor($r('app.color.home_bar_background'))
      .backgroundColor($r('app.color.home_background'))

      PlaybackControlBar()

    }
    .width('100%')
    .height('100%')
  }
}


