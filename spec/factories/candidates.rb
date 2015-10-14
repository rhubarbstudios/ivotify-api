FactoryGirl.define do
  factory :candidate do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    bio { Faker::Lorem.paragraph }
    quotes [
      {
        id: 1,
        body: "This is my first quote",
        source: "CNN"
      },
      {
        id: 2,
        body: "This is my second quote",
        source: "Vox News"
      }
    ]

    factory :invalid_candidate do
      first_name nil
      last_name nil
      bio nil
      quote nil
    end

  end
end
