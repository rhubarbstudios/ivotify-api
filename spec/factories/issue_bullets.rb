FactoryGirl.define do
  factory :issue_bullet do
    body { Faker::Lorem.paragraph }

    association :issue
  end

  factory :invalid_issue_bullet do
    body nil

  end

end
