# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :oauth do
    uid "MyString"
    provider "MyString"
    user nil
    auth_data "MyString"
  end
end
