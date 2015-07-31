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

もし(/^デバッグ$/) do
  binding.pry
end
