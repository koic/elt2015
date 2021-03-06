# language: ja

フィーチャ:
  出品者として、自分の作品を削除したい。
  なぜなら、誤って登録してしまったものを他の人の目にさらしたくないからだ。

  シナリオ: 自分の作品を削除できる
    前提 "sherlock" としてサインインしている
    かつ 以下の内容で出品物を登録する:
      | タイトル | 種別 | ユーザ   |
      | 肉じゃが | Food | sherlock |

    もし あなたの出品物一覧を表示する
    かつ "食べ物" タブを表示する
    かつ "肉じゃが" を削除する

    ならば "削除しました。" というメッセージが表示されていること
    かつ 食べ物タブに "肉じゃが" が表示されていないこと
