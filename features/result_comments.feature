# language: ja

フィーチャ:
  料理好きとして、自分が作って持ってきた料理によせられたコメントを見たい。
  なぜなら、オーディエンスにとって具体的にどういうところがよかったのかを知りたいからだ。

  シナリオ: ランキング一覧のタイトルからコメント一覧を見ることができる
    前提 "sherlock" としてサインインしている
    かつ 料理 "肉じゃが" がある
    かつ 料理 "マッサマンカレー" がある
    かつ "肉じゃが" に 10 票入っている

    もし ランキングを表示する
    かつ "肉じゃが" をクリックする

    ならば "肉じゃが" へのコメント一覧ページが表示されていること

  # TODO コメント主表示のテスト
