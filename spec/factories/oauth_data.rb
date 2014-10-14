require 'ffaker'

FactoryGirl.define do
  factory :oauth_data do
    uid Faker::Identification.ssn
    provider "fitbit"
    association :user, factory: :confirmed_user
    auth_data { { provider: provider, uid: uid , info: { email: Faker::Internet.email }}.to_s }
  end
end
