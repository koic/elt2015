もし(/^トップページを表示する$/) do
  visit '/'
end

もし(/^あなたの出品物一覧を表示する$/) do
  click_on 'あなたの出品物一覧'
end

もし(/^"(.*?)" タブを表示する$/) do |tab|
  click_on tab
end

ならば(/^"(.*?)" というメッセージが表示されていること$/) do |message|
  expect(page).to have_css '.alert-box', text: message
end
