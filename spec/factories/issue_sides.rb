FactoryGirl.define do
    factory :issue_side do
      title { Faker::Lorem.paragraph }

      association :issue

      factory :invalid_issue_side do
        title nil
      end



  # user_with_posts will create post data after the user has been created
  factory :issue_with_bullets do
    # posts_count is declared as a transient attribute and available in
    # attributes on the factory, as well as the callback via the evaluator
    transient do
      bullet_count 2
    end

    # the after(:create) yields two values; the user instance itself and the
    # evaluator, which stores all values from the factory, including transient
    # attributes; `create_list`'s second argument is the number of records
    # to create and we make sure the user is associated properly to the post
    after(:create) do |issue_side, evaluator|
      create_list(:issue_bullet, evaluator.bullet_count, issue_side: issue_side)
    end
  end

  end
end
