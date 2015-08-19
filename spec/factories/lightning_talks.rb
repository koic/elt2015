FactoryGirl.define do
  factory :lightning_talk do
    title 'sample LT'
    description 'sample LT description'
    association :user, factory: :user
  end
end
