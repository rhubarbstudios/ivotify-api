FactoryGirl.define do
  factory :issue_bullet do
    body { Faker::Lorem.paragraph }
    side_id { Faker::Company.name }
    association :issue
  end

  factory :invalid_issue_bullet do
    body nil
    side_id nil
  end

end
