FactoryGirl.define do
  factory :issue do
    title { Faker::Company.catch_phrase }
    summary { Faker::Lorem.paragraph }
    background { Faker::Lorem.paragraph }

    factory :invalid_issue do
      title nil
      summary nil
      background nil
    end


    # user_with_posts will create post data after the user has been created
    factory :issue_with_sides do
      # posts_count is declared as a transient attribute and available in
      # attributes on the factory, as well as the callback via the evaluator
      transient do
        side_count 2
      end

      # the after(:create) yields two values; the user instance itself and the
      # evaluator, which stores all values from the factory, including transient
      # attributes; `create_list`'s second argument is the number of records
      # to create and we make sure the user is associated properly to the post
      after(:create) do |issue, evaluator|
        create_list(:issue_side, evaluator.side_count, issue: issue)
      end
    end

  end
end
