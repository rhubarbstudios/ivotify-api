FactoryGirl.define do
  factory :issue do
    title { Faker::Company.catch_phrase }
    summary { Faker::Lorem.paragraph }

    factory :invalid_issue do
      title nil
      summary nil
    end

  end
end
