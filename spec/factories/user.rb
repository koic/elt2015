FactoryGirl.define do
  factory :user do
    nickname 'sample'
    uid '111111'
    provider 'twitter'
  end

  trait :watson do
    nickname 'watson'
    uid '222222'
  end

  trait :molly do
    nickname 'molly'
    uid '333333'
  end
end
