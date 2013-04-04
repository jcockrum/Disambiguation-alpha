# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :scene do
    name "MyString"
    act 1
    chapter 1
    story_id 1
    story nil
  end
end
