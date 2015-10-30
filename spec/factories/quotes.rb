FactoryGirl.define do
  factory :quote do
    body { Faker::Lorem.paragraph }
    source { Faker::Company.name }
    association :issue
  end

  factory :invalid_quote do
    body nil
    source nil
  end

end
