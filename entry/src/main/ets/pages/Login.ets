import { router } from '@kit.ArkUI';

@Entry
@Component
struct Login {
  build() {
    Column({ space: 20 }){
      Text($r('app.string.login_label_title'))
        .fontSize($r('app.float.login_title_font_size'))

      TextInput({ placeholder: $r('app.string.login_input_url') })
        .type(InputType.Normal)
        .width('80%')

      TextInput({ placeholder: $r('app.string.login_input_username') })
        .type(InputType.Normal)
        .width('80%')

      TextInput({ placeholder: $r('app.string.login_input_password') })
        .type(InputType.Password)
        .width('80%')

      Button($r('app.string.login_button'))
        .onClick(() => {
          router.replaceUrl({
            url: 'pages/Home' // 目标url
          })
        })
        .width('80%')
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}
