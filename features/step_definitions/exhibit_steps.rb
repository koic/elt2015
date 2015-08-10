前提(/^"(.*?)" が作った料理 "(.*?)" がある$/) do |user, food|
  user = User.find_by(nickname: user)
  create(:food, title: food, user: user)
end

# XXX ファクトリじゃなくて出品物登録のステップを使う...
前提(/^料理 "(.*?)" がある$/) do |food|
  create(:food, title: food, user: create(:user, nickname: 'alice'))
end

ならば(/^食べ物タブに "(.*?)" が表示されていること$/) do |food|
  within '.foods__table' do
    expect(page).to have_content food
  end
end

ならば(/^食べ物タブに "(.*?)" が表示されていないこと$/) do |food|
  within '.foods__table' do
    expect(page).not_to have_content food
  end
end

もし(/^以下の内容で出品物を登録する:$/) do |table|
  # NOTE rows_hash は、テーブルヘッダが左端にくるタイプのテーブルで使う。
  #      そうでないとき（ヘッダが上にくる）は、hashes を使う。
  table.hashes.each do |row|
    title = row.fetch('タイトル')
    type = row.fetch('種別')
    description = row.fetch('説明文', 'これは説明文です')

    steps <<-EOS
      もし 登録ページを表示する
      かつ タイトルに "#{title}" と入力する
      かつ 説明文に "#{description}" と入力する
      かつ 種類として "#{type}" を選択する
      かつ 登録ボタンを押す
    EOS
  end

end

もし(/^デバッグ$/) do
  binding.pry
end
