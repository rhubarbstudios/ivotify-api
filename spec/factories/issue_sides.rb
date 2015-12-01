FactoryGirl.define do
    factory :issue_side do
      title { Faker::Lorem.paragraph }
      association :issue
    end

      factory :invalid_issue_side do
        title nil
      end
end
