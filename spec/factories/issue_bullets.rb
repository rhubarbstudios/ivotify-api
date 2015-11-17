FactoryGirl.define do
  factory :issue_bullet do
    body { Faker::Lorem.paragraph }

    association :issue_side

  factory :invalid_issue_bullet do
    body nil

  end
end
end
