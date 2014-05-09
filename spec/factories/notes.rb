# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :note do
    id 1
    title "MyString"
    raw_body "MyText"
    body "MyText"
  end
end
