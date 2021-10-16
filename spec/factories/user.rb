# This will guess the User class
FactoryBot.define do
  factory :user do
    sequence(:uid) { |idx| "user_#{idx}@example.com" }
    sequence(:email) { |idx| "user_#{idx}@example.com" }

    after(:build) do |user|
      user.password = "password"
    end
  end
end
