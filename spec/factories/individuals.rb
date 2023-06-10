FactoryBot.define do
  factory :individual do
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    phone_number { "MyString" }
    company { nil }
  end
end
