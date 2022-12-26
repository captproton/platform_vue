FactoryBot.define do
  factory :page do
    id { 1 }
    title { "MyString" }
    slug { "MyString" }
    body { "MyText" }
    user_id { 1 }
    position { 1 }
    parent_id { 1 }
    created_at { "2022-12-26 12:07:54" }
    updated_at { "2022-12-26 12:07:54" }
  end
end
