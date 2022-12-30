FactoryBot.define do
  factory :announcement do
    id { 1 }
    published_at { "2022-12-26 12:07:57" }
    announcement_type { "MyString" }
    name { "MyString" }
    description { "MyText" }
    created_at { "2022-12-26 12:07:57" }
    updated_at { "2022-12-26 12:07:57" }
  end
end
