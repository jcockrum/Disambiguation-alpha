# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :part do
    content "MyText"
    author_id 1
    partible_id 1
    partible_type "MyString"
  end
end
