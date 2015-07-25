FactoryGirl.define do
  factory :food do
    title 'sample food'
    description 'sample food description'
    association :user, factory: :user
  end
end
