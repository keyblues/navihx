import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  async aboutToAppear() {
    const loggedIn = 0;
    const targetRoute = loggedIn ? 'pages/Home' : 'pages/Login';

    // 替换当前页面并清除路由栈
    router.replaceUrl({
      url: targetRoute,
      params: { clearStack: true } // 关键参数：清除历史栈
    })
  }

  build() {
    // 空页面，不渲染任何内容
  }
}