FactoryBot.define do
  factory :user do
    id { 1 }
    email { "MyString" }
    encrypted_password { "MyString" }
    reset_password_token { "MyString" }
    reset_password_sent_at { "2022-12-26 12:08:02" }
    remember_created_at { "2022-12-26 12:08:02" }
    sign_in_count { 1 }
    current_sign_in_at { "2022-12-26 12:08:02" }
    last_sign_in_at { "2022-12-26 12:08:02" }
    current_sign_in_ip { "MyString" }
    last_sign_in_ip { "MyString" }
    confirmation_token { "MyString" }
    confirmed_at { "2022-12-26 12:08:02" }
    confirmation_sent_at { "2022-12-26 12:08:02" }
    first_name { "MyString" }
    last_name { "MyString" }
    announcements_last_read_at { "2022-12-26 12:08:02" }
    admin { false }
    created_at { "2022-12-26 12:08:02" }
    updated_at { "2022-12-26 12:08:02" }
  end
end
