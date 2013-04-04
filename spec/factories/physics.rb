# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :physic do
    position "MyString"
    size "MyString"
    weight 1.5
    energy "MyString"
    force "MyString"
    event_id 1
    event nil
  end
end
