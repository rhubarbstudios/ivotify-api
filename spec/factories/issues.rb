FactoryGirl.define do
  factory :issue do
    title { Faker::Company.catch_phrase }
    summary { Faker::Lorem.paragraph }
    background { Faker::Lorem.paragraph }

    after(:build) do |issue|
      issue.issue_sides << build(:issue_side)
    end

    factory :invalid_issue do
      title nil
      summary nil
      background nil
    end

  end
end
