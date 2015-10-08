FactoryGirl.define do
  factory :candidate do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    bio { Faker::Lorem.paragraph }

    factory :invalid_candidate do
      first_name nil
      last_name nil
      bio nil
    end

  end
end
