# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :society do
    structure "MyString"
    source "MyString"
    social "MyString"
    religion "MyString"
    event_id 1
    event nil
  end
end
