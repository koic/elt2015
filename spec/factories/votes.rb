FactoryGirl.define do
  factory :vote do
    association :exhibit, factory: :food
    association :user, factory: :user
  end
end
