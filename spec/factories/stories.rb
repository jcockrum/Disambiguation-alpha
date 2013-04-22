# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :story do
    name "MyString"
    chapter 1
    universe nil
  end
end
