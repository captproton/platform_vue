FactoryBot.define do
  factory :site do
    id { 1 }
    name { "MyString" }
    description { "MyText" }
    user_id { 1 }
    team_id { 1 }
    created_at { "2022-12-26 12:07:40" }
    updated_at { "2022-12-26 12:07:40" }
  end
end
