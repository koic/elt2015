# language: ja

フィーチャ:
  出品者として、サインインしたい。
  なぜなら、自分の作品に投票してもらう準備をしたいからだ。

  シナリオ: GitHub のアカウントを使ってサインインする
    前提 GitHub アカウント "sherlock" がある

    もし サインインページを表示する
    かつ "GitHub" でサインインする

    ならば "サインインしました" というメッセージが表示されていること
