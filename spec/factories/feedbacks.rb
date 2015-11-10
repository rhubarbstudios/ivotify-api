FactoryGirl.define do
  factory :feedback do
    body { Faker::Lorem.paragraph }

    factory :invalid_feedback do
      body nil
  end

end
