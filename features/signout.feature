# language: ja

フィーチャ:
  出品者として、サインアウトしたい。

  シナリオ: サインアウトする
    前提 "sherlock" としてサインインしている

    もし トップページを表示する
    かつ サインアウトをクリックする

    ならば "サインアウトしました" というメッセージが表示されていること
    かつ サインインページが表示されていること

  シナリオ: サインインしていないと、サインインページにリダイレクトする
    もし 登録ページを表示する

    ならば "サインインしてください" というメッセージが表示されていること
    かつ サインインページが表示されていること
