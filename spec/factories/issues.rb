FactoryGirl.define do
  factory :issue do
    title { Faker::Company.catch_phrase }
    summary { Faker::Lorem.paragraph }
  end
end
