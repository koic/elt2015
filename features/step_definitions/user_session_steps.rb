前提(/^GitHub アカウント "(.*?)" がある$/) do |account|
  OmniAuth.config.test_mode = true

  OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
    provider: 'github',
    uid: '123456',
    info: {
      nickname: "#{account}"
    }
  })
end

前提(/^"(.*?)" としてサインインしている$/) do |user|
  steps <<-EOS
    前提 GitHub アカウント "#{user}" がある
    もし サインインページを表示する
    かつ "GitHub" でサインインする
  EOS
end

もし(/^サインインページを表示する$/) do
  visit '/signin'
end

もし(/^"(.*?)" でサインインする$/) do |provider|
  click_on "#{provider} でサインイン"
end

もし(/^サインアウトをクリックする$/) do
  click_on 'サインアウト'
end

ならば(/^サインインページが表示されていること$/) do
  expect(current_path).to eq signin_path
end
