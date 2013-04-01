# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :story do
    name "MyString"
    storyarc_id 1
    storyarc nil
  end
end
