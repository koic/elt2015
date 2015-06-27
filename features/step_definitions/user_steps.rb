前提(/^ユーザ "(.*?)" がいる$/) do |user|
  create(:user, user.to_sym)
end
