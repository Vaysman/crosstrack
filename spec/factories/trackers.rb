FactoryGirl.define do
  factory :tracker do
    name "MyString"
    producer "MyString"
    uid "MyString"
    association :user, factory: :confirmed_user
  end
end
