FactoryGirl.define do
    factory :issue_side do
      title { Faker::Lorem.paragraph }
    end

      factory :invalid_issue_side do
        title nil
      end
end
