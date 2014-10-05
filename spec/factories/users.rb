FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    password "password"
    password_confirmation { "password" }

    trait :confirmed do
      confirmed_at Time.now
    end
    
    factory :confirmed_user, traits: [:confirmed]
  end
end
