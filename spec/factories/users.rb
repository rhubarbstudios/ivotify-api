FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"

    factory :admin do
      admin true
    end

    factory :invalid_user do
      name nil
      email nil
      password nil
      password_confirmation nil
    end

  end

end
