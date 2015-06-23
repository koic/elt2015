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

前提(/^サインインしている$/) do
  steps <<-EOS
    前提 GitHub アカウント "sherlock" がある
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

ならば(/^"(.*?)" というメッセージが表示されていること$/) do |message|
  expect(page).to have_css '.alert-box', text: message
end
