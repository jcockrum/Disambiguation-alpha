# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :universe do
    name "MyString"
    users_id 1
    users nil
  end
end
