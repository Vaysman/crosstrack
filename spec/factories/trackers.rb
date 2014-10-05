# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tracker do
    name "MyString"
    producer "MyString"
    uid "MyString"
    user nil
  end
end
